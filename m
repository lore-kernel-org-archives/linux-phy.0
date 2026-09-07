Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A41F2C79F9E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02byCuvysDcI6DeqQnncDgwJB3+UAkhxveQk0ItwT8k=; b=RsqCH8dYIJ8Pwg
	JOQxulsni+yCxhfvOywQPfGWe5bRXAue6ez8917EDhI4lrh6F5iCJFFrf37alWvc3QUHzhA4PCqN3
	ldPgrM7ZxQPTuHuecvOhSDSd1ZQ5fqhPXiTtnrKLn2AdFWT2gwd5YfrwFogMFFErsSIWtEqX9MDpM
	Pr1dT0z5Sfh9mIjOKzKCWwkWALuoD+wGPC3CFuPtC3020colpRYrJW3bvBKsye5BFYbDGL1FIUM3e
	K+bMnBivYQKkMO31dsUXQbtPv+1X9EICOg8+I+tfTByFWPim127ta/MS6arS4ZP5wAkFqwCCjncXI
	RzY9Xr/aTGXHfv1/WGtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3VDi-00000006KiS-1W4a;
	Mon, 07 Sep 2026 09:00:54 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3VDd-00000006Kgv-36Z4
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 09:00:51 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-c2637dd37c1so178146866b.0
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 02:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788771646; x=1789376446; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xy+IN57SJ+erwNKooouJ4W3oQbU76/YCXs2psoMgnps=;
        b=s07+SabDuFIFTtXYG2WBLU9xHOWsT5OYomMK/8fbF4x3ElETkKp0AK34k0tdIb4R65
         gdrlIX0tB99EJr+iB1bl7JgbPGetkO/IxuUTaICtKaR4dMG6kGsKwIrH7qJbHPOpsjef
         yN8JkfLz3NnUrZK3d8Qbc74lKUujS6Y6h//70C4Zd/PqOeLmkLkp0c7T5m45riZR1Ts/
         YF7eQmAcRZypljypMtxXVXWr/UblHuDVLSG8TSZvq3/5HgXcifVRNMaTnBR+dFbclCQD
         ui6d0M27NQXN2d7ApOlhEjvspTflB2INb+VFJBR9AHQM8Dtuhi7JmSj0FNReSXkK8Zrv
         pzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788771646; x=1789376446;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xy+IN57SJ+erwNKooouJ4W3oQbU76/YCXs2psoMgnps=;
        b=ZSb34xK5LuV1dUoQsaucUZd7QC1bEEQ/KRzHsa0EMtjL33FjBeZFeJfcFBcPUXSW/s
         54fL+95YO0mjEX6Y7iKTR1q8Q6VbdsJmlHxb7UV5il4Q0Tnhr1DIdThA2B9G45enq8Kg
         mLHCNzP+jEuvgpzfXhr9SIi6QqpyhtefinFYFfbokt9ptTwIDLiSjkXHykJbzeih0Zrj
         6Ask5mXQMEp6WWYq55ABIdJS54fbFDyijjHHS6LV1cOVBSXj6Fp7aj+1/PDROwru4hA1
         1bFLy+GM5LsTFRukf1lcEIWFVH+MNnga4FdRnzR7NtkYKdI3pt3qCddiiXwjUvkOVxEu
         RgTA==
X-Forwarded-Encrypted: i=1; AKwUvBzu9HQZSgxneP9dUS8o3F9Eby18ZR2Ute2SGR7x8DMOcyU0rhAbVHi14JjShV45mU9+lgN+ffQBmKQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nJKQ9AU9YIqgUyEunRBy5o0EYG34UP/SWZGW4JoW5AKdEEwvse
	2OQMvtsqdsjdFphCJBjMLwi6iUVxeCTAvbTnw++zlE8kpBpZbRa0tCdn
X-Gm-Gg: AYBFou2PYvs0+kIYIjYwYwZdYAg4jxHeN6dMHbvauLQd4AHqoz5iolkVnJfWG7sIUi3
	13TR5YsZT6d+vh780Ts5cuDicEjV8QkYUfQspvlDwmomFm2bD8P9J+NCPcoDD3fd9oSHlvfETat
	vYYJ6cJcotFWfunVPWX/vRrTzl04jhii35NWhKOrA13uohCdyHJCyOBitKs1TtDWVU73ZBE16G5
	QxnsDwe+1OF3VXiX5HpLbWHvBV7IkCfZ/l2DLB09JWYNUc2bOn5OI0Ty/GHLj9mDyjp8O+DaIou
	JHhmHjc0Xgp5/bRjx43P5dngDxACZnO7657tBryd7XWJoh4ygxfAaE57cmBf5TN3LpxKpUElf0E
	nVrGDBPVKT/YEN5T7q97N4crr7GumwJ7M5sLYaBsFiLJd6KrM81l944ux6FAshyiIMQ90D653FI
	a0fgDz4fFW8HW1SQ8fNjFGwwPscBk2mgV1ss3nTJ1T496AaRLnJFwlBU4gHryvvtJEjLcU9CpRj
	9jcQL69RKpp84JrI1ZYupPpGxOWwFn6/7M=
X-Received: by 2002:a05:6938:a084:20b0:c26:3107:71dd with SMTP id a640c23a62f3a-c2631077920mr261082266b.13.1788771644348;
        Mon, 07 Sep 2026 02:00:44 -0700 (PDT)
