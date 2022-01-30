//
//  Model.swift
//  ak
//
//  Created by Herman Nordin on 2021-12-23.
//
import Foundation
func getData(id: String) {
    let url = URL(string: "https://world.openfoodfacts.org/api/v0/product/" + id + ".json")!
    
    let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
        guard let data = data else { return }
        print(String(data: data, encoding: .utf8)!)
        do {
            var d = try JSONDecoder().decode(Model.self, from: data)
            print(d.status)
        } catch {
            print("Error: \(error)")
        }
    }
    
    
    task.resume()
}

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let model = try? newJSONDecoder().decode(Model.self, from: jsonData)

import Foundation

// MARK: - Model
struct Model: Codable {
    let code: String?
    let product: Product?
    let status: Int?
    let statusVerbose: String?
    
    enum CodingKeys: String, CodingKey {
        case code, product, status
        case statusVerbose = "status_verbose"
    }
}

// MARK: - Product
struct Product: Codable {
    let id: String?
    let keywords: [String]?
    let addedCountriesTags, additivesDebugTags: [JSONAny]?
    let additivesN, additivesOldN: Int?
    let additivesOldTags, additivesOriginalTags, additivesPrevOriginalTags, additivesTags: [String]?
    let additivesTagsN: JSONNull?
    let allergens, allergensFromIngredients, allergensFromUser: String?
    let allergensHierarchy: [JSONAny]?
    let allergensLc: String?
    let allergensTags, aminoAcidsPrevTags, aminoAcidsTags: [JSONAny]?
    let brands: String?
    let brandsTags: [String]?
    let categories: String?
    let categoriesHierarchy: [String]?
    let categoriesLc, categoriesOld: String?
    let categoriesProperties: CategoriesProperties?
    let categoriesPropertiesTags, categoriesTags: [String]?
    let categoryProperties: CategoryProperties?
    let checkersTags: [JSONAny]?
    let ciqualFoodNameTags: [String]?
    let citiesTags: [JSONAny]?
    let code: String?
    let codesTags: [String]?
    let comparedToCategory: String?
    let complete: Int?
    let completeness: Double?
    let correctorsTags: [String]?
    let countries: String?
    let countriesHierarchy: [String]?
    let countriesLc: String?
    let countriesTags: [String]?
    let createdT: Int?
    let creator: Creator?
    let dataQualityBugsTags, dataQualityErrorsTags: [JSONAny]?
    let dataQualityInfoTags, dataQualityTags, dataQualityWarningsTags, debugParamSortedLangs: [String]?
    let ecoscoreData: EcoscoreData?
    let ecoscoreGrade: String?
    let ecoscoreTags, editors, editorsTags: [String]?
    let embCodes, embCodes20141016, embCodesOrig: String?
    let embCodesTags: [JSONAny]?
    let entryDatesTags: [String]?
    let expirationDate: String?
    let fruitsVegetablesNuts100GEstimate: Int?
    let genericName, genericNameEn, productID: String?
    let imageFrontSmallURL, imageFrontThumbURL, imageFrontURL, imageIngredientsSmallURL: String?
    let imageIngredientsThumbURL, imageIngredientsURL, imageNutritionSmallURL, imageNutritionThumbURL: String?
    let imageNutritionURL, imageSmallURL, imageThumbURL, imageURL: String?
    let images: Images?
    let informersTags: [String]?
    let ingredients: [Ingredient]?
    let ingredientsAnalysisTags: [String]?
    let ingredientsDebug: [String?]?
    let ingredientsFromOrThatMayBeFromPalmOilN, ingredientsFromPalmOilN: Int?
    let ingredientsFromPalmOilTags: [JSONAny]?
    let ingredientsHierarchy, ingredientsIDSDebug: [String]?
    let ingredientsN: Int?
    let ingredientsNTags, ingredientsOriginalTags: [String]?
    let ingredientsPercentAnalysis: Int?
    let ingredientsTags: [String]?
    let ingredientsText, ingredientsTextDebug, ingredientsTextEn, ingredientsTextWithAllergens: String?
    let ingredientsTextWithAllergensEn: String?
    let ingredientsThatMayBeFromPalmOilN: Int?
    let ingredientsThatMayBeFromPalmOilTags: [JSONAny]?
    let interfaceVersionCreated, interfaceVersionModified: String?
    let knownIngredientsN: Int?
    let labels: String?
    let labelsHierarchy: [JSONAny]?
    let labelsLc: String?
    let labelsTags: [JSONAny]?
    let lang: String?
    let languages: Languages?
    let languagesCodes: LanguagesCodes?
    let languagesHierarchy, languagesTags, lastEditDatesTags: [String]?
    let lastEditor: JSONNull?
    let lastImageDatesTags: [String]?
    let lastImageT: Int?
    let lastModifiedBy: JSONNull?
    let lastModifiedT: Int?
    let lc, link: String?
    let mainCountriesTags: [JSONAny]?
    let manufacturingPlaces: String?
    let manufacturingPlacesTags: [JSONAny]?
    let maxImgid: String?
    let mineralsPrevTags, mineralsTags: [JSONAny]?
    let miscTags: [String]?
    let newAdditivesN: Int?
    let noNutritionData: String?
    let novaGroup: Int?
    let novaGroupDebug, novaGroups: String?
    let novaGroupsTags: [String]?
    let nucleotidesPrevTags, nucleotidesTags: [JSONAny]?
    let nutrientLevels: NutrientLevels?
    let nutrientLevelsTags: [String]?
    let nutriments: Nutriments?
    let nutriscoreData: NutriscoreData?
    let nutriscoreGrade: String?
    let nutriscoreScore, nutriscoreScoreOpposite: Int?
    let nutritionData, nutritionDataPer, nutritionDataPrepared, nutritionDataPreparedPer: String?
    let nutritionGradeFr, nutritionGrades: String?
    let nutritionGradesTags: [String]?
    let nutritionScoreBeverage, nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients, nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue: Int?
    let origins: String?
    let originsHierarchy: [JSONAny]?
    let originsLc, originsOld: String?
    let originsTags, otherNutritionalSubstancesTags: [JSONAny]?
    let packaging: String?
    let packagingTags: [String]?
    let packagings: [Packaging]?
    let photographersTags: [String]?
    let pnnsGroups1: String?
    let pnnsGroups1_Tags: [String]?
    let pnnsGroups2: String?
    let pnnsGroups2_Tags: [String]?
    let popularityKey: Int?
    let popularityTags: [String]?
    let productName, productNameEn, productQuantity, purchasePlaces: String?
    let purchasePlacesTags: [String]?
    let quantity: String?
    let removedCountriesTags: [JSONAny]?
    let rev, scansN: Int?
    let selectedImages: SelectedImages?
    let servingQuantity, servingSize: String?
    let sortkey: Int?
    let states: String?
    let statesHierarchy, statesTags: [String]?
    let stores: String?
    let storesTags: [JSONAny]?
    let traces, tracesFromIngredients, tracesFromUser: String?
    let tracesHierarchy: [JSONAny]?
    let tracesLc: String?
    let tracesTags: [JSONAny]?
    let uniqueScansN, unknownIngredientsN: Int?
    let unknownNutrientsTags: [JSONAny]?
    let updateKey: String?
    let vitaminsPrevTags, vitaminsTags: [JSONAny]?
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case keywords = "_keywords"
        case addedCountriesTags = "added_countries_tags"
        case additivesDebugTags = "additives_debug_tags"
        case additivesN = "additives_n"
        case additivesOldN = "additives_old_n"
        case additivesOldTags = "additives_old_tags"
        case additivesOriginalTags = "additives_original_tags"
        case additivesPrevOriginalTags = "additives_prev_original_tags"
        case additivesTags = "additives_tags"
        case additivesTagsN = "additives_tags_n"
        case allergens
        case allergensFromIngredients = "allergens_from_ingredients"
        case allergensFromUser = "allergens_from_user"
        case allergensHierarchy = "allergens_hierarchy"
        case allergensLc = "allergens_lc"
        case allergensTags = "allergens_tags"
        case aminoAcidsPrevTags = "amino_acids_prev_tags"
        case aminoAcidsTags = "amino_acids_tags"
        case brands
        case brandsTags = "brands_tags"
        case categories
        case categoriesHierarchy = "categories_hierarchy"
        case categoriesLc = "categories_lc"
        case categoriesOld = "categories_old"
        case categoriesProperties = "categories_properties"
        case categoriesPropertiesTags = "categories_properties_tags"
        case categoriesTags = "categories_tags"
        case categoryProperties = "category_properties"
        case checkersTags = "checkers_tags"
        case ciqualFoodNameTags = "ciqual_food_name_tags"
        case citiesTags = "cities_tags"
        case code
        case codesTags = "codes_tags"
        case comparedToCategory = "compared_to_category"
        case complete, completeness
        case correctorsTags = "correctors_tags"
        case countries
        case countriesHierarchy = "countries_hierarchy"
        case countriesLc = "countries_lc"
        case countriesTags = "countries_tags"
        case createdT = "created_t"
        case creator
        case dataQualityBugsTags = "data_quality_bugs_tags"
        case dataQualityErrorsTags = "data_quality_errors_tags"
        case dataQualityInfoTags = "data_quality_info_tags"
        case dataQualityTags = "data_quality_tags"
        case dataQualityWarningsTags = "data_quality_warnings_tags"
        case debugParamSortedLangs = "debug_param_sorted_langs"
        case ecoscoreData = "ecoscore_data"
        case ecoscoreGrade = "ecoscore_grade"
        case ecoscoreTags = "ecoscore_tags"
        case editors
        case editorsTags = "editors_tags"
        case embCodes = "emb_codes"
        case embCodes20141016 = "emb_codes_20141016"
        case embCodesOrig = "emb_codes_orig"
        case embCodesTags = "emb_codes_tags"
        case entryDatesTags = "entry_dates_tags"
        case expirationDate = "expiration_date"
        case fruitsVegetablesNuts100GEstimate = "fruits-vegetables-nuts_100g_estimate"
        case genericName = "generic_name"
        case genericNameEn = "generic_name_en"
        case productID = "id"
        case imageFrontSmallURL = "image_front_small_url"
        case imageFrontThumbURL = "image_front_thumb_url"
        case imageFrontURL = "image_front_url"
        case imageIngredientsSmallURL = "image_ingredients_small_url"
        case imageIngredientsThumbURL = "image_ingredients_thumb_url"
        case imageIngredientsURL = "image_ingredients_url"
        case imageNutritionSmallURL = "image_nutrition_small_url"
        case imageNutritionThumbURL = "image_nutrition_thumb_url"
        case imageNutritionURL = "image_nutrition_url"
        case imageSmallURL = "image_small_url"
        case imageThumbURL = "image_thumb_url"
        case imageURL = "image_url"
        case images
        case informersTags = "informers_tags"
        case ingredients
        case ingredientsAnalysisTags = "ingredients_analysis_tags"
        case ingredientsDebug = "ingredients_debug"
        case ingredientsFromOrThatMayBeFromPalmOilN = "ingredients_from_or_that_may_be_from_palm_oil_n"
        case ingredientsFromPalmOilN = "ingredients_from_palm_oil_n"
        case ingredientsFromPalmOilTags = "ingredients_from_palm_oil_tags"
        case ingredientsHierarchy = "ingredients_hierarchy"
        case ingredientsIDSDebug = "ingredients_ids_debug"
        case ingredientsN = "ingredients_n"
        case ingredientsNTags = "ingredients_n_tags"
        case ingredientsOriginalTags = "ingredients_original_tags"
        case ingredientsPercentAnalysis = "ingredients_percent_analysis"
        case ingredientsTags = "ingredients_tags"
        case ingredientsText = "ingredients_text"
        case ingredientsTextDebug = "ingredients_text_debug"
        case ingredientsTextEn = "ingredients_text_en"
        case ingredientsTextWithAllergens = "ingredients_text_with_allergens"
        case ingredientsTextWithAllergensEn = "ingredients_text_with_allergens_en"
        case ingredientsThatMayBeFromPalmOilN = "ingredients_that_may_be_from_palm_oil_n"
        case ingredientsThatMayBeFromPalmOilTags = "ingredients_that_may_be_from_palm_oil_tags"
        case interfaceVersionCreated = "interface_version_created"
        case interfaceVersionModified = "interface_version_modified"
        case knownIngredientsN = "known_ingredients_n"
        case labels
        case labelsHierarchy = "labels_hierarchy"
        case labelsLc = "labels_lc"
        case labelsTags = "labels_tags"
        case lang, languages
        case languagesCodes = "languages_codes"
        case languagesHierarchy = "languages_hierarchy"
        case languagesTags = "languages_tags"
        case lastEditDatesTags = "last_edit_dates_tags"
        case lastEditor = "last_editor"
        case lastImageDatesTags = "last_image_dates_tags"
        case lastImageT = "last_image_t"
        case lastModifiedBy = "last_modified_by"
        case lastModifiedT = "last_modified_t"
        case lc, link
        case mainCountriesTags = "main_countries_tags"
        case manufacturingPlaces = "manufacturing_places"
        case manufacturingPlacesTags = "manufacturing_places_tags"
        case maxImgid = "max_imgid"
        case mineralsPrevTags = "minerals_prev_tags"
        case mineralsTags = "minerals_tags"
        case miscTags = "misc_tags"
        case newAdditivesN = "new_additives_n"
        case noNutritionData = "no_nutrition_data"
        case novaGroup = "nova_group"
        case novaGroupDebug = "nova_group_debug"
        case novaGroups = "nova_groups"
        case novaGroupsTags = "nova_groups_tags"
        case nucleotidesPrevTags = "nucleotides_prev_tags"
        case nucleotidesTags = "nucleotides_tags"
        case nutrientLevels = "nutrient_levels"
        case nutrientLevelsTags = "nutrient_levels_tags"
        case nutriments
        case nutriscoreData = "nutriscore_data"
        case nutriscoreGrade = "nutriscore_grade"
        case nutriscoreScore = "nutriscore_score"
        case nutriscoreScoreOpposite = "nutriscore_score_opposite"
        case nutritionData = "nutrition_data"
        case nutritionDataPer = "nutrition_data_per"
        case nutritionDataPrepared = "nutrition_data_prepared"
        case nutritionDataPreparedPer = "nutrition_data_prepared_per"
        case nutritionGradeFr = "nutrition_grade_fr"
        case nutritionGrades = "nutrition_grades"
        case nutritionGradesTags = "nutrition_grades_tags"
        case nutritionScoreBeverage = "nutrition_score_beverage"
        case nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredients = "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients"
        case nutritionScoreWarningFruitsVegetablesNutsEstimateFromIngredientsValue = "nutrition_score_warning_fruits_vegetables_nuts_estimate_from_ingredients_value"
        case origins
        case originsHierarchy = "origins_hierarchy"
        case originsLc = "origins_lc"
        case originsOld = "origins_old"
        case originsTags = "origins_tags"
        case otherNutritionalSubstancesTags = "other_nutritional_substances_tags"
        case packaging
        case packagingTags = "packaging_tags"
        case packagings
        case photographersTags = "photographers_tags"
        case pnnsGroups1 = "pnns_groups_1"
        case pnnsGroups1_Tags = "pnns_groups_1_tags"
        case pnnsGroups2 = "pnns_groups_2"
        case pnnsGroups2_Tags = "pnns_groups_2_tags"
        case popularityKey = "popularity_key"
        case popularityTags = "popularity_tags"
        case productName = "product_name"
        case productNameEn = "product_name_en"
        case productQuantity = "product_quantity"
        case purchasePlaces = "purchase_places"
        case purchasePlacesTags = "purchase_places_tags"
        case quantity
        case removedCountriesTags = "removed_countries_tags"
        case rev
        case scansN = "scans_n"
        case selectedImages = "selected_images"
        case servingQuantity = "serving_quantity"
        case servingSize = "serving_size"
        case sortkey, states
        case statesHierarchy = "states_hierarchy"
        case statesTags = "states_tags"
        case stores
        case storesTags = "stores_tags"
        case traces
        case tracesFromIngredients = "traces_from_ingredients"
        case tracesFromUser = "traces_from_user"
        case tracesHierarchy = "traces_hierarchy"
        case tracesLc = "traces_lc"
        case tracesTags = "traces_tags"
        case uniqueScansN = "unique_scans_n"
        case unknownIngredientsN = "unknown_ingredients_n"
        case unknownNutrientsTags = "unknown_nutrients_tags"
        case updateKey = "update_key"
        case vitaminsPrevTags = "vitamins_prev_tags"
        case vitaminsTags = "vitamins_tags"
    }
}

