Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9875C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 20:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JwOcFRnrczie/QzYqd0jc04qXbqvGiaSQLc8lWM0C4k=; b=cwslMSek0ngulu
	j4JyQEehpyk1ukXgLZ2g8wvcwjdExPCmzkBH+gVEu+7NPVC+Jca33DIbygHM8e+scafmDINmw205E
	pAHx3TAXhbZD6Q78COnL1NIct16M3i1zLXVhyFQMLEEylGVEVlD/7arccm8lAhYugnxkIJS/etEXy
	RPCnnFMzK1lgvQ4xh2Uu/qZg7GimsFOm0lR4w1vqVZoLRK4JklByQTQf7LnTpup34haom6b8O4mID
	+AGFCgegv5mpBXhwVksHBSSU7oTk/y2i1VsSmFu0Y6i4cn2ew4hXRgvsTPrRCKrNSEs6tZtOFCInq
	y99oWhKshY2mv3Ayp0iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhdSD-00Eu3K-43; Thu, 21 Apr 2022 20:31:05 +0000
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhdS2-00Eu1j-7Q; Thu, 21 Apr 2022 20:30:55 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R901e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04407;
 MF=jiapeng.chong@linux.alibaba.com; NM=1; PH=DS; RN=9; SR=0;
 TI=SMTPD_---0VAhNpK0_1650573041; 
Received: from localhost(mailfrom:jiapeng.chong@linux.alibaba.com
 fp:SMTPD_---0VAhNpK0_1650573041) by smtp.aliyun-inc.com(127.0.0.1);
 Fri, 22 Apr 2022 04:30:46 +0800
From: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
To: kishon@ti.com
Cc: vkoul@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH] phy: rockchip-inno-usb2: Clean up some inconsistent indenting
Date: Fri, 22 Apr 2022 04:30:38 +0800
Message-Id: <20220421203038.4550-1-jiapeng.chong@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_133054_463043_81DB22E6 
X-CRM114-Status: UNSURE (   8.31  )
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

Eliminate the follow smatch warning:

drivers/phy/rockchip/phy-rockchip-inno-usb2.c:1203
rockchip_usb2phy_probe() warn: inconsistent indenting.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index e377b958d9b6..6711659f727c 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1200,8 +1200,8 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 
 	else {
 		rphy->grf = syscon_node_to_regmap(dev->parent->of_node);
-			if (IS_ERR(rphy->grf))
-				return PTR_ERR(rphy->grf);
+		if (IS_ERR(rphy->grf))
+			return PTR_ERR(rphy->grf);
 	}
 
 	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy")) {
-- 
2.20.1.7.g153144c


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
