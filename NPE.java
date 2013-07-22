class NPE {
	public String getSomething() {
		return null;
	}
	public static void main(String[] args) {
		System.out.println("Foo");
		NPE n = new NPE();
		System.out.println(n.getSomething().length());
	}
}