// MARK: - CategoriesProperties
struct CategoriesProperties: Codable {
    let agribalyseProxyFoodCodeEn, ciqualFoodCodeEn: String?
    
    enum CodingKeys: String, CodingKey {
        case agribalyseProxyFoodCodeEn = "agribalyse_proxy_food_code:en"
        case ciqualFoodCodeEn = "ciqual_food_code:en"
    }
}

// MARK: - CategoryProperties
struct CategoryProperties: Codable {
    let ciqualFoodNameEn, ciqualFoodNameFr: String?
    
    enum CodingKeys: String, CodingKey {
        case ciqualFoodNameEn = "ciqual_food_name:en"
        case ciqualFoodNameFr = "ciqual_food_name:fr"
    }
}

enum Creator: String, Codable {
    case bredowmax = "bredowmax"
    case openfoodfactsContributors = "openfoodfacts-contributors"
    case tacinte = "tacinte"
}

// MARK: - EcoscoreData
struct EcoscoreData: Codable {
    let adjustments: Adjustments?
    let ecoscoreNotApplicableForCategory, status: String?
    
    enum CodingKeys: String, CodingKey {
        case adjustments
        case ecoscoreNotApplicableForCategory = "ecoscore_not_applicable_for_category"
        case status
    }
}

// MARK: - Adjustments
struct Adjustments: Codable {
}

