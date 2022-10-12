Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AB1C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97GJKGiosjQsR0Ofi0JGoFuBpb2fFB/+P874x1iSH/8=; b=TDVWmOelY+kn4G
	2oEG7EKOWuG815awkYjaLnHY5q1Ml7rPh0/R667tySJIxtUtVkqdFdiEKbYKsx4WhCSH1TGzYqH7e
	ED3wlO+p/34ec4+pQDZmgUHpJ/jhbGpDEXTkVjH/1btIvqBpCqGxXMEa5Ns8L64kWcklSXGsPvdnh
	Iwy3pFZzXGhr+v2IeyRnoarZkqe1mE1rk4OmDHVQpJIgN+nSXTokyFrOzeDFiIVL1uGOlZfkWp7al
	UtgnTyyEzrja92KksaMY4FeLP+2XPdttv+9aO98rOyZsy2zKteeksaWYTqfYYfHrT3x4hid3EnHDe
	QDo93UAbdnTM9uJUtSAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRs-007Q6v-Uw; Wed, 12 Oct 2022 08:50:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRp-007Q21-Qd
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 7BC586149B;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5550DC43160;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=6vsQBAgZfI4wDGxDOIVhNZ+2EYF9AhBrT+wedu3kMvg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W8jv0gtHzkonAPh41XF/YY/7xyUtsffOm2rrIF69BiufB3IBomHZ52BR4/+7sfbew
	 Ks06RTDYVvQGfIqabo0+3zFlJyslWZm3No0LUwPam5/iem0TNPZ6Apzh/yGWIJnvOz
	 6r9Y7/BmuPFIrRHzLcGq0XigvbXaRx9dPQEcERUKKIt6Ja7zgylHGPPP4SwJHj/E5W
	 9O8Egvh2SVzBMj/E9g74VNhTdb6UVkrI2qpSZ5CGlO0xe9/bYbrtCUpovHhevYN3cB
	 7wSB+1z/pqjATzh3WmibNLmss8+KZSBWZm5BbbXJW4I1gU1uWd2VUmj7Ods6NqveEJ
	 Gm6CXkIE+zRiQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006Hy-0X; Wed, 12 Oct 2022 10:50:31 +0200
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
Subject: [PATCH 11/20] phy: qcom-qmp-ufs: clean up ready polling
Date: Wed, 12 Oct 2022 10:49:53 +0200
Message-Id: <20221012085002.24099-11-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015041_951631_CF4D2A39 
X-CRM114-Status: GOOD (  10.89  )
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

Clean up the PHY ready polling by dropping the mask variables which are
no longer needed since the QMP driver split.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 1c7d8fc9b94a..8380904cf26c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -908,7 +908,7 @@ static int qmp_ufs_power_on(struct phy *phy)
 	void __iomem *rx = qphy->rx;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *status;
-	unsigned int mask, val, ready;
+	unsigned int val;
 	int ret;
 
 	qmp_ufs_serdes_init(qphy);
@@ -937,10 +937,7 @@ static int qmp_ufs_power_on(struct phy *phy)
 	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	status = pcs + cfg->regs[QPHY_PCS_READY_STATUS];
-	mask = PCS_READY;
-	ready = PCS_READY;
-
-	ret = readl_poll_timeout(status, val, (val & mask) == ready, 10,
+	ret = readl_poll_timeout(status, val, (val & PCS_READY), 10,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
