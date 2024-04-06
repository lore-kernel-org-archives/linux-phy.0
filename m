Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D520BC67861
	for <linux-phy@archiver.kernel.org>; Sat,  6 Apr 2024 06:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+k+BU9hROI8OIoHSF+DjF4ldvGi3RkfQKWAtBwgF+c=; b=FuPhWkSewD0mYu
	lIadjGerrSNNN0+VYBPt4P1AUJXCMiYKIDTF5pPtGF8sa34HdlkfEzoMEcReGkbKPX/TBTzHYJ0Se
	1zXHQtXbCmA0s4x3XYlm23ZoLC3p9511xgMfdfbwqu8sE1QksS+f+114uPiu5FEQ4BTSfs6iff8mR
	X0ade24eH+MZa2X+GrWo2PA+mMtrYcrx2NNzkfhRW5ifDvc2/5Z6RQP8TqdohIkpWDZArSwtgIOql
	t+5QyXFkDcYk1NnBPkZZDwZbIUu4iZqnQR0muQBzfYvybz9vJ8VRwq/bQ3MgqK4xhgS5XrSLr+IuM
	mE4as7OmBcdjKIodbGSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszZQ-00000009nu4-2JJn;
	Sat, 06 Apr 2024 06:30:32 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rszZM-00000009ntG-49X7;
	Sat, 06 Apr 2024 06:30:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AC2E260670;
	Sat,  6 Apr 2024 06:30:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A15FC433C7;
	Sat,  6 Apr 2024 06:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712385027;
	bh=qXd+uB2LXhHrOLHpe3rXD95we40I4nRn9suxums/L40=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f6NbXAd0eDSiyGzNC0SQnx76z2jb3UKAC2ex3djEdml5hlklPAIV27dudpoFbtrV3
	 JGiaBdGCXkA2286da4xuS7jQDCPpuNsrGw9JS0956hA56LTL9AIRaxib0WkPWYrsii
	 +05v+h55yn3LT1dA9FQxKyq4KstE/U/ZyIOg/E6FXeO6sCvBEvbhneW4C54yvBWi0U
	 zLql2asiuXjFPE1EvFxI0mzk0iKsNUITWmPXJVZigP0vGNKXM/QGcVxwqvhokLOQBX
	 o0SZq/aLpgRuA595ZY+NRmzpkBDstRzekxxIR2v00l/C8TB5JyKbr2p+MIkOiiO/cv
	 mT0HiVJTEKoYA==
Date: Sat, 6 Apr 2024 12:00:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Cc: linux-phy@lists.infradead.org, linux-imx@nxp.com,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	Richard Zhu <hongxing.zhu@nxp.com>, linux-kernel@vger.kernel.org,
	Marcel Ziswiler <marcel.ziswiler@toradex.com>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, Tim Harvey <tharvey@gateworks.com>,
	Yang Li <yang.lee@linux.alibaba.com>, imx@lists.linux.dev
Subject: Re: [PATCH v1 1/1] phy: freescale: imx8m-pcie: fix pcie link-up
 instability
Message-ID: <ZhDr_yCBR_oAzD96@matsya>
References: <20240322130646.1016630-1-marcel@ziswiler.com>
 <20240322130646.1016630-2-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240322130646.1016630-2-marcel@ziswiler.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_233029_096676_960EEF2F 
X-CRM114-Status: UNSURE (   4.96  )
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

On 22-03-24, 14:06, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Leaving AUX_PLL_REFCLK_SEL at its reset default of AUX_IN (PLL clock)
> proves to be more stable on the i.MX 8M Mini.

This doesn't apply on phy/fixes

Please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