// MARK: - Images
struct Images: Codable {
    let the1, the2, the3, the4: The1?
    let the5, the6, the7, the8: The10?
    let the9, the10, the11: The10?
    let the12, the13, the14, the15: The1?
    let the16, the17: The1?
    let front: ImagesFront?
    let frontEn: En?
    let ingredients: ImagesFront?
    let ingredientsEn: En?
    let nutrition: ImagesFront?
    let nutritionEn: En?
    
    enum CodingKeys: String, CodingKey {
        case the1 = "1"
        case the2 = "2"
        case the3 = "3"
        case the4 = "4"
        case the5 = "5"
        case the6 = "6"
        case the7 = "7"
        case the8 = "8"
        case the9 = "9"
        case the10 = "10"
        case the11 = "11"
        case the12 = "12"
        case the13 = "13"
        case the14 = "14"
        case the15 = "15"
        case the16 = "16"
        case the17 = "17"
        case front
        case frontEn = "front_en"
        case ingredients
        case ingredientsEn = "ingredients_en"
        case nutrition
        case nutritionEn = "nutrition_en"
    }
}

// MARK: - ImagesFront
struct ImagesFront: Codable {
    let geometry, imgid: String?
    let normalize: String?
    let rev: String?
    let sizes: Sizes?
    let whiteMagic: JSONNull?
    
