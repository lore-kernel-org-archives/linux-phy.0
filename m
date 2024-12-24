Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F18FAE77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 15:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZ4lnZnuh+GKhhEU0KQOKYMkBXIctatQrF2yr1rLXro=; b=H3Or89RZjw/y1V
	ot7FSsffB1GWffhmoW3fyoRFHBKtf4Fz6AH+pJlGMcWSu1B3CZOJst2tZXYaU7ABwmYVXzigUK1e/
	LZKllezJrm4tCzkJeaoYmprKbZP+O36XmCrZqL0NqhwSP8/P8qAnAZ+SOv4/8D64S56Jwv4SX80LY
	lYpYDoIs9qtC9XykxxzU2LC3cwhS1/m17U7iXYZnFHBWAgHyddALB7wshl94SlGAI9SK15Q2Muilh
	03Tz5QV/UFo5iBYTqErrGj1L5gnLX0nUa0hgw2b6Xh30ebhHcwoYUsAHHpx27QmCJIxApinFeoX4Z
	Hv6cZj8JNO9a7LrdmIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6jH-0000000CCej-0gIi;
	Tue, 24 Dec 2024 15:21:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6jF-0000000CCeL-02yO
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 15:21:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9A25D5C5E92;
	Tue, 24 Dec 2024 15:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E257AC4CED0;
	Tue, 24 Dec 2024 15:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053708;
	bh=vsOGpKGzpuPxLI06uuBtj+kjs5RFXus+apFhvehtZgo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Le6Gx1Urc6s5pxK+FxIao9hNeaLiXf5qM+GdisAAV52u3e7yggRVCsOBsEAo4bh4z
	 V4T+ABTh0Dua46MCI78zIv+xekLdPl1d7jRmW29yZCqUW73821M9KyahjJmKXIbEfo
	 LbLs2HohNQLZvyI5V4PSawMxJt+rCoxKZobCFk53gyOKevOZnfIUViEJMQRsWygMzs
	 CyD+R6gCwidmfspfpOA9C9kjyQAkdLa6+yJnHzygUeJPh6kXDKqEOksROP+WSzQGMc
	 3mwkYw26AP4zUGL5oWrPjaKaQ8UokXqAfM1pJ19M/Gz92o7pVr82mQHUPSQ+kNg0/m
	 7r2iLTzFqa0WA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: aford@beaconembedded.com, kernel test robot <lkp@intel.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Frieder Schrempf <frieder.schrempf@kontron.de>, 
 Dominique Martinet <dominique.martinet@atmark-techno.com>, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241215220555.99113-1-aford173@gmail.com>
References: <20241215220555.99113-1-aford173@gmail.com>
Subject: Re: [PATCH] phy: freescale: fsl-samsung-hdmi: Fix 64-by-32
 division cocci warnings
Message-Id: <173505370554.939749.2097418009884160447.b4-ty@kernel.org>
Date: Tue, 24 Dec 2024 20:51:45 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_072149_107117_6C31CC0A 
X-CRM114-Status: UNSURE (   5.13  )
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


On Sun, 15 Dec 2024 16:05:55 -0600, Adam Ford wrote:
> The Kernel test robot returns the following warning:
>  do_div() does a 64-by-32 division, please consider using div64_ul instead.
> 
> To prevent the 64-by-32 divsion, consolidate both the multiplication
> and the do_div into one line which explicitly uses u64 sizes.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: freescale: fsl-samsung-hdmi: Fix 64-by-32 division cocci warnings
      commit: 739214dd1c209e34323814fb815fb17cccb9f95b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
