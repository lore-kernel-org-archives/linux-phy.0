Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE9BC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 09:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3a5/FRtbsem1EVQFBlvWqG47JBhyzSfkNMiTpk6RC3U=; b=raRYgHet6utqT+
	qkwhw4rn3zhRq7KzzMmRiWHDxunRf0spqXsTrFeDxmoQ+i6bfbyidRUVVIVbJEpDRmTaR+efV1vbE
	hpPaH4JuzLhwmk5LRT5oc3tK7hwK9wcu7jgak121dN8Whnl285ochXWkGEvp3XKprWRc3DEmblKXI
	5/et0TS/PU5rSstBLSdSwE+11DDTTE0oexn0PYguU2DJI8YJXAZladW3unAX6PnweX56JvfG0tWti
	44jXxOCy1DO3r0BhUDHlKZpp5zeHPNbu/wiyKtHZBCLxhJ6ZyUblgR12mJOour9B6NjrEQXP77sEI
	E4uEyJxV3DyJDWug3Ngw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJBg-00000009CNb-08wP;
	Sun, 05 Jul 2026 09:30:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgJBe-00000009CNR-2OVq
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 09:30:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E499E4073B;
	Sun,  5 Jul 2026 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CD4C1F000E9;
	Sun,  5 Jul 2026 09:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783243853;
	bh=A/+7XMw6TDnawpnqLFqebmCehBIGM1AtWqgcs1tqMEI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DqoiyrNvid+AYqgwh6SuXsZ2GoUUncFvMvkPNZ/v1nJuZF7Z35wRy83TuINgGriBY
	 LiSXekLIS8JiF1eLBxhK932RBivIKUPaiCuaNR61P7qoB99C6bZsg6bSG3M8JRYNal
	 emiX7LlwuMhq5WJfxxypPkCdf5/vlewAk4Xb+vkA0u4JyII+t7zz1EkTnThHshbTrM
	 w5/iYJ2fjSRsxhjHRLQsJiPERxUFFaBF08MHO7l0sBKdBNHwT/QFVIWIGxv39LsjW/
	 1oCnEWxdYpe0d6lmQaL23XhjnO098AzFW9WMW4+vtck1YTh/X40h1dSqSfWd2sjJMA
	 oMT0fj67nPoug==
Date: Sun, 5 Jul 2026 11:30:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, Johan Hovold <johan+linaro@kernel.org>, 
	Loic Poulain <loic.poulain@oss.qualcomm.com>, Shawn Guo <shengchao.guo@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Abel Vesa <abel.vesa@oss.qualcomm.com>, 
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
Message-ID: <20260705-perfect-spectral-bullfrog-f1bfcc@quoll>
References: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
 <20260701165051.4122259-3-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701165051.4122259-3-krishna.kurapati@oss.qualcomm.com>
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

On Wed, Jul 01, 2026 at 10:20:49PM +0530, Krishna Kurapati wrote:
> +  orientation-switch:
> +    description:
> +      Flag the PHY as possible handler of USB Type-C orientation switching
> +    type: boolean
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Output endpoint of the PHY
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description: Incoming endpoint from the USB controller
> +
>  required:
>    - compatible
>    - reg
> @@ -78,6 +98,38 @@ required:
>  
>  additionalProperties: false
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,shikra-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 3

Wrong constraint, you already have maxItems set. You wanted minItems.

> +        reset-names:

minItems

> +          items:
> +            - const: phy_phy
> +            - const: dp_phy
> +            - const: phy
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,qcs615-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        resets:
> +          maxItems: 2
> +        reset-names:

maxItems.

> +          items:
> +            - const: phy_phy
> +            - const: dp_phy
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/qcom,qcs615-gcc.h>
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
