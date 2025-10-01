Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E569CCA470
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 16:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9THtu/20zfrL91rNIRrk/0suis5lxqd2k590T9AM6y4=; b=T8OqM5VHWYtDRX
	agWEjFP3JcBHqm7Bzy7tRPAglFuwVMvztYgNCun/uYjXrKXUjy0Sx/Unfg4IuBFgXp2g9MNT47Fu0
	kOfmSn65zFgXY6aFBqckJsdBRLfZ1MdVIYnHWB6ex3D8FhCf2pnbv7iMpgOgyQTG3Dkklpm37J723
	LyfgH5JL7+Hpr2WEb6ZqMrqAlZgYmLJhfCBUeUSc1HHh+54zp17diBEFcV56Em+YpjkQFVKZpRdvu
	k8waECIlV0zJfg3SK7g4/qP+llyVIXOJcZMJogBhP2gF/lR9VhSXE5jlma0zCvDlzSvSuGg/LGgsx
	to4lgZsjCxX2tmpceT+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3zk4-00000008Wrn-0hYx;
	Wed, 01 Oct 2025 16:31:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3zk2-00000008WrP-1p8A
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 16:31:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 91CD160242;
	Wed,  1 Oct 2025 16:31:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F14ECC4CEF1;
	Wed,  1 Oct 2025 16:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759336305;
	bh=euC6S3LiJG7HoABb999DdDDuS1mO+zTyN+ac3MVNApE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ez6OFCTbMYLimCzxtqaRhwayDyeKNMZFV9p2OfwD0PeyjCazvNn/yEn8AeW0ocQIo
	 o7KDW0MUki5v9QClr61J3yaWYq0IsM0AnO3CJbVWWcRvxjwndNLjKHEnCV9UZ8w9jO
	 SjcBGOOU7yJLOm0hEzY+53QrOGGy6P+y3140tttzA9aj7jsWfLYhgAq3nJ8VAuk1Bi
	 0OzSaA0jojTNQflLq5OLzKL6ukzWa7/iDG8qFzoUMGWBNqN7b0hpAf/lbqUV6T1e6t
	 wBP2dTd10B4mkZyx5Brx0yPKQZFBEtW6h1SUcDmd2wzwEwBTz3jtaFjSQRGmk44QAd
	 9pTkSzOL8E+Vw==
Date: Wed, 1 Oct 2025 11:31:39 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: do not
 reference whole usb-switch.yaml
Message-ID: <20251001163139.GA1877961-robh@kernel.org>
References: <20250902-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-5b4a51c8c5a8@linaro.org>
 <20250905175533.GA1000951-robh@kernel.org>
 <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nwtt76n4t7tlf26ex47wrot7g7nldtmavbzgwmluls3egamjsi@mkomopb6fjh6>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Sep 30, 2025 at 10:10:25PM +0300, Dmitry Baryshkov wrote:
> On Fri, Sep 05, 2025 at 12:55:33PM -0500, Rob Herring wrote:
> > On Tue, Sep 02, 2025 at 06:10:05PM +0200, Neil Armstrong wrote:
> > > Both bindings describe a different layout of the ports properties,
> > > leading to errors when validating DT using this PHY bindings as
> > > reported by Rob Herring.
> > > 
> > > Reported-by: Rob Herring <robh@kernel.org>
> > > Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> > > Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > index c8bc512df08b5694c8599f475de78679a4438449..5005514d7c3a1e4a8893883497fd204bc04e12be 100644
> > > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> > > @@ -73,8 +73,11 @@ properties:
> > >      description:
> > >        See include/dt-bindings/phy/phy-qcom-qmp.h
> > >  
> > > -  mode-switch: true
> > > -  orientation-switch: true
> > > +  mode-switch:
> > > +    $ref: /schemas/usb/usb-switch.yaml#properties/mode-switch
> > > +
> > > +  orientation-switch:
> > > +    $ref: /schemas/usb/usb-switch.yaml#properties/orientation-switch

Looking at this again, this isn't even correct and I don't think it 
works. It's missing a '/' and  should be ...#/properties/... to be a 
valid json pointer.

I thought we checked this...

> > 
> > This is a pattern we try to avoid with references at a property level. I 
> > prefer you make port and ports not required in usb-switch.yaml.
> 
> But this solution is also not perfect. E.g.
> Documentation/devicetree/bindings/phy/fsl,imx8mq-usb-phy.yaml should
> only allow the orienttion-switch property, while using
> allOf:$ref:usb-switch.yaml allows all three (orientation-switch,
> mode-switch, retimer-switch).

That can be handled like this:

$ref: usb-switch.yaml
properties:
  orientation-switch: true
additionalProperties: false

Though if you need unevaluatedProperties for some other reason, then 
that won't enforce it and it's just documentation. In that case, then 
perhaps usb-switch.yaml is not the right granularity and should be split 
up.

I put this into the category of "this is the least of our problems". I'm 
not that interested in enforcing what common properties a device uses or 
not. It's undocumented properties I'm worried about or lack of 
constraints (on reg, clocks, interrupts, etc.).

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
