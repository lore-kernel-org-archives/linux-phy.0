Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AA13C021A4
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 19:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YL7V7cKX60Q9MimUENrOWBA2wLa78i7rnGDeMh25nZc=; b=cr1I3rdd4V+GXA
	0lwWxEylmaPFu2Qo/w6nJjj4SzrMrhXoL4Zwpy8GyKqEMfLDPsdxkeSKq58f9pp6C/+KKSDDKCoTo
	f0pBlUg+rdQjm1vN12ZEZayUCi/caPKg93Uif/KpPOpClH63kQnhjmuW/nx476Mu7guZdRxkCT7DS
	rqdDqDZG0Nd/alFiE7DbRwtp47JQccD38ent6BxcgRmv98tk4iuGPMl8bNqreAjQAWeqhzR2RPz8t
	nJIQSYc4j/EQN6o+DaL+MOTWATrVtT9JgdGmO0PlNTQT467+pFV9WjWhEqEVe9fk8teUAuB9h4nxl
	vD+T7wPrybX9MEFXSK0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiehc-0000000CMkv-1KuO;
	Thu, 13 Feb 2025 19:16:48 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidls-0000000CBqP-0RAR
	for linux-phy@lists.infradead.org;
	Thu, 13 Feb 2025 18:17:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 21FC7A42867;
	Thu, 13 Feb 2025 18:15:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E57DC4CEE7;
	Thu, 13 Feb 2025 18:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739470627;
	bh=xyiEG1qVnqJ0dR2fvj2d0MpnQnkVPFFoDUNGG3CsxIk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jRb/038q9zceA3lpyR3cBILkOtsy6JXEI7w8/AC9SGenuJbL0Iqahi7XlIYiHhWDK
	 9+617DqLSS7AUF09QfXno2ZFt55Vsv0ykmss5eX+B+jNGVrb2kiXY0R7FNyxx9LRpC
	 PH55vKZWNbQ71FphZ6jSD/hjzOttsdUIeakbJuNUCqhY8wukBZYSz1gMLvACwnb6Hf
	 nVNfI2zUukWooSHArKj842JvE9Mh2hiqHVYzeIxrxhzuMLRCj+wcUHxJMx6cdq/1pX
	 9do1RwE9jlv6ZEbWeXxI6N25f0ua1JPRhDNmytB051Yoahyh4MhtnILZtQrt3EYCa3
	 FxGtEWWbsec7g==
From: Vinod Koul <vkoul@kernel.org>
To: aford173@gmail.com, kishon@kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, xiaopeitux@foxmail.com
Cc: Pei Xiao <xiaopei01@kylinos.cn>
In-Reply-To: <tencent_9087BCE04E38E6AA5C4B2252B82FA99C2009@qq.com>
References: <tencent_9087BCE04E38E6AA5C4B2252B82FA99C2009@qq.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: Use helper function
 devm_clk_get_enabled()
Message-Id: <173947062491.294083.16177229110785904684.b4-ty@kernel.org>
Date: Thu, 13 Feb 2025 23:47:04 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_101708_208740_E4C3C966 
X-CRM114-Status: UNSURE (   4.71  )
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


On Sat, 08 Feb 2025 11:44:01 +0800, xiaopeitux@foxmail.com wrote:
> Since commit 7ef9651e9792 ("clk: Provide new devm_clk helpers for prepared
> and enabled clocks"), devm_clk_get() and clk_prepare_enable() can now be
> replaced by devm_clk_get_enabled() when driver enables the clocks for the
> whole lifetime of the device. Moreover, it is no longer necessary to
> unprepare and disable the clocks explicitly.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: fsl-samsung-hdmi: Use helper function devm_clk_get_enabled()
      commit: 279950205dde78bc0e3ca73a8dfee6842f0e1edc

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
