Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A99C7C55182
	for <linux-phy@archiver.kernel.org>; Wed,  5 Aug 2026 07:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfybPnKtEjzBbG78TzXByJUxuPeAdbVGlOoko4L5kj8=; b=zNfpLZmZ+iI1n/
	hrqP9JXMj9gKKk2Pi/8JCDclD3MIJ7M1iD/pdkfNMb+1Y2pWqMct3bwdmhy1oTz0dwkbkDGfanZGJ
	SKp7bREAy2A0elhBCifDTHV8D0ibINOGMQCP0wyd7GeUa28R94wW9ORem+d6md+AH5DU2r49Lo7yo
	csK0ZFY/GAZBe+jhPodJlS3wTWwtX/aLZVtEPacrTL27Bxa7qyjN0yalaWZV6dNeHxetzMOaOk2/f
	TUVOB/1CgIH0uEIsHEaOOLOcChIn7VwsbCLB2M0Iqj87Gckwfl6fFI8GGF5G5UpxFX0SPtdBFoNWt
	vB/6100EKi4+2AchhCzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrWDZ-00000003QOe-0XZi;
	Wed, 05 Aug 2026 07:39:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrWDX-00000003QOV-27jN
	for linux-phy@lists.infradead.org;
	Wed, 05 Aug 2026 07:39:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AA960600AE;
	Wed,  5 Aug 2026 07:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3347C1F000E9;
	Wed,  5 Aug 2026 07:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785915549;
	bh=vn3RpXvpxXIGbd3ddD9ECwKW6PZImCdLNKEfBy8sGa4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dQ5n6mhfggqpd3YWcbezcHtrc4sFfIhkvGGQsK4o1Hhrctwh0fu1BgfRwaD1cdl7d
	 m+HX4DLe/ueBkTGN9nubfUfVw5HOjGKlHQRvp0WDniXF1BYFyWROskAS81wlu+1J8b
	 RJc245haS6pO7ruURKnFkhj6aZST6EDvMg6bjtKG2ezr60r4VYu1btlxmNsRM2MIxS
	 CpuqDV1Hfr/5E1zfQCEph4LrjLxQRz5qGxPG6KG0FtRyw10ZifV0FhQpIP7c1FPthX
	 jhrx1vujVe/vcf2nNGx0P77TaHlUAQlrlWcB3laHoQtQ1UDSVAkKehnF9UNsFTT4Wd
	 t4plxCy00BvRw==
Date: Wed, 5 Aug 2026 09:39:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org, rogerq@ti.com, 
	Julian.FRIEDRICH@frequentis.com, upstream+omap@sigma-star.at
Subject: Re: [PATCH 2/2] dt-bindings: phy: ti,phy-usb3: document aspcie
 reference clock setting
Message-ID: <20260805-uptight-onyx-unicorn-cfd0ce@quoll>
References: <20260804111849.92046-1-david.oberhollenzer@sigma-star.at>
 <20260804111849.92046-3-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804111849.92046-3-david.oberhollenzer@sigma-star.at>
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

On Tue, Aug 04, 2026 at 01:18:49PM +0200, David Oberhollenzer wrote:
> Add syscon-acspcie-tx-rx property to the PHY bindings.

Why? Actually better to explain WHY in the property description.

> 
> Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> index 84f538aa587c..4fb017df2898 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
> @@ -52,6 +52,15 @@ properties:
>        enum: [wkupclk, sysclk, refclk, dpll_ref,
>               dpll_ref_m2, phy-div, div-clk]
>  
> +  syscon-acspcie-tx-rx:

Please organize the patch documenting the compatible (DT bindings)
before the patch using that compatible.
See also: https://elixir.bootlin.com/linux/v6.14-rc6/source/Documentation/devicetree/bindings/submitting-patches.rst#L46

Not a valid naming, missing vendor prefix and syscon looks like
Linuxism, since you called it "system control module".

> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    maxItems: 1
> +    items:
> +      items:

Missing -

Also, update the example.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
