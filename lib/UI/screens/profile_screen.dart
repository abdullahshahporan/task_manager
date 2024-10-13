import 'package:flutter/material.dart';
import 'package:task_manager/UI/widgets/task_manager_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskManagerAppBar(
        isProfileScreenOpen: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 48,
              ),
              Text(
                'Update Profile',
                style:Theme.of(context).textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16,),
              _buidPhotoPicker(),
              const SizedBox(height: 8,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'First Name'),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Last Name'),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'Phone No'),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                onPressed: (){},
                child: const Icon(Icons.arrow_circle_right_outlined),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buidPhotoPicker() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            alignment: Alignment.center,
            child: Text('Photo',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),),
          ),
         const SizedBox(width: 8,),
       const  Text('Selected Photos'),
        ],
      ),
    );
  }
}
