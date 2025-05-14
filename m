Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 933A2C3ABCC
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCd25BrC04FzwgO1h6WxjhydQzVJKwOIgjDaUAaCD90=; b=EELS1VUr8s839F
	LesRXI+iOqtXrZb+alg35dJQiRsrsoa+UN/8YBXoAmB1KbfwBqjkJK3IHn55yAqWlN+GhlcCHrQUV
	CBeU7pakX6ewGJivrfBE0lSi+rTSZQXBRi7Ieg4Tzkfes7DxmrT2bTSMW8hS8TA6Emk0Br/q5qGve
	7wYhUJB4AeaVCyeTwfOydyXZIW4b4I9u9YOtTj+6dfAfCJsDb6mBe13crn4grA764ug7YMDuJsUCk
	186gTbmuQW3fxUHJj1kPogJcdiZ7gPXkthE3X068hPZiE9DwNTQwXYJWaNsqJuupYN2mY62ieTt4o
	4qp1ODBGMp+yG0MJ6Djg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB7s-0000000F5VJ-1ToK;
	Wed, 14 May 2025 12:22:20 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQd-0000000EuVu-3yYN;
	Wed, 14 May 2025 11:37:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 43D8DA4D387;
	Wed, 14 May 2025 11:37:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC204C4CEEB;
	Wed, 14 May 2025 11:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222658;
	bh=PIe7R02ZRUfkyIGks0BCtEM0QJgK8//iDeGDTITbzGg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=S2sECodpkb/8puFcDPG/SZLY/CP4xmgyZtTWxLMnuE3AMYmCVp93ZEDSaZ4DzWzh3
	 bGnfA0luZMHA5DM0R+I3nWIeOQqPP1hExCq1mfPzsYp3B+tiSNngDskPSUzDqX/pzd
	 E4jg23q/Mx4ZTAZm8mDmiaIK9GGQajbMVVOcNglj66mTkgDUvoLKMV2opCfjBJ0yaS
	 J7fYZRTSwF2xSpOKcEReH+uRKpFHpFK5BOiOeRBAK+xene91IDcjBKugENhcMQ54fi
	 O6INyyNye5cg9mxYCdf37XnDdjSOriqX3Nvf1+6dt1KdM6SUc/CERDzMshTe71Oz8H
	 FwCKTPUY706nQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-phy@lists.infradead.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250429090152.1094243-1-alexander.stein@ew.tq-group.com>
References: <20250429090152.1094243-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH 1/1] phy: freescale: imx8m-pcie: Simplify with
 dev_err_probe()
Message-Id: <174722265646.85510.13417598033555165566.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:36 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043740_055825_816C1976 
X-CRM114-Status: UNSURE (   4.45  )
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


On Tue, 29 Apr 2025 11:01:52 +0200, Alexander Stein wrote:
> Error handling in probe() can be a bit simpler with dev_err_probe().
> 
> 

Applied, thanks!

[1/1] phy: freescale: imx8m-pcie: Simplify with dev_err_probe()
      commit: 74c2524a51ab7a0539eb5ec64ee594c981f3d8a0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
