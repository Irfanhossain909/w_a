

import 'package:w_a/models/dev_user/dev_review_user.dart';
import 'package:w_a/models/dev_user/dev_user.dart';

class DevServicesModel {
  final String title;
  final String image;
  final String price;
  bool isSaved;
  final String description;
  final String subDescription;
  final List<String> subDescriptionItem;
  final DevUser user;
  final List<DevReviewUser> review;
  final String category;
  DevServicesModel({
    required this.description,
    required this.image,
    required this.isSaved,
    required this.price,
    required this.review,
    required this.subDescription,
    required this.subDescriptionItem,
    required this.title,
    required this.user,
    required this.category, required int rating,
  });


  final List<DevServicesModel> devListOfServicedData = [
  DevServicesModel(
    title: "Electrician Pro",
    image: "assets/images/electrician.png",
    price: "150",
    isSaved: false,
    description: "Expert in home and industrial electrical repairs.",
    subDescription: "Specialized in wiring, lighting and appliances.",
    subDescriptionItem: ["Wiring", "Lighting", "Electrical Repairs"],
    user: DevUser(
      name: "John Electric",
      profileImage: "assets/images/user1.png",
      dateOfBirth: DateTime.now(),
      image: "assets/images/user1_profile.png",
      address: "123 Electric Ave, Power City",
      spacial: "Certified Electrician",
    ),
    review: [
      DevReviewUser(
        reviewerName: "Alex",
        reviewText: "Very professional!",
        rating: 5,
        time: DateTime.now(),
        name: "Alex Morgan",
        comment: "Great service and punctual!",
        image: "assets/images/reviewer1.png",
      ),
    ],
    category: "Electrician",
    rating: 5,
  ),
  DevServicesModel(
    title: "Plumber Max",
    image: "assets/images/plumber.png",
    price: "120",
    isSaved: false,
    description: "Reliable plumbing services for home and office.",
    subDescription: "Leak repairs, installations and more.",
    subDescriptionItem: ["Pipe Fixing", "Sink Install", "Toilet Repairs"],
    user: DevUser(
      name: "Max Plumb",
      profileImage: "assets/images/user2.png",
      dateOfBirth: DateTime.now(),
      image: "assets/images/user2_profile.png",
      address: "45 Pipe Street, Flowtown",
      spacial: "Water Line Specialist",
    ),
    review: [
      DevReviewUser(
        reviewerName: "Sophia",
        reviewText: "Quick and efficient!",
        rating: 4,
        time: DateTime.now(),
        name: "Sophia Williams",
        comment: "Solved the leak in no time!",
        image: "assets/images/reviewer2.png",
      ),
    ],
    category: "Plumber",
    rating: 4,
  ),
  DevServicesModel(
    title: "Pet Groomers",
    image: "assets/images/pet.png",
    price: "80",
    isSaved: false,
    description: "Pampering pets with care and style.",
    subDescription: "Grooming, washing, and trimming services.",
    subDescriptionItem: ["Bathing", "Haircut", "Nail Clipping"],
    user: DevUser(
      name: "Lisa Paw",
      profileImage: "assets/images/user3.png",
      dateOfBirth:DateTime.now(),
      image: "assets/images/user3_profile.png",
      address: "789 Pet Lane, Furcity",
      spacial: "Certified Pet Groomer",
    ),
    review: [
      DevReviewUser(
        reviewerName: "Emma",
        reviewText: "My dog loves them!",
        rating: 5,
        time: DateTime.now(),
        name: "Emma Brown",
        comment: "Gentle and friendly!",
        image: "assets/images/reviewer3.png",
      ),
    ],
    category: "Pet Services",
    rating: 5,
  ),
  DevServicesModel(
    title: "Home Helper",
    image: "assets/images/home.png",
    price: "200",
    isSaved: false,
    description: "All-round home maintenance and cleaning.",
    subDescription: "Cleaning, organizing, and fixing things around.",
    subDescriptionItem: ["Cleaning", "Organizing", "Minor Repairs"],
    user: DevUser(
      name: "Bob Handy",
      profileImage: "assets/images/user4.png",
      dateOfBirth: DateTime.now(),
      image: "assets/images/user4_profile.png",
      address: "234 Neat St, Cleanville",
      spacial: "Home Organizer",
    ),
    review: [
      DevReviewUser(
        reviewerName: "Liam",
        reviewText: "Great attention to detail!",
        rating: 3,
        time: DateTime.now(),
        name: "Liam Smith",
        comment: "Good, but could be faster.",
        image: "assets/images/reviewer4.png",
      ),
    ],
    category: "Home Services",
    rating: 3,
  ),
  DevServicesModel(
    title: "Personal Fitness",
    image: "assets/images/fitness.png",
    price: "300",
    isSaved: false,
    description: "Get fit with expert personal trainers.",
    subDescription: "Workout plans, diet, and coaching.",
    subDescriptionItem: ["Workout", "Diet", "Coaching"],
    user: DevUser(
      name: "Jake Fit",
      profileImage: "assets/images/user5.png",
      dateOfBirth: DateTime.now(),
      image: "assets/images/user5_profile.png",
      address: "321 Gym St, Fit City",
      spacial: "Certified Fitness Coach",
    ),
    review: [
      DevReviewUser(
        reviewerName: "Noah",
        reviewText: "Lost 10kg in 2 months!",
        rating: 4,
        time: DateTime.now(),
        name: "Noah Davis",
        comment: "Highly motivating sessions.",
        image: "assets/images/reviewer5.png",
      ),
    ],
    category: "Personal Services",
    rating: 4,
  ),
];
}
