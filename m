Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27F57C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mGeVXoi5FEKgdaVKICnSu69FEWlc7UmK3E8mR6PuoU=; b=xDWlioNdpQzPrt
	8onmbI48ijABizcVu1xKzHHdfEnRkSM9wTt7HTY++7rWolaiYA2sdJkVuNanquLh1D2jx4hWpWjvc
	2lpndU0AzovX0uSibfHcPGAWQu5zgTtc9q0ACxr4wAQHNeA6I8nNVzGgC9dqVXg/9+fIBlIEoaQZT
	LMh4noG25mcD/zE0j9lEDPsHboGduer9/qkKe2IpYnsdM5LOhVP/Axvvlnn8lkEgDda44p2zvRaCm
	RI8CHGH6uJB452NSF/HG/OhMR6QRqd9CJnGdHpPmhWvSJUaBNVNE6/S7ardXFimxt0b0ffjrTTKVW
	diE8YqO3HQ14AAnhJyBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXh-00HO7y-0P; Fri, 28 Oct 2022 13:37:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPXY-00HO1l-JT
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:36:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4757362897;
	Fri, 28 Oct 2022 13:36:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AA0DC4315F;
	Fri, 28 Oct 2022 13:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964209;
	bh=26imd+sl0seyuSbPupXyYoSoRd+tpK1kS727ftQaczA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Ja3AI9+js8nh25+LAwo9KFAkyEMR0Cl8XB5NN1K6Jmwtjh3SVEMTo5rJqT3CDQTFf
	 7G27I/VoKzt0cBW3Ncht9rwxUwEn3EwuPOze2+jGKC5SnDYhf2dnC/VtW2W0qNixap
	 ThJSg8YRC0X9hWYW0Dpetvg8K15QSy1kYLv/memEnmcJea/QvLqBoWPuik1nWNuVF4
	 0gULgQTIy9ECITGFOxyXjTHhzpl7mrJvT648adPtwCHobAMFA3uJgPMZTKxbfnRy6V
	 vEEqQthhOwHuYnjAHEpOVMFyv6MF1syRxFCpYq+8Czd5j1LzKvxhxpFEg1xZ2soZlP
	 AdYQDTXxOTl9g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPXH-0004rD-Fe; Fri, 28 Oct 2022 15:36:35 +0200
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
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v4 08/16] phy: qcom-qmp-pcie: use shorter tables identifier
Date: Fri, 28 Oct 2022 15:35:55 +0200
Message-Id: <20221028133603.18470-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221028133603.18470-1-johan+linaro@kernel.org>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_063652_777016_C901E016 
X-CRM114-Status: GOOD (  12.85  )
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

In preparation for adding a new helper function that initialises all the
registers in one place, use a shorter name for the configuration-tables
pointer so that it becomes easier to see which table is being processed.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 26 ++++++++++++------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index dd7e72424fc0..791ed7ef0eab 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1820,17 +1820,17 @@ static void qmp_pcie_configure(void __iomem *base,
 	qmp_pcie_configure_lane(base, tbl, num, 0xff);
 }
 
-static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
+static void qmp_pcie_serdes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
 {
 	void __iomem *serdes = qmp->serdes;
 
-	if (!tables)
+	if (!tbls)
 		return;
 
-	qmp_pcie_configure(serdes, tables->serdes, tables->serdes_num);
+	qmp_pcie_configure(serdes, tbls->serdes, tbls->serdes_num);
 }
 
-static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
+static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *tx = qmp->tx;
@@ -1838,28 +1838,28 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
 	void __iomem *tx2 = qmp->tx2;
 	void __iomem *rx2 = qmp->rx2;
 
-	if (!tables)
+	if (!tbls)
 		return;
 
-	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
-	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
+	qmp_pcie_configure_lane(tx, tbls->tx, tbls->tx_num, 1);
+	qmp_pcie_configure_lane(rx, tbls->rx, tbls->rx_num, 1);
 
 	if (cfg->lanes >= 2) {
-		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
-		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
+		qmp_pcie_configure_lane(tx2, tbls->tx, tbls->tx_num, 2);
+		qmp_pcie_configure_lane(rx2, tbls->rx, tbls->rx_num, 2);
 	}
 }
 
-static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
+static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tbls)
 {
 	void __iomem *pcs = qmp->pcs;
 	void __iomem *pcs_misc = qmp->pcs_misc;
 
-	if (!tables)
+	if (!tbls)
 		return;
 
-	qmp_pcie_configure(pcs, tables->pcs, tables->pcs_num);
-	qmp_pcie_configure(pcs_misc, tables->pcs_misc, tables->pcs_misc_num);
+	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
+	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
 }
 
 static int qmp_pcie_init(struct phy *phy)
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
