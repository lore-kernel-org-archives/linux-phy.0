Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 251AFC43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 12:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVegacZmVcefBIfYYekY/c2aDrEWgpk215tEst6Ba2M=; b=m4gyBGWJ5g49e0
	OZ2lSkj9eGPPqzhuWhc4F2M9vcAdSSBKAtpUZprhfZ8+5iXCm0zJkQ91dA0M4zQD1m/5U0aDqxVVp
	+ksnDjah6wyRcGiiUgCSRuFWAxvpkGhhB7TXlyZohhk8qeBZWZu59fv2l3mgP+9f0rDv4QVezKdeo
	q2QmEKHO5Joq7t+vtmj75Nwm6LeUAktJxiMAhdypwbYLr2kw7QEoStfuzy/V5jlSpQ4fL29199Nwz
	3TkEqfOeI3Wj4XLCNJlv+uvVRfgfQzeFK51HuPiat/kZWczqk4/uCXL86i8dAVBAtyiwzJx2jx9Ay
	nqPbw64l+Qi9hDYWEbOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1witC9-00000007RWW-2Q59;
	Sun, 12 Jul 2026 12:22:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1witC8-00000007RWO-2IjW
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 12:22:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A22F3600AA;
	Sun, 12 Jul 2026 12:22:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BE6F1F000E9;
	Sun, 12 Jul 2026 12:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783858923;
	bh=36mROewa5tuVs+2z+rkX6C62iFNne6zrec9pxHF3F84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UoyrEJoXKUcKLw5tOKP9NDsCbsOyA7AUYYk3G8tDjpfkaCujWL2XFLyx+VhwdRbGK
	 O6SHiKFG3Le2orG46xMdTi+o0DQR/NNDHmU+UbMjtrsbxKlmd8o9xMTxGkkReA/Uu3
	 pIct9A9XoP9raFpVzMNFMs01Ws5tbxFGzCxpg7/lpv+npn3EV6k1R/efKZk3tg8DCw
	 PpVPq4XcjxzwrHb6zufk5XtZvWx8rWC666eHRypqc4ODtnKJjUyPS2NE1pYaN2WcP1
	 0OGc02I5Kk7g76ZCjW4OE2iGddBGGdwVPOqdBL6yaJovdwU74Hbq7z/2ncajuq/bVL
	 Vo2ZtMD5M1Epg==
Date: Sun, 12 Jul 2026 14:21:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/4] dt-bindings: phy: qcs615-qmp-usb3dp: Add support
 for Shikra SoC
Message-ID: <20260712-curly-parrot-of-acumen-eb8ef7@quoll>
References: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
 <20260711-shikra-usbphy-v5-v5-2-229ba3602737@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711-shikra-usbphy-v5-v5-2-229ba3602737@oss.qualcomm.com>
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

On Sat, Jul 11, 2026 at 10:39:51PM +0530, Krishna Kurapati wrote:
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
> +          minItems: 3
> +        reset-names:

Same feedback. minItems

> +          items:
> +            - const: phy_phy
> +            - const: dp_phy
> +            - const: phy

Drop

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

same feedback, maxItems.

> +          items:
> +            - const: phy_phy
> +            - const: dp_phy

Drop

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
