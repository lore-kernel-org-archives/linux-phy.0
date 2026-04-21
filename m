Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB60F327B3
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 07:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kt4rJ/l6WWNEMpH0F2/P4RMoKvwl0uUGgO/8AqmgYcM=; b=oeVJjaMEs9MXyt
	eid14Qq3zQf47yJ4aejMIRTdZFVmIZmH3PFifvUkwV77hMr6z2qO8uRBj/+wg4LNU4I1HBdy5CBl/
	PMiswiaHyaAtCUXFQVk8Uk8VMgmpyCo6lzfwPubLUE+nnIOaArA15KKgYB9UzUHblespfczGYpcL6
	qVPlpW1iGzkqrqbhnkCtlWCX944kl0Bzv6uJ7RXfa6I1c57kNaNgHkusEfSQRn48exbNHSR9Rhixq
	97xYFuW5ne1ysa+iGSCZ7AoKAjGB+A+AiNWNFLjWhtZgMERiwHPneqLmJlTqmht454wQitxIc/YKb
	u6MowfzBIG52AK8QkcLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF5Ec-000000088wT-3bD2;
	Tue, 21 Apr 2026 07:09:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF5Eb-000000088wM-1Mh6
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 07:09:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5604B600AE;
	Tue, 21 Apr 2026 07:09:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74523C2BCB0;
	Tue, 21 Apr 2026 07:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776755364;
	bh=WPoqfm9NoZN5vEKQb0rOqoe7dINrxuCn5z0liFHeZiU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hiBe5E5F+8iLTRXK1YilMqAkr3hg6wdGJZBUeZduozOOoYJ+F+DuPZIhVnRKHEvc/
	 qq1/vyVvoQJ7DLmFkUmXYeQbWrDZ+wEb+Y7AuUdcq6IVv4NCuJz4IzvYOUlCbh/1rn
	 76LSLDyGnSTeiVnjbpfWNuV5MYhVWLWlgWlXQwlY/caXQiiO0HVT0+tYHmY3p2bEOy
	 nbSIYVRI6QYigMc34GZIswlX2ECfCeh5U943ZEU89QTjgrqgKd4noHq+gYRJhaJAfl
	 f9eQWBfBujl+b4dhpFnenfKdPFRHij8qruqSZDcyx5+WfsvJN+8KgfAcfXft02Y4gy
	 tsfYJ1LqBwqEQ==
Date: Tue, 21 Apr 2026 09:09:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/6] phy: realtek: usb2: support for RTL9607C USB2 PHY
Message-ID: <20260421-courageous-rigorous-angelfish-97a51f@quoll>
References: <20260420191941.81834-1-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-1-adilov@disroot.org>
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

On Tue, Apr 21, 2026 at 12:19:35AM +0500, Rustam Adilov wrote:
> This patch series for Realtek USB2 PHY driver adds support for RTL9607C
> USB2 PHY.
> 
> RTL9607C is a big endian MIPS CPU which is quite far from RTD series SoCs
> supported by realtek usb2 phy driver, but the phy initilization is found
> to be very indentical in most areas.
> 
> Most of the code was based on the Realtek's usb driver from the GPL tarball
> in [1] and adjusted to fit into the realtek usb2 phy driver code format.
> 
> The patch series was split into smaller patches that add/change something
> in the driver that are not exactly related to RTL9607C and that also
> helps for easier review. That also means, patch 5 depends on all the prior
> patches that come before it.
> 
> USB2 PHY on RTL9607C is primarly used for its internal OHCI/EHCI controllers.
> 
> [1] - https://github.com/jameywine/GPL-for-GP3000/blob/main/linux-5.10.x/arch/mips/rtl9607c/usb.c
> 
> ---
> Changelog in v5:
> Mostly addressing LLM review
> - Patch 1
>  - changed int to u32 type for new_reg_req and vstatus_busy data fields.
>  - changed comments in rtk_phy_read/write from PHY_NEW_REG_REQ to phy_reg->new_reg_req.
> - Patch 2
>  - explained readl/writel native endianess issue in more detail.
>  - explained why vstatus register doesn't need byte swapping.
> - Patch 4
>  - moved reset_control_deassert to rtk_phy_init function to keep it outside of for loop.
>  - changed msleep(5) to usleep_range(5000, 6000).
>  - explained why reset_control_assert is not needed.
> - Patch 5
>  - explained readl/writel native endianess issue here as well.
>  - explained why FORCE_DISCONNECT_REG doesn't need byte swapping.
> - Link to v4: https://lore.kernel.org/linux-phy/20260406181228.25892-1-adilov@disroot.org/
> 
> Changelog in v4:
> - Patch 2
>  - moved the le variations of read/write functions to Patch 5 where it is actually used because
>    otherwise, it results in unused errors when only Patch 2 is applied.
>  - updated the commit message to to point the reason for le32 wrappers around readl/writel.
> - Patch 3
>  - added "Reviewed by Krzysztof Kozlowski"

Where?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
