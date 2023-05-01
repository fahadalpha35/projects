README.md

payumoney

PayU Money Android SDK

A simple & Easiest way to integrate PayU Biz Payment Gateway with your Android Application

Step by step guide to integrate PayU Money SDK with your Android Application

1. Add Maven repository and compile dependency in build.gradle file.

   android {
     repositories {
       maven {
           url  "https://dl.bintray.com/sasidhar-678/maven"
       }
     }
   }
   dependencies {
   compile 'com.sasidhar.smaps.payumoney:payumoney:0.0.3'
   }

2. Add Internt Permissions in your Android Application Manifest file

    <uses-permission android:name="android.permission.INTERNET" />

3. Create an object for HashMap and obtain all the required parameters

   HashMap params = new HashMap<>();
   params.put(PayUMoney_Constants.KEY, "merchant_key>"); // Get merchant key from PayU Money Account
   params.put(PayUMoney_Constants.TXN_ID, "transaction_id");
   params.put(PayUMoney_Constants.AMOUNT, "amount");
   params.put(PayUMoney_Constants.PRODUCT_INFO, "product_info");
   params.put(PayUMoney_Constants.FIRST_NAME, "first_name");
   params.put(PayUMoney_Constants.EMAIL, "email");
   params.put(PayUMoney_Constants.PHONE, "phone_number");
   params.put(PayUMoney_Constants.SURL, "success_url");
   params.put(PayUMoney_Constants.FURL, "failure_url");


   // User defined fields are optional (pass empty string)
   params.put(PayUMoney_Constants.UDF1, "");
   params.put(PayUMoney_Constants.UDF2, "");
   params.put(PayUMoney_Constants.UDF3, "");
   params.put(PayUMoney_Constants.UDF4, "");
   params.put(PayUMoney_Constants.UDF5, "");


   // generate hash by passing params and salt
   String hash = Utils.generateHash(params,"salt"); // Get Salt from PayU Money Account
   params.put(PayUMoney_Constants.HASH, hash);


   // SERVICE PROVIDER VALUE IS ALWAYS "payu_paisa".
   params.put(PayUMoney_Constants.SERVICE_PROVIDER, "payu_paisa");

4. Create an Intent to a MakePaymentActivity and pass ENVIRONMENT (DEV/PRODUCATION) and PaymentParams objects 
   that we are create in the above steps as intent extras.

     Intent intent = new Intent(this, MakePaymentActivity.class);
     intent.putExtra(PayUMoney_Constants.ENVIRONMENT, PayUMoney_Constants.ENV_DEV);
     intent.putExtra(PayUMoney_Constants.PARAMS, params);

5. Start Activity for Result

     startActivityForResult(intent, PayUMoney_Constants.PAYMENT_REQUEST);

6. Handle response at onActivityResult

     if (requestCode == PayUMoney_Constants.PAYMENT_REQUEST) {
         switch (resultCode) {
             case RESULT_OK:
                 Toast.makeText(MainActivity.this, "Payment Success.", Toast.LENGTH_SHORT).show();
                 break;

          case RESULT_CANCELED:
              Toast.makeText(MainActivity.this, "Payment Cancelled | Failed.", Toast.LENGTH_SHORT).show();
              break;
        }

     }

