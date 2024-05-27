Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 632FAC25B74
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 20:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=En7V7N8U4dQuDpgQxfAE5/Yonjubm1CYwMD51Oiop84=; b=KO4ptPlnDOcY7o
	aiL3EoOxlFvZout1A+a3p+6nWBNMIZEtfTGR1g0e3+CR7io1dpNQoK8r/vmKUsItotUdFmXrxUESX
	DrFelbusw5+ftdRqAnEb/u04AV0Ck727YrpnXVn3r7p2g5OAIBVKQmEMTsOOXEUFPWEM0BArZckhL
	tBD27lCAzA670th3oH6IVRzDYqS9bhMcOx/Kmh/c/DUFJUUrhyjqblGUsd+SvUxAmTDvCq3TSorB3
	asIfriKmAVgaoAj3xXaE0fMdfveCjxTAUP4UgHfC1fKK3rWEk/BKMvrZaUO3+c9jziVm6bZ7zMc5k
	94Ti+OqvMn3IwT8oY+uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhRb-0000000GIwL-0IGU;
	Mon, 27 May 2024 20:59:47 +0000
Received: from mx.treblig.org ([2a00:1098:5b::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBhRY-0000000GIvA-3JPh
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 20:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
	; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
	:Subject; bh=uqDBWtxUYEvDABjUaqvx6+sNN3E4ACUWUJ++4IWADk0=; b=XhE+wgkOWTy0il1C
	TT9jizlYK8tNMfX1T5I1uDZSGvUOFC2VGumUVmvWyIgdYqHgys4hYOTm4cvPDbkcFgPWFM+s/lId7
	59zhQq1GN28EaFQRo9HNto7gJzA9HDd94BJShs+x7gPlxSyPtyz8Ep5PVSTsHLFg2tSr7cLn8Cdlz
	ToL7qN+eJ2QmDjqyNPzDu6K6fQh2DcBGHvKsDdDcEJbMONCGmemLrijZr5KAYhTB8tlb36FaxNcVX
	kPSeJPm+g02jJaWpNyZtPGxWMBIjQevet0pQ+d+oU3QNZZk50jYoUzVIwbQjjyDEqx3LjMhz+RjYO
	LR7Th1avAVHXV9W1qw==;
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
	by mx.treblig.org with esmtp (Exim 4.96)
	(envelope-from <linux@treblig.org>)
	id 1sBhRS-002ocA-1d;
	Mon, 27 May 2024 20:59:39 +0000
From: linux@treblig.org
To: jack.zhu@starfivetech.com,
	changhuang.liang@starfivetech.com,
	vkoul@kernel.org
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	"Dr. David Alan Gilbert" <linux@treblig.org>
Subject: [PATCH] phy: starfive: remove unused struct 'regval'
Date: Mon, 27 May 2024 21:59:37 +0100
Message-ID: <20240527205937.165325-1-linux@treblig.org>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_135944_852340_F62993AE 
X-CRM114-Status: UNSURE (   6.44  )
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

'regval' is unused since the original
commit f8aa660841bc ("phy: starfive: Add mipi dphy rx support").

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/phy/starfive/phy-jh7110-dphy-rx.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/phy/starfive/phy-jh7110-dphy-rx.c b/drivers/phy/starfive/phy-jh7110-dphy-rx.c
index 037a9e0263cd..0b039e1f71c5 100644
--- a/drivers/phy/starfive/phy-jh7110-dphy-rx.c
+++ b/drivers/phy/starfive/phy-jh7110-dphy-rx.c
@@ -46,11 +46,6 @@
 
 #define STF_MAP_LANES_NUM			6
 
-struct regval {
-	u32 addr;
-	u32 val;
-};
-
 struct stf_dphy_info {
 	/**
 	 * @maps:
-- 
2.45.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
