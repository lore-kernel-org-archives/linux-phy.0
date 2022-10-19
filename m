Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E42CC43217
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QispYlrQ2KxRUl1wL7OTA6yb7ckQG/msJCUAL6w/nb4=; b=OMyjytd5+G2+wR
	pWnSnUFGxRoTAqpLLw1BegPqr1+YnuLvP+qJgGCvTw3Kqf+/jbx7JidCUqwN5MkJWjNJ5HLXl4OhL
	HMDRhdAHDbnKAoU8o38/SqzNrFXCwqdK8YYnd2b0z0m1TE/1mHBuEtLocKsPD1oOG+fKQkd8CMbuP
	FRsJqipv0EqOfzBk5MD0WKw1+8c5bGDL8KcfKUg5bfRflinmeK+Ay+1HZyGYsBUget0BTq/8Fw5Z5
	OlkW0psdpMtBC9oB1cN5vTsbVD/uLieDmBz13vSqN8ALNi4SSeO16OVOxzZIZ8t/1kSs41SEmk86K
	+nIxuU+DLPNdPiaVB7CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7N2-000v9T-Jp; Wed, 19 Oct 2022 11:36:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol7Mz-000v56-FJ
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 11:36:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EBE8F6149C;
	Wed, 19 Oct 2022 11:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D6BC43155;
	Wed, 19 Oct 2022 11:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666179379;
	bh=uUpAhLHLLsqhHmSEEexr+AOFrWCWnZ7FhJh+GvHGDVQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hB64gdIDHYp1thAod6r2/lGEXaBW/lslEzvNHZlMHKjvJ0Nq/cdyHpLiCeCSjtDts
	 FEFULhPqtL8qCL7MGjIJznBrHLMM1qAAoR+9G4nknKfBUrf7dyXZGVROoxPdLvixx+
	 a3Tmdfri+Dt3wXNlUN827cYxGNg6PmlebvV7bFOxpXBVNbhdx8fY0MBqXhw1frmcl2
	 lqOFywxqDpWw6oaY29ZcpGoyO7AdHkj+/WGqNYvEor/IS3y+5F30eQ/GAenmsFovav
	 EpScP49uGF8EPSSp3pW03FWj/apsBhDIjJ3WSE0Z0WEcYgqZCAhF9ZL9eTvBwXP7EV
	 ZOsLnI0S7x77g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ol7Ml-0005pW-Qy; Wed, 19 Oct 2022 13:36:07 +0200
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
Subject: [PATCH v2 07/15] phy: qcom-qmp-pcie: clean up PHY lane init
Date: Wed, 19 Oct 2022 13:35:44 +0200
Message-Id: <20221019113552.22353-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221019113552.22353-1-johan+linaro@kernel.org>
References: <20221019113552.22353-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_043621_580363_2F18D74B 
X-CRM114-Status: GOOD (  12.98  )
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

Clean up the PHY lane initialisation somewhat by adding further
temporary variables and programming both tx and rx for the second lane
after the first lane.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index bd946438e3c3..dd7e72424fc0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1835,18 +1835,19 @@ static void qmp_pcie_lanes_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_t
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *tx = qmp->tx;
 	void __iomem *rx = qmp->rx;
+	void __iomem *tx2 = qmp->tx2;
+	void __iomem *rx2 = qmp->rx2;
 
 	if (!tables)
 		return;
 
 	qmp_pcie_configure_lane(tx, tables->tx, tables->tx_num, 1);
-
-	if (cfg->lanes >= 2)
-		qmp_pcie_configure_lane(qmp->tx2, tables->tx, tables->tx_num, 2);
-
 	qmp_pcie_configure_lane(rx, tables->rx, tables->rx_num, 1);
-	if (cfg->lanes >= 2)
-		qmp_pcie_configure_lane(qmp->rx2, tables->rx, tables->rx_num, 2);
+
+	if (cfg->lanes >= 2) {
+		qmp_pcie_configure_lane(tx2, tables->tx, tables->tx_num, 2);
+		qmp_pcie_configure_lane(rx2, tables->rx, tables->rx_num, 2);
+	}
 }
 
 static void qmp_pcie_pcs_init(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tables *tables)
-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
