Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2541DC43458
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9xIUwhY5/QJJPo9ni24/YUQHMY0UnFAnorjeETfPCE=; b=MXR0xq7bbW6Kq+
	QpREhqI/ellXseMV0cC7MQa84zi5IbDErCLQyMvK7AKeInoX9KNrpO4pvg9wAE9xu1Xs0ejzfJR78
	CyvANFuqVtP3rp+HXK4OgAK8miA6StR8mxp96woiCoRdchIj80sML+uDfQRQALE6WghXZPM5jHuUk
	XcrXRnpVlQKStInNSSXof5T5/mfd1it65NHZwNjapIloKI8aA9EO00rLQiAProhbJQiwgK/kFLfmW
	roZ9jsAX0osfIC35V45HI1SrSeYQQNW3FUPIDBZqPNwx2+uAchqEN2OCrmhh2bJmqXMYKPTkYZJyh
	P0ZSBX7g3O36VxV9TM+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibGL-00000006ifh-3XO0;
	Sat, 11 Jul 2026 17:13:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibGK-00000006ifY-1P1R
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:13:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B1C540BFD;
	Sat, 11 Jul 2026 17:13:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C48AB1F000E9;
	Sat, 11 Jul 2026 17:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783789991;
	bh=l1dWx3uS7E3Egkf9EcvQ1+n2SBdIse+VJNTtCKAeaDY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TXuxx41bpY0aBm/FUCTAaiE45R+HUO3ocWn4AI0LYU0+IjiGSG4jZhvlSZ78tNqSx
	 T/qKRijmm5gaTH3ee/w7dUANG7wkO/LuaLhgG7GEU3S3iAT/w5/dj/WAuwtHlTp63L
	 Dtp4c98TeXf5ade6M08duX/EY4sB8hI69aad9CYkuVSvTHfWZf9FlEcGFeGs5Tb5Le
	 bn0rxkc+Dz3vVgiQlduQ9x8UsZLg/xyjUcLbwKdjQ6LmAum47wyIx0Lj//vdfeAOcY
	 IU6OHFxI8VPRQUSsqV+1dkN+bgcbxWrGdSoF6YLAJgdKKHRQiy3gSRRXG8CJ6aaIdF
	 pBE1a9DjLRjRg==
Date: Sat, 11 Jul 2026 19:13:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add
 SA8255P USB PHY
Message-ID: <20260711-infallible-mottled-waxbill-beae3c@quoll>
References: <20260709-phy-qcom-qmp-usb-8255-v2-0-3b6c26a45788@kernel.org>
 <20260709-phy-qcom-qmp-usb-8255-v2-1-3b6c26a45788@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260709-phy-qcom-qmp-usb-8255-v2-1-3b6c26a45788@kernel.org>
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

On Thu, Jul 09, 2026 at 04:52:09PM +0200, Mattijs Korpershoek wrote:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 01342823e57f..80b04b7f7584 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -26,6 +26,7 @@ properties:
>                - qcom,msm8996-qmp-usb3-phy
>                - qcom,qcs8300-qmp-usb3-uni-phy
>                - qcom,qdu1000-qmp-usb3-uni-phy
> +              - qcom,sa8255p-qmp-usb3-uni-phy
>                - qcom,sa8775p-qmp-usb3-uni-phy
>                - qcom,sc8180x-qmp-usb3-uni-phy
>                - qcom,sc8280xp-qmp-usb3-uni-phy
> @@ -54,7 +55,13 @@ properties:
>      maxItems: 5
>  
>    power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  power-domain-names:
> +    items:
> +      - const: usb_transfer
> +      - const: usb_core

usb_ feels redundant, since this is USB phy.

>  
>    resets:
>      maxItems: 2
> @@ -82,14 +89,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - clocks
> -  - clock-names
> -  - resets
> -  - reset-names
> -  - vdda-phy-supply
> -  - vdda-pll-supply
> -  - "#clock-cells"
> -  - clock-output-names
>    - "#phy-cells"

Just like in all other saXXXX cases, same review: move to a separate
binding file.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
