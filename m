Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C26E1D111A8
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 07:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X1wyfv8q3kSWvyPglVWHBaHrnWlDqq48s6aDjlL7OZ8=; b=y/8Xq2CsJFXOUEP5EW98YE4uHv
	6CNChwmbxpfiaxYv+I439/5VsS3WXewy1aBeRuNdNsTkBP1gIgNFWwT/L20tqEaa6PHyf71C35JXk
	olmIXcNPgJY++TTQVv0AL9PKxs3wNmK2MOSqbZfZ6aRzuzsrKSWtQozWbIMCjSrrZxb7xrGeshYDf
	et9ob5X16gJI6LRzjbpuNigWRsLw0muvhAGBJKaI2BsYPQk5MnGIBPQrzqdTikT1/qqf6hC9EfKyZ
	pSm0Tp5CwRex/zfs0y0InKdQoWf9/OkS2pgbtMVZuLsC72Be5qbGfYPpCiRcUQitftAdPCNL1kd9M
	iquCkb8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPyAo-000000032kE-1Mdk;
	Mon, 01 Dec 2025 07:18:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPyAn-000000032k7-0aiF
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 07:18:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 41C8C60160;
	Mon,  1 Dec 2025 07:18:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C69E6C4CEF1;
	Mon,  1 Dec 2025 07:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764573492;
	bh=RzxGFcvxFV4g+bm1hI2rm4ioGn9DwOOl+ULt5zaZWbg=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=p160IBuUI4c97YRSN9YP6dLyCnKl5lRWXGLgkY8ydzBPFbWGxyGequeRn1Co06rsH
	 git4SmXd1q265nPEm8SBTpNlEQ5t+Jf6rwxt6io9xLsjBXGXprOt7rq9PhujbGXQw7
	 01IThcjwYCJMPJtGtsJFwTnJ6YIwSq9jnY2hXlpMfF7Ok6CDv27hVA/Y7dLTJyQd21
	 viJgkmIyklQNyk1t6C3WFOq4rSvZ/XyV16nc4YKbpnc/K+dogRyKpzr0USMLFDY31L
	 k32RBInR6MDe3yYjX13e5Hxmoxr+0qHXgSqQx6Vt3S1YUDSLNz5RahKHUGvRANyvNg
	 AiE9dIU5jMcoQ==
Date: Mon, 01 Dec 2025 01:18:10 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linmin@eswincomputing.com, lianghujun@eswincomputing.com, 
 vkoul@kernel.org, p.zabel@pengutronix.de, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, kishon@kernel.org, 
 conor+dt@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 zhengyu@eswincomputing.com, huangyifeng@eswincomputing.com, 
 linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
 ningyu@eswincomputing.com, fenglin@eswincomputing.com
To: Yulin Lu <luyulin@eswincomputing.com>
In-Reply-To: <20251201061000.488-1-luyulin@eswincomputing.com>
References: <20251201060737.868-1-luyulin@eswincomputing.com>
 <20251201061000.488-1-luyulin@eswincomputing.com>
Message-Id: <176457349023.2265004.4610408030407592182.robh@kernel.org>
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: eswin: Document the EIC7700
 SoC SATA PHY
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


On Mon, 01 Dec 2025 14:10:00 +0800, Yulin Lu wrote:
> Document the SATA PHY on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-zones.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c263000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']
Documentation/devicetree/bindings/thermal/thermal-sensor.example.dtb: /example-0/soc/thermal-sensor@c265000: failed to match any schema with compatible: ['qcom,sdm845-tsens', 'qcom,tsens-v2']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20251201061000.488-1-luyulin@eswincomputing.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
