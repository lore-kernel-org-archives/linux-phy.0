Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F912CCF9EE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 18:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2dg+TPWMVbesLnCl64ezh4PSnuWm+D6EpFwi1RbzoA=; b=evVMQPd7Jf7h6J
	Boa9NWImOzG/yolqquWg+a58rxkI1sh9rbcKAdqaopXMvggFUdW/gMd1hb6oQiPJ/z1kXEmsRlxeT
	AuYZe4Okk2/DBhC7knHEcy7aoiUYBT6v41YfJ1mfI3SDlAU11dB8zAl/1Tqqgrua7Om0AB5t7Nats
	3xmI/qLafOpAYokvk+hzhwZl97pvre2iT5zJBFQc0HAwJdEHV6GcmhLzHTYDWimLtlkBYisJIUx+W
	dCiNQitqGv2aN0Un+IZ/Pt73bC07povD7jPuTfDKnKUhGlGRRcSmshBHvPhg1KyWulzzVx9aQzWmC
	cOL9aqLp9uEANRsQ5dpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEAqE-00000002OdS-3a69;
	Wed, 29 Oct 2025 18:24:14 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEAqC-00000002Oc8-1eIB
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 18:24:13 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4710665e7deso764985e9.1
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 11:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761762250; x=1762367050; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bzK5qNzDD1OL6sh9VhoK7dF0ie9h0/HgqvIRoxOou0g=;
        b=Vqa06qqKpnLD8b1zm2/KQEgvd2Kht2uE+5t54ivoRIfO/N1yriyUJgq9IqYq9CoDw5
         qwWFFuPlpDJ5lUqOJA1htHD4uShHa1C8RREovYcag4UttkfzdDtUC8MbbM6L18LgYrck
         3e6ypOVnjfo3s7hoK4lBGoGPepPjMYHgylXf/W0ZX99OSDZUWAG76lXS5CRgSZTtv5WA
         svJNSOCJr+ukiWRCf5kClGkpTPawRXFhkk/pbgTk9u8PJ1hnam+MIEzDnOtFi/jR3dE5
         coKkiO3anRpBQQs0qcLGlivrWS2LfUJw1E+Q/Dv8Jx3NHQNuZk8sdnVxeBSaNuEx0G7a
         j+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761762250; x=1762367050;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bzK5qNzDD1OL6sh9VhoK7dF0ie9h0/HgqvIRoxOou0g=;
        b=o5CXedRuI6IMzIJ/1BEG8Nsz+GmRXcdSV17afQ5hpDbngi05sjURa8h0zmURKhpeZS
         XI/VQi+vdilBAXs2nbXkaz0mF/UfszcfLnLaxRgPZX72p56TBAbqvIv5UV1VTcMhJfUy
         klWJtX44kOgIHkvvPS5pr8qMmyriO4uqaL4+Kt9J/rNOOv456VZTAW0pjAxAG92WBiRJ
         FqqAOa3N4NR0mvXZSbTtcm/gn8LsP4enejDHxqE+xLdVFQHyHWHlAtcBGUGEueVPTQjc
         BfjgMgmiVSA4KOxvo45Y/S0UxUNztxqWeRRttg5TLSp52BpBsKi5sbNE3eLhWlY5jBsZ
         HC6g==
X-Forwarded-Encrypted: i=1; AJvYcCVE8PLWriwsZn6PYS0wXULFOsPokpJ2e2b4BVI7JZifMBWU48t+1jcqqfUtY+fXFbU8ndhkHO4yDrk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz0b+jOMw8H7lJ+wcoDCiMU5DmTQoJMjMWt51/l+OYCBA49mV/
	P5/VhOA3n7rcuhKT2H9DnTV/+Oo/rmsKOVzBUDyk64iuBwb956iAB9wG
X-Gm-Gg: ASbGncv7oZ6hVD8l0UT5eErjHzw7W/idWGsXRQbDF8n9P8rqtwn2jS19JC+yJMAdDj/
	MrccpE76DE4MBybrzsN/zTFXn23/FgyekGXKRDxPl1xQ8ZuheITZPt2VVeRa9uCq2C2sBoD3LyX
	MZmddgQoVLUo1UUC4JhxpLcUinHifnteXPdxVgg/lgWB/iClc8vA0qaKsDWkqu0j6b/gSOcAHMK
	vsLeOeww1G1Dmiy9AfCpTvHzYkdUn4N6Hvzos2+GppjNFzLbkItbDYyrCm87sFGEXUyt568iryI
	HtaTc+7URvNguywWFXEQyHY2i5bvNdnLfyVL96vYYswwnkAT+OP8JrPGvK1nITYKxtfeQbmE2r3
	nDpiWdUAcVzCglORG9zQFwf6FUrjDHE0fisH3fTEihIMkKNmrptHCkshjnekv3n0c0K3Teyt3sQ
	K/7HSejL08/ivCIV3rs/tXHIQbAdWh
