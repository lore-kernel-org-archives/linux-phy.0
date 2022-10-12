Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 350E5C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxS7+LRVJx0u0BW2tej1SuVima9BX6ykSLlvIhgbyK0=; b=cb/e9dg9INit4Y
	ZayV0Vp/gRyXzkJtcwPLsjhSxoiFMeK74Z+0BleRDScn8sacEHBSdy4/xS++TAgDCvJ12rrZ1Uz/i
	ZvzMyqSpxfvs+MihgW2/ralMo6yTGnbSYwIpjagusHo/DRH/w1CrjFZb1C6P0/YZklHkJ8GHNpwrP
	tM1gavGPwVOIF51Vj0ljQbB1IOCQwsKT41HceEmawnv8aX+W7gsYkEESDdht/wJJcBV829RmBjOi3
	9JnJJJ2s/iw4vGn/7hQI3wMfooBUBCknsYgODZYgkW/54y/z9x9WiFKcmkVqDleLuLma/Ki9+r6Y+
	NrGPBclIhep5OD6FPRtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRq-007Q3O-EX; Wed, 12 Oct 2022 08:50:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRo-007Q0Y-53
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 547C761348;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4CB4C433C1;
	Wed, 12 Oct 2022 08:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564638;
	bh=4zcfD+SOdj1jTusmyy93nYGG11E/Cu6TVyZ3c6eqJo8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=d+8dmTx06uiAAWt8FRYuylxgalDmWUacosmDx4KyZPm1T0J7JmtI7k9qyuH+/Ks3u
	 btTjisHdbz0WQUgZA8zluTXZf96oiAjVDYN4vPQtAuHInQM5RgYv6jnTJ05MxoKPVE
	 ZJ9LununZa87rmReVlnNINpTqRnyCyns4mPtgOvIocMnng35XNpERofpUxtu0zrVCU
	 /iqNW0Q1UMTE5asXHGXUTwEi4dKheNkQS1ijIVWCmH5Ic90K1XULbVrTvy64Yn5VPh
	 At+KiwQSP/jWSaUyYzyD9Pd9t71vuo8Sz9geSIbl7Y2NR6FXmdPLaqrmB0HSH0YVsj
	 VdUsmgotRwK6w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006Hd-DJ; Wed, 12 Oct 2022 10:50:30 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 04/20] phy: qcom-qmp-pcie: clean up status polling
Date: Wed, 12 Oct 2022 10:49:46 +0200
Message-Id: <20221012085002.24099-4-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015040_264544_3C9B8324 
X-CRM114-Status: GOOD (  11.09  )
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

Clean up the status polling by dropping the ready bit mask which is no
longer needed since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 9b866ed19ddc..4af6b9e50d16 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1966,7 +1966,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 	const struct qmp_phy_cfg_tables *mode_tables;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
-	unsigned int mask, val, ready;
+	unsigned int mask, val;
 	int ret;
 
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
@@ -2004,9 +2004,7 @@ static int qmp_pcie_power_on(struct phy *phy)
 
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
 	mask = cfg->phy_status;
-	ready = 0;
-
-	ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+	ret = readl_poll_timeout(status, val, !(val & mask), 10,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
