Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8B3ECA0EE1
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:24:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NH6q891MKGLpR8tnldl/0OEilpQK8DSLMIevaAEPpJc=; b=T6RlV8sxEx68zq
	kC4+9Nd/ifmpY+UDAPp0gQzLYHDfzA8NRAIAMPCVAxhCA80H/uQQDiBlljoZ1MQOlx+qGvpQBlwuR
	ShcpEyCK1hNCdG6WtVaeuwrf/vVs45zGRiOLUfqOy2aFbgFqrlYeiyLBYZBaEuxVYLWmTM0hQXveX
	/A+0d4fqXe8iUkMbkO0+yzVqyJF6n76AS7Y51OYmYbFIMysk5SlL51kKVEYVxsO1g8fAUjv2U196B
	eJ5reF8M5N28ueoDHkarmkRxdYHlVyfsY8kfTqD/4EAGQuNxzWwagkiX77mWdhGz7Znxv4FK6hB9C
	YMw0zhS212BhaB+4mUig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluc6-0000000Bp8C-2aDV;
	Tue, 12 Aug 2025 19:24:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4F-0000000BSBE-2g0f
	for linux-phy@bombadil.infradead.org;
	Tue, 12 Aug 2025 16:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=LjbWqVelYL+nTdhdMFYhVy+ONk84ANQibbW2YB/gJ9M=; b=m1A/+7oyU2LXTrWAgwOIVbHZcM
	aH2U5mojoMkLy6FGU0l8T6YYvtpNEXDsthJ7v5tNfwQMTTxeVs9MUrlnM0Xnutaje/XYG6+9iAJI4
	Q70uVNaHKUSC4hL+NLZBEbHIWkUVoJ/y5BHtOvsaqViNsBOI5vc4NPvSRByO1jtpjZxSS98TYJbOf
	5jIvApLNz3q7GJbvHGpx0l4J7ndqJ0IZhCDCh89+ICsPOXjFE34wKNHwHZ0mCBVoRjZUmVJdzIuF8
	WPBlUFH+UUFsR8WFVV4He3A01zrHYI7CZzPx+CRSgTS4x1C3/8eOFDV3SGJuNqg38BldvL5iAydB/
	MY5c1cqA==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uls4A-0000000FrIj-2gpN
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:41:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 54CD6A57733;
	Tue, 12 Aug 2025 16:41:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68A91C4CEF0;
	Tue, 12 Aug 2025 16:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755016895;
	bh=Cz71HGZiV10OArJiGd1SueEwh2yw/h1hDPVhk8eQoqU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=A7Td/XYS7kBFYP4p5YSjKxxvUHupGJ4gpMnTI1ZhtBf1+KXExRfczfZWjfvjbSjlf
	 AUnD4z/FKP7v5FlPuUKjyIyPYPIlHVsYDv57/SKPvPFRUCLmBHMickl70bMweLF0RO
	 9iHamuSPiDIpTGfMRFPevWyUHzXhN/guR/43BT0HT9UAU2Q6JFXc/KzTZUdRTGF+VM
	 P+IwLZNi0wHySQjH4Zs9ePNWLzYYRYx+9nDI7hb9NV+wT/IuYbJFN01kiALOpaG8zC
	 wZdnod1gMWoewwbRg2fz0wX/AZskl1G9z1ebDtFOBCS2Zk2qhPL6QEiJoXlsZ4cBbH
	 xv0KLpuV9hLLw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Parth Pancholi <parth.pancholi@toradex.com>, 
 Devarsh Thakkar <devarsht@ti.com>, Francesco Dolcini <francesco@dolcini.it>, 
 Aradhya Bhatia <aradhya.bhatia@linux.dev>, 
 Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
References: <20250723-cdns-dphy-hs-clk-rate-fix-v1-0-d4539d44cbe7@ideasonboard.com>
Subject: Re: [PATCH 0/2] phy: cdns-dphy: hs-clk improvement and a cleanup
Message-Id: <175501689198.633310.10908708738197218310.b4-ty@kernel.org>
Date: Tue, 12 Aug 2025 22:11:31 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_174138_899391_61B41BE3 
X-CRM114-Status: UNSURE (   4.99  )
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


On Wed, 23 Jul 2025 13:01:27 +0300, Tomi Valkeinen wrote:
> A cdns-dphy improvement to return the actual hs clock rate, and a
> cleanup to remove leftover code.
> 
> These were part of a Cadence DSI series:
> 
> https://lore.kernel.org/all/20250618-cdns-dsi-impro-v4-0-862c841dbe02%40ideasonboard.com/
> 
> [...]

Applied, thanks!

[1/2] phy: cdns-dphy: Store hs_clk_rate and return it
      commit: 7ac3644d1e82ae6c7ad3767a3f2594faffd12264
[2/2] phy: cdns-dphy: Remove leftover code
      commit: b659c5cc993767a42ad1a712dd357522099c5c37

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
