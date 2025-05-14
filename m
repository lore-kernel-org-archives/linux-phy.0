Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35EF5C3ABCC
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 13:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cwJ6GHmomDywfg8NFt15dD+bd0yXsXdOElwi6k8xjI=; b=VhTjy6/WGCuf7b
	5JyMLpsQCwzLk1PSVMnOUZ9jL19+dOvFpv/7aYNukDdQ6Brup4s1qZQLQai+0cXBAUAFSwRPWwDwO
	HkEj3ch4yhY2c7JbaXX7V34gor1/moduR5Wds/6CFamCvgbDDQ+6LDo1onmQpRkjTvpFzGADw8UrJ
	XvnBmy9ySCGloLYiTxnC9r61CdJL/+ak2dPc79BM7YPjeScNPy4Q1P+4ti02fFNhrc51+Y/9Db4Ww
	SwmkDMFl3hZKqHjQT+nTMNXfkfZtf3FzxFXAR5IPMikqO1/FpXwOZmEp0pLHgy/uDxMn9E29ltW5X
	AD07BI4b5Oq97U/ffHWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFCYY-0000000FIKa-3bSc;
	Wed, 14 May 2025 13:53:58 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQM-0000000EuPv-2Lpp;
	Wed, 14 May 2025 11:37:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1F91344DA2;
	Wed, 14 May 2025 11:37:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3511AC4CEEB;
	Wed, 14 May 2025 11:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222641;
	bh=i533NMeV5GO7/xUYiXrfMLveCBR6FPalyI6+47rPinA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=B5DCbJdDVntyYKsinJJZkSasBRsJRoIJbKDNq0evLfR5lBVlzCo3GjKAMoL5xXgI8
	 6RrU/kNHwaLRNUh/Kc1Va43x0qX8rJCbT5pgsVAHKLNukv8kPSUNWc9Cpjv3Kjm4Hf
	 CFXTEkOaiVAMsS+DmJaMCILJBIa97FDqWmA2xaQ+J+ucod3JSEI6wP9Hs95WL+ITbp
	 6FJRJZdJs72MtXP0gIrsnLKkCKUj+KHQBilQdjtXp4Ok/XMTAqPUNNhA+xVKysVTb7
	 CvO+e1DQYEC3SUoKaAV3ykq3pdevrjaOnrH4qmxuQkvSCEUyGoL+zDg9K03UmNAKri
	 rDsC51GYixY1A==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, heiko@sntech.de, Chen Ni <nichen@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250415081200.349939-1-nichen@iscas.ac.cn>
References: <20250415081200.349939-1-nichen@iscas.ac.cn>
Subject: Re: [PATCH] phy: rockchip: samsung-hdptx: Remove unneeded
 semicolon
Message-Id: <174722263987.85510.17860995825685488845.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:19 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043722_621218_5A9890BC 
X-CRM114-Status: UNSURE (   4.52  )
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


On Tue, 15 Apr 2025 16:12:00 +0800, Chen Ni wrote:
> Remove unnecessary semicolons reported by Coccinelle/coccicheck and the
> semantic patch at scripts/coccinelle/misc/semicolon.cocci.
> 
> 

Applied, thanks!

[1/1] phy: rockchip: samsung-hdptx: Remove unneeded semicolon
      commit: 3b2b414927dcbd866c99ec92e3a214a69fc51c90

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
