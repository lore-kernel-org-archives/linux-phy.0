Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C555C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMStYumbQsZeJFRCCMqhrsICxc7yZoCv61oPaZdktgU=; b=Def3pFghdxWrPp
	cGkG0rkVnldgsDxFAQjjl0dm/fLYugDfsUqIf9B94alkZctcoZFMSlU2nD7E4yClRUIfK7mO/1mBl
	DsCuTiNZ4seRjwDHtj0hGIW890/xhATbz91T17pe6Cm6NDBipMm5xxcVuTdPZikLEKO5aUZLxDvBm
	sqJGhiN0dnEEGEQQ4x9HIV0fbfBUSo7EfTss1Z8eQbGQGS285Bql/60uGKqQ7R8lvWQyjKLkYZyBt
	1F2gfKIk8H/yBwXTgj+KFDvNMffy4P6hvtKh3LG1hsBe8zsasKVQKJzh+sq/UGHCxDsKjlxgYzEcR
	Bu/XPbgTIJTiEPGDZYPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JSR-005xZc-Ml; Fri, 01 Jul 2022 16:25:27 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JSO-005xYS-1R
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:25:25 +0000
Received: by mail-io1-f54.google.com with SMTP id y2so2716228ior.12
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:25:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=GYZt2HTOj5uqVs3VeuCu1VY8xKZXjOoUKU1SlR+YU08=;
        b=RaYp25Jod/i3cZeRLMpau0MuU0ACj3wHA7CAxb24bDk8WqgC+y8AMy6jh9ItOfSaMJ
         C2jw+bh8nLXOk95kTjTcvcuilsI1MZr7B+ISgCnFr5Ov2ouW1soVnAWZEI84fiqdgS7g
         YWzQzWnOXDMClH3hOyo//n2G8IOgJY3yuPNHvvCtJZQukdiKooqwv12Wu43YW1S8IYPs
         +aMZJyfxy98W8mMA5RharI+Z2DqHCQAvr+OZWVehm66xjl3tKtCelWl7FLIEWxQ92csi
         S+wrcIbFSE1BDhA1m0nESpmNIL9P2y+og7E82KM0gm3jkfo/Si7TmlkWFCdNFHBL4kWg
         EU6g==
X-Gm-Message-State: AJIora9m8eLaD3o+G0IgXxpdKmn/vfWvY7wkoYwYv550z1b6hTNIFI2K
	4nWvs07VLewaMc5nzSUPdDugHJ681g==
X-Google-Smtp-Source: AGRyM1u2WJf0koBttU3ePsmz386ilkTlLQzKph0Fw5IvRuwDlIu2D9ePyYf/MIdg5/sQyUM6eqm4PQ==
X-Received: by 2002:a02:85e3:0:b0:339:cf24:68f6 with SMTP id d90-20020a0285e3000000b00339cf2468f6mr9378878jai.161.1656692723052;
        Fri, 01 Jul 2022 09:25:23 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f1-20020a02b781000000b0033cc22c261fsm4209024jam.111.2022.07.01.09.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:25:22 -0700 (PDT)
Received: (nullmailer pid 1076614 invoked by uid 1000);
	Fri, 01 Jul 2022 16:25:21 -0000
Date: Fri, 1 Jul 2022 10:25:21 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, vkoul@kernel.org, kishon@ti.com, rtanwar@maxlinear.com
Subject: Re: [PATCH v1 1/9] dt-bindings: phy: lantiq: xway-rcu-usb2-phy:
 Convert to YAML
Message-ID: <20220701162521.GA1067947-robh@kernel.org>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
 <20220628124441.2385023-2-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628124441.2385023-2-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_092524_141958_3D43B240 
X-CRM114-Status: GOOD (  23.99  )
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

On Tue, Jun 28, 2022 at 02:44:33PM +0200, Martin Blumenstingl wrote:
> Convert the Lantiq XWAY RCU USB2 PHY bindings to YAML.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../phy/lantiq,xway-rcu-usb2-phy.yaml         | 68 +++++++++++++++++++
>  .../bindings/phy/phy-lantiq-rcu-usb2.txt      | 40 -----------
>  2 files changed, 68 insertions(+), 40 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
> new file mode 100644
> index 000000000000..702a8e8c64b5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/lantiq,xway-rcu-usb2-phy.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/lantiq,xway-rcu-usb2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Lantiq XWAY SoC RCU USB 1.1/2.0 PHY binding
> +
> +maintainers:
> +  - Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - lantiq,ase-usb2-phy
> +      - lantiq,danube-usb2-phy
> +      - lantiq,xrx100-usb2-phy
> +      - lantiq,xrx200-usb2-phy
> +      - lantiq,xrx300-usb2-phy
> +
> +  reg:
> +    minItems: 2

Need to define what each entry is which you lost.

> +
> +  clocks:
> +    minItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: phy
> +
> +  resets:
> +    minItems: 1

But reset-names requires 2 entries.

> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: phy

'phy' was optional before. You may want to add another case with oneOf:

items:
  - const: ctrl

I'm not sure on all the possibilities though. Is 'ctrl' optional?

> +      - const: ctrl
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    usb_phy0: usb2-phy@18 {
> +        compatible = "lantiq,xrx200-usb2-phy";
> +        reg = <0x18 4>, <0x38 4>;
> +
> +        clocks = <&pmu_USB0_PHY>;
> +        clock-names = "phy";
> +
> +        resets = <&reset1 4 4>, <&reset0 4 4>;
> +        reset-names = "phy", "ctrl";
> +
> +        #phy-cells = <0>;
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt b/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
> deleted file mode 100644
> index 643948b6b576..000000000000
> --- a/Documentation/devicetree/bindings/phy/phy-lantiq-rcu-usb2.txt
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -Lantiq XWAY SoC RCU USB 1.1/2.0 PHY binding
> -===========================================
> -
> -This binding describes the USB PHY hardware provided by the RCU module on the
> -Lantiq XWAY SoCs.
> -
> -This node has to be a sub node of the Lantiq RCU block.
> -
> --------------------------------------------------------------------------------
> -Required properties (controller (parent) node):
> -- compatible	: Should be one of
> -			"lantiq,ase-usb2-phy"
> -			"lantiq,danube-usb2-phy"
> -			"lantiq,xrx100-usb2-phy"
> -			"lantiq,xrx200-usb2-phy"
> -			"lantiq,xrx300-usb2-phy"
> -- reg		: Defines the following sets of registers in the parent
> -		  syscon device
> -			- Offset of the USB PHY configuration register
> -			- Offset of the USB Analog configuration
> -			  register (only for xrx200 and xrx200)
> -- clocks	: References to the (PMU) "phy" clk gate.
> -- clock-names	: Must be "phy"
> -- resets	: References to the RCU USB configuration reset bits.
> -- reset-names	: Must be one of the following:
> -			"phy" (optional)
> -			"ctrl" (shared)
> -
> --------------------------------------------------------------------------------
> -Example for the USB PHYs on an xRX200 SoC:
> -	usb_phy0: usb2-phy@18 {
> -		compatible = "lantiq,xrx200-usb2-phy";
> -		reg = <0x18 4>, <0x38 4>;
> -
> -		clocks = <&pmu PMU_GATE_USB0_PHY>;
> -		clock-names = "phy";
> -		resets = <&reset1 4 4>, <&reset0 4 4>;
> -		reset-names = "phy", "ctrl";
> -		#phy-cells = <0>;
> -	};
> -- 
> 2.36.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
