Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D4CCC0219B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 17:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwYLd/5Gp/lgAkgoBYq9p2uF6c5NUCjd8smmcXAMetk=; b=0Kl0pJkhIP/FAf
	1zd9MTBC5pJMQk03wsRmsaXdkfaossTGTJ12t5PeVTje1HgSrJ7NgIj/N3jDX5qA07MU1u8Jn6Gbn
	TQp4Rnte4d5rqpNXepgF9h+UzpXx2xS9r5dZHAGIifXnBeyxH8SFtcolPpUZDWpOH9zrSLvXXxEkI
	IqJknwg6WoQ253O7wGy+Xeg3suX5p3DgUridPW/kmv6pCDJMtQxlRXvEL+32RLqagfuLXciKR5eDD
	Zx/VSWCBwi6dUb/LpW0siN8WvzML1vJhTXN0CMpf+GyVDjRutXsB9KkMMfwl2EZiRA9hw7BylBkHR
	FXBjGmHX6gw8p+2gy/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thXiY-00000000kpn-07aB;
	Mon, 10 Feb 2025 17:37:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXSq-00000000hLB-07kT;
	Mon, 10 Feb 2025 17:20:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D13405C5D2C;
	Mon, 10 Feb 2025 17:20:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51DB8C4CEE5;
	Mon, 10 Feb 2025 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208055;
	bh=V26EiT5mL/pxNNUMLsG/dGA25oNWdXvljO6PAFlqOjI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nUTANN9W7dquWHQ/NP4187pKGh7HLk821eT5gKGwwbIpaeD8JRt1d7NTIDDBB4jbU
	 EuTmFxJm2/Hv6xCYqmj0wuUF6tnjUCtLER8thOgjk/z8d3Z3/kKLM9c4iur7P5vbbv
	 asgf8Cl8844O9zQWCxWUP5PqRey2ATWDXa9WW1/d+XFILBXYShpkc9pyDFHH/fVXpD
	 ScUu67Ot5I1IWNN1irYeRB05C+FIUSKCZv1fDzrJoU/mXUw7U0Tof4s8SbFIkOw1yD
	 N5roBSClFT6sbqx3myU/szPU37hRIO9tU/p/TI2KQS9HCs+7kEsSrwgdtHdvwOLoYN
	 L1DRnF8VEUzGg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Vivek Gautam <gautam.vivek@samsung.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250209-exynos5-usbdrd-masks-v1-1-4f7f83f323d7@disroot.org>
References: <20250209-exynos5-usbdrd-masks-v1-1-4f7f83f323d7@disroot.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix MPLL_MULTIPLIER and
 SSC_REFCLKSEL masks in refclk
Message-Id: <173920805196.103688.17713863876397258769.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 22:50:51 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092056_115025_081B665F 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
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


On Sun, 09 Feb 2025 00:29:30 +0530, Kaustabh Chakraborty wrote:
> In exynos5_usbdrd_{pipe3,utmi}_set_refclk(), the masks
> PHYCLKRST_MPLL_MULTIPLIER_MASK and PHYCLKRST_SSC_REFCLKSEL_MASK are not
> inverted when applied to the register values. Fix it.
> 
> 

Applied, thanks!

[1/1] phy: exynos5-usbdrd: fix MPLL_MULTIPLIER and SSC_REFCLKSEL masks in refclk
      commit: e2158c953c973adb49383ddea2504faf08d375b7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
