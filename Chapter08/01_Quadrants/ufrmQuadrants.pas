
unit ufrmQuadrants;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms3D, FMX.Types3D, FMX.Forms, FMX.Graphics,
  FMX.Dialogs, FMX.Objects, System.Math.Vectors, FMX.Objects3D, FMX.Controls3D,
  FMX.MaterialSources, FMX.Ani, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Layers3D, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, FMX.Media;

type
  Tfrm3DQuadrants = class(TForm3D)
    Cube1: TCube;
    ConeChristmasTree: TCone;
    PlaneHorizontal: TPlane;
    SphereGlobe: TSphere;
    TextureMaterialSourceGlobe: TTextureMaterialSource;
    LightMaterialSourceBlue: TLightMaterialSource;
    Light1: TLight;
    txtQuadrant: TText3D;
    FloatAnimation1: TFloatAnimation;
    LightMaterialSourceGreenery: TLightMaterialSource;
    ColorMaterialSourceGray: TColorMaterialSource;
    ColorMaterialSourceBlack: TColorMaterialSource;
    bulb7: TSphere;
    bulb8: TSphere;
    bulb1: TSphere;
    bulb2: TSphere;
    bulb3: TSphere;
    bulb4: TSphere;
    bulb5: TSphere;
    bulb6: TSphere;
    Path3dStar: TPath3D;
    ConeChristmasTree3: TCone;
    Sphere1: TSphere;
    Sphere2: TSphere;
    Sphere3: TSphere;
    Sphere4: TSphere;
    Sphere5: TSphere;
    Sphere6: TSphere;
    Sphere7: TSphere;
    Sphere8: TSphere;
    Path3DStar3: TPath3D;
    ConeChristmasTree2: TCone;
    Sphere9: TSphere;
    Sphere10: TSphere;
    Sphere11: TSphere;
    Sphere12: TSphere;
    Sphere13: TSphere;
    Sphere14: TSphere;
    Sphere15: TSphere;
    Sphere16: TSphere;
    Path3DStar2: TPath3D;
    FloatAnimationBackAndForth: TFloatAnimation;
    cylArrowStemY: TCylinder;
    coneArrowTipY: TCone;
    Text3D1: TText3D;
    Layer3DOptions: TLayer3D;
    grpLight: TGroupBox;
    Label3: TLabel;
    SwitchLight: TSwitch;
    tbLightRotateX: TTrackBar;
    Label2: TLabel;
    Label1: TLabel;
    BindingsList1: TBindingsList;
    LinkControlToPropertyEnabled: TLinkControlToProperty;
    LinkControlToPropertyEnabled2: TLinkControlToProperty;
    btnShowOptions: TButton;
    Model3DElk: TModel3D;
    ColorMaterialSourceBrown: TColorMaterialSource;
    grpElk: TGroupBox;
    tbElkRotate: TTrackBar;
    lblElkRotate: TLabel;
    tbElkScale: TTrackBar;
    lblElkScale: TLabel;
    LinkControlToPropertyScaleX: TLinkControlToProperty;
    LinkControlToPropertyScaleY: TLinkControlToProperty;
    LinkControlToPropertyScaleZ: TLinkControlToProperty;
    LinkControlToPropertyRotationAngleY: TLinkControlToProperty;
    LinkControlToPropertyRotationAngleY2: TLinkControlToProperty;
    CylinderTreeTrunk: TCylinder;
    LightMaterialSourceWood: TLightMaterialSource;
    Cylinder1: TCylinder;
    Cylinder2: TCylinder;
    ColorMaterialSourceStar: TColorMaterialSource;
    FloatAnimation2: TFloatAnimation;
    ColorAnimationTwinkle: TColorAnimation;
    grpCamera: TGroupBox;
    CameraCube: TCamera;
    radCameraLeft: TRadioButton;
    radCameraRight: TRadioButton;
    CameraElk: TCamera;
    radCameraDefault: TRadioButton;
    CameraEarthSat: TCamera;
    radCameraEarth: TRadioButton;
    procedure btnShowOptionsClick(Sender: TObject);
    procedure Form3DCreate(Sender: TObject);
    procedure radCameraLeftClick(Sender: TObject);
    procedure radCameraRightChange(Sender: TObject);
    procedure radCameraDefaultClick(Sender: TObject);
    procedure btnShowXYClick(Sender: TObject);
    procedure radCameraEarthChange(Sender: TObject);
  end;

var
  frm3DQuadrants: Tfrm3DQuadrants;

implementation

{$R *.fmx}

procedure Tfrm3DQuadrants.btnShowOptionsClick(Sender: TObject);
begin
  if Layer3DOptions.Width = 20 then begin
    Layer3DOptions.Width := 100;
    btnShowOptions.StyleLookup := 'arrowrighttoolbutton';
  end else begin
    Layer3DOptions.Width := 20;
    btnShowOptions.StyleLookup := 'arrowlefttoolbutton';
  end;
end;

procedure Tfrm3DQuadrants.btnShowXYClick(Sender: TObject);
begin
  ShowMessage(Format('Current camera position (%f, %f, %f)',
                     [Camera.Position.X, Camera.Position.Y, Camera.Position.Z]));
end;

procedure Tfrm3DQuadrants.Form3DCreate(Sender: TObject);
begin
  for var AMesh in Model3DElk.MeshCollection do
    AMesh.MaterialSource := ColorMaterialSourceBrown;
end;

procedure Tfrm3DQuadrants.radCameraDefaultClick(Sender: TObject);
begin
  UsingDesignCamera := True;
  Camera.Repaint;
end;

procedure Tfrm3DQuadrants.radCameraEarthChange(Sender: TObject);
begin
  UsingDesignCamera := False;
  Camera := CameraEarthSat;
  Camera.Repaint;
end;

procedure Tfrm3DQuadrants.radCameraLeftClick(Sender: TObject);
begin
  UsingDesignCamera := False;
  Camera := CameraCube;
  Camera.Repaint;
end;

procedure Tfrm3DQuadrants.radCameraRightChange(Sender: TObject);
begin
  UsingDesignCamera := False;
  Camera := CameraElk;
  Camera.Repaint;
end;

end.
