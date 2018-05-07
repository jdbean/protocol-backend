# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ vernacular: 'Star Wars' }, { vernacular: 'Lord of the Rings' }])
#   Character.create(vernacular: 'Luke', movie: movies.first)
Language.create(vernacular: "Afrikaans", code: "af")
Language.create(vernacular: "Albanian", code: "sq")
Language.create(vernacular: "Amharic", code: "am")
Language.create(vernacular: "Arabic", code: "ar")
Language.create(vernacular: "Armenian", code: "hy")
Language.create(vernacular: "Azeerbaijani", code: "az")
Language.create(vernacular: "Basque", code: "eu")
Language.create(vernacular: "Belarusian", code: "be")
Language.create(vernacular: "Bengali", code: "bn")
Language.create(vernacular: "Bosnian", code: "bs")
Language.create(vernacular: "Bulgarian", code: "bg")
Language.create(vernacular: "Catalan", code: "ca")
Language.create(vernacular: "Cebuano", code: "ceb")
Language.create(vernacular: "Chinese (Simplified)", code: "zh-CN")
Language.create(vernacular: "Chinese (Traditional)", code: "zh-TW")
Language.create(vernacular: "Corsican", code: "co")
Language.create(vernacular: "Croatian", code: "hr")
Language.create(vernacular: "Czech", code: "cs")
Language.create(vernacular: "Danish", code: "da")
Language.create(vernacular: "Dutch", code: "nl")
Language.create(vernacular: "English", code: "en")
Language.create(vernacular: "Esperanto", code: "eo")
Language.create(vernacular: "Estonian", code: "et")
Language.create(vernacular: "Finnish", code: "fi")
Language.create(vernacular: "French", code: "fr")
Language.create(vernacular: "Frisian", code: "fy")
Language.create(vernacular: "Galician", code: "gl")
Language.create(vernacular: "Georgian", code: "ka")
Language.create(vernacular: "German", code: "de")
Language.create(vernacular: "Greek", code: "el")
Language.create(vernacular: "Gujarati", code: "gu")
Language.create(vernacular: "Haitian Creole", code: "ht")
Language.create(vernacular: "Hausa", code: "ha")
Language.create(vernacular: "Hawaiian", code: "haw")
Language.create(vernacular: "Hebrew", code: "iw")
Language.create(vernacular: "Hindi", code: "hi")
Language.create(vernacular: "Hmong", code: "hmn")
Language.create(vernacular: "Hungarian", code: "hu")
Language.create(vernacular: "Icelandic", code: "is")
Language.create(vernacular: "Igbo", code: "ig")
Language.create(vernacular: "Indonesian", code: "id")
Language.create(vernacular: "Irish", code: "ga")
Language.create(vernacular: "Italian", code: "it")
Language.create(vernacular: "Japanese", code: "ja")
Language.create(vernacular: "Javanese", code: "jw")
Language.create(vernacular: "Kannada", code: "kn")
Language.create(vernacular: "Kazakh", code: "kk")
Language.create(vernacular: "Khmer", code: "km")
Language.create(vernacular: "Korean", code: "ko")
Language.create(vernacular: "Kurdish", code: "ku")
Language.create(vernacular: "Kyrgyz", code: "ky")
Language.create(vernacular: "Lao", code: "lo")
Language.create(vernacular: "Latin", code: "la")
Language.create(vernacular: "Latvian", code: "lv")
Language.create(vernacular: "Lithuanian", code: "lt")
Language.create(vernacular: "Luxembourgish", code: "lb")
Language.create(vernacular: "Macedonian", code: "mk")
Language.create(vernacular: "Malagasy", code: "mg")
Language.create(vernacular: "Malay", code: "ms")
Language.create(vernacular: "Malayalam", code: "ml")
Language.create(vernacular: "Maltese", code: "mt")
Language.create(vernacular: "Maori", code: "mi")
Language.create(vernacular: "Marathi", code: "mr")
Language.create(vernacular: "Mongolian", code: "mn")
Language.create(vernacular: "Myanmar", code: "my")
Language.create(vernacular: "Nepali", code: "ne")
Language.create(vernacular: "Norwegian", code: "no")
Language.create(vernacular: "Nyanja", code: "ny")
Language.create(vernacular: "Pashto", code: "ps")
Language.create(vernacular: "Persian", code: "fa")
Language.create(vernacular: "Polish", code: "pl")
Language.create(vernacular: "Portuguese", code: "pt")
Language.create(vernacular: "Punjabi", code: "pa")
Language.create(vernacular: "Romanian", code: "ro")
Language.create(vernacular: "Russian", code: "ru")
Language.create(vernacular: "Samoan", code: "sm")
Language.create(vernacular: "Scots Gaelic", code: "gd")
Language.create(vernacular: "Serbian", code: "sr")
Language.create(vernacular: "Sesotho", code: "st")
Language.create(vernacular: "Shona", code: "sn")
Language.create(vernacular: "Sindhi", code: "sd")
Language.create(vernacular: "Sinhala (Sinhalese)", code: "si")
Language.create(vernacular: "Slovak", code: "sk")
Language.create(vernacular: "Slovenian", code: "sl")
Language.create(vernacular: "Somali", code: "so")
Language.create(vernacular: "Spanish", code: "es")
Language.create(vernacular: "Sundanese", code: "su")
Language.create(vernacular: "Swahili", code: "sw")
Language.create(vernacular: "Swedish", code: "sv")
Language.create(vernacular: "Tagalog (Filipino)", code: "tl")
Language.create(vernacular: "Tajik", code: "tg")
Language.create(vernacular: "Tamil", code: "ta")
Language.create(vernacular: "Telugu", code: "te")
Language.create(vernacular: "Thai", code: "th")
Language.create(vernacular: "Turkish", code: "tr")
Language.create(vernacular: "Ukrainian", code: "uk")
Language.create(vernacular: "Urdu", code: "ur")
Language.create(vernacular: "Uzbek", code: "uz")
Language.create(vernacular: "Vietnamese", code: "vi")
Language.create(vernacular: "Welsh", code: "cy")
Language.create(vernacular: "Xhosa", code: "xh")
Language.create(vernacular: "Yiddish", code: "yi")
Language.create(vernacular: "Yoruba", code: "yo")
Language.create(vernacular: "Zulu", code: "zu")

User.create(name: "Jeremy", language: Language.find_by(vernacular: "English"))
User.create(name: "JD", language: Language.find_by(vernacular: "Spanish"))