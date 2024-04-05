Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E3E6CD11C2
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 17:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D82VILxaZd8DglgsCb2YtAJof970vVGuUP/XCm6l0ms=; b=IpQqlAP7XNDGOp
	AHwRCBaEMeNy31fWMzHjMlQwlUFTIM1qigvQPTbXVb6l7U4dPhoLMDoHcWgdRqOLWMxmk1NXcWH/M
	xkaC3M2UhLLxtVOWFPzpxwzkOjYa/DkiibCXGmKIp2FaI8hDheW1a38n5Ii1AJyMSbB0fGt4faEJr
	JqE8R+I6Wh8Tg8i5hsbEkHd/1YqUIJMx2X05SGU+BlqIaoDjD8kgEF747c1KsdcFtIfrD3qWXtdjH
	36owtZz8Fn811R9Uu9+RXPzsGOupMnU0hnHA/AgYJUAGrW9wlezzb7RGHbcedMbVl0EO9yc1fBWcW
	gd+irfx8rEEn0xb0bf/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3k-000000089df-16Wv;
	Fri, 05 Apr 2024 17:09:00 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsn3h-000000089cb-1HtU
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 17:08:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 03894CE242B;
	Fri,  5 Apr 2024 17:08:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B902C433F1;
	Fri,  5 Apr 2024 17:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712336934;
	bh=bB7oNyHkvKT4PfIsWvGWCvvkKlXK/RSEvYSvcEJjJfg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Ay1MDXUHeyoL2K1xDhZWBsWIUVMBcaAGr2K2jSP9JH6ic1P7ACdeFX+Fte5sKg+zj
	 M0c5jJ6857NywjXp+pn75VCXzC/jJzud3T3OUCP6S3MYjIj6rgvBKLsL92dfj82bIZ
	 jXMRVawTulIc2m7YFJ+f1H/5D5p7uw1H2hbOBuhppMMTgmOgWblR6uNKKOx5YuTdaL
	 zSS0tDBpAFZD3A/LKyaErC1mj437J6C02z2imsAeYjIuLSgtw4jm2MIWJHY+sj3PQw
	 97vMXwy+Y8jranp+ljzPsGTi5aaPNWk6GCUJglNJzhYBuEaq0jCJVufRNIiFrSatTz
	 cTnyEPXjk+Giw==
From: Vinod Koul <vkoul@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>, 
 Mikhail Kobuk <m.kobuk@ispras.ru>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 =?utf-8?q?Marek_Beh=C3=BAn?= <kabel@kernel.org>, 
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 lvc-project@linuxtesting.org, Alexey Khoroshilov <khoroshilov@ispras.ru>
In-Reply-To: <20240321164734.49273-1-m.kobuk@ispras.ru>
References: <20240321164734.49273-1-m.kobuk@ispras.ru>
Subject: Re: [PATCH 1/2] phy: marvell: a3700-comphy: Fix out of bounds read
Message-Id: <171233693092.304466.7167467366245404657.b4-ty@kernel.org>
Date: Fri, 05 Apr 2024 22:38:50 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_100857_560711_CB377766 
X-CRM114-Status: UNSURE (   5.74  )
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


On Thu, 21 Mar 2024 19:47:30 +0300, Mikhail Kobuk wrote:
> There is an out of bounds read access of 'gbe_phy_init_fix[fix_idx].addr'
> every iteration after 'fix_idx' reaches 'ARRAY_SIZE(gbe_phy_init_fix)'.
> 
> Make sure 'gbe_phy_init[addr]' is used when all elements of
> 'gbe_phy_init_fix' array are handled.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> [...]

Applied, thanks!

[1/2] phy: marvell: a3700-comphy: Fix out of bounds read
      commit: e4308bc22b9d46cf33165c9dfaeebcf29cd56f04
[2/2] phy: marvell: a3700-comphy: Fix hardcoded array size
      commit: 627207703b73615653eea5ab7a841d5b478d961e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
