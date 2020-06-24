# GOAL

This is a demo to show-case how to create models with tags in a rails app.

It was created from [this repo](https://github.com/andrerferrer/model-with-tags-demo#goal).

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

### 1. In the [view](https://github.com/andrerferrer/create-multiple-tags-demo/blob/master/app/views/tags/new.html.erb)
```erb
  <h2>Create new Tags</h2>

  <%= simple_form_for @tag do |f| %>
    <%= f.input :name, label: false, placeholder: "Tag number one, Tag2, Tag3 etc" %>
    <%= f.submit 'Create Tags' %>
  <% end %>
```

### 2. In the [controller](https://github.com/andrerferrer/create-multiple-tags-demo/blob/master/app/controllers/tags_controller.rb)
```ruby
  def new
    @tag = Tag.new
    @tags = Tag.all
  end

  def create
    @tags = Tag.all
    names = strong_params[:name].split(/, /)
    
    names.each do |name|
      @tag = Tag.new name: name
      @tag.save
    end

    redirect_to(root_path, notice: "Tags '#{names.join(" ")}' were succesfully created")
  end
```


TBD

And we're good to go 🤓

Good Luck and Have Fun
