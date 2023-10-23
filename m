Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E0D4CDB474
	for <linux-phy@archiver.kernel.org>; Mon, 23 Oct 2023 06:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjGkwxJQ9CUGPGrJZJYzEo9bR2lxF0khqLmaqarr0+0=; b=xsO5S+xrHZfLMS
	YSpc2G5A0osTLLO/Rl5EdziyaBFERTwHvlAL9gTRwyhsSwbNpQpPgAp/PiGE2ZOCDreO9p/th3T33
	4ytu83FYt4y1PRgneQESXJO7jiRGwRyuagOSgSkO3JdqDFaReHN3TB7hElIsgS6DWnvGdCUDPt0At
	jOOm0rOMNGZr9ntZezanUl9gQzjAQw55Cub5hF95hHoC2IqO/ARsbWsEUaKwOafzOaVX4oaHviAmz
	++2XIfm8nLQezqH+gk90FdELU6Mpn5CJu6BNF9kyO2OFUCDSZUvGY1T0KrYkWN2SCa5hw/cifHhEH
	satPhoddDH6xG/hGMGDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quoRE-006XEJ-15;
	Mon, 23 Oct 2023 06:29:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quoRB-006XCm-2p
	for linux-phy@lists.infradead.org;
	Mon, 23 Oct 2023 06:29:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D904D61774;
	Mon, 23 Oct 2023 06:29:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E30AC43395;
	Mon, 23 Oct 2023 06:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698042553;
	bh=VoLqHyw3BVGQWiU5ICizhMiqz9/BcZYDltU5Alz8p8Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qRcjSIhwfGnom/qqHvgFAe8smmj1GM7tU+zZ5NkzYNezwHRgt7M7GstsvdnC554jo
	 OMNjg7eCcgaPt5sTofdN2jFGLOJuDCK9x9JuunxMf9NycU1r1TdgLNJl1V9zXnxQ16
	 oAy+AcbYtpBgqdDgwZpKBLYDdGg4dnGaIK4PhpxiWJgdvdD5nwt7IpPbh1vXbB2E7F
	 76tASD9NAn4KwJobvuUYu+rDJXd/1eBDRiULllgWmVFjHqC4KaDA+vzDgTdc4SugN7
	 H8y7sf3yt8fvbM9Z4UPhR1J8hhSm3PmXScl772k0oM54Gt1f77UBEn2QetL/xiK/wI
	 W/HhNKelrDFog==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, 
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
In-Reply-To: <20231017080354.538047-1-sakari.ailus@linux.intel.com>
References: <20231017080354.538047-1-sakari.ailus@linux.intel.com>
Subject: Re: [PATCH 1/1] phy: Kconfig: Select GENERIC_PHY for
 GENERIC_PHY_MIPI_DPHY
Message-Id: <169804255186.383714.13145603390579978404.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 11:59:11 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_232917_960246_22D454D7 
X-CRM114-Status: UNSURE (   4.69  )
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


On Tue, 17 Oct 2023 11:03:54 +0300, Sakari Ailus wrote:
> GENERIC_PHY can be selected by GENERIC_PHY_MIPI_DPHY directly as
> GENERIC_PHY has no dependencies. This way drivers that depend on
> GENERIC_PHY_MIPI_DPHY can avoid having to select both --- which they
> apparently often omit, too, which further leads to build failures.
> 
> 

Applied, thanks!

[1/1] phy: Kconfig: Select GENERIC_PHY for GENERIC_PHY_MIPI_DPHY
      commit: d0ec7b9c3153c941f98226001d4019d9c03faf81

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
