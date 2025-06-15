Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5D1BC71135
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jun 2025 16:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYQSJ1wS8HlXlZzp34TQCupPomZweFV1HMrP74L28FE=; b=fRo/+D4c6HKQ39
	Hqje7gLnEubAC049HqD9f3z1dA5eFqTZ2r3w7aluz/jLGjFJltkZhQH4Y9LFJyajMH29KlB19W4lV
	hExict21bRw9pDsVMtFFFWu1cKwaOoC7FaCauLHHmW/dwyr8l3pScp3tUFtxSskZISJ9qcPJOq1KC
	hpcbdxjDVWo+Z/xKmB+y64U3KURuBuc5+MzaeAOAVUubVxOFhoUuJ0KbkNyoj7ioIQNoierFFl9JB
	Zg1wfoCYGdSymUl6jauP2j7ydxVeY5+oWz/v8+NMXt23414PG3N9LaNEkDB9iqUF/bwqkmZYSsasz
	8mYl0TzmLtpurZjb9/sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqac-00000002fnH-1BGT;
	Sun, 15 Jun 2025 16:52:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQqab-00000002fmg-0DUs
	for linux-phy@lists.infradead.org;
	Sun, 15 Jun 2025 16:52:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2BB7961120;
	Sun, 15 Jun 2025 16:52:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93266C4CEE3;
	Sun, 15 Jun 2025 16:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750006331;
	bh=mijlUDV/jgZDSVDW216PIW1ZCR6wyRfjOlPnIPkNLlg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=httPnnPAwmZoCek9wtrkG0ODf/wyRtOgr9hMWHFBhpVuR5rD/p8KJWHtp1su3YYZZ
	 HJSaXm20t/ywqqfHB8QtgYTiJsW6XI5wlwNaVIlblRZxmIX+3jHOhO7d0C8n3q6tb0
	 LDfJnknInLON+K89WRN/8kFFyn+7VeJGOQJ7SYk2WOFDWRW6O2MNkhsM/Dbko5BLCx
	 kE+Ru+Tylv3z/ZFS4TQNyNNKQxMIhmT97xz0FJ69hWQhvnGofdcvxCR4HAxnxwBHWg
	 zFcLifzeUTr5qBjp5f9o5y8XlAxX9dSYIE/I7QFiqcD4V5X5UhpmSsLOfPAdLpF5W4
	 CBkuxoc/kPa+g==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>
In-Reply-To: <20250605-phy-subinit-v3-1-1e1e849e10cd@oss.qualcomm.com>
References: <20250605-phy-subinit-v3-1-1e1e849e10cd@oss.qualcomm.com>
Subject: Re: [PATCH v3] phy: use per-PHY lockdep keys
Message-Id: <175000632923.1180789.17293154013004418524.b4-ty@kernel.org>
Date: Sun, 15 Jun 2025 22:22:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Thu, 05 Jun 2025 14:25:49 +0300, Dmitry Baryshkov wrote:
> If the PHY driver uses another PHY internally (e.g. in case of eUSB2,
> repeaters are represented as PHYs), then it would trigger the following
> lockdep splat because all PHYs use a single static lockdep key and thus
> lockdep can not identify whether there is a dependency or not and
> reports a false positive.
> 
> Make PHY subsystem use dynamic lockdep keys, assigning each driver a
> separate key. This way lockdep can correctly identify dependency graph
> between mutexes.
> 
> [...]

Applied, thanks!

[1/1] phy: use per-PHY lockdep keys
      commit: cf0233491b3a15933234a26efd9ecbc1c0764674

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
