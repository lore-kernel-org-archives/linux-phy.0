Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D54F6C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRY0AMBd9JXeAig90ypw6b/qu0VjoLvsZPAIMVd7/q4=; b=Mi0fZV/dGVJdYy
	ExjBUmEIqsqJAcGe7omXNRWDV513YhLkKtzp5xnyb8IcVNila+Q75YihwNGdu19FgY+dDFS/OiPji
	5K+tIogp++r3GCNdsaLch5v8yWDqm1SR+YGvNy4CCDMVM+/lGxoKe63b8ma5KNEjo12cKvxOn45Zz
	c459CHRc3wyzNFugsJp/OebA22mWdsz5IAJ2inyLu7Bbtzz/GraK/r7P6vyFvvpUXC8wC9UwkErrB
	X7MlG1nkMEdjugJXWtDOEqbxr0c486501FlWdc4/Ndx6g0hdj+1njqg2LdJWC7npYyYXlTRmi/XEu
	z5hT4UKVMVinhHBGe2jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPrB-00EPwP-4G; Fri, 11 Nov 2022 08:57:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqr-00EPcX-6u
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3BC3461F18;
	Fri, 11 Nov 2022 08:57:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 546FAC433D6;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157044;
	bh=wNuGpKWL+DXYqRL8dJhpoLp3afK+DCMbnrSrckORwI0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IhkZiL+/I42sPfWcc6sdn9+jWnAA0mJK8u3W0y13AD442x+oObrzDzripiudhPUOK
	 39qOEF6jk2jgriEf5IcAwE2AZNTjCSadq5k4Gn4cuVh7C1K02cpwXqhi17ryLEYUPN
	 8CMsaNUS/wA9W7a1D9YX3wWEGPOytsvQZ/slmI8NlpkUz3kYtJttBcnsvmtn8qU2Wg
	 Zt0kl0dnXA2rR6B+T80SfWAqdX91FM+u1JU2wGMoEoKHdQqZdfm+FwC8h5T3klIEN3
	 4XgnSruYBewJKQ66ACHhWJAvzR9xvMc03hqln50fnZ/BQ0y53QSCS7J1I/zxqsI90y
	 LtJkBRah2AnsA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqK-0002Um-MH; Fri, 11 Nov 2022 09:56:56 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 21/22] phy: qcom-qmp-combo: clean up PHY init
Date: Fri, 11 Nov 2022 09:56:42 +0100
Message-Id: <20221111085643.9478-22-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111085643.9478-1-johan+linaro@kernel.org>
References: <20221111085643.9478-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005729_356381_9015F90B 
X-CRM114-Status: GOOD (  10.74  )
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

Clean up the USB PHY initialisation somewhat by programming both tx and
rx for the second lane after the first lane.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bb2c86976f78..6d98d37f8562 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1950,14 +1950,12 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 
 	/* Tx, Rx, and PCS configurations */
 	qmp_combo_configure_lane(tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
-
-	if (cfg->lanes >= 2)
-		qmp_combo_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
-
 	qmp_combo_configure_lane(rx, cfg->rx_tbl, cfg->rx_tbl_num, 1);
 
-	if (cfg->lanes >= 2)
+	if (cfg->lanes >= 2) {
+		qmp_combo_configure_lane(qmp->tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
 		qmp_combo_configure_lane(qmp->rx2, cfg->rx_tbl, cfg->rx_tbl_num, 2);
+	}
 
 	qmp_combo_configure(pcs, cfg->pcs_tbl, cfg->pcs_tbl_num);
 
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
