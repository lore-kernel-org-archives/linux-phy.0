Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EDABC4332F
	for <linux-phy@archiver.kernel.org>; Mon,  2 May 2022 13:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1JBJjFYP9olsOXHeUNIlIhgFaciMhEcuZPFFfMgO3y0=; b=vh0SkhUYZv6ByM
	zJoVvYr3uKGeMKPtMrnWmcoab6q++fQV6TAyRSPe600YfgjugL83abCEPXf41XSYAh/g2XOotQJN6
	3f1TOcxu9JXwKKoGpo5dlNzSU8cezvfOj65EbabWL0+NEVnBEF4pYhl0c4RhW1P6pSp7o4uHP5je+
	7kR5u7Cla6p2PH0moqG9npO2GlJ4l5CxyNOkSykty+3SsmMVTFGA+QNlwzsaHa1LGBLcsKQbi8gS1
	iWBO3vrdTR/2LiDcEwqQyXCSKxbMZcrb3/2rsfvO0BuVKY121Lk3rsxzRtGkVnKP35NkZfbm8Kye4
	sD/REAT+YTdORk0GJuaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlW9w-001Go4-LB; Mon, 02 May 2022 13:32:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlW9r-001GmV-Rl
 for linux-phy@lists.infradead.org; Mon, 02 May 2022 13:32:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8EC5FB817B3;
 Mon,  2 May 2022 13:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5431C385B1;
 Mon,  2 May 2022 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651498328;
 bh=cFALZTzlLK3Uat4m7PPK08qfJ5UbeCcorLAcosiDvzk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AnE784v5afnf9uOtB/69A5q8ndhlMjPJ36LvuFYYfbNUxKe13ZBHMTRIwGbKv4n7E
 OOBuyZPUXaaKc3Zi+cbwAw93u2pNb4zLd2VHtdFVdhl6R9ySrmnFYtGQ6gt+b+vWlC
 oN3g5E5JRo2P5z8gegCJPl3S1SWS6Hdd7g7+e19sLG0oroNx67jrTRHwqcUf7wTZ+5
 5Hj14+z1Zu0CTiqunOexX+xhoN+2RpfsVnok5lgHeRDuZ7MyDVNXclScWtFBqbw9JT
 Wq/MHKy1UqhY+/FeLu3oUjcxSwYLgH50ITF/NhMObKfF/kdtYZI65XxRrDw0oYe5XB
 QiPomzTgMeDbw==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nlW9n-000151-JW; Mon, 02 May 2022 15:32:07 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>,
 Evan Green <evgreen@chromium.org>
Subject: [PATCH v2 1/2] phy: qcom-qmp: fix pipe-clock imbalance on power-on
 failure
Date: Mon,  2 May 2022 15:31:29 +0200
Message-Id: <20220502133130.4125-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220502133130.4125-1-johan+linaro@kernel.org>
References: <20220502133130.4125-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_063212_082409_29015FB6 
X-CRM114-Status: GOOD (  11.60  )
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

Make sure to disable the pipe clock also if ufs-reset deassertion fails
during power on.

Note that the ufs-reset is asserted in qcom_qmp_phy_com_exit().

Fixes: c9b589791fc1 ("phy: qcom: Utilize UFS reset controller")
Cc: Evan Green <evgreen@chromium.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 8c2300bfe489..c37c0d8fea4e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -5433,7 +5433,7 @@ static int qcom_qmp_phy_power_on(struct phy *phy)
 
 	ret = reset_control_deassert(qmp->ufs_reset);
 	if (ret)
-		goto err_lane_rst;
+		goto err_pcs_ready;
 
 	qcom_qmp_phy_configure(pcs_misc, cfg->regs, cfg->pcs_misc_tbl,
 			       cfg->pcs_misc_tbl_num);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