X-Google-Smtp-Source: AGHT+IHiqbGMQAd5HKcmjlS9yIwTWKcuIT+kbHRohu/cwGjeIbdOsMSRiO92YQLIPJlRr2d/zjLp/w==
X-Received: by 2002:a05:600c:468f:b0:46e:1cc6:25f7 with SMTP id 5b1f17b1804b1-4771e177ca5mr33863075e9.9.1761762250323;
        Wed, 29 Oct 2025 11:24:10 -0700 (PDT)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952ca979sm28796326f8f.14.2025.10.29.11.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 11:24:09 -0700 (PDT)
Message-ID: <69025bc9.5d0a0220.1f0440.deb9@mx.google.com>
X-Google-Original-Message-ID: <aQJbxPm8SFN8WR7f@Ansuel-XPS.>
Date: Wed, 29 Oct 2025 19:24:04 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
References: <20251029173713.7670-1-ansuelsmth@gmail.com>
 <20251029173713.7670-3-ansuelsmth@gmail.com>
 <20251029-mutual-scotch-7ca52e17da69@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029-mutual-scotch-7ca52e17da69@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_112412_493176_9431D3F4 
X-CRM114-Status: GOOD (  43.52  )
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

On Wed, Oct 29, 2025 at 06:07:22PM +0000, Conor Dooley wrote:
> On Wed, Oct 29, 2025 at 06:37:10PM +0100, Christian Marangi wrote:
> > Add documentation for Airoha AN7581 USB PHY that describe the USB PHY
> > for the USB controller.
> > 
> > Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > always supported. The USB 3.0 mode is optional and depends on the Serdes
> > mode currently configured on the system for the relevant USB port.
> > 
> > The first USB port on the SoC can be both used for USB 3.0 operation or
> > Ethernet (HSGMII).
> > The second USB port on the SoC can be both used for USB 3.0 operation or
> > for an additional PCIe line.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> > 
> > For DT maintainers, in v2 there were some comments, hope the new
> > description and names of the property better clarify the usage and
> > why they are needed.
> > 
> >  .../bindings/phy/airoha,an7581-usb-phy.yaml   | 76 +++++++++++++++++++
> >  MAINTAINERS                                   |  7 ++
> >  .../dt-bindings/phy/airoha,an7581-usb-phy.h   | 11 +++
> >  3 files changed, 94 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> >  create mode 100644 include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..5106685c124d
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/airoha,an7581-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Airoha AN7581 SoC USB PHY
> > +
> > +maintainers:
> > +  - Christian Marangi <ansuelsmth@gmail.com>
> > +
> > +description: >
> > +  The Airoha AN7581 SoC USB PHY describes the USB PHY for the USB controller.
> > +
> > +  Airoha AN7581 SoC support a maximum of 2 USB port. The USB 2.0 mode is
> > +  always supported. The USB 3.0 mode is optional and depends on the Serdes
> > +  mode currently configured on the system for the relevant USB port.
> > +
> > +  The first USB port on the SoC can be both used for USB 3.0 operation or
> > +  Ethernet (HSGMII).
> > +  The second USB port on the SoC can be both used for USB 3.0 operation or
> > +  for an additional PCIe line.
> > +
> > +properties:
> > +  compatible:
> > +    const: airoha,an7581-usb-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  airoha,usb2-monitor-clk-sel:
> > +    description: Describe what oscillator across the available 4
> > +      should be selected for USB 2.0 Slew Rate calibration.
> 
> Why's this being set in dt? What actually determines what oscillator
> should be used? Do they have different performance characteristics?
> How is someone meant to know which one to use?
>

Hi Conor,

thanks a lot for the review.

The airoha,usb2-monitor-clk-sel is set in DT because it describe the HW
and to what oscillator the PHY should be connected to.

There are 2 PHY at different register space. One PHY needs to calibrate
for oscillator 1 and the other PHY for oscillator 2 or the PHY doesn't
work for USB 2.0 (the calibration fails)

