Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62222CD4F39
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 16:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4HX4pyxTyPbYTcENNhSx2iMDzF369MG7whPy5HnOkY=; b=bgqh2Ign55dLHc
	lSCRPD4GsTFTTgwrLSVzjDl6hxTawv4TYpNQiZqRQjCe2pavBU6+cH3i6GjJi99pPKfkf11SG6xSb
	uV8mlMb70Io/R2VYybpJiPSXFsiXWUXhMCd/Vt8Z032W5sHy/sVrwIaI/9HAl86+ACNoSnhlzyudO
	i7FUfrpSCpb7HA5sxeHHRxcc8qK0ZgqY9TIUZupDpDOv82YyBLcrGxEyd7aW0H28tiB4mfyi2j1Ce
	4BtdYnnCB7sYMqJqCwZXycdEGid0juPhp0Z3GQgHkAPSybG67IJ7AaSANHHTH2j537p60Cy5Os21w
	24wtqjo9LWZA9dk+8FBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlJ-000000061fB-0QqL;
	Thu, 14 May 2026 16:18:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNYlG-000000061cs-19B0
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 16:18:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BF604437AD;
	Thu, 14 May 2026 16:18:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D361C2BCC9;
	Thu, 14 May 2026 16:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775487;
	bh=7YYdKtGlfnKHsAP2aKZIZJDNPvZ1jULG4/aw9QNQLgU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kHXvUjODb/DDtyVekllZYuJqqWrI+mT5LlGzje2hciMqsSHyuPQmR+mqlAm51Cv90
	 X1LahNWQpmT917+2zrPnG/1a0HL111QdvuEFQIrNirB8nq+2B+doyuYOjrfiOac9H4
	 m0C+xzoHtOdl/NcDw/BYFYkZ3MVmaOvddsko65jJzMRKUCbYUPtsWsTQCna4HtAVek
	 AmjjqdfVm2bJG37skAXQV1pfFWI1xsqQ/9DmYfHHymdLO6CbUBzdpr0n6UV41n7QNx
	 G+f7JLbEAVFIfhnDJaNP/alZJ2u0nChxK+ZiJut+EH2XO7b513Q03kyOnEkOAP9n+j
	 3uiq2rrlxfmOg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, Rosen Penev <rosenp@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260315214930.4621-1-rosenp@gmail.com>
References: <20260315214930.4621-1-rosenp@gmail.com>
Subject: Re: [PATCH] phy: qcom-usb-hs: use flexible array member
Message-Id: <177877548580.1092446.11009102114814879783.b4-ty@kernel.org>
Date: Thu, 14 May 2026 21:48:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_091810_335342_40F26146 
X-CRM114-Status: UNSURE (   3.11  )
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


On Sun, 15 Mar 2026 14:49:30 -0700, Rosen Penev wrote:
> Simplify allocation by removing kmalloc_array and just doing kzalloc.
> 
> 

Applied, thanks!

[1/1] phy: qcom-usb-hs: use flexible array member
      commit: deb281cec3cbef5f02c6bc29fa5cd51f6d5be10f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