    enum CodingKeys: String, CodingKey {
        case geometry, imgid, normalize, rev, sizes
        case whiteMagic = "white_magic"
    }
}

// MARK: - Sizes
struct Sizes: Codable {
    let the100, the400, full, the200: The100?
    
    enum CodingKeys: String, CodingKey {
        case the100 = "100"
        case the400 = "400"
        case full
        case the200 = "200"
    }
}

// MARK: - The100
struct The100: Codable {
    let h, w: Int?
}

// MARK: - En
struct En: Codable {
    let angle, geometry, imgid, normalize: String?
    let rev: String?
    let sizes: Sizes?
    let whiteMagic, x1, x2, y1: String?
    let y2: String?
    
    enum CodingKeys: String, CodingKey {
        case angle, geometry, imgid, normalize, rev, sizes
        case whiteMagic = "white_magic"
        case x1, x2, y1, y2
    }
}

// MARK: - The1
struct The1: Codable {
    let sizes: Sizes?
    let uploadedT: Int?
    let uploader: Creator?
    
    enum CodingKeys: String, CodingKey {
        case sizes
        case uploadedT = "uploaded_t"
        case uploader
    }
}

// MARK: - The10
struct The10: Codable {
    let sizes: Sizes?
    let uploadedT, uploader: String?
    
