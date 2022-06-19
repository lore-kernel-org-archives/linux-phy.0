Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9DEC43334
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jun 2022 11:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyv4I/6FVFTdSAekE7x1E+UlMa3f0P5fZK9GSP63CVE=; b=W1Xrrl8r7bzVvQ
	GNTNZkWunDfrqQcbUiHhZe5iqBbz6ZmlSSLliI4iaT/S7FlpmjMI07UGZpcjSpDiWaDXlZ55NmX47
	9RWdNysTieL3cOyicE2Dsy9654X+I6DDFuSvwjIGfN0rJe+A4Wqy/HiY7sWhlgxEtu6ZaGJalT0M2
	0PVjFS604826u35J6yQW2/pLnrOZCqffbxGlFABWj9QC3rtkTSAUSNDkE4PKcloqdoXyy9YWPBAX2
	+FTyzV6ne1QJ48NqZ11E28rw3iuG35jSC/nG+YAC1zFRnmoH8KWybKg9gLI9yKvSPGfkN3GnqoGk+
	EU9N8RGj0/d/tJPgC6Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tII-00E1iB-04; Sun, 19 Jun 2022 11:40:42 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tI5-00E1dR-TT; Sun, 19 Jun 2022 11:40:31 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BCC3925E;
	Sun, 19 Jun 2022 13:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655638826;
	bh=F985BgbPk6OEp+5ogkDCv/89Z7ithnzpRugLwEVYEp8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JUHkgqIQ4eCmyE3s1Ug0PS5cPnbkHC1bVg5u4Kzwc9F7zsf4U4y7zVpSYYhXRdz3D
	 W0psvcSnd25rEngNNlURd57Ohq3pRoND2QH76OMOuuaz98Q82wDLZ7w4Q3fiJe8boX
	 fxZERRMUkJZzKAfXZlMeBapvfLj/GVg+N0MPpeyk=
Date: Sun, 19 Jun 2022 14:40:12 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Sean Anderson <sean.anderson@seco.com>
Subject: Re: [PATCH] dt-bindings: phy: make phy-cells description a text
Message-ID: <Yq8LHN+WGVpXDwiM@pendragon.ideasonboard.com>
References: <20220619113325.21396-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220619113325.21396-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_044030_164409_B6DDD138 
X-CRM114-Status: GOOD (  16.55  )
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

Hi Krzysztof,

Thank you for the patch.

On Sun, Jun 19, 2022 at 01:33:25PM +0200, Krzysztof Kozlowski wrote:
> The description field is a string, so using YAML inside phy-cells
> description is not actually helpful.

Does it hurt though ? For xlnx,zynqmp-psgtr.yaml I wrote it that way to
prepare for a future where it could be described using a YAML schema
(but such future may never come).

> Make it a proper text.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/mediatek,tphy.yaml           | 14 ++++----
>  .../bindings/phy/mediatek,xsphy.yaml          | 10 +++---
>  .../bindings/phy/xlnx,zynqmp-psgtr.yaml       | 32 ++++++++-----------
>  3 files changed, 23 insertions(+), 33 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> index 4b638c1d4221..bd0e4c4915ed 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,tphy.yaml
> @@ -154,14 +154,12 @@ patternProperties:
>        "#phy-cells":
>          const: 1
>          description: |
> -          The cells contain the following arguments.
> -
> -          - description: The PHY type
> -              enum:
> -                - PHY_TYPE_USB2
> -                - PHY_TYPE_USB3
> -                - PHY_TYPE_PCIE
> -                - PHY_TYPE_SATA
> +          The cells contain the following arguments::
> +            - The PHY type::
> +              - PHY_TYPE_USB2
> +              - PHY_TYPE_USB3
> +              - PHY_TYPE_PCIE
> +              - PHY_TYPE_SATA
>  
>        nvmem-cells:
>          items:
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> index 598fd2b95c29..7262b8e184e2 100644
> --- a/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/mediatek,xsphy.yaml
> @@ -100,12 +100,10 @@ patternProperties:
>        "#phy-cells":
>          const: 1
>          description: |
> -          The cells contain the following arguments.
> -
> -          - description: The PHY type
> -              enum:
> -                - PHY_TYPE_USB2
> -                - PHY_TYPE_USB3
> +          The cells contain the following arguments::
> +            - The PHY type::
> +              - PHY_TYPE_USB2
> +              - PHY_TYPE_USB3
>  
>        # The following optional vendor properties are only for debug or HQA test
>        mediatek,eye-src:
> diff --git a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> index 79906519c652..7083eddb467c 100644
> --- a/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> +++ b/Documentation/devicetree/bindings/phy/xlnx,zynqmp-psgtr.yaml
> @@ -18,25 +18,19 @@ properties:
>    "#phy-cells":
>      const: 4
>      description: |
> -      The cells contain the following arguments.
> -
> -      - description: The GTR lane
> -        minimum: 0
> -        maximum: 3
> -      - description: The PHY type
> -        enum:
> -          - PHY_TYPE_DP
> -          - PHY_TYPE_PCIE
> -          - PHY_TYPE_SATA
> -          - PHY_TYPE_SGMII
> -          - PHY_TYPE_USB3
> -      - description: The PHY instance
> -        minimum: 0
> -        maximum: 1 # for DP, SATA or USB
> -        maximum: 3 # for PCIE or SGMII
> -      - description: The reference clock number
> -        minimum: 0
> -        maximum: 3
> +      The cells contain the following arguments::
> +        - The GTR lane (minimum:: 0, maximum:: 3)
> +        - The PHY type::
> +            - PHY_TYPE_DP
> +            - PHY_TYPE_PCIE
> +            - PHY_TYPE_SATA
> +            - PHY_TYPE_SGMII
> +            - PHY_TYPE_USB3
> +      - The PHY instance::
> +          minimum:: 0
> +          maximum:: 1 # for DP, SATA or USB
> +          maximum:: 3 # for PCIE or SGMII
> +      - The reference clock number (minimum:: 0, maximum:: 3)
>  
>    compatible:
>      enum:
> -- 
> 2.34.1
> 

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
