Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C79C1C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 08:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fAQYG29yJLJ/LRLyzBWpCFbTMbjT9bMFj+AT1fe4No=; b=ZKC7xGGZJGrFwR
	5fd+NPat/sYT51kF5kI00gITO82ibA6xdzM+gZTDIsqxxMhADHe1gSV8TQhO7xgwBZr8wfJlWAJEX
	YFXcWmtieSZjulaTRuMXewkrD+U14t0jInZOgBh+dXfV2N63tMTIFlFTmNvgA4ZQIt7o1aH/jp+cb
	yVL8ZbsGOQK74Sz4yJJ4wHRty7X1PDXN47/9mVEIWDa7rOn31kjjIb39xJtzvPAkRRsjyKoYZClyk
	+l4zvzfzFna03ZyVoB2ei7MVcq32EdkzD0vo3q1jJVjLlowtBPTUeYLkzWitDqO9CCOuYy4KlcSRV
	R00MsEDcwW/BEyCEJcwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRq-007Q32-71; Wed, 12 Oct 2022 08:50:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiXRo-007Q0Z-52
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 08:50:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5B02661485;
	Wed, 12 Oct 2022 08:50:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B86FCC433D6;
	Wed, 12 Oct 2022 08:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665564638;
	bh=7PZIvZJARdmCtef9Yrh3b79tw5ZWMrA9yRcUuFC5Uvg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EdV7Iw05dE5rDpyNdEr3NB0qjNnJLE3htrlqLGOeVpNnfvUtCPlvWwqOVFddbQ+YW
	 iajx+O3zkB3UwgdRy3lkoVaE5QBJPRU1FPHTRDmSjiQ+yo+ii+RrxtaOaXzWLzvRXw
	 6+NzNWa5RhewcBhAr/3QTKjDIHy4NgArV1OlTzZ+vFzUu1NojxmVMEwgx1cX4pdBer
	 SI1AnKBMy9No2ZTVPKTNx1BgIEys6mXjDC9DXaK9mVdTNYm78XDxcyeiRa6xvZjeUK
	 q3CSnWCGCGYww/CGiQ+d8jFkrLWHhOA6Xz4nbjap452A1o7nnsf/sLQk7zWiOwC60a
	 wTFfbuL9kvgYA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oiXRe-0006HX-2X; Wed, 12 Oct 2022 10:50:30 +0200
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
Subject: [PATCH 01/20] phy: qcom-qmp-pcie: fix sc8180x initialisation
Date: Wed, 12 Oct 2022 10:49:43 +0200
Message-Id: <20221012085002.24099-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221012084846.24003-1-johan+linaro@kernel.org>
References: <20221012084846.24003-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_015040_262405_C73DF26E 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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

The phy_status mask was never set for SC8180X which meant that the
driver would not wait for the PHY to be initialised during power-on and
would never detect PHY initialisation timeouts.

Fixes: f839f14e24f2 ("phy: qcom-qmp: Add sc8180x PCIe support")
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 151baa63e8e8..a7677b61f96e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1733,6 +1733,7 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
 
 	.start_ctrl		= PCS_START | SERDES_START,
 	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS,
 };
 
 static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
