Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF57FFA3740
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 10:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kfgjHYXl5sapNZUmRayeYv2vEL3b8njUjkBu3djhFSg=; b=w2KCu1KTdPIH85
	sVKaUqTmCB9QhczBV+xXYrEGIYI4LVWX1x0mOI/fjQlA7eILMHkNosrCGrLuCJ0IqLnMiEHDHvJwN
	YSn7aPM/EisfZGuR6884+E4v1/PQipGpn0+tvkrOcjrUBm/LygddRcpWsAbTiZIri5tJ7xKYfoADX
	Rh7bGt0Hemp2vqfeknEwxpXJOoavN2cQXWyv9ol0Ne4abEMM8Jj8ADAr98LZENIn3yA46P3frsF3C
	N0wCJCGBst4jf1nF7kCotPlQ/NP88Yya66GicWgRGDtRwlnJTqDb91wOLTitmtHO2Qt5zV8VyCDqg
	n/cLwfYePeMmNs641tRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMU-000cER-7P; Mon, 24 Oct 2022 10:07:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuMM-000c7a-UW
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 10:07:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id CB10F611C9;
	Mon, 24 Oct 2022 10:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC285C4167D;
	Mon, 24 Oct 2022 10:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666606023;
	bh=RyDjfkXeUvujKcmZYfnPRH9u4YqHbTjNf4y55UFXH7o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PJ4s9yS5XLqbbKHf7QVKqRWV34Bk3tWALy77F4xypyxAoETPSjyYm9xOEHRSy831Q
	 ECeB62kLRjG93325RJisvz8fgPvHF5j1aH/a9CsMIxwu5wboyPujEQIhE+LARFPnf1
	 x6lYp3y4dEXfIPVP5ckkWKEIGZtJIW0fG8bYscJ8uDGIGLdbsNOEUGpK5jgZiA4fLp
	 ZTPmgcqHN6ZOlUQiluAJuP3ph4I41h5yOVuFdIARu3uxft+rgn/nP+JEE8IZW3ctJ0
	 P9rBrgUEO0azPJx+sa/rBMRlegnMgCF3oRkPQ/iVNCLnU8Sfg1QmVixowPde5k+AXB
	 0zJmdC3DKCZ6A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1omuM3-0005MY-EM; Mon, 24 Oct 2022 12:06:47 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 09/13] phy: qcom-qmp-usb: clean up PHY init
Date: Mon, 24 Oct 2022 12:06:28 +0200
Message-Id: <20221024100632.20549-10-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221024100632.20549-1-johan+linaro@kernel.org>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_030707_074218_ED407027 
X-CRM114-Status: GOOD (  11.18  )
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

Clean up the PHY initialisation somewhat by programming both tx and rx
for the second lane after the first lane.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 4a7b961d2965..d5e62cfd93f8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2058,14 +2058,12 @@ static int qmp_usb_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_usb_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2)
-		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-
 	qmp_usb_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2)
+	if (cfg->lanes >= 2) {
+		qmp_usb_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 		qmp_usb_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	}
 
 	qmp_usb_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
