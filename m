Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F03A1C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QispYlrQ2KxRUl1wL7OTA6yb7ckQG/msJCUAL6w/nb4=; b=YJHwLOaNEBpRkz
	Aku3BVeHccs0B0tKgJbVOexz7YHPduGDlmxhUX7oajbmpaqfGbNhCaE8yAxWPbu3awqC0QInZ0bYk
	EKFod/hH1heLMpZrsJpBXbd7oaR9zxzFhzKKjX+MIo6pV7oJeqdoFeNJJOQIAU6cANn6IM3gjQK4j
	YF5nUk81dr2x21dvs8AMYWNPt8FxeLbgOA+uxra/8WifuznuGkiXUJIVRxcg/X77DJIZwW6wzLRTm
	Mx9K4mVPCygE7OhULJBFKjU4bYQ3qjJcrhlwRHow+iND7WG/8IQ6w0QWpcGoYjZPf4f7GecgHONJL
	Dxa/t3GvusCsrbgmIWRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVw-00D018-4c; Mon, 17 Oct 2022 14:54:48 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okRVq-00CzsZ-Ca
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 14:54:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 0C1CAB81906;
	Mon, 17 Oct 2022 14:54:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE985C433D7;
	Mon, 17 Oct 2022 14:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666018478;
	bh=uUpAhLHLLsqhHmSEEexr+AOFrWCWnZ7FhJh+GvHGDVQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gf1e18cZXHTce/M3WMeNgU+RwOGYuaCnaFB0iQEQzAN4OLpl2sLosVi6B6ZilL+Sw
	 3MFwzxOE/cLi3b1FlAWwDu1dPcosBoG+IJeqKXXzsSaa96YemRbD00dKA21DHLIE+s
	 5zSJYACB3AOw025et8AjhS/zFQ+yO7DfLrPyWE+T/sA5Y//lUkpmXCN1zwqXyorzX7
	 L7qJ9Y+TLpLW0iRquiyk5cxJfnQIySzgBtlOqC+XyowftjRQdxVfUtt5ZzJbqv9tkN
	 k/HudRjG2zoH78Dndi1iZKvWiJNHfiM7IB/SWtZisYFZuRzvtd28sJt+DaoT/8H8+B
	 rzWGG2zAYzP/g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1okRVd-0005mD-26; Mon, 17 Oct 2022 16:54:29 +0200
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
Subject: [PATCH 07/15] phy: qcom-qmp-pcie: clean up PHY lane init
Date: Mon, 17 Oct 2022 16:53:20 +0200
Message-Id: <20221017145328.22090-8-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221017145328.22090-1-johan+linaro@kernel.org>
References: <20221017145328.22090-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_075442_593801_B0835F91 
X-CRM114-Status: GOOD (  12.07  )
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
