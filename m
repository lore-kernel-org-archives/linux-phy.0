Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67975C43334
	for <linux-phy@archiver.kernel.org>; Tue, 12 Jul 2022 15:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XaLAHPosB/3esiOfivq4oNkNFUjsepXgUGBX6uMaY4=; b=0fw7kvh1nw5HCQ
	B8+sezsG1+q/iUtM1oLLu4Ajh54AAsZwMVhwE7bsHDESoIwHnMM0w1Su/eV0MGcYAJINkIdzu3zvY
	CahVeXLVCopzP59AHju0qFrH2sABM7+HBxtSvYFZOXTuziFQhB7cRWkGhM9Jqf7uz2TA+QorU0vcv
	DQV3ozpAirTVzPHdrJmzte/vflMrIqenm7EiapgaV31h/gv2rW0mX7eFtX+BaNMgiPBtY+RGAwtZW
	5WKOcZDNmsXe8QlACG1CNba6ONn58mApr7dU9y4BlsvpxQI2cdI4Qj+cmJMrgXr9w+4jb+2s3rhrC
	zVdofVp/eg1hRnk5Hy6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBHhi-00C4iH-RG; Tue, 12 Jul 2022 15:21:38 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBHhf-00C4gL-U2
	for linux-phy@lists.infradead.org; Tue, 12 Jul 2022 15:21:37 +0000
Received: by mail-io1-f42.google.com with SMTP id z81so8187481iof.0
        for <linux-phy@lists.infradead.org>; Tue, 12 Jul 2022 08:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dDdtW6rNYIAp97Z79cLxZ45hBOzgYdm8qs6dwMe06kE=;
        b=EalAtxkCm7q7tZIBWJRz/u6+q9HDG+RzVUi3FL6H9hCtweBNbWJBGMo5EpaI6AUywC
         c0Jn2dcAJCo3Fta2NF5LXp9lFmnJusO3Z9Fcfu/61KB634AnnTAA19cwwdUvmVDZdBLB
         H0JdZtTrR9bErQL9aGFqoYX6y8kS7BO7HhRLu7NeLNrQ8uX0XZrIRK2A08amf6n0eWm5
         Vp3rFJxgAZsLF/CuK0cU6f3OcsSmFHGClTa2J5Hm2Cg6WmqPzAhnz8ZeQEHo5GEXS9Jr
         4DL5PmF1d73uoMUDc6/ZXzm7pEr0BmQTb1VtbCOKocv9mZLNMfrBHtdElRmzzRkCpTB5
         iyiQ==
X-Gm-Message-State: AJIora9oQ62QGBXZpJ1j3sPq/a4MGhuTlBsX7m8ilroEWGgzoc1hDdFk
	JLkcX+7dOy/+YCw+dtHa/g==
X-Google-Smtp-Source: AGRyM1u4Wa6kjd1im1mCu+hIdmoX1OrX7mux3KsADPgZgjKXuPCus7u6YBCHY1jBifOYL9R8YJ2wCg==
X-Received: by 2002:a05:6638:4126:b0:33f:6bc0:f8e7 with SMTP id ay38-20020a056638412600b0033f6bc0f8e7mr3449861jab.189.1657639293815;
        Tue, 12 Jul 2022 08:21:33 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id m21-20020a02a155000000b00339e2f0a9bfsm4228957jah.13.2022.07.12.08.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 08:21:33 -0700 (PDT)
Received: (nullmailer pid 1879877 invoked by uid 1000);
	Tue, 12 Jul 2022 15:21:31 -0000
Date: Tue, 12 Jul 2022 09:21:31 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, vkoul@kernel.org, kishon@ti.com, rtanwar@maxlinear.com
Subject: Re: [PATCH v1 3/9] dt-bindings: reset: intel,rcu-gw: Update bindings
 for "legacy" SoCs
