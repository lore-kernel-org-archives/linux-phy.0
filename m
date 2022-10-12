Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6899AC4321E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igwalpr7b0sZOAbGDp/vlTWcAU1KRNFbN5RgQLewa4Y=; b=n5ZfzaOyRwv5K/
	EFUCBZ/V56gUdDesZxVAGsj2/izzfO4FVDg9IbzvnOjS+RyxVVz51b8P8dUvCsvkTFslN2PjQYdJb
	fTLCW4Qesb4yrf7fWpzEqQJCTqM7xRlaCn9Ja8zWSsBCgPckCrB31ocq+eK5lgaqjcWQi1Xdv7pfS
	Q2s3REbezE5CgjCT4W88BuBS0xZxr1XgNMJ3zFjYqcLcIptdJiU4uLkioGCN2XEm8b6GvE66odffi
	r4UCYXvEOS90WS8/WQeuIu84WWmqkgw4roYWb/m/NjKvIHn9EJGXfFxx/c7uuQgC7iuwMR+DLS/3n
	JlQTZCjt8hwlmfpG98qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS4-007QBn-QJ; Wed, 12 Oct 2022 08:50:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRq-007Q2C-Qp
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 83359B819F9;
	Wed, 12 Oct 2022 08:50:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B009C43157;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=s6WXYClKrUvCGdNy8DkRi8DhsA7icf77UBdVyqqqQM0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=QrxLHB3fZmr3fNEv1Eie9W4A6oahV50XyJv2A+6WZghji3LrZtajWZENy58rwrlOh
	 zQJWTNpM6qHZZWAG+2fy9DhDLzdInIEbRFliJpReNF8qW/Ml7cJ+VvJRj79SY4TRCi
	 wwYSQGUxPdH0GIc31WbgPXlg0n+Sik7jELD22kVAmf9Wr7ojXDnYfjuwAy8ctqqoye
	 x2bSmTPKFRazmsEhkgOj8IomKlXpimjpvSkGO/ztutPRsbPgvx6RzudHwJolStodUu
	 NErga5LwNUYXBCuPGfCWfrjKSSwXCjezQDtfVDuR3xPJ/jSmkhK8m7Gqgl/d0xR5bZ
	 /ts2RX2wgHSdQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006Hs-R1; Wed, 12 Oct 2022 10:50:30 +0200
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
Subject: [PATCH 09/20] phy: qcom-qmp-combo: increase status polling period
Date: Wed, 12 Oct 2022 10:49:51 +0200
Message-Id: <20221012085002.24099-9-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015043_061633_A066EF2F 
X-CRM114-Status: GOOD (  10.94  )
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

It typically takes between one and two milliseconds for the PHY to
become ready after starting it. Increase the tight 3--10 us polling
period to the more reasonable 51--200 us.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index e312cad6d9c2..0071c73ac1c8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2052,7 +2052,7 @@ static int qmp_combo_power_on(struct phy *phy)
 		qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 		status = pcs + cfg->regs[QPHY_PCS_STATUS];
-		ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
+		ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 200,
 					 PHY_INIT_COMPLETE_TIMEOUT);
 		if (ret) {
 			dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
