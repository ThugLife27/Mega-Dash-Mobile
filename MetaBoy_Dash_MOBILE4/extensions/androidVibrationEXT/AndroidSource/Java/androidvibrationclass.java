package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;
import ${YYAndroidPackageName}.RunnerActivity;
import com.yoyogames.runner.RunnerJNILib;

import android.os.Vibrator;
import android.os.VibrationEffect;
import android.app.Activity;

public class androidvibrationclass{
	Activity myAct = RunnerActivity.CurrentActivity;
	
	public double androidVibrate(double time, double force){
		
		Vibrator vibrator = (Vibrator) this.myAct.getSystemService("vibrator");
		long time_ = Double.valueOf(time).longValue(); //Milliseconds
		int force_ = Double.valueOf(force).intValue(); //Amplitude
		
		if(force_ > 255){
			//Max amplitude
			force_ = 255;
		}
		
		if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
			VibrationEffect effect = VibrationEffect.createOneShot(time_,force_);
			vibrator.vibrate(effect);
		}
		else{
			vibrator.vibrate(time_);
		}
		return 0;
	}
}