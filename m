Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D422FC3ABD9
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 09:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oI8BPJ+ZLOYO8HB8OMmLp/Hj6zwt6B11zMv9FWVARo=; b=S5GY7b/8BcVoCH
	ismrDjhyCZmXZlT+cwEMsvUVQ7nrtj2UDFy1qdeoKVGQibPaUTgAFtWfmdZpRJjvrdEFWBMan0lyC
	d/qBFZCSmC3JE6t+Wvswgf+nfg0Tf5G7gpJjJaLsKrSdlMr5dmGHIp+x+V7vePN/hl3M1zwhrEMjT
	7nFcxpDkiVZjTOeFjFQtSYUrDCy70x0zSFvUUZJmsbXposZZfzip9NJ69zeOOkSNVkrMyVxFsHCI0
	e0i8coEkZPCGFauH6FXm2S+6NeBLkrDdlf0yNAJtrKXiHYxu6P37xIyOdG1BxMQdo0VLjFaN7Tw6h
	XABWvBBNk8d3I51QMthg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF8XF-0000000EghP-2bwD;
	Wed, 14 May 2025 09:36:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF7hN-0000000EXNS-3zUv;
	Wed, 14 May 2025 08:42:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9A20A44810;
	Wed, 14 May 2025 08:42:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6E9EC4CEE9;
	Wed, 14 May 2025 08:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747212165;
	bh=huX/tfz1n6SVCqrMcxeGuPLIU7IfmSzg5HNLXYpyCjg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nHBgj5VxstSFtIygnteUP8m0H/l2aACoxXCzfYpkbg7Tmjqeh306C4LKegIVk95ZX
	 0W+axqzUd712og2DBkARmvW3nzegaCnAdyu7k4sd4dLlhFQBvNrzV40dsAmABSE3Qd
	 XMY1aG1XY59JOWIpJYGn+gH4rx7llllC86K8tLLw/5Aua+50/v39oiGeENqFOPPfOz
	 MT7i7uXwXnnnJWA/gpS11AJMkXk1730Dzl7RBCBgApW6CtA+lYM3nWTQe8zDzQdG6p
	 elj2/Bl9Dro2aytn7YgMJ2gPfRk/2URR8q/TixZqyHDNIEgVZ/Pjj8pK/j7CJAmJ2o
	 Ggio9B0DwolFA==
Date: Wed, 14 May 2025 09:42:42 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/2] USB PHY support for Exynos990 SoCs
Message-ID: <aCRXgpD0Ld2W4lHE@vaman>
References: <20250420-usb-resends-april-v2-0-25dc7d2e6dd4@mentallysanemainliners.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250420-usb-resends-april-v2-0-25dc7d2e6dd4@mentallysanemainliners.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_014246_013593_E283DDB4 
X-CRM114-Status: GOOD (  13.76  )
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

On 20-04-25, 21:28, Igor Belwon wrote:
> Hi all!
> 
> This patchset adds support for the USB 2.0 PHY of the Exynos990 SoC.
> This SoC has a combo PHY that supports highspeed, superspeed USB and
> DisplayPort, however due to my inability to test the superspeed part of
> the combo phy (device always enumerated as high-speed, even on the
> vendor kernels/bootloaders) only the highspeed part is brought up.
> 
> These changes have been tested and confirmed working (with the USB_ETH
> gadget and telnet/ssh in a ramdisk) on a device from the hubble family
> (x1s) and also a device from the canvas family (c1s).

I am missing the dt patch, can you pls report the whole series if you
would like me to review and apply this

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
