Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F6DC25B76
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 14:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4OYQ1Edv5i7D8p1ZuD+RXdN7lYgnN5xX+DpNIgMs3Eo=; b=g2jLVqeWYRnI2+
	CYmnzPECWlFsC9HlK4zTuwOfFEyJRJymggicFqABvaCJ/2nD7cG62lyrBAWc7c8AJIRfCc1SM02MS
	edyaMOfVVEt8/Aeb1ASkwkfY/kyNJU2mFpsL0WqoO2veGeV9vLBPvHSHBSOo7kqfJFpGe8jYCyQSa
	JLpoNgyeuY7f0GwXJ71265UMMUUQXI0GJ2F/iNMxFobEzhvuKJ+wMdVemCHZ/XiwHSgzMt+o6AwzX
	3m9IIMvrLitRceo0+/q7UgTgOoj9kRELWLwFPGI7NgR9gPVTuPCv5HS0NQEFutyN0p0R6XUiBhWM8
	bnGg//1SivAlT8OJVaZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8dz-0000000H3rv-0Duj;
	Mon, 03 Jun 2024 14:26:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE8dv-0000000H3qj-0Zfr;
	Mon, 03 Jun 2024 14:26:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 73E2D60C6C;
	Mon,  3 Jun 2024 14:26:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36636C2BD10;
	Mon,  3 Jun 2024 14:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717424794;
	bh=TVVMKCKrGIZH7o6AzV7hmPZQ06ehxdBVTP6Fm2Es6QQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NEgQwIiOsPOtqxI90nP4aAwJsX1RvykInPhObHSaAWD9BymcTHVJwibjtVn4DjvmK
	 S09IVp3DTLYOmyNzmxNim8Nzc4a5fTjpp3on5kYCrKQ2l21PrXulp189eMVCv9/D/k
	 XFBbF6xqwTyqkXbTjfDOqzGCamSrkWMk3LiKmr1wIUl7jwcKFz6VBiVQUsHbK24a0j
	 qnXUydlNaZPO6yzY7edMTY/p2YeRFmRE3sUNYkyWNQcWDC20qptLyBEYNu9IRAym05
	 LIrnoAL/iS50TOi1Y7BTXTqVOU2ZWo1+9NMP9/Fq3DMbnQA/JM8aOKZWcZYbHe0gg4
	 8ctgArNrzo/Kg==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, sjakhade@cadence.com, rogerq@kernel.org, 
 robh@kernel.org, mkl@pengutronix.de, mripard@kernel.org, 
 Siddharth Vadapalli <s-vadapalli@ti.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, srk@ti.com
In-Reply-To: <20240602021629.3027660-1-s-vadapalli@ti.com>
References: <20240602021629.3027660-1-s-vadapalli@ti.com>
Subject: Re: [PATCH] phy: cadence-torrent: Add SGMII + QSGMII multilink
 configuration for 100MHz refclk
Message-Id: <171742479081.106728.13802512085127626613.b4-ty@kernel.org>
Date: Mon, 03 Jun 2024 19:56:30 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_072635_270482_1A5111E0 
X-CRM114-Status: UNSURE (   3.85  )
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


On Sun, 02 Jun 2024 07:46:29 +0530, Siddharth Vadapalli wrote:
> Add register sequences for SGMII + QSGMII multilink configuration
> for 100MHz refclk.
> 
> 

Applied, thanks!

[1/1] phy: cadence-torrent: Add SGMII + QSGMII multilink configuration for 100MHz refclk
      commit: 7d5ebb62d72b5ea8a21fc62c8985dacae6a71ca8

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
