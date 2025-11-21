Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC101CFA76C
	for <linux-phy@archiver.kernel.org>; Fri, 21 Nov 2025 10:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PREN4bYopfqaBrL2dKN7Q/JfIffz65+snkQnhAlaqA=; b=HINCVuGY2CHPFN
	Ew3Ezx/6QxWAyW2N93LGeu0twnxl2qRPyHfCPMBirJcsmWf7lnaJIlgPlMU5vcn5/vWjci/P7Ldv+
	Q4NnBP6JjaWP3R0gan+9VuEE8vQTQjgPy2ptbZueIImX7Kp5+UBSU2JUTql6UygOENwxEkGBZi2M6
	SFNpea602tiJZNUz/58GTbB+pP50ElnDuefrmZIu/UziME98oEeSCB1WcnynQ9rNoLp1r2pFKbxHV
	83CUueXBWjYQibPg1WrUIy0dzZ2tFM6ieN/Xbe+etUcYy1/qtGAcaihWiqI57bnzVFq1b0T70tYWN
	ADeDUoDf4rI2ZqkoG9Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMOCn-00000008DqI-2BUp;
	Fri, 21 Nov 2025 10:17:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMOCm-00000008DqC-31gC
	for linux-phy@lists.infradead.org;
	Fri, 21 Nov 2025 10:17:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E5F0060236;
	Fri, 21 Nov 2025 10:17:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 299CBC113D0;
	Fri, 21 Nov 2025 10:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763720247;
	bh=cMlum36qg8oI8i+9bSlCpwbI7q1wkZGBQZ0Z1fheoyA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lUoYnzsHmC/TGPW5MmfaD5kdUv4s6z067/7gXRkrLLYzCoGtFNiWJN6MKDd8z5fxx
	 kZm4bCrY4c0giDPDKc5aGnEjJngKksdn8Z+KuPPZlcuPzs7L75qiTAvTdGpU72pKh+
	 c8BOsXPSuyPgFLk4uISBUCtgWcwXDhkOuw2gG7HwCOkI0SJP97wj3zk3FQTmVzh+VH
	 RuqsJR1QjjfMTR5CX7m0OE5JWksujq50/OK1iYv0BtU8hADA/3eTS5akmh9+3u/aCC
	 H+JheQDLZ1Av/FdxebAcaR/UtNZAVj1IKGXmV2PNa0Dax/rD+YjJJeEfaQk3BQFqh4
	 YF5wqyorFsvwg==
Date: Fri, 21 Nov 2025 15:47:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Kishon Vijay Abraham I <kvijayab@amd.com>
Subject: Re: [PATCH] MAINTAINERS: phy: Move Kishon Vijay Abraham I to credits
Message-ID: <aSA8NErL_aVgiz6T@vaman>
References: <20251120175537.171340-2-krzk@kernel.org>
 <9183a012-27b4-4ec8-8a95-294fc65b01c5@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9183a012-27b4-4ec8-8a95-294fc65b01c5@linaro.org>
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

On 21-11-25, 09:11, Neil Armstrong wrote:
> Hi,
> 
> On 11/20/25 18:55, Krzysztof Kozlowski wrote:
> > There wasn't much of reviewing activity from Kishon of PHY subsystem
> > during last few years [1] and last maintainer commit is from 2020, so
> > move Kishon to Credits to indicate that PHY subsystem has only one
> > active maintainer.  Thank you Kishon for working on the PHY subsystem
> > and for all the maintenance effort.
> 
> If everyone is ok with that, I'll propose to add myself as reviewer
> of the PHY subsystem to replace Kishon and help Vinod.

Thanks Neil for help, I will add a patch and queue this one up

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
