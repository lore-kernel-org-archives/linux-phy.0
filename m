Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FA8C2BA1B
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 20:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSuqlgg/ricIYPcvfzTdcBCADoW197UJLwZ8pz2taC4=; b=JT0frcf05/vP9w
	DT7ocPc2PIZfp3VtzHHFy5OSQboyHFs75ybg9Eh9Ju5Qakk8+YHdzGy2nAlM5wMa1XlMcoAIRuwjc
	xuAYFiSveng2O3nH2if0s2hObccA05ayHeF2wKMnyUgrMxT3MZzxLc5sA+gp+iK+bBznANUn+et1Q
	P4Bnxdk1jcSdfpb1FwtulrWs+LZbwb34YgN7ahli6fJNXVKTPzsuoMYnRc/Di76pq5NL1su/c4K0g
	HmR5h01zkJPwUu/g7uwjoHxxxnl1bEfbUSs2KpAX2yO3U2L9TybnZ4HJO8qwW7llEYq0i3IoazqHd
	0A1QnGKo9XqifDyU+q3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trjbb-00000003rF1-0yM2;
	Mon, 10 Mar 2025 20:20:07 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trjUs-00000003pIP-1xg9
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 20:13:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9DD61A4640C;
	Mon, 10 Mar 2025 20:07:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2713C4CEE5;
	Mon, 10 Mar 2025 20:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741637589;
	bh=wrYhrgim9PhEQBxk0pDxMA3KCZn8MUdw+MmT1214ST4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=IeO2rj8fzNq7ozwjmPb7YfobvumLeNMdveveUzzMUtHZ2ASt3isz9TotqMuqJA/My
	 3YuHXWYlbuOgmvPRVzBZ5PdalX+ECc/11FhWEgEWpXk6gCd1d8CM0Vn05qB3KYlbfw
	 04tNSB+soXboMe/ergr/jNUTw/Qy9hhmc03zZVnCJ8AQuThKpyLFpbD6tdG58ViGrY
	 HYkFD5VvnSNeq+GsfWUPwqHhap/SxtBagYCiK5lz9KVzp6JsCQKmO8DP+27fJinGXe
	 8bHqrhHMgMoCeGJZfXRrZNx7edtu8pqSoDJ9S3flZ/zeKk3YQvWztlsokkYke+XPDl
	 H+JcZEViH8amw==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, corbet@lwn.net, linux@treblig.org
Cc: linux-phy@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250306015408.277729-1-linux@treblig.org>
References: <20250306015408.277729-1-linux@treblig.org>
Subject: Re: [PATCH] phy: core: Remove unused phy_pm_runtime_(allow|forbid)
Message-Id: <174163758730.467704.13260521723607545351.b4-ty@kernel.org>
Date: Tue, 11 Mar 2025 01:43:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_131310_570959_AF55A799 
X-CRM114-Status: UNSURE (   5.22  )
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


On Thu, 06 Mar 2025 01:54:08 +0000, linux@treblig.org wrote:
> phy_pm_runtime_allow() and phy_pm_runtime_forbid() were added in 2013
> as part of
> commit ff764963479a ("drivers: phy: add generic PHY framework")
> but have remained unused.
> 
> Remove them.
> Fix up the (English) docs - I've left the Chinese translation.
> 
> [...]

Applied, thanks!

[1/1] phy: core: Remove unused phy_pm_runtime_(allow|forbid)
      commit: b02d41d884f64d22d5d5a2a4b35550f5e80bdb3d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
