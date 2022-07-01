Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BD9C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dYhHT0V0S4fiN/gwwxfqbUkb/YgleRGchO6vehdyxcc=; b=tOprzslkGUPEEw
	Cd7uNCtfRcBubeZN92XPeU86S2CTqD2ePApFClKiESW0mB1rItuWivdYPer29Kk1m5ocsQvFElWq8
	UL+tLHFLo+qc3IjP7BhCTtp8NEbfqnLOgFnVs3ADidam8gwWOB8lWSYC3wiDR432KvnlWgkF5FSs0
	/jEoxtj/6fubv3Q1fKVS5LaBV78ctyJX9kTYqQTUopFrBTQnr4Wkw45Njkl1mBNrkEtnPcL6HL5MB
	W+mkwWXjBBXhsnLaNbXQBgFkSxu/BQfOwSIK+IbbaQZ+JlxdbG/EcwJqcqnnQPMaUwEGaEbeo7ved
	RTN2RrX4nmhgJdUSTFHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Jaj-0060u9-TM; Fri, 01 Jul 2022 16:34:01 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7Jag-0060qf-50
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:33:59 +0000
Received: by mail-io1-f52.google.com with SMTP id d3so2746701ioi.9
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:33:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Pmdu7h2iGcUXpSD7onJcpB+mZ1oZjCxRS5eOKqA9L/0=;
        b=Rtvo/1IkqN13Z/WvRDi07rgEsXkoh+aOsTjISJLj8cpMxe7PVwytFJ1XWjuQyKECHw
         667tal8bqJgj28pEOt4CDREF4dygbRaUFAdyiDLj6s89B1qFcWYdT6VHMWfMuaGQvb4c
         bedeW+LOu8HGHBiFUTLEgDT1Kitef3i8JoaUGgshSaZP3xYEfVjE8uvoIPJSKovS9xFK
         BXPLTjGwqY2/iHqq2QZpPoR/vyfBrN2VMpk+lmTH2jullC78yqwAXKUG4hAMIPhm4mQ5
         zHdYdNuJ+kUlLKoy6xxwcSwxpILXi65xgiEdRrD857oPXIK2KkEnfs1S32mVnuppVTsa
         VK0w==
X-Gm-Message-State: AJIora81IO5S464Q/vGzF7zPh1TQYJ0cfLXa+9BYGFiGZGqsDrpd15hM
	TsswnZ/WP3MBYv12xbZXUA==
X-Google-Smtp-Source: AGRyM1toBf+5L/GtFA+ZiGhKOyleryQNcTlxBQpBs2cfZITu2x1v1RS5UT4ctp9OaXWWl/vi9Qh+pA==
X-Received: by 2002:a05:6638:16c9:b0:33c:c0d9:d9fb with SMTP id g9-20020a05663816c900b0033cc0d9d9fbmr9324726jat.11.1656693232246;
        Fri, 01 Jul 2022 09:33:52 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f65-20020a0284c7000000b00339ddd8adddsm10008166jai.98.2022.07.01.09.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:33:51 -0700 (PDT)
Received: (nullmailer pid 1090177 invoked by uid 1000);
	Fri, 01 Jul 2022 16:33:50 -0000
Date: Fri, 1 Jul 2022 10:33:50 -0600
From: Rob Herring <robh@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, vkoul@kernel.org, kishon@ti.com, rtanwar@maxlinear.com
Subject: Re: [PATCH v1 3/9] dt-bindings: reset: intel,rcu-gw: Update bindings
 for "legacy" SoCs
Message-ID: <20220701163350.GA1078312-robh@kernel.org>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
 <20220628124441.2385023-4-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628124441.2385023-4-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_093358_276022_771902F6 
X-CRM114-Status: GOOD (  24.67  )
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

