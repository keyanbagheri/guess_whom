# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140515161514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_tags", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.integer  "created_by_user_id"
    t.integer  "last_modified_by_user_id"
    t.string   "facebook_username"
    t.string   "instagram_username"
    t.string   "photo_url"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "gender_male"
    t.boolean  "gender_female"
    t.boolean  "hair"
    t.boolean  "hair_color_red"
    t.boolean  "hair_color_blonde"
    t.boolean  "hair_color_gray"
    t.boolean  "hair_color_white"
    t.boolean  "hair_color_black"
    t.boolean  "hair_color_brunette"
    t.boolean  "hair_color_green"
    t.boolean  "hair_color_pink"
    t.boolean  "hair_color_purple"
    t.boolean  "hair_color_blue"
    t.boolean  "hair_color_orange"
    t.boolean  "hair_length_long"
    t.boolean  "hair_length_short"
    t.boolean  "hair_type_straight"
    t.boolean  "hair_type_curly"
    t.boolean  "hair_type_wavey"
    t.boolean  "hair_type_balding"
    t.boolean  "hair_type_bald"
    t.boolean  "hair_cut_mullet"
    t.boolean  "hair_cut_bowl"
    t.boolean  "hair_cut_crew"
    t.boolean  "hair_cut_pixie"
    t.boolean  "hair_style_spiked"
    t.boolean  "hair_style_perm"
    t.boolean  "hair_style_slicked_back"
    t.boolean  "hair_style_braided"
    t.boolean  "hair_style_bun"
    t.boolean  "hair_style_dread_locks"
    t.boolean  "hair_style_corn_rows"
    t.boolean  "hair_style_pony_tail"
    t.boolean  "hair_style_pig_tail"
    t.boolean  "hair_style_bangs"
    t.boolean  "hair_accessory"
    t.boolean  "hair_accessory_wig"
    t.boolean  "hair_accessory_clip"
    t.boolean  "hair_accessory_tie"
    t.boolean  "hair_accessory_band"
    t.boolean  "hair_accessory_bow"
    t.boolean  "hair_facial"
    t.boolean  "hair_facial_beard"
    t.boolean  "hair_facial_mustache"
    t.boolean  "hair_facial_mustache_pencil"
    t.boolean  "hair_facial_mustache_handlebar"
    t.boolean  "hair_facial_mustache_milk"
    t.boolean  "hair_facial_eyebrow_unibrow"
    t.boolean  "hair_facial_stubble"
    t.boolean  "hair_facial_mutton_chops"
    t.boolean  "hair_facial_sideburns"
    t.boolean  "hair_facial_goatee"
    t.boolean  "hair_facial_soul_patch"
    t.boolean  "eye_color_brown"
    t.boolean  "eye_color_blue"
    t.boolean  "eye_color_green"
    t.boolean  "eye_color_black"
    t.boolean  "eye_color_hazel"
    t.boolean  "eye_color_red"
    t.boolean  "makeup"
    t.boolean  "makeup_eye"
    t.boolean  "makeup_eye_mascara"
    t.boolean  "makeup_eye_liner"
    t.boolean  "makeup_eye_painted_in_eyebrow"
    t.boolean  "makeup_lipstick"
    t.boolean  "makeup_lipstick_red"
    t.boolean  "makeup_lipstick_black"
    t.boolean  "makeup_lipstick_purple"
    t.boolean  "makeup_facepaint"
    t.boolean  "jewelry"
    t.boolean  "jewelry_necklass"
    t.boolean  "jewelry_necklace_pearl"
    t.boolean  "jewelry_necklass_gold"
    t.boolean  "jewelry_necklass_silver"
    t.boolean  "jewelry_necklass_dog_tags"
    t.boolean  "jewelry_piercing"
    t.boolean  "jewelry_piercing_ear"
    t.boolean  "jewelry_piercing_facial"
    t.boolean  "jewelry_piercing_facial_eye"
    t.boolean  "jewelry_piercing_facial_nose"
    t.boolean  "jewelry_piercing_facial_lip"
    t.boolean  "jewelry_piercing_facial_cheek"
    t.boolean  "jewelry_piercing_facial_tongue"
    t.boolean  "jewelry_piercing_ear_pearl"
    t.boolean  "jewelry_piercing_ear_hoop"
    t.boolean  "jewelry_arm"
    t.boolean  "jewelry_arm_watch"
    t.boolean  "jewelry_arm_bracelet"
    t.boolean  "jewelry_finger"
    t.boolean  "jewelry_finger_ring"
    t.boolean  "accessory"
    t.boolean  "accessory_eyewear"
    t.boolean  "accessory_eyewear_glasses"
    t.boolean  "accessory_eyewear_sunglasses"
    t.boolean  "accessory_eyewear_monocle"
    t.boolean  "accessory_headphones"
    t.boolean  "accessory_headphones_ear_buds"
    t.boolean  "accessory_neck"
    t.boolean  "accessory_neck_scarf"
    t.boolean  "accessory_neck_tie"
    t.boolean  "accessory_neck_bowtie"
    t.boolean  "accessory_towel"
    t.boolean  "accessory_bag"
    t.boolean  "accessory_bag_purse"
    t.boolean  "accessory_bag_bookbag"
    t.boolean  "clothing"
    t.boolean  "clothing_hat"
    t.boolean  "clothing_hat_cowboy"
    t.boolean  "clothing_hat_baseballcap"
    t.boolean  "clothing_hat_mask"
    t.boolean  "clothing_hat_helmet"
    t.boolean  "clothing_hat_ski_cap"
    t.boolean  "clothing_hat_straw"
    t.boolean  "clothing_hat_baseball_cap_backwards"
    t.boolean  "clothing_hat_trucker"
    t.boolean  "clothing_hat_tiara"
    t.boolean  "clothing_hat_beanie"
    t.boolean  "clothing_type_costume"
    t.boolean  "clothing_type_hood"
    t.boolean  "clothing_type_hoodie"
    t.boolean  "clothing_type_jacket"
    t.boolean  "clothing_type_dress"
    t.boolean  "clothing_type_shirtless"
    t.boolean  "clothing_type_tshirt"
    t.boolean  "clothing_type_sweater"
    t.boolean  "clothing_type_tank_top"
    t.boolean  "clothing_color_red"
    t.boolean  "clothing_color_blue"
    t.boolean  "clothing_color_green"
    t.boolean  "clothing_color_yellow"
    t.boolean  "clothing_color_white"
    t.boolean  "clothing_color_black"
    t.boolean  "clothing_color_gray"
    t.boolean  "clothing_color_orange"
    t.boolean  "clothing_color_purple"
    t.boolean  "clothing_color_cyan"
    t.boolean  "clothing_color_brown"
    t.boolean  "clothing_color_magenta"
    t.boolean  "clothing_color_pink"
    t.boolean  "clothing_style_camo"
    t.boolean  "clothing_style_denim"
    t.boolean  "clothing_style_stripes"
    t.boolean  "clothing_style_plaid"
    t.boolean  "clothing_style_leopard"
    t.boolean  "clothing_style_leather"
    t.boolean  "clothing_style_fur"
    t.boolean  "face_action_mouth_duck"
    t.boolean  "face_action_mouth_kiss"
    t.boolean  "face_action_mouth_open"
    t.boolean  "face_action_mouth_closed"
    t.boolean  "face_action_mouth_smile"
    t.boolean  "face_action_mouth_frown"
    t.boolean  "face_action_mouth_teeth_showing"
    t.boolean  "face_action_mouth_tongue_out"
    t.boolean  "face_action_mouth_eating"
    t.boolean  "face_action_mouth_chewing_gum"
    t.boolean  "face_action_mouth_drinking"
    t.boolean  "face_action_smoking"
    t.boolean  "face_action_smoking_cigarette"
    t.boolean  "face_action_smoking_blunt"
    t.boolean  "face_action_smoking_pipe"
    t.boolean  "face_action_smoking_cigar"
    t.boolean  "face_action_eye_closed"
    t.boolean  "face_action_eye_blink"
    t.boolean  "face_action_eye_wink"
    t.boolean  "face_action_eye_looking_off"
    t.boolean  "face_mole"
    t.boolean  "hand"
    t.boolean  "hand_sign"
    t.boolean  "hand_sign_flip_bird"
    t.boolean  "hand_sign_number_one"
    t.boolean  "hand_sign_ok"
    t.boolean  "hand_sign_peace"
    t.boolean  "hand_sign_rocker"
    t.boolean  "hand_sign_shocker"
    t.boolean  "hand_nails_painted"
    t.boolean  "hand_holding_object"
    t.boolean  "hand_holding_object_phone"
    t.boolean  "hand_holding_object_camera"
    t.boolean  "location_indoors"
    t.boolean  "location_outdoors"
    t.boolean  "location_in_car"
    t.boolean  "location_on_beach"
    t.boolean  "location_in_bathroom"
    t.boolean  "posing_with_people"
    t.boolean  "posing_with_animal"
    t.boolean  "posing_with_animal_mammal"
    t.boolean  "posing_with_animal_mammal_cat"
    t.boolean  "posing_with_animal_mammal_dog"
    t.boolean  "posing_with_animal_bird"
    t.boolean  "posing_with_animal_reptile"
    t.boolean  "posing_with_animal_fish"
  end

  create_table "cards_included_in_games", force: true do |t|
    t.integer  "game_id"
    t.integer  "card_id"
    t.boolean  "revealed_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_questions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "num_of_cards_in_play"
    t.integer  "allowable_guesses"
    t.integer  "num_of_guesses_so_far"
    t.integer  "winning_card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "question_text"
    t.boolean  "included_in_game"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tempselfies", force: true do |t|
    t.string   "instagram_username"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_game_records", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "instagram_username"
    t.integer  "card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
