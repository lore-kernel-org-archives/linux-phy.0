Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1073C41535
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgCHonzEEEODyQtv3FjH8cQEPrh6NmfoxZqtfzpFqGI=; b=hHzFVzLSrkBDvu
	bPG98zZ+SkvwxvA5NPlOxje4wCTvQy1F6T0RAwRvbuUBK0kaKzbkQzDavtLZ0WNIr4VPw1xOoytJZ
	jaESf3EuPTS53XJfb0CnDIkn/Z7hC2QgIOMi1K4Du1ct3wCA0qztpozL7hiGScSEkNHfGWNLA++Ls
	4AZinEL/yPt6tO47jXKlNBzxZhs+iWFs3zIFlU+p5zawX4qpm98W+Hx+cpv6gM11bJQfYt1+6oFRc
	R3OMa1s4a2SlocA7K77EiPPr6NBTcQzI2tZQfLRhQfpP0JMRCzhUdpvES4IGXix6o0uXuuV7wvVY+
	RWM4arZkhEqURVessIcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXS4-007QBB-9L; Wed, 12 Oct 2022 08:50:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRp-007Q24-R7
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E070F614AC;
	Wed, 12 Oct 2022 08:50:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1243C4FEBE;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564639;
	bh=tRjP5u7RXvVx5CXhSiYrPbB3bH4Ygd2LQWd5D6ziaHQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nuPeP+ByMt80SLrrZ7IV3+Q3cK/xerwIrM6mzmxqiEpcqpXHVhY1HTOcY2DbKVVCk
	 ZzGOVsdKCaBCGEdlK7uEEh4UTSQ5JuPOSJmndGSQZAdn7lPCgzZWp/C4m9Q1KM1DRg
	 LmBPTj76SNF/s9sAWNDiPB42uYiG29wpqN8v/kUfzGUB46KZP1T1hP+kZgu4lvH+vc
	 vUYImghw/BMl3hRJTfrelCZmKd2uL9/ib4skq9IkZvNy5aJYQG62Hm+ATMwaFve4M3
	 UmYzpRduqgNDrAMv47OD/B94+0Lt4gp9d5/xvxuwabpWVeZSuOC3Dsf/nBuKzetZPK
	 8XAO44ZxaVLSQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRf-0006I8-8s; Wed, 12 Oct 2022 10:50:31 +0200
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
Subject: [PATCH 14/20] phy: qcom-qmp-usb: increase status polling period
Date: Wed, 12 Oct 2022 10:49:56 +0200
Message-Id: <20221012085002.24099-14-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012085002.24099-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015042_137582_5A5F6D0C 
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
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 840b67167581..0bd9291e6a7b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2163,7 +2163,7 @@ static int qmp_usb_power_on(struct phy *phy)
 	qphy_setbits(pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	status = pcs + cfg->regs[QPHY_PCS_STATUS];
-	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 10,
+	ret = readl_poll_timeout(status, val, !(val & PHYSTATUS), 200,
 				 PHY_INIT_COMPLETE_TIMEOUT);
 	if (ret) {
 		dev_err(qmp->dev, "phy initialization timed-out\n");
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
