Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E4D1C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 07:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYo89DGSR4C5W1BMQHfnvVNQASUK9oD4J95dtUpK4VE=; b=YBcmz4WyFV0V78
	ayndIyL5p/vSg5RavH5Ljy50qjm9EqVx24GXWaSDkVSA/aeJC4pM7ZCMbpkxzca0jTnHrdwM1OtiM
	8xd2/YybuXgFwELEl5XGNGOWyl5U8EwAqdbo8mk4VEDPYzV3r2vpUgnwKrwTORVpSGF5LPBRembwJ
	mBerDPs6gm3DRKQB1yMSN1i7wzXuiDuwGmqtPmXjYGjcM8pTQaHdgrKyh1QVdCo3GvpvfYwjm4woI
	02kpVj9RR7sMBj9yj1o+sneU4zggP2x+bIMjcOmMi7li0+IHe0ZqGrOhDCBYm9VFYR1B3ANwqX/MA
	340I2CYazZwpG31sZJZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzze-000000004l2-3OCx;
	Thu, 22 May 2025 07:05:30 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHzzd-000000004kA-1Q2G
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 07:05:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5017AA4CB03;
	Thu, 22 May 2025 07:05:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69666C4CEE4;
	Thu, 22 May 2025 07:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747897528;
	bh=VWZUBj/REVNh4kP8z0AREFQwTT+Je+Tioh8mPZS898s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SctiR2ljnFggNEHBNwQZ7pwV6Czy+jXGZxP+6Xydr+nz70JMGdmQePJZjtmqqH65T
	 HUF8P/JVaHEpbK4WX0Q0IZgG9AiyK5KkjHRcpyL51FitfyyR859VSfvFQSIDLfuWgr
	 KloI3qBgqWwDgRN8TXyYPJySGa93Euc10v/itg4e7LXmXYzOX7F7VGfteCOWrQr6hg
	 8UN9NJHRGLNzOd0BEUC45bH1xuTdGPfUfQcu/hsIMAgoPEpPW2AEPjFWWTnfCGZWl1
	 FbGLl40TSxoXPqD7/LH/X5judNrKoQ0OF8mc7PoRiPi2w6gKGOkD6BRrPPhCuo7ndH
	 4ML4UiyN0unIA==
Date: Thu, 22 May 2025 09:05:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	geert+renesas@glider.be, magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, 
	kees@kernel.org, gustavoars@kernel.org, biju.das.jz@bp.renesas.com, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-hardening@vger.kernel.org, john.madieu.xa@bp.renesas.com, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH v3 09/12] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3S support
Message-ID: <20250522-interesting-alligator-of-youth-fd34af@kuoka>
References: <20250521140943.3830195-1-claudiu.beznea.uj@bp.renesas.com>
 <20250521140943.3830195-10-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250521140943.3830195-10-claudiu.beznea.uj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_000529_513986_EBBD0B04 
X-CRM114-Status: GOOD (  18.37  )
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

On Wed, May 21, 2025 at 05:09:40PM GMT, Claudiu wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> The Renesas USB PHY hardware block receives an input signal from the system
> controller. This signal must be controlled during power-on, power-off, and
> system suspend/resume sequences as follows:
> - during power-on/resume, it must be de-asserted before enabling clocks and
>   modules
> - during power-off/suspend, it must be asserted after disabling clocks and
>   modules
> 
> Add the renesas,sysc-signals device tree property, which allows the
> reset-rzg2l-usbphy-ctrl driver to parse, map, and control the system
> controller signal at the appropriate time. Along with it add a new
> compatible for the RZ/G3S SoC.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> ---
> 
> Changes in v3:
> - none; this patch is new
> 
>  .../reset/renesas,rzg2l-usbphy-ctrl.yaml      | 38 ++++++++++++++++---
>  1 file changed, 32 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
> index b0b20af15313..75134330f797 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
> @@ -15,12 +15,15 @@ description:
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
> +

Drop blank line

> +      - const: renesas,r9a08g045-usbphy-ctrl # RZ/G3S
>  
>    reg:
>      maxItems: 1
> @@ -48,6 +51,16 @@ properties:
>      $ref: /schemas/regulator/regulator.yaml#
>      unevaluatedProperties: false
>  
> +  renesas,sysc-signals:
> +    description: System controller phandle, specifying the register
> +      offset and bitmask associated with a specific system controller signal

Same comments.

> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: system controller phandle
> +          - description: register offset associated with a signal
> +          - description: register bitmask associated with a signal
> +
>  required:
>    - compatible
>    - reg
> @@ -57,6 +70,19 @@ required:
>    - '#reset-cells'
>    - regulator-vbus

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
