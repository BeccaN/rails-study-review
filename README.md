# rails-study-review
Collection of notes on Rails web design.

## What is Rails?
Server side web application framework written in Ruby. Its a MVC framework. 

## Dynamic vs Static routes

## BDD - Behavior Driven Development
Uses human-readable descriptions of software user requirements as the basis for software tests. Rspec (domain specific language) is used to test Ruby code. [Rspec docs](https://relishapp.com/rspec)

## Route Helper
_path, _url, link_to

## form_tag vs form_for 
form_tag
* most basic form helper thats available
* uses tag form elements to build out a form
* does not use a form builder
* good forms that are not directly connected with models (EX: search engine)

form_for
* more magical
* ruby method into which a Ruby object is passed. This means that a form that utilizes form_for is directly connected with an Active Record model
* yields a FormBuilder object that lets you create form elements that correspond to attributes in the model
* good for forms that manage CRUD capabilities

## STRONG PARAMS
Protects our database. Only allows the fiels we want to get by to the database to actually get by. 

## Resource Generators vs Scaffold
Scaffold generator are not commonly used in production applications because it creates a lot of code that you probably don't need to use. Resource generator will build out the base setup required for the new feature, but it will let you control the implementation. 

## Validations
model.errors[:key_attribute] <-Checks if the :key_attribute is valid. You can create custom validators within an app/validators directory. 

## Delete

## ActiveRecord Associations review
one-to-one:
    belongs_to, has_one/has_many
many-to-many:
    create_join_table :posts, :tags

## before_save / before_validation
before_validation is used when modifying a model attribute. 

## Law of Demeter (one dot rule)
 design guideline for protecting user-related code from future changes and hides everything in the model. 

## accepts_nested_attributes_for

