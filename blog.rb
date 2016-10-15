class Blog
attr_accessor :title,:text
	def initialize
		@@list_of_posts = []
	end

		def new_post(title,text)
			@title = title
			# @date = DateTime::now.to_s 
			@text = text
			@@list_of_posts << Blog.new

		end

		def title
			@title
		end

		def text
			@text
		end

	def publish_front_page
		@@list_of_posts.each do |post|
			print post.title.to_s + "/n"
			print post.text.to_s
		end
	end	

end


		

Iron_blog = Blog.new
first_post = Iron_blog.new_post("Titolo","abcde")
second_post = Iron_blog.new_post("Titolo2","abcde2")
third_post = Iron_blog.new_post("Titolo3","abcde3")

Iron_blog.publish_front_page

# print Iron_blog.to_s
# print Iron_blog.class
# print first_post.class