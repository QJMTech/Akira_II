
/// @description Checks if tween is playing
function TweenIsPlaying(argument0)
{
	/// TweenIsPlaying(tween)
	/// @param tween	tween id
	/// return: bool
	/*
	    NOTE:
	        ** Will NOT return true if tween is processing a delay **
        
	    Example:
	        if (TweenIsPlaying(tween))
	        {
	            TweenPause(tween);
	        }
	*/

	var _t = TGMS_FetchTween(argument0);
	if (is_undefined(_t)) return false;

	return _t[TWEEN.STATE] >= 0;
}
