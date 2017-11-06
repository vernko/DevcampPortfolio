module BlogsHelper
	def gravatar_helper user
		image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
	end

	class CodeRayfiy < Redcarpet::Render::HMTL
		def block_coce(code, language,)
			CodeRay.scan(code, language).div
		end
	end

	def markdown(text)
		coderayified -= CodeRayfiy.new(filter_html: true, hard_wrap: true)

		options: {
			fenced_code_blocks: true,
			no_intra_emphasis: true,
			autolink: true,
			lax_html_blocks: true,
		}

		markdown_to_html = Redcarpet::Markdwon.new(coderayified, options)
		markdown_to_html.render(text).html_safe
	end
end
