Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D794CDB481
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B9ZPsGy/EMu+89nEG3zdU70acvc/qnJrA5DhY1xjL5k=; b=d8Vtk/KDm499H5
	OXlqLfGZ6bZaOL7KL9SaHHzfn4aM6/sW4rrFQ09tvYQ5HKsAdYugg9ly5ZjL8knn5zSUgLG1X3DPL
	LQTGADfZUYJJRMTKDGyzCG76nL8TFDlCe9nMIqrEjZoU8vmEXe/XdaDxreTxwhybbjQIq+FxtgB1R
	+WLV9yeiKhLiOGr4Tb+qrWUVfWH4liICThsS3M4Y4ZpR+8q/HErrbd2OgXRw81Vmm/vNTaEqONVEf
	uzXY0+jjFXS5SK5l0S14zx9Fn487PUa5ewVQwieekZqkzO3lhSNEShwWyEvuyUSbOeJ0SbXC2nuhZ
	FW27PZ802vFyMiEw5ZYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcOl6-00000007vd4-2jNU;
	Wed, 24 Jun 2026 14:39:20 +0000
Received: from smtp25.cstnet.cn ([159.226.251.25] helo=cstnet.cn)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcOl3-00000007vcZ-1PlG
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 14:39:19 +0000
Received: from localhost.localdomain (unknown [111.196.245.140])
	by APP-05 (Coremail) with SMTP id zQCowAB3zhES7DtqyGYHFQ--.957S2;
	Wed, 24 Jun 2026 22:39:15 +0800 (CST)
From: Pengpeng Hou <pengpeng@iscas.ac.cn>
To: Keith Zhao <keith.zhao@starfivetech.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Pengpeng Hou <pengpeng@iscas.ac.cn>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: starfive: jh7110-dphy: fail init when the PLL does not lock
Date: Wed, 24 Jun 2026 22:39:11 +0800
Message-ID: <20260624143911.58472-1-pengpeng@iscas.ac.cn>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CM-TRANSID: zQCowAB3zhES7DtqyGYHFQ--.957S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Kr1rGF4fAFy8WFW8ZFyDAwb_yoW8uryfpF
	W5JFZFyrn7JFZ7C398ta15uFn8Zan7Kry3CF47Ww1fuF15JrWUXa1Dt3WagF4fKFykWa47
	Jr4xAFy5uFs8trUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkG14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
	0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr0_Gr
	1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkF7I0En4kS14v26r12
	6r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI
	0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y
	0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxV
	W8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1l
	IxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUIfO7UUU
	UU=
X-Originating-IP: [111.196.245.140]
X-CM-SenderInfo: pshqw1xhqjqxpvfd2hldfou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_073917_743887_CC12A782 
X-CRM114-Status: UNSURE (   9.76  )
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

stf_dphy_hw_reset() polls the DPHY PLL unlock bit when bringing the PHY
out of reset, but only logs a timeout. stf_dphy_init() then continues
and returns success even though the PHY lock condition was not observed.

Return the poll error from the reset helper and propagate it from the PHY
init path. Also make the timeout message describe the failed lock
condition.

Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
---
 drivers/phy/starfive/phy-jh7110-dphy-tx.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/starfive/phy-jh7110-dphy-tx.c b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
index c64d1c91b..66473a533 100644
--- a/drivers/phy/starfive/phy-jh7110-dphy-tx.c
+++ b/drivers/phy/starfive/phy-jh7110-dphy-tx.c
@@ -209,7 +209,7 @@ static u32 stf_dphy_get_config_index(u32 bitrate)
 	return 0;
 }
 
-static void stf_dphy_hw_reset(struct stf_dphy *dphy, int assert)
+static int stf_dphy_hw_reset(struct stf_dphy *dphy, int assert)
 {
 	int rc;
 	u32 status = 0;
@@ -224,8 +224,12 @@ static void stf_dphy_hw_reset(struct stf_dphy *dphy, int assert)
 					       !(FIELD_GET(STF_DPHY_RGS_CDTX_PLL_UNLOCK, status)),
 					       STF_DPHY_HW_DELAY_US, STF_DPHY_HW_TIMEOUT_US);
 		if (rc)
-			dev_err(dphy->dev, "MIPI dphy-tx # PLL Locked\n");
+			dev_err(dphy->dev, "MIPI dphy-tx PLL failed to lock\n");
+
+		return rc;
 	}
+
+	return 0;
 }
 
 static int stf_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
@@ -313,7 +317,9 @@ static int stf_dphy_init(struct phy *phy)
 	struct stf_dphy *dphy = phy_get_drvdata(phy);
 	int ret;
 
-	stf_dphy_hw_reset(dphy, 1);
+	ret = stf_dphy_hw_reset(dphy, 1);
+	if (ret)
+		return ret;
 
 	writel(FIELD_PREP(STF_DPHY_SCFG_PPI_C_READY_SEL, 0) |
 	       FIELD_PREP(STF_DPHY_SCFG_DSI_TXREADY_ESC_SEL, 0),
@@ -350,7 +356,9 @@ static int stf_dphy_exit(struct phy *phy)
 
 	clk_disable_unprepare(dphy->txesc_clk);
 
-	stf_dphy_hw_reset(dphy, 0);
+	ret = stf_dphy_hw_reset(dphy, 0);
+	if (ret)
+		return ret;
 
 	return 0;
 }
-- 
2.50.1 (Apple Git-155)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
