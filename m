Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D57ECA1007
	for <linux-phy@archiver.kernel.org>; Mon,  1 Sep 2025 23:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aRMyVJ9FzuMd9KA+L3ibPSy4gbGmuYWHrT1Q56Gdw8=; b=a1K5vmClpCmjaO
	GuKxYQZFE6W/0X7HLnBf30MOyy1Qh0GJHMmUyjGZuAGCaDLOjaVdh5un3DnTE04Miyr6eC9fs5EyC
	s6maFdJZL/zKIdawZaZW0mCIynPiiR/nwWgTE9ik/DgYD9kVgS5K4o0V0C1plqFtSSwLcPGDZbdMa
	E9sSsCzAkKVFjgP+fwNMbFMLWNPQhl5eVek4IpFp/sMR3mte7sNwEu1fDtFpiF5pi9udeBuLcdMIt
	Js8etsYoJr0hAdAPV6UvgqF1uPMu7zxAKCrRmw3snU+lpNvzxet6W5jckooJIeVh3282yEN8tyqkR
	tU2yXrBtnTmzCy8YCVxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utDiP-0000000EGBG-3mlm;
	Mon, 01 Sep 2025 23:13:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut80x-0000000DPRt-2Ch8
	for linux-phy@lists.infradead.org;
	Mon, 01 Sep 2025 17:08:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EF23E601E2;
	Mon,  1 Sep 2025 17:08:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE21EC4CEF0;
	Mon,  1 Sep 2025 17:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756746498;
	bh=Psu+Ha7+6rvVuekjLBry2gD+q3T4H2+4ZpElYNdlzaY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FnQ6YmvkM+qxK3POl6Iw+D/ge1mC3CpLAudD5A5iIfqsu/47FZTZuboiRzkVCGdqT
	 e2h4dDGcIJvltoeVVWErE0qmZhjvscnprvveJItdURwYcee+RC+KlitBe1reT5IGad
	 uNjD2zZuyqUYWgCv0g4FReQ529CZxP0AYSOgiK9d0CW606W3HdqWZDe4kczVDBOjnL
	 NMA3WAi98aJKiKzgEF5ZMDuDWxt3dIRYgkaEVMZDDzVmfqQo9R6kXheQ+7VbAt8oaf
	 aUuhg2Ngyn8rbBtl5PkY5ta6IEbAW8Ai0vjMFB+izJbwSbh0hwEaAfWbZxClTUxN0H
	 hqssXOUbXSTjw==
From: Vinod Koul <vkoul@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Josua Mayer <josua@solid-run.com>
Cc: Yazan Shhady <yazan.shhady@solid-run.com>, 
 Jon Nettleton <jon@solid-run.com>, netdev@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250826-lynx-28g-nullptr-v1-1-e4de0098f822@solid-run.com>
References: <20250826-lynx-28g-nullptr-v1-1-e4de0098f822@solid-run.com>
Subject: Re: [PATCH] phy: lynx-28g: check return value when calling
 lynx_28g_pll_get
Message-Id: <175674649543.186496.4663580683926892498.b4-ty@kernel.org>
Date: Mon, 01 Sep 2025 22:38:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 26 Aug 2025 20:32:03 +0200, Josua Mayer wrote:
> The lynx_28g_pll_get function may return NULL when called with an
> unsupported submode argument.
> 
> This function is only called from the lynx_28g_lane_set_{10gbaser,sgmii}
> functions, and lynx_28g_set_mode checks available modes before setting a
> protocol.
> 
> [...]

Applied, thanks!

[1/1] phy: lynx-28g: check return value when calling lynx_28g_pll_get
      commit: 9bef84d30f1f724191270044a7d045bfc9d6ad97

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
