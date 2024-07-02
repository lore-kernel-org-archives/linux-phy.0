Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B013C3064D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jrJMCBmrWQe5hjBRzGYKXhggNw+/7EY+0dkzgBdTTE=; b=4UHUyKn6sX6lLk
	2Gr9e0IKfLBlM6NxUCcGGFBWokFKMODxRhujLVWHhJv6252HQazNzpqGTaMIIb8g9w6Wh7PX/YHe6
	u5imL3sVqR+fTiYwMT8i0rpQh/nm4Az1nSK+U00IY8f0SDOjk0qKsJaEXrN5+Z4wmcmVqDOgWnwLA
	aosVKldb/a3on11aDX7U8sVcyChLHBhHnqf3HxbtrgaGpsyBDbDOlAU5LyFplvX2tfB/JKnr2Xrqx
	hAzVLeQLD6wvt6FQFMTP4Uul8Ah8sZ6wKqVDuxZ0hhNP9YzYRz1fAf8UkNmr+yCV47xLWr5oeo9+q
	dS1v9/nfJWFt8z7ql+xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdg5-00000006sHW-3Fe8;
	Tue, 02 Jul 2024 13:36:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfm-00000006sBG-1Sm1;
	Tue, 02 Jul 2024 13:35:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6DA8761BBD;
	Tue,  2 Jul 2024 13:35:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F830C116B1;
	Tue,  2 Jul 2024 13:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927353;
	bh=WvtXhBJ3VWIptnIWb8zjZW3smoHvDA49GjGBnEmnCgg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RYuFhJ52ZDdzX8C5VYn9Wh6byIUy4oybnDCV60H9Wui5WXBxpOPbRJ9Px7SG8sK8d
	 wnKnfsvyNK5yLOWETFqwRXvX2jKsjvhRXM2Cb0m8XxYOInWAUzXTbqGBmmy3Hqne7m
	 xdUfmQHZvajljnpcHvjyCaTeTDEy+XMUEv4xdDHSW61FEOTmZbE9pmHvcGr08bGmNh
	 AtqCpSwLGqSGwzjcCcLs5BUBoswh/AtI/AWPCx5W3mGa3nBzk+wemK81XtHw1ReloO
	 +vzeZd5pp668MfLDPYZJEb2qerW5CtM0W4mgVu9Fsq2xpFXRl9rmXwnr9e+uU8Mlyf
	 cuI8XfBH2fq6w==
From: Vinod Koul <vkoul@kernel.org>
To: s.nawrocki@samsung.com, kishon@kernel.org, krzk@kernel.org, 
 alim.akhtar@samsung.com, Liu Jing <liujing@cmss.chinamobile.com>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
In-Reply-To: <20240701112517.6597-1-liujing@cmss.chinamobile.com>
References: <20240701112517.6597-1-liujing@cmss.chinamobile.com>
Subject: Re: [PATCH] phy: Fix the cacography in phy-exynos5250-usb2.c
Message-Id: <171992734993.699169.17205097350174077577.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:05:49 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063554_460762_BEF288EB 
X-CRM114-Status: UNSURE (   5.67  )
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


On Mon, 01 Jul 2024 19:25:17 +0800, Liu Jing wrote:
> The word 'swtich' is wrong, so fix it.
> 
> 

Applied, thanks!

[1/1] phy: Fix the cacography in phy-exynos5250-usb2.c
      commit: db4eb418c71a4223b90cac34017ed1f627371da9

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