    enum CodingKeys: String, CodingKey {
        case sizes
        case uploadedT = "uploaded_t"
        case uploader
    }
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let id: String?
    let percentEstimate, percentMax, percentMin: Double?
    let text, vegan, vegetarian: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case percentEstimate = "percent_estimate"
        case percentMax = "percent_max"
        case percentMin = "percent_min"
        case text, vegan, vegetarian
    }
}

// MARK: - Languages
struct Languages: Codable {
    let enEnglish: Int?
    
    enum CodingKeys: String, CodingKey {
        case enEnglish = "en:english"
    }
}

// MARK: - LanguagesCodes
struct LanguagesCodes: Codable {
    let en: Int?
}

// MARK: - NutrientLevels
struct NutrientLevels: Codable {
    let fat, salt, saturatedFat, sugars: String?
    
    enum CodingKeys: String, CodingKey {
        case fat, salt
        case saturatedFat = "saturated-fat"
        case sugars
    }
}

// MARK: - Nutriments
struct Nutriments: Codable {
    let carbohydrates, carbohydrates100G, carbohydratesServing: Int?
    let carbohydratesUnit: String?
    let carbohydratesValue, energy, energyKcal: Int?
    let energyKcal100G: Double?
    let energyKcalServing: Int?
    let energyKcalUnit: String?
    let energyKcalValue, energy100G, energyServing: Int?
    let energyUnit: String?
    let energyValue, fat, fat100G, fatServing: Int?
    let fatUnit: String?
    let fatValue, fiber, fiber100G, fiberServing: Int?
    let fiberUnit: String?
    let fiberValue, fruitsVegetablesNutsEstimateFromIngredients100G, novaGroup, novaGroup100G: Int?
    let novaGroupServing, nutritionScoreFr, nutritionScoreFr100G, proteins: Int?
    let proteins100G, proteinsServing: Int?
    let proteinsUnit: String?
    let proteinsValue: Int?
    let salt, salt100G, saltServing: Double?
    let saltUnit: String?
    let saltValue: Double?
    let saturatedFat, saturatedFat100G, saturatedFatServing: Int?
    let saturatedFatUnit: String?
    let saturatedFatValue: Int?
    let sodium, sodium100G, sodiumServing: Double?
    let sodiumUnit: String?
    let sodiumValue, sugars, sugars100G, sugarsServing: Int?
    let sugarsUnit: String?
    let sugarsValue: Int?
    
