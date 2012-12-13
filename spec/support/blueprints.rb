require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

WysiwygDocs::Topic.blueprint do
  # Attributes here
end

WysiwygDocs::Doc.blueprint do
  # Attributes here
end

WysiwygDocs::Article.blueprint do
  # Attributes here
end