On Tue, Jun 28, 2022 at 02:44:35PM +0200, Martin Blumenstingl wrote:
> The Lantiq Amazon-SE, Danube, xRX100 and xRX200 SoCs have up to two USB2
> PHYs which are part of the RCU register space. The RCU registers on
> these SoCs are using big endian. Update the binding for these SoCs to
> properly describe this IP:
> - Add compatible strings for Amazon-SE, Danube and xRX100
> - Rename the xRX200 compatible string (which is not used anywhere) and
>   switch to the one previously documented in mips/lantiq/rcu.txt
> - Allow usage of "simple-mfd" and "syscon" in the compatible string so the
>   child devices (USB2 PHYs) can be described
> - Allow #address-cells and #size-cells to be set to 1 for describing the
>   child devices (USB2 PHYs)
> - #reset-cells must always be 3 (offset, reset bit and status bit) on the
>   legacy SoCs while LGM uses a fixed value of 2 (offset and reset bit -
>   status bit is always identical to the reset bit).
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../bindings/reset/intel,rcu-gw.yaml          | 84 +++++++++++++++++--
>  1 file changed, 79 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> index be64f8597710..b90913c7b7d3 100644
> --- a/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> +++ b/Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
> @@ -11,9 +11,16 @@ maintainers:
>  
>  properties:
>    compatible:
> -    enum:
> -      - intel,rcu-lgm
> -      - intel,rcu-xrx200

It is okay to remove/change this because ?

> +    oneOf:
> +      - items:
> +          - enum:
> +              - lantiq,ase-rcu
> +              - lantiq,danube-rcu
> +              - lantiq,xrx100-rcu
> +              - lantiq,xrx200-rcu
> +          - const: simple-mfd

This says child nodes have 0 dependence on anything in the parent node. 
Such as a clock in the parent needing to be enabled.

> +          - const: syscon

Given the child nodes depend on this, I find the combination to be a 
contradiction. But it's widely used, so oh well.

> +      - const: intel,rcu-lgm
>  
>    reg:
>      description: Reset controller registers.
> @@ -33,8 +40,6 @@ properties:
>          maximum: 31
>  
>    "#reset-cells":
> -    minimum: 2
> -    maximum: 3
>      description: |
>        First cell is reset request register offset.
>        Second cell is bit offset in reset request register.
> @@ -43,6 +48,43 @@ properties:
>        reset request and reset status registers is same. Whereas
>        3 for legacy SoCs as bit offset differs.
>  
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  big-endian: true
> +
> +patternProperties:
> +  "^usb2-phy@[0-9a-f]+$":
> +    type: object
> +    $ref: "../phy/lantiq,xway-rcu-usb2-phy.yaml"
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: intel,rcu-lgm
> +    then:
> +      properties:
> +        "#reset-cells":
> +          const: 2

else:
  properties:
    "#reset-cells":
      const: 3

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - lantiq,ase-rcu
> +              - lantiq,danube-rcu
> +              - lantiq,xrx100-rcu
> +              - lantiq,xrx200-rcu
> +    then:
> +      properties:
> +        "#reset-cells":
> +          const: 3
> +
>  required:
>    - compatible
>    - reg
> @@ -67,3 +109,35 @@ examples:
>          #pwm-cells = <2>;
>          resets = <&rcu0 0x30 21>;
>      };
> +  - |
> +    rcu_xrx200: rcu@203000 {
> +        compatible = "lantiq,xrx200-rcu", "simple-mfd", "syscon";
> +        reg = <0x203000 0x100>;
> +        big-endian;
> +
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        #reset-cells = <3>;
> +        intel,global-reset = <0x10 30 29>;
> +
> +        usb_phy0: usb2-phy@18 {
> +            compatible = "lantiq,xrx200-usb2-phy";
> +            reg = <0x18 4>, <0x38 4>;
> +            status = "disabled";

Why is your example disabled? Don't use 'status' in examples.

> +
> +            resets = <&rcu_xrx200 0x48 4 4>, <&rcu_xrx200 0x10 4 4>;

Humm, a dependency on the parent. Not a 'simple-mfd'.

> +            reset-names = "phy", "ctrl";
> +            #phy-cells = <0>;
> +        };
> +
> +        usb_phy1: usb2-phy@34 {
> +            compatible = "lantiq,xrx200-usb2-phy";
> +            reg = <0x34 4>, <0x3c 4>;
> +            status = "disabled";
> +
> +            resets = <&rcu_xrx200 0x48 5 5>, <&rcu_xrx200 0x10 4 4>;
> +            reset-names = "phy", "ctrl";
> +            #phy-cells = <0>;
> +        };
> +    };
> -- 
> 2.36.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