    enum CodingKeys: String, CodingKey {
        case carbohydrates
        case carbohydrates100G = "carbohydrates_100g"
        case carbohydratesServing = "carbohydrates_serving"
        case carbohydratesUnit = "carbohydrates_unit"
        case carbohydratesValue = "carbohydrates_value"
        case energy
        case energyKcal = "energy-kcal"
        case energyKcal100G = "energy-kcal_100g"
        case energyKcalServing = "energy-kcal_serving"
        case energyKcalUnit = "energy-kcal_unit"
        case energyKcalValue = "energy-kcal_value"
        case energy100G = "energy_100g"
        case energyServing = "energy_serving"
        case energyUnit = "energy_unit"
        case energyValue = "energy_value"
        case fat
        case fat100G = "fat_100g"
        case fatServing = "fat_serving"
        case fatUnit = "fat_unit"
        case fatValue = "fat_value"
        case fiber
        case fiber100G = "fiber_100g"
        case fiberServing = "fiber_serving"
        case fiberUnit = "fiber_unit"
        case fiberValue = "fiber_value"
        case fruitsVegetablesNutsEstimateFromIngredients100G = "fruits-vegetables-nuts-estimate-from-ingredients_100g"
        case novaGroup = "nova-group"
        case novaGroup100G = "nova-group_100g"
        case novaGroupServing = "nova-group_serving"
        case nutritionScoreFr = "nutrition-score-fr"
        case nutritionScoreFr100G = "nutrition-score-fr_100g"
        case proteins
        case proteins100G = "proteins_100g"
        case proteinsServing = "proteins_serving"
        case proteinsUnit = "proteins_unit"
        case proteinsValue = "proteins_value"
        case salt
        case salt100G = "salt_100g"
        case saltServing = "salt_serving"
        case saltUnit = "salt_unit"
        case saltValue = "salt_value"
        case saturatedFat = "saturated-fat"
        case saturatedFat100G = "saturated-fat_100g"
        case saturatedFatServing = "saturated-fat_serving"
        case saturatedFatUnit = "saturated-fat_unit"
        case saturatedFatValue = "saturated-fat_value"
        case sodium
        case sodium100G = "sodium_100g"
        case sodiumServing = "sodium_serving"
        case sodiumUnit = "sodium_unit"
        case sodiumValue = "sodium_value"
        case sugars
        case sugars100G = "sugars_100g"
        case sugarsServing = "sugars_serving"
        case sugarsUnit = "sugars_unit"
        case sugarsValue = "sugars_value"
    }
}

