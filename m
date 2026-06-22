Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D4DECDB46F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 09:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGRVeP4bSuAlIKl8qBvWBrUjZQzdyIOoZBxYl39XIa8=; b=oa+W7YAT38Yg2D
	yX3q0gl1S7Y7HOTFgY7CS55N5fqDmiFf6+gbYOMkDBH28xTLJOYf2f7hWZ0AZG124/Kv9alNIZaxJ
	IiEzEl7Ix0BiqWovFLLMJH1FnJwkFXB39cllcaFtFjfxwh02/tngtIXDKgw4deCN2cVg85PcN9gH8
	RKvEAq7TITW3LlWiOo/WL7heS7j+zYcH+UcbvKkW3dM9CpCayUoT974a7MQDT0Km+HVesR2m3FKMj
	DgzUydcD/2LnUC6Qcf/H6nexl68Bd10Vdlpb7SO8bi3+UddpxIfNRTFKH8HHdq9zVLxFdKcFTxW8A
	g2VALJYKO7XNOWjE0TBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbaqq-00000004kRf-08rU;
	Mon, 22 Jun 2026 09:21:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbaqo-00000004kRU-3UHS
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 09:21:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E2B5560051;
	Mon, 22 Jun 2026 09:21:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 976721F000E9;
	Mon, 22 Jun 2026 09:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782120113;
	bh=77wIqgo4jFeWA0NXSl8ibtCsUhwVKZwgljHlmjkSEoU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oQu3Jp12M+W3sDDSDWTuMxQM8AiP6aGolGm18QnoHyGoKNq6o2sFA4yzKsJyPpBuK
	 vBqQP8kZjsflOBIZZuF5vlOnYQ9JpZbgvder+l0ESgiEukgdBCimwROWLOAmI9lgcw
	 94SYsR3d72svwtCy5vMjijm0SaOm/rRO5mxqIpbsB69N4a+6c6Aiuu3YBHu4VeKndY
	 gF3YJ0hsexLVOKVgzINnZHm7Tq7VTvSrf8Ur7E1tSmZpNoiKIl8w+KvkPrd634vAW/
	 GFfJBCLrvWjVC+L1yhpVzEJTj1LI1OB8QzK5EUS7eR+V0kv71YnNMApnw4hrmy4qBn
	 JQlXP+pP8f39A==
Date: Mon, 22 Jun 2026 11:21:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
	Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev, konrad.dybcio@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,usb-hs-phy: add
 qcom,hs-drv-slope
Message-ID: <20260622-thankful-vehement-bittern-0edc8d@quoll>
References: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-0-7d21fb1d1484@herrie.org>
 <20260616-submit-phy-usb-hs-vendor-init-seq-v3-1-7d21fb1d1484@herrie.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260616-submit-phy-usb-hs-vendor-init-seq-v3-1-7d21fb1d1484@herrie.org>
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

On Tue, Jun 16, 2026 at 03:26:53PM +0200, Herman van Hazendonk wrote:
> The MSM8x60 / APQ8060 PHY needs three vendor ULPI register tweaks for
> stable USB operation: pre-emphasis level, CDR auto-reset and SE1
> gating in registers 0x32 and 0x36.  A survey of MSM8x60-class
> downstream board files (Qualcomm SURF/FFA/Fluid/Dragon, Samsung
> Galaxy S2 family, Sony Xperia, HTC and HP TouchPad) shows that those
> three values are identical across every reference board and can be
> hardcoded in the driver behind the existing
> qcom,usb-hs-phy-msm8660 compatible.
> 
> The only board-specific value is the 4-bit HS driver slope in bits
> [3:0] of register 0x32:
> 
>   HP TouchPad                                  5
>   HTC MSM8660 ports                            1
>   Qualcomm / Samsung / Sony reference boards   0 (silicon default)
> 
> Add a qcom,hs-drv-slope property carrying that 4-bit value, valid
> only on the qcom,usb-hs-phy-msm8660 variant.  When the property is
> absent the driver leaves the silicon default in place, matching the
> behaviour of the Qualcomm reference platform.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
