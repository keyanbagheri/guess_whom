class AddCharataristicsToCardModel < ActiveRecord::Migration
  def change
	 add_column :cards, :gender_male, :boolean
	 add_column :cards, :gender_female, :boolean
	 add_column :cards, :hair, :boolean
	 add_column :cards, :hair_color_red, :boolean
	 add_column :cards, :hair_color_blonde, :boolean
	 add_column :cards, :hair_color_gray, :boolean
	 add_column :cards, :hair_color_white, :boolean
	 add_column :cards, :hair_color_black, :boolean
	 add_column :cards, :hair_color_brunette, :boolean
	 add_column :cards, :hair_color_green, :boolean
	 add_column :cards, :hair_color_pink, :boolean
	 add_column :cards, :hair_color_purple, :boolean
	 add_column :cards, :hair_color_blue, :boolean
	 add_column :cards, :hair_color_orange, :boolean
	 add_column :cards, :hair_length_long, :boolean
	 add_column :cards, :hair_length_short, :boolean
	 add_column :cards, :hair_type_straight, :boolean
	 add_column :cards, :hair_type_curly, :boolean
	 add_column :cards, :hair_type_wavey, :boolean
	 add_column :cards, :hair_type_balding, :boolean
	 add_column :cards, :hair_type_bald, :boolean
	 add_column :cards, :hair_cut_mullet, :boolean
	 add_column :cards, :hair_cut_bowl, :boolean
	 add_column :cards, :hair_cut_crew, :boolean
	 add_column :cards, :hair_cut_pixie, :boolean
	 add_column :cards, :hair_style_spiked, :boolean
	 add_column :cards, :hair_style_perm, :boolean
	 add_column :cards, :hair_style_slicked_back, :boolean
	 add_column :cards, :hair_style_braided, :boolean
	 add_column :cards, :hair_style_bun, :boolean
	 add_column :cards, :hair_style_dread_locks, :boolean
	 add_column :cards, :hair_style_corn_rows, :boolean
	 add_column :cards, :hair_style_pony_tail, :boolean
	 add_column :cards, :hair_style_pig_tail, :boolean
	 add_column :cards, :hair_style_bangs, :boolean
	 add_column :cards, :hair_accessory, :boolean
	 add_column :cards, :hair_accessory_wig, :boolean
	 add_column :cards, :hair_accessory_clip, :boolean
	 add_column :cards, :hair_accessory_tie, :boolean
	 add_column :cards, :hair_accessory_band, :boolean
	 add_column :cards, :hair_accessory_bow, :boolean
	 add_column :cards, :hair_facial, :boolean
	 add_column :cards, :hair_facial_beard, :boolean
	 add_column :cards, :hair_facial_mustache, :boolean
	 add_column :cards, :hair_facial_mustache_pencil, :boolean
	 add_column :cards, :hair_facial_mustache_handlebar, :boolean
	 add_column :cards, :hair_facial_mustache_milk, :boolean
	 add_column :cards, :hair_facial_eyebrow_unibrow, :boolean
	 add_column :cards, :hair_facial_stubble, :boolean
	 add_column :cards, :hair_facial_mutton_chops, :boolean
	 add_column :cards, :hair_facial_sideburns, :boolean
	 add_column :cards, :hair_facial_goatee, :boolean
	 add_column :cards, :hair_facial_soul_patch, :boolean
	 add_column :cards, :eye_color_brown, :boolean
	 add_column :cards, :eye_color_blue, :boolean
	 add_column :cards, :eye_color_green, :boolean
	 add_column :cards, :eye_color_black, :boolean
	 add_column :cards, :eye_color_hazel, :boolean
	 add_column :cards, :eye_color_red, :boolean
	 add_column :cards, :makeup, :boolean
	 add_column :cards, :makeup_eye, :boolean
	 add_column :cards, :makeup_eye_mascara, :boolean
	 add_column :cards, :makeup_eye_liner, :boolean 							#add colors?
	 add_column :cards, :makeup_eye_painted_in_eyebrow, :boolean
	 add_column :cards, :makeup_lipstick, :boolean
	 add_column :cards, :makeup_lipstick_red, :boolean
	 add_column :cards, :makeup_lipstick_black, :boolean
	 add_column :cards, :makeup_lipstick_purple, :boolean
	 add_column :cards, :makeup_facepaint, :boolean
	 add_column :cards, :jewelry, :boolean
	 add_column :cards, :jewelry_necklass, :boolean
	 add_column :cards, :jewelry_necklace_pearl, :boolean
	 add_column :cards, :jewelry_necklass_gold, :boolean
	 add_column :cards, :jewelry_necklass_silver, :boolean
	 add_column :cards, :jewelry_necklass_dog_tags, :boolean
	 add_column :cards, :jewelry_piercing, :boolean
	 add_column :cards, :jewelry_piercing_ear, :boolean
	 add_column :cards, :jewelry_piercing_facial, :boolean
	 add_column :cards, :jewelry_piercing_facial_eye, :boolean
	 add_column :cards, :jewelry_piercing_facial_nose, :boolean
	 add_column :cards, :jewelry_piercing_facial_lip, :boolean
	 add_column :cards, :jewelry_piercing_facial_cheek, :boolean
	 add_column :cards, :jewelry_piercing_facial_tongue, :boolean
	 add_column :cards, :jewelry_piercing_ear_pearl, :boolean
	 add_column :cards, :jewelry_piercing_ear_hoop, :boolean
	 add_column :cards, :jewelry_arm, :boolean
	 add_column :cards, :jewelry_arm_watch, :boolean
	 add_column :cards, :jewelry_arm_bracelet, :boolean
	 add_column :cards, :jewelry_finger, :boolean
	 add_column :cards, :jewelry_finger_ring, :boolean
	 add_column :cards, :accessory, :boolean
	 add_column :cards, :accessory_eyewear, :boolean
	 add_column :cards, :accessory_eyewear_glasses, :boolean
	 add_column :cards, :accessory_eyewear_sunglasses, :boolean
	 add_column :cards, :accessory_eyewear_monocle, :boolean
	 add_column :cards, :accessory_headphones, :boolean
	 add_column :cards, :accessory_headphones_ear_buds, :boolean
	 add_column :cards, :accessory_neck, :boolean
	 add_column :cards, :accessory_neck_scarf, :boolean
	 add_column :cards, :accessory_neck_tie, :boolean
	 
	 add_column :cards, :accessory_neck_bowtie, :boolean
	 add_column :cards, :accessory_towel, :boolean
	 add_column :cards, :accessory_bag, :boolean
	 add_column :cards, :accessory_bag_purse, :boolean
	 add_column :cards, :accessory_bag_bookbag, :boolean
	 add_column :cards, :clothing, :boolean
	 add_column :cards, :clothing_hat, :boolean
	 add_column :cards, :clothing_hat_cowboy, :boolean
	 add_column :cards, :clothing_hat_baseballcap, :boolean
	 add_column :cards, :clothing_hat_mask, :boolean
	 add_column :cards, :clothing_hat_helmet, :boolean
	 add_column :cards, :clothing_hat_ski_cap, :boolean
	 add_column :cards, :clothing_hat_straw, :boolean
	 add_column :cards, :clothing_hat_baseball_cap_backwards, :boolean
	 add_column :cards, :clothing_hat_trucker, :boolean
	 add_column :cards, :clothing_hat_tiara, :boolean
	 add_column :cards, :clothing_hat_beanie, :boolean
	 add_column :cards, :clothing_type_costume, :boolean
	 add_column :cards, :clothing_type_hood, :boolean
	 add_column :cards, :clothing_type_hoodie, :boolean
	 add_column :cards, :clothing_type_jacket, :boolean
	 add_column :cards, :clothing_type_dress, :boolean
	 add_column :cards, :clothing_type_shirtless, :boolean
	 add_column :cards, :clothing_type_tshirt, :boolean
	 add_column :cards, :clothing_type_sweater, :boolean
	 add_column :cards, :clothing_type_tank_top, :boolean
	 add_column :cards, :clothing_color_red, :boolean
	 add_column :cards, :clothing_color_blue, :boolean
	 add_column :cards, :clothing_color_green, :boolean
	 add_column :cards, :clothing_color_yellow, :boolean
	 add_column :cards, :clothing_color_white, :boolean
	 add_column :cards, :clothing_color_black, :boolean
	 add_column :cards, :clothing_color_gray, :boolean
	 add_column :cards, :clothing_color_orange, :boolean
	 add_column :cards, :clothing_color_purple, :boolean
	 add_column :cards, :clothing_color_cyan, :boolean
	 add_column :cards, :clothing_color_brown, :boolean
	 add_column :cards, :clothing_color_magenta, :boolean
	 add_column :cards, :clothing_color_pink, :boolean
	 add_column :cards, :clothing_style_camo, :boolean
	 add_column :cards, :clothing_style_denim, :boolean
	 add_column :cards, :clothing_style_stripes, :boolean
	 add_column :cards, :clothing_style_plaid, :boolean
	 add_column :cards, :clothing_style_leopard, :boolean
	 add_column :cards, :clothing_style_leather, :boolean
	 add_column :cards, :clothing_style_fur, :boolean
	 add_column :cards, :face_action_mouth_duck, :boolean
	 add_column :cards, :face_action_mouth_kiss, :boolean
	 add_column :cards, :face_action_mouth_open, :boolean
	 add_column :cards, :face_action_mouth_closed, :boolean
	 add_column :cards, :face_action_mouth_smile, :boolean
	 add_column :cards, :face_action_mouth_frown, :boolean
	 add_column :cards, :face_action_mouth_teeth_showing, :boolean
	 add_column :cards, :face_action_mouth_tongue_out, :boolean
	 add_column :cards, :face_action_mouth_eating, :boolean
	 add_column :cards, :face_action_mouth_chewing_gum, :boolean
	 add_column :cards, :face_action_mouth_drinking, :boolean
	 add_column :cards, :face_action_smoking, :boolean
	 add_column :cards, :face_action_smoking_cigarette, :boolean
	 add_column :cards, :face_action_smoking_blunt, :boolean
	 add_column :cards, :face_action_smoking_pipe, :boolean
	 add_column :cards, :face_action_smoking_cigar, :boolean
	 add_column :cards, :face_action_eye_closed, :boolean
	 add_column :cards, :face_action_eye_blink, :boolean
	 add_column :cards, :face_action_eye_wink, :boolean
	 add_column :cards, :face_action_eye_looking_off, :boolean
	 add_column :cards, :face_mole, :boolean
	 add_column :cards, :hand, :boolean
	 add_column :cards, :hand_sign, :boolean
	 add_column :cards, :hand_sign_flip_bird, :boolean
	 add_column :cards, :hand_sign_number_one, :boolean
	 add_column :cards, :hand_sign_ok, :boolean
	 add_column :cards, :hand_sign_peace, :boolean
	 add_column :cards, :hand_sign_rocker, :boolean
	 add_column :cards, :hand_sign_shocker, :boolean
	 add_column :cards, :hand_nails_painted, :boolean
	 add_column :cards, :hand_holding_object, :boolean
	 add_column :cards, :hand_holding_object_phone, :boolean
	 add_column :cards, :hand_holding_object_camera, :boolean
	 add_column :cards, :location_indoors, :boolean
	 add_column :cards, :location_outdoors, :boolean
	 add_column :cards, :location_in_car, :boolean
	 add_column :cards, :location_on_beach, :boolean
	 add_column :cards, :location_in_bathroom, :boolean
	 add_column :cards, :posing_with_people, :boolean
	 add_column :cards, :posing_with_animal, :boolean
	 add_column :cards, :posing_with_animal_mammal, :boolean
	 add_column :cards, :posing_with_animal_mammal_cat, :boolean
	 add_column :cards, :posing_with_animal_mammal_dog, :boolean
	 add_column :cards, :posing_with_animal_bird, :boolean
	 add_column :cards, :posing_with_animal_reptile, :boolean
	 add_column :cards, :posing_with_animal_fish, :boolean
  end
end