Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F3B7FF5104
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 16:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+dumHO7KOtn+0YIXGt5ZsTXnVP3iNCF2iu3aAt12ec=; b=BYi4HTAJleTc2L
	zCYxQLIdE1UuyjGd7YW9PS+CqHY939xE3AdDp7WSpxubMhCWb49OsVGlQo6MbsorEVgb89FyB3dDi
	Y4DG0y+h8EWGguOVIvlJhlt9EH17w4p8yXO0d6yyLD8VRct3SjKRrFFcmjoYHVIO0jx/D0MQkOR85
	KwD/NTMX0u92ukcfOVrDVXzWjFJsNLjABYCgaonLNkMZgZk3nnmltAho5X0pwkefFzTSvSEOZBFbY
	7BetsCq/VHbhxcy5VQLlRIuJj4oGdyrzPzbUowp3upQZBIwrg3QhRziEtrUCMwwSHRr4pXTc0IZ+S
	K5lzFoUp6xiEKyqtgXmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA93E-00000006mEa-0dx5;
	Tue, 07 Apr 2026 16:13:16 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA93C-00000006mDu-00Wh
	for linux-phy@lists.infradead.org;
	Tue, 07 Apr 2026 16:13:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5735843F39;
	Tue,  7 Apr 2026 16:13:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE2BAC19424;
	Tue,  7 Apr 2026 16:13:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775578393;
	bh=BU7sBThUtcK5sM5FxqZ5b7vi7KzzAI5uMjGipaSr3Kg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JvI26XIlfrxoKpynrw8j4j7F84fpqZ0MBBnmWNCTPUleDTf1CEeu1KL5dp1YvHz8E
	 /RX1Sg9E9GvNsWWfRgZEj1QLuU5ryQVU26UHUh7g9bW0t8LSw16PM3bKf89G+iuIUm
	 K0Kiw33NFbSa38MegXdGR2FskZmYoDDCv0CCuWzRzGi7z+u/yXr66Zg+ObVVavGcV6
	 ElndDPXe7l9jTml6WLGemlcNuZMkTAIeQL4BnvdsIa2RfTeMpvM917oF/Pgq+v8ED3
	 fQXsyQJs3hNrQratHD8jEVIFxi/NXb2A9VsBqk03WY9z9n36nERQOEDk1W3z+nHjOL
	 w7ZjGJR5PZOLg==
Date: Tue, 7 Apr 2026 11:13:11 -0500
From: Rob Herring <robh@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 support for glymur Gen5 x8 bifurcation mode
Message-ID: <20260407161311.GA2666255-robh@kernel.org>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
 <20260323-glymur_gen5x8_phy_0323-v2-1-ce0fc07f0e52@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-1-ce0fc07f0e52@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_091314_083857_B857189D 
X-CRM114-Status: GOOD (  18.26  )
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

On Mon, Mar 23, 2026 at 12:15:28AM -0700, Qiang Yu wrote:
> The Glymur SoC has pcie3a and pcie3b PHYs that can operate in two modes:
> 
> 1. Independent 4-lane mode: Each PHY operates as a separate PCIe Gen5
>    4-lane interface, compatible with qcom,glymur-qmp-gen5x4-pcie-phy
> 2. Bifurcation mode (8-lane): pcie3a phy acts as leader and pcie3b phy as
>    follower to form a single 8-lane PCIe Gen5 interface
> 
> In bifurcation mode, the hardware design requires controlling additional
> resources beyond the standard pcie3a PHY configuration:
> 
> - pcie3b's aux_clk (phy_b_aux)
> - pcie3b's phy_gdsc power domain
> - pcie3b's bcr/nocsr reset
> 
> Add qcom,glymur-qmp-gen5x8-pcie-phy compatible string to document this
> 8-lane bifurcation configuration.
> 
> The phy_b_aux clock is used as the 6th clock instead of pipediv2,
> requiring the clock-names enum to be extended to support both
> [phy_b_aux, pipediv2] options at index 5. This follows the existing
> pattern used for [rchng, refgen] clocks at index 3.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   | 45 ++++++++++++++++++----
>  1 file changed, 37 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 3a35120a77ec0ceb814a1cdcacff32fef32b4f7b..25717bc9be98824e38f3c27c3299fbd1f2e7e299 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -18,6 +18,7 @@ properties:
>      enum:
>        - qcom,glymur-qmp-gen4x2-pcie-phy
>        - qcom,glymur-qmp-gen5x4-pcie-phy
> +      - qcom,glymur-qmp-gen5x8-pcie-phy
>        - qcom,kaanapali-qmp-gen3x2-pcie-phy
>        - qcom,qcs615-qmp-gen3x1-pcie-phy
>        - qcom,qcs8300-qmp-gen4x2-pcie-phy
> @@ -68,20 +69,23 @@ properties:
>        - const: ref
>        - enum: [rchng, refgen]
>        - const: pipe
> -      - const: pipediv2
> +      - enum: [phy_b_aux, pipediv2]
>  
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2

Once there is more than 1, you have to define the order and what each 
one is for.

>  
>    resets:
>      minItems: 1
> -    maxItems: 2
> +    maxItems: 4
>  
>    reset-names:
>      minItems: 1
>      items:
>        - const: phy
>        - const: phy_nocsr
> +      - const: phy_b
> +      - const: phy_b_nocsr
>  
>    vdda-phy-supply: true
>  
> @@ -183,6 +187,7 @@ allOf:
>              enum:
>                - qcom,glymur-qmp-gen4x2-pcie-phy
>                - qcom,glymur-qmp-gen5x4-pcie-phy
> +              - qcom,glymur-qmp-gen5x8-pcie-phy
>                - qcom,qcs8300-qmp-gen4x2-pcie-phy
>                - qcom,sa8775p-qmp-gen4x2-pcie-phy
>                - qcom,sa8775p-qmp-gen4x4-pcie-phy
> @@ -201,6 +206,17 @@ allOf:
>          clock-names:
>            minItems: 6
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,glymur-qmp-gen5x8-pcie-phy
> +    then:
> +      properties:
> +        power-domains:
> +          minItems: 2

else:
  maxItems: 1

> +
>    - if:
>        properties:
>          compatible:
> @@ -223,11 +239,24 @@ allOf:
>          reset-names:
>            minItems: 2
>      else:
> -      properties:
> -        resets:
> -          maxItems: 1
> -        reset-names:
> -          maxItems: 1
> +      if:
> +        properties:
> +          compatible:
> +            contains:
> +              enum:
> +                - qcom,glymur-qmp-gen5x8-pcie-phy
> +      then:
> +        properties:
> +          resets:
> +            minItems: 4
> +          reset-names:
> +            minItems: 4
> +      else:
> +        properties:
> +          resets:
> +            maxItems: 1
> +          reset-names:
> +            maxItems: 1
>  
>    - if:
>        properties:
> 
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
