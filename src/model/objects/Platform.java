package model.objects;

public class Platform {
    private String generation;

    public Platform(String generation) {
        this.generation = generation;
    }

    public Platform() {
    }

    public String getGeneration() {
        return generation;
    }

    public void setGeneration(String generation) {
        this.generation = generation;
    }
}