Received: from Ansuel-XPS. (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c260d5bb9a9sm420312466b.55.2026.09.07.02.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2026 02:00:43 -0700 (PDT)
Message-ID: <6a9e7d3b.0f5dc47b.330412.df04@mx.google.com>
X-Google-Original-Message-ID: <ap59OSq9XsFz44OY@Ansuel-XPS.>
Date: Mon, 7 Sep 2026 11:00:41 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: phy: airoha: Document support for
 AN7583 USB PHY
References: <20260901123933.15388-1-ansuelsmth@gmail.com>
 <20260901123933.15388-2-ansuelsmth@gmail.com>
 <20260907-auspicious-liberal-raccoon-bd7a81@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260907-auspicious-liberal-raccoon-bd7a81@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_020049_810214_D58683F4 
X-CRM114-Status: GOOD (  38.56  )
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

On Mon, Sep 07, 2026 at 08:35:56AM +0200, Krzysztof Kozlowski wrote:
> On Tue, Sep 01, 2026 at 02:39:31PM +0200, Christian Marangi wrote:
> > Add documentation for Airoha AN7583 USB PHY that describe the USB PHY
> > for the USB controller.
> > 
> > Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > mode currently configured on the system for the relevant USB port.
> > 
> > To correctly calibrate, the USB 2.0 port require correct value in
> > "airoha,usb2-monitor-clk-sel" property. Both the 2 USB 2.0 port permit
> > selecting one of the 4 monitor clock for calibration (internal clock not
> > exposed to the system) but each port have only one of the 4 actually
> > connected in HW hence the correct value needs to be specified in DT
> > based on board and the physical port. Normally it's monitor clock 1 for
> > USB1 and monitor clock 2 for USB2.
> > 
> > To correctly setup the Serdes mode attached to the USB 3.0 mode, a phys
> > property is required with the phandle pointing to the correct Serdes port
> > provided by the SCU node. Providing the phys property is optional if USB
> > 3.0 is not used.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  .../bindings/phy/airoha,an7583-usb-phy.yaml   | 133 ++++++++++++++++++
> >  1 file changed, 133 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..f1a5d83e8968
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,an7583-usb-phy.yaml
> > @@ -0,0 +1,133 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,an7583-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha AN7583 SoC USB PHY
> > +
> > +maintainers:
> > +  - Christian Marangi <ansuelsmth@gmail.com>
> > +
> > +description: >
> > +  The Airoha AN7583 SoC USB PHY describes the USB PHY for the USB controller..
> > +
> > +  Airoha AN7583 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > +  always supported. The USB 3.0 mode is optional and depends on the Serdes
> > +  mode currently configured on the system for the relevant USB port.
> > +
> > +  On Airoha AN7583 there is an unified PHY implementation where a single
> > +  PHY provide support for both the 2 USB 2.0 port and
> > +  optionally one 3.0 USB.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,an7583-usb-phy
> > +
> > +  reg:
> > +    items:
> > +      - description: phy register
> > +      - description: ana register
> > +      - description: pma register
> > +      - description: dig register
> 
> "registers"
> 
> > +
> > +  reg-names:
> > +    items:
> > +      - const: phy
> > +      - const: ana
> > +      - const: pma
> > +      - const: dig
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
> > +
> > +  usb3-phy:
> > +    type: object
> > +
> > +    properties:
> > +      phys:
> > +        items:
> > +          - description: phandle to Serdes PHY
> > +
> > +      '#phy-cells':
> > +        description: The cell contains the mode, PHY_TYPE_USB2 or PHY_TYPE_USB3,
> > +          as defined in dt-bindings/phy/phy.h.
> > +        const: 1
> > +
> > +    required:
> > +      - phys
> > +      - '#phy-cells'
> > +
> > +    additionalProperties: false
> > +
> > +patternProperties:
> > +  '^usb2-phy@[0-9a-f]+$':
> 
> You should not mix MMIO and non-MMIO children. Either children have
> distinctive addressing, or not. Not both.
> 
> The other problem is that your children have no resources, so are not
> really distinctive children and should be folded in to the parent.
> 
> I already asked that at v2, so let's finish with asking: drop the
> children.
>

I misunderstood the request and tought it was only related to the PCIe
part.

I'm not really sure how to drop the child without complicating the node
structure a lot (also I feel dropping the child would make the description
of the HW less clear and I would like to prevent that)

The register for the usb2 node 0x0 and 0x1000 are offset of the register
declared in the parent node 0x1fac0000. For usb2 1 the phy registers are at 
0x1fac0000 - 0x1fac0200, for usb2 2 the phy register are at
0x1fac1000 - 0x1fac1200.

The driver read this offset and apply it to every register access for the
related phy.

The usb2 child are needed for the specific airoha,usb2-monitor-clk-sel
property since it's specific for the usb 2.0 phy.

Also would like to stress that these PHY are all part of the same register
block.

One solution might be to just classify the usb2 node as 0x0 and 0x1 and
handle internally the register mapping with the driver. But again the
problematic thing is map the monitor-clk-sel with the relevant USB 2.0 phy.

Any hint on this? Is it ok to keep the child node and use 0x0 and 0x1?

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