The previous implementation used an index property but that was rejected
as it wasn't descriptive of the HW.

> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [0, 1, 2, 3]
> > +
> > +  airoha,usb3-serdes:
> > +    description: Describe what Serdes line is attached to the USB 3.0 port.
> > +      Can be either Serdes USB1 or Serdes USB2.
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    enum: [2, 3]
> 
> This is confusing. Why 2 and 3 for usb1 and usb2? What even is the
> mapping? Is it 2:1/3:2 or 2:2/3:1?
> 

AFAIK there isn't a way to directly reference dt-bindings.

2 and 3 are from include/dt-bindings/soc/airoha,scu-ssr.h

#define AIROHA_SCU_SERDES_USB1		2
#define AIROHA_SCU_SERDES_USB2		3

> > +
> > +  airoha,scu:
> > +    description: Phandle to the SCU syscon to configure the Serdes line.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +  '#phy-cells':
> > +    description: Describe if the referred PHY is the USB 2.0 PHY or USB 3.0 PHY.
> > +    const: 1
> 
> Which is which here?
>

Mhh I think I didn't understand here. #phy-cells describe the
parameters to be used for phys property in a different node.

The current usage would be

<&usb0_phy PHY_TYPE_USB2> for USB 2.0
or <&usb0_phy PHY_TYPE_USB3> for USB 3.0

This node expose 2 PHY that can be referenced by the single parameters.

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - airoha,usb2-monitor-clk-sel
> > +  - airoha,usb3-serdes
> > +  - airoha,scu
> > +  - '#phy-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/phy/airoha,an7581-usb-phy.h>
> > +    #include <dt-bindings/soc/airoha,scu-ssr.h>
> > +
> > +    phy@1fac0000 {
> > +        compatible = "airoha,an7581-usb-phy";
> > +        reg = <0x1fac0000 0x10000>;
> > +
> > +        airoha,usb2-monitor-clk-sel = <AIROHA_USB2_MONCLK_SEL1>;
> > +        airoha,usb3-serdes = <AIROHA_SCU_SERDES_USB1>;
> > +        airoha,scu = <&scu>;
> > +
> > +        #phy-cells = <1>;
> > +    };
> > +
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 8085fdca7bcd..af23c590bbc6 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -763,6 +763,13 @@ S:	Maintained
> >  F:	Documentation/devicetree/bindings/spi/airoha,en7581-snand.yaml
> >  F:	drivers/spi/spi-airoha-snfi.c
> >  
> > +AIROHA USB PHY DRIVER
> > +M:	Christian Marangi <ansuelsmth@gmail.com>
> > +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> > +S:	Maintained
> > +F:	Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> > +F:	include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > +
> >  AIRSPY MEDIA DRIVER
> >  L:	linux-media@vger.kernel.org
> >  S:	Orphan
> > diff --git a/include/dt-bindings/phy/airoha,an7581-usb-phy.h b/include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > new file mode 100644
> > index 000000000000..efbb0ae75e3a
> > --- /dev/null
> > +++ b/include/dt-bindings/phy/airoha,an7581-usb-phy.h
> > @@ -0,0 +1,11 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> > +
> > +#ifndef _DT_BINDINGS_AIROHA_AN7581_USB_PHY_H_
> > +#define _DT_BINDINGS_AIROHA_AN7581_USB_PHY_H_
> > +
> > +#define AIROHA_USB2_MONCLK_SEL0                 0
> > +#define AIROHA_USB2_MONCLK_SEL1                 1
> > +#define AIROHA_USB2_MONCLK_SEL2                 2
> > +#define AIROHA_USB2_MONCLK_SEL3                 3
> 
> These definitions seem completely pointless. The property is called
> "airoha,usb2-monitor-clk-sel" so any use will look like
> "airoha,usb2-monitor-clk-sel = <3>;"
> That's more informative than the define is, since it doesn't even
> truncate "monitor". I'd just delete this header entirely and use the
> number. If you want the define in the driver to avoid magic numbers,
> just define it in the driver.
> 

Well yes the idea here is to not have to use magic numbers in DT and try
to use the naming in the SoC documentation since they are called
monclk_sel0, monclk_sel1 ...

Will drop.

> pw-bot: changes-requested
> 
> Cheers,
> Conor.
> 
> > +
> > +#endif
> > -- 
> > 2.51.0
> > 



-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
