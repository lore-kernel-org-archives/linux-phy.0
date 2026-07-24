Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F3EC531F9
	for <linux-phy@archiver.kernel.org>; Fri, 24 Jul 2026 06:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVb8r+KbSv9Jc2OZwS14MUYLKdvkrFxhdxL7Z0tPOI0=; b=O2BPeao5sLT5Hr
	hQdF/+WLIRUA8FXNjnkww/jKB4ZwLnyWEZG8StX5C5baSK3WFEtThOTMlOa6A6jbydDok6wDnGk04
	mOvFxnM+04YoSShArH72Eihvl5favPxm2sWslr4rgIUKbg6ffUJoceN4H7WAscHzjBnYatXJjsxGr
	sXGC3eXsqUnmm85fzFxX0MVpSWOxHl4a8Rh7eFHyBu8kB/sgJ1bW8J4DFsDiGu/6M7OWzFhmLhodD
	m2kIxFefFA1+RimDtrHL7lsDEPq/3Wsp98ozVwy2rRjA4lsb2AWXCfVf5cuMiBcRaCpdT1XbZowEw
	bsSquMrILgwyjPJDWfuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn95I-0000000FYY1-47kQ;
	Fri, 24 Jul 2026 06:08:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wn95I-0000000FYXg-0qUC
	for linux-phy@lists.infradead.org;
	Fri, 24 Jul 2026 06:08:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 98F92416DB;
	Fri, 24 Jul 2026 06:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5318A1F000E9;
	Fri, 24 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784873315;
	bh=WQBrih1V2c7eezOy98taIHWz4vgMeqRiJE8rOtXizvI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h0RL2G8XBtqsbSo50KprKkOX7fjhiaNdGbsyy6itwGFVRc2Y7GQi4TtPE2uVxkXPf
	 xNTgSKA1UlGKarX9cBCmsUBedM0hPNauqcgSgzmLfVmQbOTcSei714kibaFIPTpiHl
	 9AY7QLx7fdhQuXH1okjFuE0zmEDjv5sosl09cSyYCl0MIeMENipTS0LJOhAwwVV/XQ
	 6u8pBroeHipWkUL4MrtDxVhaWtEUtu7wUSLgUL8LEcQJkVW0wzwo4Y7BzH3z4RtKZv
	 FreE8RLOM6oK/8NX1EobzlgIhc7ufQTXqnucdzb7ZkShKtPfq6cd0vyB49edSiM4sf
	 2AQxw2bY9FaLw==
Date: Fri, 24 Jul 2026 08:08:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mattijs Korpershoek <mkorpershoek@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: Add sa8255p USB PHY
Message-ID: <20260724-satisfied-spiked-myna-eb63c6@quoll>
References: <20260722-phy-qcom-qmp-usb-8255-v3-0-e789070b48f7@kernel.org>
 <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260722-phy-qcom-qmp-usb-8255-v3-1-e789070b48f7@kernel.org>
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

On Wed, Jul 22, 2026 at 03:45:44PM +0200, Mattijs Korpershoek wrote:
> +  power-domain-names:
> +    items:
> +      - const: transfer
> +      - const: core
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - power-domains
> +  - power-domain-names
> +
> +unevaluatedProperties: false

This has to be additionalProperties: false.

With this fixed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
