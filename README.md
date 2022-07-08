# Toy Trader

### Identification of the problem you are trying to solve by building this particular marketplace app.

Households with children across Australia (I'd go as far as to say worldwide), deal with the problem of being overcluttered by toys. Many that are not utilised as children out grow those toys or as the novelty of the toys wears off. Some are broken or have pieces missing but parents and carers can't bring themselves to bin them as toys have become very costly in 2022. On the other hand, parents need educational toys to challenge their kids as they grow or parts of toys to make their current toys whole.

Toy Trader aims to solve the following problems:
- Allow the user to sell unwanted toys whilst making some money
- Declutter their home without feeling guilty about wastage
- Sell double ups your child has been gifted
- Sell broken toys for parts if they are in less than good condition
- Find toys sold for parts that fix their current toys
- Buy toys in good to mint condition at more affordable prices


### Why is it a problem that needs solving?

This is a problem that needs solving first for the global problem of reducing the release of carbon emissions from the creation of new toys and also reducing the amount of plastic waste. It's no secret plastic toys are bad for the environment.

Another issue is when a child really wants a toy and recieves it but the novelty wears off very quickly, the buyer might be upset that an expensive toy is now sat at the bottom of a toy box not being played with. 

Children also outgrow toys, what was a great toy one year and helped the child learn new skills is now a boring toy but is still in good condition and can be useful to another child. These toys can be offered on Toy Trader and be valued and appreciated by another child.

Toys can be quite an expensive investment however, Toy Trader is a great source to buy toys in good to mint condition at a more affordable price.

Recycling
Affordable toys


### Access Toy Trader
[Toy Trader](https://staging-toytrader.herokuapp.com/)<br>
[Github repo](https://github.com/HardeepSinghAu/toy_swap)


### Description of Toy Trader:
**Purpose**

A site where Users can connect, as Buyers, Sellors or both to 
**Functionality / features**

Toy trader has several features including:
- A seamless Sign-up and logging in process
- Product listing
- Product details page
- Orders page
- Sales Page

<br></br>

**Sitemap of Toy Trader**

![Sitemap](app/assets/images/Toytrader-sitemap.jpg)


**Screenshots of Toy Trader site live**
>![Screenshot of ](app/assets/images/homepagess.png)

>![Screenshot of ](app/assets/images/regpagess.png)

>![Screenshot of ](app/assets/images/Loginpagess.png)

>![Screenshot of ](app/assets/images/Listingsdetailss.png)

>![Screenshot of ](app/assets/images/Listingspagess.png)

>![Screenshot of ](app/assets/images/Successpagess.png )

> ![Screenshot of ](app/assets/images/Yourorderspagess.png )

>![Screenshot of ](app/assets/images/yoursalesss.png )

**Target audience**

Toy trader has a somewhat limited target audience, unlike a marketplace that includes the sales of all kind of products, Toy Trader is solely for toys for kids and that narrows the audience from everyone down to Users who have a child in their life such as:
- Mums and Dads
- Carers and Guardians
- Grandparents, Aunts and Uncles
- Anyone with a child in their life

The exception to this rule might be adults who love legos but are missing pieces from their sets or might be searching for vintage toys.

**Tech stack**

Toy Trader uses a simple but scalable tech stack which consists of: 

- Front End:
    - HTML
    - SCSS/SASS
    - CSS

- Back End:
    - Ruby on Rails
    - PostgreSQL 

For Version control and Deployment:
- Heroku 
- Github

### User stories for your app

User stories are well thought out, relevant, and comprehensively cover the needs of the app

1. As a person with a child, I'm very time poor and I want an app that is quick and easy to sign up, login and list on. 

2. As a Mum, I want to get rid of a few excess toys so that I can get rid of clutter and make a bit of change.

3. As a parent, I want to buy some good quality toys, without breaking the bank.

4. As a Dad, I want to sell some toys that still have some good working parts and can be recycled, because recycling is good for the planet.

5. I want to be able to find affordable educational toys to support my childs learning, he outgrowns educational toys very quickly. I suppose I can sell these on the same app as well.

### Wireframes for your app

![Wireframe of Homepage](app/assets/images/wf_homepage.png)
![Wireframe of Registration page](app/assets/images/wf_signup.png)
![Wireframe of Login page](app/assets/images/wf_login.png)
![Wireframe of listings page](app/assets/images/wf_mobile_listings.png)
![Wireframe of Sold items page](app/assets/images/wf_sold.png)
![Wireframe of Your bought items page](app/assets/images/wf_bought.png)


###	An ERD for your app
Discuss the database relations to be implemented

Provides coherent discussion of the database relations, with reference to the ERD

 ERD provided represents a normalised database model - no duplication and ideal definition of entities
Model implementation represents a normalised database model


###	Explain the different high-level components (abstractions) in your app
Explain how the MVC architecture and concept of inheritance impact the structure of your application and the entities within it
what is mvc

concept of inheritence and how that links in with rails and mvc
Model View Controller is inhertining from application controller 
lots of inheritence happening in controllers


Inheritance in models

Precisely explains and shows understanding of how the MVC architecture and concept of inheritance impact the structure of your application and the entities within it

###	Detail any third party services that your app will use
devise
stripe 

Includes a complete and detailed description of third party services used in the app


###	Describe your projects models in terms of the relationships (active record associations) they have with each other
active records belongs_to has_many

CMP1042-2.3 Describe your project’s models in terms of the relationships (active record associations) they have with each other
Complete discussion of the project’s models with an understanding of how its active record associations function


##	Discuss the database relations to be implemented in your application

Database design appropriately addresses the requirements of a complex scenario
- All tables, fields, and relationships adequately represent an appropropriate solution.



###	Provide your database schema design
schema.rb
 Provide your database schema design
Flawless, complex, complete, and well thought through ERDs provided

create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

 > Categories
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  

  > Listings
    t.string "Title"
    t.integer "condition"
    t.integer "price"
    t.boolean "sold", default: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_listings_on_category_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  
  > Orders
    t.bigint "listing_id", null: false
    t.bigint "buyer_id", null: false
    t.bigint "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_orders_on_buyer_id"
    t.index ["listing_id"], name: "index_orders_on_listing_id"
    t.index ["seller_id"], name: "index_orders_on_seller_id"
  end

  > Users
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
 

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "listings", "categories"
  add_foreign_key "listings", "users"
  add_foreign_key "orders", "listings"
  add_foreign_key "orders", "users", column: "buyer_id"
  add_foreign_key "orders", "users", column: "seller_id"


###	Describe the way tasks are allocated and tracked in your project

I used Trello to plan the Toy Trader project, starting with a list of essential tasks, a list of optional tasks and a list of additional tasks that weren't essential but would be an added benefit to the project. AS I worked, I added new tasks as they arose and also noted tasks so that they would be in the backlog to complete once the essential needs were met.

![Trello image 2](app/assets/images/Trello2.png)<br></br>
![Trello image of card](app/assets/images/TrelloCard.png)<br></br>
![Trello image 3](app/assets/images/Trello3.png)<br></br>
![Trello image 4](app/assets/images/Trello4.png)<br></br>
![Trello image 5](app/assets/images/Trello5.png)<br></br>
