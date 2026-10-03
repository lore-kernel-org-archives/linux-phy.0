Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD77ECA5FE3
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 09:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PWKgBoLqPiDQMyD1NmCoYiSz4zyg3r7jJFzlwRGZvQ=; b=zCN1Gl50W5G+mK
	KphmezvdqqM2g9HZk7livDO0ZLKztAsBlr+aanVV4Up831zjfcbOKPkF8tArHkk0gwtAcWz/VLq0d
	ROtUVp52MwhXhM1K6jpwLrObOJ2SgqrTPMTWblH1Za50ww5TVh3XmX6lQRXF0iRaRq4UI2BcFnCvP
	SQor97aUz6I3c9VMU1gmvzGHDW78yda4KzCeuZR74Ra/uTBgK+aGNrp8rUqST1YO7fJekgjAoW6Yd
	z4HMoFpJQFpVd2RMjYu5hKzgYGDB8PJGPugEO07Nj8aQw6fidNJPGmXruWbgIpD0CCaU1JFZi6hQS
	Mq8gF7nfctfvbzHrRrmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAK-0000000DHiE-0bY7;
	Sat, 03 Oct 2026 09:36:24 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCwAJ-0000000DHi8-1SVQ
	for linux-phy@lists.infradead.org;
	Sat, 03 Oct 2026 09:36:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 78477602C2;
	Sat,  3 Oct 2026 09:36:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98B001F0089B;
	Sat,  3 Oct 2026 09:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791020182;
	bh=FWcGi/CHS/a4B/lMqSn+qerEcKaHZX/sUv9NmysE1Hc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=ENoKWe8yidcvyJffyu1+2Qy3LoB4l28Rb/Llq6oZuvybneqkCSvo+13aX5ryXsdoM
	 OxFMFXJ2g3fIUnQ2wkQsvWS5qJXzzJF3N4KUEKdZT/xn8oYOKKImIr6MaSrzX7Zd+D
	 KuT+yzeZU1wpW39GSWveU0zmdSF+pNaAr1TUq4unKmVeqg5/sKQziZks8PPSV7JDZq
	 BKfpz3Ltewwvn1lE5CnjwzI4V/Y+/pnGp4Tg1HLtKJrj6ouO6HAhOCnWEXLpHjtdYr
	 BJ57ih1PnBR6URXx8ZaiUS0Kxl+yWCtWGawKBaeEV2aPKOKqJSZUGwdQbvGl6QomUE
	 5ty+Mc3oX9s6g==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Akash Sukhavasi <akash.sukhavasi@gmail.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
References: <20260708-b4-hi3670-v1-1-f9236f3e585c@gmail.com>
Subject: Re: [PATCH] phy: HiSilicon: Fix error handling in
 hi3670_pcie_allclk_ctrl()
Message-Id: <179102018033.199361.1412125804515687799.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 11:36:20 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Wed, 08 Jul 2026 16:31:00 -0500, Akash Sukhavasi wrote:
> When hi3670_pcie_pll_ctrl() fails, hi3670_pcie_allclk_ctrl() returns
> -EINVAL directly, skipping the close_clocks cleanup path. This leaves
> the PLL with its power-down bit cleared.
> 
> Use goto close_clocks instead, which disables the PLL and propagates
> the original error code from hi3670_pcie_pll_ctrl().
> 
> [...]

Applied, thanks!

[1/1] phy: HiSilicon: Fix error handling in hi3670_pcie_allclk_ctrl()
      commit: 7540fc0a4f667b6773d10753a602a42a3113087b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
