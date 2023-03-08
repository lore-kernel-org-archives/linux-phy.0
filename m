Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5EBC64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 23:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Sm13mQjRYGzIPHjtZ30Vp2Ob2RlfnuFo2r5eRpmlNY=; b=NeWmfse6foJAAI
	9a8+K0suvbDa4kYyO9uCliPRCevg5OKbXvFU03kLZ3IHRvrJYTMDLXB5A6lbPG/k1gwMKsMs8lk5S
	3PZLoz6hU17ptYBkPWshTl0ZoOd9rhOZUAgpvY+n/F4FVUOCRIld/ritLuhFhIn2uCoQhh80+ywNj
	lgsBQwnpSpyH8FP6kmHrwGV0RG0g/NhD3koP5qIWdxEZg0El80ssbGwv8Ttg6EmWxNdDWK3S0P/Er
	YuB+VY67vaJRL2gtVVA/VhfnDiwIUQFOPpER2qJD7zrCoqJ1EM+R/SghU597E9Igv5RVhsGpGiG5+
	sbVRs5twTrXLDhAbggDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa2w0-0072k8-Tf; Wed, 08 Mar 2023 23:11:00 +0000
Received: from mail-oo1-f52.google.com ([209.85.161.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa2vX-0072Mi-RQ; Wed, 08 Mar 2023 23:10:35 +0000
Received: by mail-oo1-f52.google.com with SMTP id n27-20020a4ad63b000000b005252709efdbso28299oon.4;
        Wed, 08 Mar 2023 15:10:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678317020;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XD0ikGmSsZrvW4Icaq2NiBnGVE41WkYau9ANqfCeE4g=;
        b=Tkx01vxFe9CcOUoZyRtsr328h++jZZSTCOQ1nTgZxdd0cxdfpaEex8PA7IwvmIovRR
         wjoWZhVHFAlQZMer2REi55ncJCXEfLHOO7qo1hW0bAVFrfQo/qh3ZoAwim7dJNyNRjDC
         v8Yt4fMAgqmhBItBD933Yb7t+UT0EDUl8i/eFrFeyBYNH09oOcEG6Nko/r8BxkZ1dv2l
         4B7REq64ZtiMBQYdRJ2sD/YKviiKHuhVmbXmuhXrgBu7qKi5Xw2lvpKTDchey1hsjilZ
         VpvFoOLoTqmEaElrRS9XjsriZ6qgiWCGGKiEKe75CAZJpciBY6VL5c+DgwWioWQSbNgh
         nVfg==
X-Gm-Message-State: AO0yUKV3Spthqg0jelPquYWpWbF6k1rFNtQApqMgp+ZAFtkzblbYpZTK
	Pd95y5OQI0pL01BCrfLi+g==
X-Google-Smtp-Source: AK7set8A0SF0DbY+UQqrMG/aKU7uVszgRiyuv7wgsb0tBBXkzXbyyzJllVMOKOb47Lq8JItYy/gAMw==
X-Received: by 2002:a4a:8685:0:b0:525:4b8b:8f38 with SMTP id x5-20020a4a8685000000b005254b8b8f38mr46622ooh.3.1678317019733;
        Wed, 08 Mar 2023 15:10:19 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d29-20020a9d72dd000000b0068bcef4f543sm3066374otk.21.2023.03.08.15.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 15:10:19 -0800 (PST)
Received: (nullmailer pid 4046807 invoked by uid 1000);
	Wed, 08 Mar 2023 23:10:18 -0000
Date: Wed, 8 Mar 2023 17:10:18 -0600
From: Rob Herring <robh@kernel.org>
To: Sean Anderson <sean.anderson@seco.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org, Madalin Bucur <madalin.bucur@nxp.com>, linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>, Camelia Alexandra Groza <camelia.groza@nxp.com>, linux-arm-kernel@lists.infradead.org, Bagas Sanjaya <bagasdotme@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, =?iso-8859-1?Q?Fern=E1ndez?= Rojas <noltari@gmail.com>, Jonas Gorski <jonas.gorski@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v10 03/13] dt-bindings: Convert gpio-mmio to yaml
Message-ID: <20230308231018.GA4039466-robh@kernel.org>
References: <20230306191535.1917656-1-sean.anderson@seco.com>
 <20230306191535.1917656-4-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230306191535.1917656-4-sean.anderson@seco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_151031_930985_A19032C7 
X-CRM114-Status: GOOD (  36.75  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, Mar 06, 2023 at 02:15:25PM -0500, Sean Anderson wrote:
> This is a generic binding for simple MMIO GPIO controllers. Although we
> have a single driver for these controllers, they were previously spread
> over several files. Consolidate them. The register descriptions are
> adapted from the comments in the source. There is no set order for the
> registers, so I have not specified one.
> =

> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> =

> Changes in v10:
> - New
> =

>  .../bindings/gpio/brcm,bcm6345-gpio.yaml      |  16 +--
>  .../devicetree/bindings/gpio/gpio-mmio.yaml   | 136 ++++++++++++++++++
>  .../bindings/gpio/ni,169445-nand-gpio.txt     |  38 -----
>  .../devicetree/bindings/gpio/wd,mbl-gpio.txt  |  38 -----
>  4 files changed, 137 insertions(+), 91 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gpio/ni,169445-nand=
-gpio.txt
>  delete mode 100644 Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
> =

> diff --git a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yam=
l b/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> index 4d69f79df859..e11f4af49c52 100644
> --- a/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/brcm,bcm6345-gpio.yaml
> @@ -4,7 +4,7 @@
>  $id: http://devicetree.org/schemas/gpio/brcm,bcm6345-gpio.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  =

> -title: Broadcom BCM6345 GPIO controller
> +title: Broadcom BCM63xx GPIO controller
>  =

>  maintainers:
>    - =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> @@ -18,8 +18,6 @@ description: |+
>  =

>    BCM6338 have 8-bit data and dirout registers, where GPIO state can be =
read
>    and/or written, and the direction changed from input to output.
> -  BCM6345 have 16-bit data and dirout registers, where GPIO state can be=
 read
> -  and/or written, and the direction changed from input to output.
>    BCM6318, BCM6328, BCM6358, BCM6362, BCM6368 and BCM63268 have 32-bit d=
ata
>    and dirout registers, where GPIO state can be read and/or written, and=
 the
>    direction changed from input to output.
> @@ -29,7 +27,6 @@ properties:
>      enum:
>        - brcm,bcm6318-gpio
>        - brcm,bcm6328-gpio
> -      - brcm,bcm6345-gpio
>        - brcm,bcm6358-gpio
>        - brcm,bcm6362-gpio
>        - brcm,bcm6368-gpio
> @@ -63,17 +60,6 @@ required:
>  additionalProperties: false
>  =

>  examples:
> -  - |
> -    gpio@fffe0406 {
> -      compatible =3D "brcm,bcm6345-gpio";
> -      reg-names =3D "dirout", "dat";
> -      reg =3D <0xfffe0406 2>, <0xfffe040a 2>;
> -      native-endian;
> -
> -      gpio-controller;
> -      #gpio-cells =3D <2>;
> -    };
> -
>    - |
>      gpio@0 {
>        compatible =3D "brcm,bcm63268-gpio";
> diff --git a/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml b/Docu=
mentation/devicetree/bindings/gpio/gpio-mmio.yaml
> new file mode 100644
> index 000000000000..fd5c7055d542
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio-mmio.yaml
> @@ -0,0 +1,136 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/gpio-mmio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic MMIO GPIO
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +  - Bartosz Golaszewski <brgl@bgdev.pl>
> +
> +description: |

Don't need '|' unless you want line endings preserved. Elsewhere too.

> +  Some simple GPIO controllers may consist of a single data register or =
a pair
> +  of set/clear-bit registers. Such controllers are common for glue logic=
 in
> +  FPGAs or ASICs. Commonly, these controllers are accessed over memory-m=
apped
> +  NAND-style parallel busses.
> +
> +properties:
> +  big-endian:
> +    true

big-endian: true

> +
> +  compatible:
> +    enum:
> +      - brcm,bcm6345-gpio # Broadcom BCM6345 GPIO controller
> +      - wd,mbl-gpio # Western Digital MyBook Live memory-mapped GPIO con=
troller
> +      - ni,169445-nand-gpio # National Instruments 169445 GPIO NAND cont=
roller
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  gpio-controller:
> +    true

ditto.

> +
> +  reg:
> +    minItems: 1
> +    description: |
> +      A list of registers in the controller. The width of each register =
is
> +      determined by its size. All registers must have the same width. Th=
e number
> +      of GPIOs is set by the width, with bit 0 corresponding to GPIO 0.
> +    items:
> +      - description: |
> +          Register to READ the value of the GPIO lines. If GPIO line is =
high,
> +          the bit will be set. If the GPIO line is low, the bit will be =
cleared.
> +          This register may also be used to drive GPIOs if the SET regis=
ter is
> +          omitted.
> +      - description: |
> +          Register to SET the value of the GPIO lines. Setting a bit in =
this
> +          register will drive the GPIO line high.
> +      - description: |
> +          Register to CLEAR the value of the GPIO lines. Setting a bit i=
n this
> +          register will drive the GPIO line low. If this register is omi=
tted,
> +          the SET register will be used to clear the GPIO lines as well,=
 by
> +          actively writing the line with 0.
> +      - description: |
> +          Register to set the line as OUTPUT. Setting a bit in this regi=
ster
> +          will turn that line into an output line. Conversely, clearing =
a bit
> +          will turn that line into an input.
> +      - description: |
> +          Register to set this line as INPUT. Setting a bit in this regi=
ster
> +          will turn that line into an input line. Conversely, clearing a=
 bit
> +          will turn that line into an output.
> +
> +  reg-names:
> +    minItems: 1
> +    maxItems: 5
> +    items:
> +      enum:
> +        - dat
> +        - set
> +        - clr
> +        - dirout
> +        - dirin
> +
> +  native-endian:
> +    true
> +
> +  no-output:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |
> +      If this property is present, the controller cannot drive the GPIO =
lines.
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - '#gpio-cells'
> +  - gpio-controller
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    nand-gpio-out@1f300010 {

Use generic node name:

gpio@...

> +      compatible =3D "ni,169445-nand-gpio";
> +      reg =3D <0x1f300010 0x4>;
> +      reg-names =3D "dat";
> +      gpio-controller;
> +      #gpio-cells =3D <2>;
> +    };
> +
> +    nand-gpio-in@1f300014 {
> +      compatible =3D "ni,169445-nand-gpio";
> +      reg =3D <0x1f300014 0x4>;
> +      reg-names =3D "dat";
> +      gpio-controller;
> +      #gpio-cells =3D <2>;
> +      no-output;
> +    };
> +
> +    gpio0@e0000000 {
> +      compatible =3D "wd,mbl-gpio";
> +      reg-names =3D "dat";
> +      reg =3D <0xe0000000 0x1>;
> +      #gpio-cells =3D <2>;
> +      gpio-controller;
> +    };
> +
> +    gpio1@e0100000 {
> +      compatible =3D "wd,mbl-gpio";
> +      reg-names =3D "dat";
> +      reg =3D <0xe0100000 0x1>;
> +      #gpio-cells =3D <2>;
> +      gpio-controller;
> +      no-output;
> +    };
> +
> +    gpio@fffe0406 {
> +      compatible =3D "brcm,bcm6345-gpio";
> +      reg-names =3D "dirout", "dat";
> +      reg =3D <0xfffe0406 2>, <0xfffe040a 2>;
> +      native-endian;
> +
> +      gpio-controller;
> +      #gpio-cells =3D <2>;
> +    };
> diff --git a/Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.t=
xt b/Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
> deleted file mode 100644
> index ca2f8c745a27..000000000000
> --- a/Documentation/devicetree/bindings/gpio/ni,169445-nand-gpio.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -Bindings for the National Instruments 169445 GPIO NAND controller
> -
> -The 169445 GPIO NAND controller has two memory mapped GPIO registers, one
> -for input (the ready signal) and one for output (control signals).  It is
> -intended to be used with the GPIO NAND driver.
> -
> -Required properties:
> -	- compatible: should be "ni,169445-nand-gpio"
> -	- reg-names: must contain
> -		"dat" - data register
> -	- reg: address + size pairs describing the GPIO register sets;
> -		order must correspond with the order of entries in reg-names
> -	- #gpio-cells: must be set to 2. The first cell is the pin number and
> -			the second cell is used to specify the gpio polarity:
> -			0 =3D active high
> -			1 =3D active low
> -	- gpio-controller: Marks the device node as a gpio controller.
> -
> -Optional properties:
> -	- no-output: disables driving output on the pins
> -
> -Examples:
> -	gpio1: nand-gpio-out@1f300010 {
> -		compatible =3D "ni,169445-nand-gpio";
> -		reg =3D <0x1f300010 0x4>;
> -		reg-names =3D "dat";
> -		gpio-controller;
> -		#gpio-cells =3D <2>;
> -	};
> -
> -	gpio2: nand-gpio-in@1f300014 {
> -		compatible =3D "ni,169445-nand-gpio";
> -		reg =3D <0x1f300014 0x4>;
> -		reg-names =3D "dat";
> -		gpio-controller;
> -		#gpio-cells =3D <2>;
> -		no-output;
> -	};
> diff --git a/Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt b/Doc=
umentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
> deleted file mode 100644
> index 038c3a6a1f4d..000000000000
> --- a/Documentation/devicetree/bindings/gpio/wd,mbl-gpio.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -Bindings for the Western Digital's MyBook Live memory-mapped GPIO contro=
llers.
> -
> -The Western Digital MyBook Live has two memory-mapped GPIO controllers.
> -Both GPIO controller only have a single 8-bit data register, where GPIO
> -state can be read and/or written.
> -
> -Required properties:
> -	- compatible: should be "wd,mbl-gpio"
> -	- reg-names: must contain
> -		"dat" - data register
> -	- reg: address + size pairs describing the GPIO register sets;
> -		order must correspond with the order of entries in reg-names
> -	- #gpio-cells: must be set to 2. The first cell is the pin number and
> -			the second cell is used to specify the gpio polarity:
> -			0 =3D active high
> -			1 =3D active low
> -	- gpio-controller: Marks the device node as a gpio controller.
> -
> -Optional properties:
> -	- no-output: GPIOs are read-only.
> -
> -Examples:
> -	gpio0: gpio0@e0000000 {
> -		compatible =3D "wd,mbl-gpio";
> -		reg-names =3D "dat";
> -		reg =3D <0xe0000000 0x1>;
> -		#gpio-cells =3D <2>;
> -		gpio-controller;
> -	};
> -
> -	gpio1: gpio1@e0100000 {
> -		compatible =3D "wd,mbl-gpio";
> -		reg-names =3D "dat";
> -		reg =3D <0xe0100000 0x1>;
> -		#gpio-cells =3D <2>;
> -		gpio-controller;
> -		no-output;
> -	};
> -- =

> 2.35.1.1320.gc452695387.dirty
> =


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
