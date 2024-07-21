Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52BACC3DA61
	for <linux-phy@archiver.kernel.org>; Sun, 21 Jul 2024 09:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZ5YUbRA+Hx5WVFTRd8lRI2tYrlYBzMeazuJVugPTF0=; b=acwdYk1aRJOR9n
	ZhjwjcFYc3klapYFaGZz9aTHFNRpaFXCC/Kt0vKhJaxfDbDq2t0dbOBlK4jSlF8VPlEjqE21jdSHB
	ZTSpcpsAEsXf+uI/FLYQuWuvjtH8bY7WUF9fFcQzILGZOozh9le27FQYrIdMrstcQVyAoYZrHJMnI
	Os7u4ttk39H4s3B0RqwBlZrB86IysjVeWwu6q/NrK+BIpl8KIWj/OnztOR3OfvXonZJVWK/dnauIm
	8cqPZEIdBgFSA7O5KpR3G2FqC8B7TsrvHpCGNCRz64EvJiDk54yWhJi2uEH9iXDaiT2O0rcPwoERy
	EIGI1fp8S4WQh/lPHXVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVSuw-00000006YsE-09NM;
	Sun, 21 Jul 2024 09:31:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVSuY-00000006YnW-1pFM;
	Sun, 21 Jul 2024 09:31:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C1DB2CE09B0;
	Sun, 21 Jul 2024 09:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF2ABC116B1;
	Sun, 21 Jul 2024 09:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721554280;
	bh=/PmgbeCC1miQO2Z6wIYp1XoBA7ytgIEWOFMFofA5oP8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=pe+LLKZ0cPrXyAJeUy/MABKFGvNHRM1d6LlnA9RiESSzyBrJcmxeEiWFhmsiNpyLn
	 ROTp9KkJB/aOax2EVhEvwOUEX5LuV7qnMVEFYTqvKGoEF+lpy0LqzzKrnGObQsrmwe
	 g5xPgd5phMhWb03B3cNSKYiz2fNIEdcOdoM6SmMlNA6oWqZhO+cMPizChA0TZRXlz0
	 7OxWYnKpqpvGRlwBJExifz7fVqHUaQJUfoP4HF4b+9hxr5EMp336hb7rYGy7NWr766
	 Knu7j7PxbHK/yeWNde2ICuthO04IDyF9YWcBSdmukhOnTYq65+exX+30XfvMqZ5uRF
	 agqPJcKqfbDTg==
Message-ID: <d48d261f-c428-4b96-9a88-725e29f6648f@kernel.org>
Date: Sun, 21 Jul 2024 11:31:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v3 3/6] dt-bindings: phy: cp110-utmi-phy: add
 compatible string for armada-38x
To: Josua Mayer <josua@solid-run.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Konstantin Porotchkin <kostap@marvell.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-3-4c16f9abdbdc@solid-run.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240720-a38x-utmi-phy-v3-3-4c16f9abdbdc@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240721_023122_859895_0E9AFB2C 
X-CRM114-Status: GOOD (  17.13  )
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

On 20/07/2024 16:19, Josua Mayer wrote:
> Armada 38x USB-2.0 PHYs are similar to Armada 8K (CP110) and can be
> supported by the same driver with small differences.
> 
> Add new compatible string for armada-38x variant of utmi phy.
> Then add descriptions and names for two additional register definitions
> that may be specified instead of a syscon phandle.
> 
> Signed-off-by: Josua Mayer <josua@solid-run.com>
> ---
>  .../phy/marvell,armada-cp110-utmi-phy.yaml         | 34 ++++++++++++++++++----
>  1 file changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
> index 9ce7b4c6d208..246e48d51755 100644
> --- a/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/marvell,armada-cp110-utmi-phy.yaml
> @@ -23,12 +23,36 @@ description:
>    UTMI PHY1  --------\
>                        1.H----- USB HOST1
>  
> +  On Armada 380 there is an additional USB-2.0-only controller,
> +  and an additional UTMI PHY respectively.
> +  The USB device controller can only be connected to a single UTMI PHY port,
> +  either UTMI PHY0 or UTMI PHY2.
> +
> +
> +

One blank line is enough.

>  properties:
>    compatible:
> -    const: marvell,cp110-utmi-phy
> +    enum:
> +      - marvell,a38x-utmi-phy
> +      - marvell,cp110-utmi-phy
>  
>    reg:
> -    maxItems: 1
> +    anyOf:

That's oneOf.

> +      - items:
> +          - description: UTMI registers
> +      - items:
> +          - description: UTMI registers
> +          - description: USB config register
> +          - description: UTMI config registers
> +
> +  reg-names:
> +    anyOf:

oneOf

> +      - items:
> +          - const: utmi
> +      - items:
> +          - const: utmi
> +          - const: usb-cfg
> +          - const: utmi-cfg
>  
>    "#address-cells":
>      const: 1
> @@ -38,13 +62,14 @@ properties:
>  
>    marvell,system-controller:
>      description:
> -      Phandle to the system controller node
> +      Phandle to the system controller node.
> +      Optional when usb-cfg and utmi-cfg regs are given.
>      $ref: /schemas/types.yaml#/definitions/phandle
>  
>  # Required child nodes:
>  
>  patternProperties:
> -  "^usb-phy@[0|1]$":
> +  "^usb-phy@[0|1|2]$":

[0-2]

>      type: object
>      description:
>        Each UTMI PHY port must be represented as a sub-node.
> @@ -68,7 +93,6 @@ required:
>    - reg
>    - "#address-cells"
>    - "#size-cells"
> -  - marvell,system-controller

you miss here allOf:if:then: narrowing and marvell,system-controller per
each variant.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
