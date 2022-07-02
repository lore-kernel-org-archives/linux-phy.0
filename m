Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 634E7CCA47B
	for <linux-phy@archiver.kernel.org>; Sat,  2 Jul 2022 23:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ob7TGQjE5ux1jcpdb4feocrMNlO72q/oxPRfU1RAs8=; b=FxcOrvWAgbi3Uq
	C8vKWBKXXpexxGUUbPM9mghkux75D2D1trqYJ6VBXfEoWucr6B4RArNKDlt+bcIu/tIm/3Z45CGsV
	Zq7gQmsBCFcyXfAC1/RwWqkfK2PlC9ebkRrx0g4dKe6jD2QzKVu8m5vlpP1AfRIvSW0+d6SMP6qTV
	Rj92AOZ+xlcBLbhMIdOIoemnN8E5BRhcBqsDJpOyBLP3+LxULi4s6zC2rGOcGTwm+sYqaORDvckut
	LTNY2Rtbkl5FA0u6xa1x2sJ5l+rbXZOfzb7hb7ElE2egYs+8vkQ8KICkJDByODJljWXMlLuND2PKr
	K9jzddHETWvbW169odwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7mAH-00C772-Ca; Sat, 02 Jul 2022 23:04:37 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7mAE-00C75g-KN
	for linux-phy@lists.infradead.org; Sat, 02 Jul 2022 23:04:36 +0000
Received: by mail-ej1-x62f.google.com with SMTP id u12so10240561eja.8
        for <linux-phy@lists.infradead.org>; Sat, 02 Jul 2022 16:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=q4Q0u3OQPYSEIHOkfKsjK+dUNLGGXfSmT08dMRTZRyc=;
        b=GKIjLleN2Qf7u+9okq7Vd6qkSsc3mf7MgRNZWk8SQDtG6CEqKhTSfzCPmeAAkzQZ4g
         IdwxNXqneAvIAL8P81nHB2Bb/0GoY2KGrV5MXHUfZj9L+SONWt8LvmF+gT7EJk+7nhlh
         mb0ul7mWDozIXgW7uyXStqlqMcoGaP8huGmE7crxE0GIbFUOyw9Bi8YuC0VdPBtKZQ5R
         xZktX10C1ibypwB9XvKzljcbV1DsOphHvGjJEPGBJFf6ZwhZRJ/cPKRapsRdLas8ZKQT
         Zz0hZrIq7Yg7IJ3t8SlernEF6UjcQ0RTHxWYaXgki+lRVmq+d4DR1pgNeO2RcL3w0B9B
         nQyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=q4Q0u3OQPYSEIHOkfKsjK+dUNLGGXfSmT08dMRTZRyc=;
        b=XYe52kceNqsQfagAGKTGUhdfwNAt3etOIP+R03KR6j0jfaPT/RzU6Utd/HzEgiMOiK
         79ODV6ewcURUrK6TsOvbQd0eSr/s8RmSTteMpLlpKndrQbz4SbLu6pxG4YnwB/rATYMx
         qy5uKnRe0HXtYDoSRBEVr7JwIojLTjOc5APDNIxmuuKx2TIzIrO++G/t3vyXYHkXRLgK
         6AK3Psdn72+oM1Am1RmP8f054lCLNjFmbotmu/n2wZ32ZW7FJPTb2gvoKGgvbA7HF2AW
         HvWJfe2q+z5fHpXYs9ESNGXbNI96T2BN6anabCSiS4c1mPqVJYXyYPXMayWXdHQQJpxX
         YJgA==
X-Gm-Message-State: AJIora9gPIt4Z3x2Oie382UyDIQUo/z45M2r4bCM3Mbqo02r8e5ZqqT0
	jUnmKkKqyvGi/JObRFX8GlCrSQ0WoSu1/eHCm58=
X-Google-Smtp-Source: AGRyM1uTEi+dowzJS3hYBz1ryLHs2/it9gJrhBZslQZ4YqcQBE4bP0ofSJArdONYEdYHdmbEGYEx4xqL+BxvVNazowA=
X-Received: by 2002:a17:906:7386:b0:715:7024:3df7 with SMTP id
 f6-20020a170906738600b0071570243df7mr21406740ejl.543.1656803071611; Sat, 02
 Jul 2022 16:04:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
 <20220628124441.2385023-4-martin.blumenstingl@googlemail.com> <20220701163350.GA1078312-robh@kernel.org>
