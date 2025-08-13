Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CFDDC87FCF
	for <linux-phy@archiver.kernel.org>; Wed, 13 Aug 2025 23:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khM1YRa/ztPGDUX3vl0hWWCZalcDxHME6xrjyc6Kv38=; b=TPZYHXInjB6wI2
	pzH+gPm47qCsr91rtFpai7UdZNt+X03s7lwV67cYpP79ckEAbozgH3Ca+bhQ1EpPAbF8Ou9ptNY1f
	NSj8vFUSVWliIPjnO6TsobKlYBhvxpk1VIqNu0BK0/zpqYybBNHhsyRIsat9MZ9CmXbjN9rOYCfAZ
	8RQEcGNJ+nHsT7uxq1syZ1xTdx7tYqplCfwllJnwiuUDgLdkmfwCqZbWvuUfBq3bJANShIJExMKTC
	wLfUJFaV1Ys72P3bNUhlPh9cL3bMkM9lgP7rVqcsQXpY27hcakVYmCYzq1o6IochGMIb2cjWMn/5k
	DTQmAQNH4gK+HK/o1RAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umKma-0000000FGJp-33lI;
	Wed, 13 Aug 2025 23:21:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umKmJ-0000000FGEr-2nkE
	for linux-phy@bombadil.infradead.org;
	Wed, 13 Aug 2025 23:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=SnMPEC4x4FokjS/nKPshQ4Eu5Vo0dbHmumZLev/7daA=; b=fweJfUAWwSZDlS5I5iUh+n2y16
	TtUbAK+vXBNl44t9AhyuerdhYV4j+e3CcskfChdUBgJL+YB/tJE2YF3nMZOV5vcnr1FnKln9PkkHN
	B3oks3vQWqK+wgla0fzfPheAnWbacPs2HmS+6vwpc3iqt4RqLh2xZWsamUbirCLPz61JxhptMXuUr
	basYhvADUKiiPfVwfGurImD85Op4/tQlTfV5YIJvgIAN4UQtLIXOtxbDTivGvTmXk9wx1EJWBmIxd
	LL/GC6ubxk4udknzvDPSnd5XRv7YIkJtOMOeRqOIJNkYmh77vwz1oX2jlEqQ/PUtip8VaRE88RtKU
	VgfYR4SA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umKmG-0000000GELm-0Tzt
	for linux-phy@lists.infradead.org;
	Wed, 13 Aug 2025 23:21:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 301365C4360;
	Wed, 13 Aug 2025 23:21:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8F92C4CEEB;
	Wed, 13 Aug 2025 23:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755127261;
	bh=7QHaI1fcoxBUlAvp1V08Z9TBDjmmxs2AxZfKfYjFpL0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tm5ut3GEOG1mFe2/aGoyOYmwODnxtNuPOch6sbjlPY7ccBvevVWPqB1pxoClOAZtV
	 zU/jCBmD3LCfpfAIfOwZwacdBvB8lJeLm/Tel0PWiK3f/8ly9t69Uqh8JIM7Aq6MEC
	 /oI9ogGtua3itoEk1odrFe65POEROXSBKqfOgry85wLdsvehMp/+KhnJZah3xDWd8W
	 ncGd6oT5ppLIJ0wH2vkLVb3lXNHad23PKKUL5HPzzOSnjVy5GQzOkY71taiyNENVnc
	 CJXOTTFQ7W65780n0gSUE8yro8QFBts62NefoWTwQ/Gvu9NoZaBL9ZWJHLXmCOR+AF
	 MwUuF+bma0+7Q==
Date: Wed, 13 Aug 2025 18:21:00 -0500
From: Rob Herring <robh@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v4 4/8] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
Message-ID: <20250813232100.GA950521-robh@kernel.org>
References: <20250808061806.2729274-1-claudiu.beznea.uj@bp.renesas.com>
 <20250808061806.2729274-5-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250808061806.2729274-5-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_002104_606752_0AC7CCC9 
X-CRM114-Status: GOOD (  22.44  )
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

On Fri, Aug 08, 2025 at 09:18:02AM +0300, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> The Renesas USB PHY hardware block needs to have the PWRRDY bit in the
> system controller set before applying any other settings. The PWRRDY bit
> must be controlled during power-on, power-off, and system suspend/resume
> sequences as follows:
> - during power-on/resume, it must be set to zero before enabling clocks and
>   modules
> - during power-off/suspend, it must be set to one after disabling clocks
>   and modules
> 
> Add the renesas,sysc-pwrrdy device tree property, which allows the
> reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
> controller PWRRDY bit at the appropriate time. Along with it add a new
> compatible for the RZ/G3S SoC.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v4:
> - dropped blank line from compatible section
> - s/renesas,sysc-signals/renesas,sysc-pwrrdy/g
> - dropped description from renesas,sysc-pwrrdy
> - updated description of renesas,sysc-pwrrdy items
> - updated patch description
> 
> Changes in v3:
> - none; this patch is new
> 
>  .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 40 ++++++++++++++++---
>  1 file changed, 34 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
> index b0b20af15313..c1d5f3228aa9 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
> @@ -15,12 +15,14 @@ description:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
> -          - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
> -          - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
> -      - const: renesas,rzg2l-usbphy-ctrl
> +    oneOf:
> +      - items:
> +          - enum:
> +              - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
> +              - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
> +              - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
> +          - const: renesas,rzg2l-usbphy-ctrl
> +      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
>  
>    reg:
>      maxItems: 1
> @@ -48,6 +50,19 @@ properties:
>      $ref: /schemas/regulator/regulator.yaml#
>      unevaluatedProperties: false
>  
> +  renesas,sysc-pwrrdy:
> +    description: The system controller PWRRDY indicates to the USB PHY if the
> +                 power supply is ready. PWRRDY needs to be set during power-on
> +                 before applying any other settings. It also needs to
> +                 be set before powering off the USB.

Where did this odd formatting come from? If copied from somewhere else, 
patches reformatting them welcome.

    description:
      The system controller PWRRDY indicates to the USB PHY if the power 
      supply is ready. PWRRDY needs to be set during power-on before applying 
      any other settings. It also needs to be set before powering off the USB.


> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: System controller phandle required by USB PHY CTRL
> +                         driver to set PWRRDY

Indent by 2 more than 'description'

With that,

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

> +          - description: Register offset associated with PWRRDY
> +          - description: Register bitmask associated with PWRRDY
> +
>  required:
>    - compatible
>    - reg
> @@ -57,6 +72,19 @@ required:
>    - '#reset-cells'
>    - regulator-vbus
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a08g045-usbphy-ctrl
> +    then:
> +      required:
> +        - renesas,sysc-pwrrdy
> +    else:
> +      properties:
> +        renesas,sysc-pwrrdy: false
> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.43.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