Message-ID: <20220712152131.GC1823936-robh@kernel.org>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
 <20220628124441.2385023-4-martin.blumenstingl@googlemail.com>
 <20220701163350.GA1078312-robh@kernel.org>
 <CAFBinCARuO0WFLufwgPxQkY_Mh+Pfn6V8QAe-HZ8sjUBKTYhtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFBinCARuO0WFLufwgPxQkY_Mh+Pfn6V8QAe-HZ8sjUBKTYhtQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220712_082135_992917_959E878C 
X-CRM114-Status: GOOD (  35.69  )
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

On Sun, Jul 03, 2022 at 01:04:20AM +0200, Martin Blumenstingl wrote:
>  Hi Rob,
> 
> On Fri, Jul 1, 2022 at 6:33 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Jun 28, 2022 at 02:44:35PM +0200, Martin Blumenstingl wrote:
> > > The Lantiq Amazon-SE, Danube, xRX100 and xRX200 SoCs have up to two USB2
> > > PHYs which are part of the RCU register space. The RCU registers on
> > > these SoCs are using big endian. Update the binding for these SoCs to
> > > properly describe this IP:
> > > - Add compatible strings for Amazon-SE, Danube and xRX100
> > > - Rename the xRX200 compatible string (which is not used anywhere) and
> > >   switch to the one previously documented in mips/lantiq/rcu.txt
> > > - Allow usage of "simple-mfd" and "syscon" in the compatible string so the
> > >   child devices (USB2 PHYs) can be described
> > > - Allow #address-cells and #size-cells to be set to 1 for describing the
> > >   child devices (USB2 PHYs)
> > > - #reset-cells must always be 3 (offset, reset bit and status bit) on the
> > >   legacy SoCs while LGM uses a fixed value of 2 (offset and reset bit -
> > >   status bit is always identical to the reset bit).
> > >
> > > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > > ---
> > >  .../bindings/reset/intel,rcu-gw.yaml          | 84 +++++++++++++++++--
> > >  1 file changed, 79 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> > > index be64f8597710..b90913c7b7d3 100644
> > > --- a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> > > +++ b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> > > @@ -11,9 +11,16 @@ maintainers:
> > >
> > >  properties:
> > >    compatible:
> > > -    enum:
> > > -      - intel,rcu-lgm
> > > -      - intel,rcu-xrx200
> >
> > It is okay to remove/change this because ?
> I'll update the description in v2. The "intel,rcu-xrx200" compatible
> string isn't used anywhere (upstream or downstream in OpenWrt).
> u-boot on Lantiq xRX200 SoCs is too old to pass a dtb to the kernel,
> so we're appending the DTB to the kernel image.
> 
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - lantiq,ase-rcu
> > > +              - lantiq,danube-rcu
> > > +              - lantiq,xrx100-rcu
> > > +              - lantiq,xrx200-rcu
> > > +          - const: simple-mfd
> >
> > This says child nodes have 0 dependence on anything in the parent node.
> > Such as a clock in the parent needing to be enabled.
> >
> > > +          - const: syscon
> >
> > Given the child nodes depend on this, I find the combination to be a
> > contradiction. But it's widely used, so oh well.
> I can think of two ways to solve this:
> 1) remove the simple-mfd compatible string and make the driver also
> discover child nodes
> 2) remove the simple-mfd compatible string and remove the USB PHY
> child nodes - then add add #phy-cells = <1> to the RCU node itself
> (and somehow update the RCU and USB PHY drivers accordingly)
> 3) introduce a separate child node for the reset-controller, then the
> child nodes depend on each other (but there's no strict dependency on
> the parent anymore other than the fact that the parent needs a
> "syscon" compatible string).
> 
> My understanding of this IP block is that it was initially designed as
> a reset controller, hence its name "reset controller unit" (RCU). Then
> additional logic was added after the fact.
> So I think 1) (dropping the simple-mfd compatible string) or 2)
> (dropping the simple-mfd compatible string and the child nodes
> altogether) is the right way to go here. Which route would you go and
> why?

2 would be my choice. That's the simplest binding. Unless the phy 
registers show up in different places on multiple devices, then maybe 
it's worth keeping the child node.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