// MARK: - NutriscoreData
struct NutriscoreData: Codable {
    let energy, energyPoints, energyValue, fiber: Int?
    let fiberPoints, fiberValue, fruitsVegetablesNutsColzaWalnutOliveOils, fruitsVegetablesNutsColzaWalnutOliveOilsPoints: Int?
    let fruitsVegetablesNutsColzaWalnutOliveOilsValue: Int?
    let grade: String?
    let isBeverage, isCheese, isFat, isWater: Int?
    let negativePoints, positivePoints, proteins, proteinsPoints: Int?
    let proteinsValue, saturatedFat, saturatedFatPoints, saturatedFatRatio: Int?
    let saturatedFatRatioPoints, saturatedFatRatioValue, saturatedFatValue, score: Int?
    let sodium: Double?
    let sodiumPoints: Int?
    let sodiumValue: Double?
    let sugars, sugarsPoints, sugarsValue: Int?
    
    enum CodingKeys: String, CodingKey {
        case energy
        case energyPoints = "energy_points"
        case energyValue = "energy_value"
        case fiber
        case fiberPoints = "fiber_points"
        case fiberValue = "fiber_value"
        case fruitsVegetablesNutsColzaWalnutOliveOils = "fruits_vegetables_nuts_colza_walnut_olive_oils"
        case fruitsVegetablesNutsColzaWalnutOliveOilsPoints = "fruits_vegetables_nuts_colza_walnut_olive_oils_points"
        case fruitsVegetablesNutsColzaWalnutOliveOilsValue = "fruits_vegetables_nuts_colza_walnut_olive_oils_value"
        case grade
        case isBeverage = "is_beverage"
        case isCheese = "is_cheese"
        case isFat = "is_fat"
        case isWater = "is_water"
        case negativePoints = "negative_points"
        case positivePoints = "positive_points"
        case proteins
        case proteinsPoints = "proteins_points"
        case proteinsValue = "proteins_value"
        case saturatedFat = "saturated_fat"
        case saturatedFatPoints = "saturated_fat_points"
        case saturatedFatRatio = "saturated_fat_ratio"
        case saturatedFatRatioPoints = "saturated_fat_ratio_points"
        case saturatedFatRatioValue = "saturated_fat_ratio_value"
        case saturatedFatValue = "saturated_fat_value"
        case score, sodium
        case sodiumPoints = "sodium_points"
        case sodiumValue = "sodium_value"
        case sugars
        case sugarsPoints = "sugars_points"
        case sugarsValue = "sugars_value"
    }
}

// MARK: - Packaging
struct Packaging: Codable {
    let material, shape: String?
}

// MARK: - SelectedImages
struct SelectedImages: Codable {
    let front, ingredients, nutrition: SelectedImagesFront?
}

// MARK: - SelectedImagesFront
struct SelectedImagesFront: Codable {
    let display, small, thumb: Display?
}

// MARK: - Display
struct Display: Codable {
    let en: String?
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    public var hashValue: Int {
        return 0
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

