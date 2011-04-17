package gs.http
{
	import flash.utils.ByteArray;
	
	/**
	 * The HTTPCallResult class is a result wrapper for successful http calls.
	 * 
	 * <p>Properties on this object will be set according
	 * to the http call instance's responseFormat.</p>
	 * 
	 * @see gs.http.HTTPCall
	 */
	public class HTTPCallResult
	{
		
		/**
		 * The raw data from the url loader.
		 */
		public var rawResult:*;
		
		/**
		 * JSON data.
		 */
		public var json:Object;
		
		/**
		 * Text data.
		 */
		public var text:String;
		
		/**
		 * Binary data.
		 */
		public var binary:ByteArray;
		
		/**
		 * Variables data.
		 */
		public var vars:Object;
		
		/**
		 * XML Data.
		 */
		public var xml:XML;
		
		/**
		 * Dispose of this http call result.
		 */
		public function dispose():void
		{
			rawResult=null;
			json=null;
			text=null;
			binary=null;
			vars=null;
			xml=null;
		}
	}
}