In-Reply-To: <20220701163350.GA1078312-robh@kernel.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 3 Jul 2022 01:04:20 +0200
Message-ID: <CAFBinCARuO0WFLufwgPxQkY_Mh+Pfn6V8QAe-HZ8sjUBKTYhtQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/9] dt-bindings: reset: intel,rcu-gw: Update bindings
 for "legacy" SoCs
To: Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, 
	linux-mips@vger.kernel.org, vkoul@kernel.org, kishon@ti.com, 
	rtanwar@maxlinear.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220702_160434_734067_9D089E54 
X-CRM114-Status: GOOD (  32.73  )
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

 Hi Rob,

On Fri, Jul 1, 2022 at 6:33 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jun 28, 2022 at 02:44:35PM +0200, Martin Blumenstingl wrote:
> > The Lantiq Amazon-SE, Danube, xRX100 and xRX200 SoCs have up to two USB2
> > PHYs which are part of the RCU register space. The RCU registers on
> > these SoCs are using big endian. Update the binding for these SoCs to
> > properly describe this IP:
> > - Add compatible strings for Amazon-SE, Danube and xRX100
> > - Rename the xRX200 compatible string (which is not used anywhere) and
> >   switch to the one previously documented in mips/lantiq/rcu.txt
> > - Allow usage of "simple-mfd" and "syscon" in the compatible string so the
> >   child devices (USB2 PHYs) can be described
> > - Allow #address-cells and #size-cells to be set to 1 for describing the
> >   child devices (USB2 PHYs)
> > - #reset-cells must always be 3 (offset, reset bit and status bit) on the
> >   legacy SoCs while LGM uses a fixed value of 2 (offset and reset bit -
> >   status bit is always identical to the reset bit).
> >
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  .../bindings/reset/intel,rcu-gw.yaml          | 84 +++++++++++++++++--
> >  1 file changed, 79 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> > index be64f8597710..b90913c7b7d3 100644
> > --- a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> > +++ b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> > @@ -11,9 +11,16 @@ maintainers:
> >
> >  properties:
> >    compatible:
> > -    enum:
> > -      - intel,rcu-lgm
> > -      - intel,rcu-xrx200
>
> It is okay to remove/change this because ?
I'll update the description in v2. The "intel,rcu-xrx200" compatible
string isn't used anywhere (upstream or downstream in OpenWrt).
u-boot on Lantiq xRX200 SoCs is too old to pass a dtb to the kernel,
so we're appending the DTB to the kernel image.

> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - lantiq,ase-rcu
> > +              - lantiq,danube-rcu
> > +              - lantiq,xrx100-rcu
> > +              - lantiq,xrx200-rcu
> > +          - const: simple-mfd
>
> This says child nodes have 0 dependence on anything in the parent node.
> Such as a clock in the parent needing to be enabled.
>
> > +          - const: syscon
>
> Given the child nodes depend on this, I find the combination to be a
> contradiction. But it's widely used, so oh well.
I can think of two ways to solve this:
1) remove the simple-mfd compatible string and make the driver also
discover child nodes
2) remove the simple-mfd compatible string and remove the USB PHY
child nodes - then add add #phy-cells = <1> to the RCU node itself
(and somehow update the RCU and USB PHY drivers accordingly)
3) introduce a separate child node for the reset-controller, then the
child nodes depend on each other (but there's no strict dependency on
the parent anymore other than the fact that the parent needs a
"syscon" compatible string).

My understanding of this IP block is that it was initially designed as
a reset controller, hence its name "reset controller unit" (RCU). Then
additional logic was added after the fact.
So I think 1) (dropping the simple-mfd compatible string) or 2)
(dropping the simple-mfd compatible string and the child nodes
altogether) is the right way to go here. Which route would you go and
why?

[...]
> > +patternProperties:
> > +  "^usb2-phy@[0-9a-f]+$":
> > +    type: object
> > +    $ref: "../phy/lantiq,xway-rcu-usb2-phy.yaml"
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: intel,rcu-lgm
> > +    then:
> > +      properties:
> > +        "#reset-cells":
> > +          const: 2
>
> else:
>   properties:
>     "#reset-cells":
>       const: 3
much shorter, thanks - I'll take care of this in v2.

[...]
> > +        usb_phy0: usb2-phy@18 {
> > +            compatible = "lantiq,xrx200-usb2-phy";
> > +            reg = <0x18 4>, <0x38 4>;
> > +            status = "disabled";
>
> Why is your example disabled? Don't use 'status' in examples.
I should know this better - I'll fix this in v2.


Best regards,
Martin

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
