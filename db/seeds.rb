# Default User
User.find_or_create_by_username('admin').update_attributes( :password => 'admin123',
                                                            :first_name => 'Fedena',
                                                            :last_name => 'Administrator',
                                                            :email => 'admin@fedena.com',
                                                            :role => 'Admin')

# Populate country list
Country.delete_all
[ "Afghanistan",
"Albania",
"Algeria",
"Andorra",
"Angola",
"Antigua & Deps",
"Argentina",
"Armenia",
"Australia",
"Austria",
"Azerbaijan",
"Bahamas",
"Bahrain",
"Bangladesh",
"Barbados",
"Belarus",
"Belgium",
"Belize",
"Benin",
"Bhutan",
"Bolivia",
"Bosnia Herzegovina",
"Botswana",
"Brazil",
"Brunei",
"Bulgaria",
"Burkina",
"Burundi",
"Cambodia",
"Cameroon",
"Canada",
"Cape Verde",
"Central African Rep",
"Chad",
"Chile",
"China",
"Colombia",
"Comoros",
"Congo",
"Congo {Democratic Rep}",
"Costa Rica",
"Croatia",
"Cuba",
"Cyprus",
"Czech Republic",
"Denmark",
"Djibouti",
"Dominica",
"Dominican Republic",
"East Timor",
"Ecuador",
"Egypt",
"El Salvador",
"Equatorial Guinea",
"Eritrea",
"Estonia",
"Ethiopia",
"Fiji",
"Finland",
"France",
"Gabon",
"Gambia",
"Georgia",
"Germany",
"Ghana",
"Greece",
"Grenada",
"Guatemala",
"Guinea",
"Guinea-Bissau",
"Guyana",
"Haiti",
"Honduras",
"Hungary",
"Iceland",
"India",
"Indonesia",
"Iran",
"Iraq",
"Ireland {Republic}",
"Israel",
"Italy",
"Ivory Coast",
"Jamaica",
"Japan",
"Jordan",
"Kazakhstan",
"Kenya",
"Kiribati",
"Korea North",
"Korea South",
"Kosovo",
"Kuwait",
"Kyrgyzstan",
"Laos",
"Latvia",
"Lebanon",
"Lesotho",
"Liberia",
"Libya",
"Liechtenstein",
"Lithuania",
"Luxembourg",
"Macedonia",
"Madagascar",
"Malawi",
"Malaysia",
"Maldives",
"Mali",
"Malta",
"Montenegro",
"Marshall Islands",
"Mauritania",
"Mauritius",
"Mexico",
"Micronesia",
"Moldova",
"Monaco",
"Mongolia",
"Morocco",
"Mozambique",
"Myanmar, {Burma}",
"Namibia",
"Nauru",
"Nepal",
"Netherlands",
"New Zealand",
"Nicaragua",
"Niger",
"Nigeria",
"Norway",
"Oman",
"Pakistan",
"Palau",
"Panama",
"Papua New Guinea",
"Paraguay",
"Peru",
"Philippines",
"Poland",
"Portugal",
"Qatar",
"Romania",
"Russian Federation",
"Rwanda",
"St Kitts & Nevis",
"St Lucia",
"Saint Vincent & the Grenadines",
"Samoa",
"San Marino",
"Sao Tome & Principe",
"Saudi Arabia",
"Senegal",
"Serbia",
"Seychelles",
"Sierra Leone",
"Singapore",
"Slovakia",
"Slovenia",
"Solomon Islands",
"Somalia",
"South Africa",
"Spain",
"Sri Lanka",
"Sudan",
"Suriname",
"Swaziland",
"Sweden",
"Switzerland",
"Syria",
"Taiwan",
"Tajikistan",
"Tanzania",
"Thailand",
"Togo",
"Tonga",
"Trinidad & Tobago",
"Tunisia",
"Turkey",
"Turkmenistan",
"Tuvalu",
"Uganda",
"Ukraine",
"United Arab Emirates",
"United Kingdom",
"United States",
"Uruguay",
"Uzbekistan",
"Vanuatu",
"Vatican City",
"Venezuea",
"Vietnam",
"Yemen",
"Zambia",
"Zimbabwe"].each do |c|
  @c1 = Country.new
  @c1.name = c
  @c1.save
end

# Default grading
Grading.delete_all
[["A+", 90], ["A", 80], ["B+", 70], ["B", 60], ["C", 45], ["D", 33], ["Fail", 0] ].each { |g| Grading.create(:name => g[0], :min_score => g[1]) }

# Configuration
Configuration.delete_all
Configuration.create :config_key => "SchoolCollegeName", :config_value => ""
Configuration.create :config_key => "StudentAttendanceType", :config_value => "Daily"
Configuration.create :config_key => "AcademicYearID", :config_value => "1"
Configuration.create :config_key => "CurrencyType", :config_value =>""

# Period timing
PeriodTiming.delete_all
PeriodTiming.create(:name => "1", :break => false)
PeriodTiming.create(:name => "2", :break => false)
PeriodTiming.create(:name => "Interval", :break => true)
PeriodTiming.create(:name => "3", :break => false)
PeriodTiming.create(:name => "4", :break => false)
PeriodTiming.create(:name => "Lunch", :break => true)
PeriodTiming.create(:name => "5", :break => false)
PeriodTiming.create(:name => "6", :break => false)
PeriodTiming.create(:name => "7", :break => false)

# Timetable
TimetableWeekDay.delete_all
["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"].each { |c| TimetableWeekDay.create(:name => c) }

# Academic Year
AcademicYear.delete_all
AcademicYear.create(:start_date => Date.today, :end_date => Date.today + 365.days)

# Privileges
Privilege.delete_all
Privilege.create :name => "ExaminationControl"
Privilege.create :name => "EnterResults"
Privilege.create :name => "ViewResults"
Privilege.create :name => "Admission"
Privilege.create :name => "StudentsControl"
Privilege.create :name => "ManageNews"
Privilege.create :name => "Timetable"
Privilege.create :name => "AttendanceControl"
Privilege.create :name => "AddNewClass"
Privilege.create :name => "SubjectMaster"
Privilege.create :name => "AcademicYear"
Privilege.create :name => "HolidaySettings"
Privilege.create :name => "GeneralSettings"