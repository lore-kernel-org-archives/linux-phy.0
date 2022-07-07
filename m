Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16508CCA493
	for <linux-phy@archiver.kernel.org>; Thu,  7 Jul 2022 13:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NiSHzHoYglBRHZTHRGU+8OdfsvfJEPO702Nuc0UhzC4=; b=tNw0OMUUa2RkNk
	8X4SSZf75niGJSvJwds4sDhTkovCFT1FM345I8BJwfSAoIvO1+y6D+hhaAwTVz44fSJme1Hf4hhfl
	iA8id+Lqp8qKBWKE0nQf7CGgQPSKaCW91UTqorGQGOm2O+w1OYHx7FgAcP5iBa28zRqKxQ7MemSEP
	FtzutnYqw+jBJFGWN9dqjbWpi33FZdDH0PbF6O0HcxRQgNysjH/RMRrTnoANxRNCd1CENMQwPcgB2
	VSwy526UF+PMnVBLfaTzYzknyOtAUI0GEajuWwvJyUZVuW9dWOlXrd+PllOUcgR2e8NR1XO9GLHPO
	24q5nhhM1dCAgPl/HEpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrT-00GL4i-Dn; Thu, 07 Jul 2022 13:48:07 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9RrD-00GKlS-Dk
	for linux-phy@lists.infradead.org; Thu, 07 Jul 2022 13:47:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B5F46621B7;
	Thu,  7 Jul 2022 13:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 479B9C341CE;
	Thu,  7 Jul 2022 13:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657201661;
	bh=dadUrbkXZv9lhF1iYe/GtRLtbteRpwkVtxaQrPsZ/4A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bCPa9oFalyGJEYzJIyGjVOKCKs4GX8KdyGS6v32bK4WKH5k62EUR9SX4XN/Dia4bZ
	 Q4RhvJD7eYpXEGe3vT3NeEw2eD/6Ww4OCW9qzCVUt80Wo6BHOeddNyQYQTnBm0Ly08
	 bp0LVuaOq3rYX1LVFQTPHSr1UtA+3WxhOcksj0fDbws/NAP17GiJMasZRnsR//Yuwc
	 S9xJZuxCZ0yqUgCW/9+T2IOpfXAeevmy6LbIaOV/oL/sonb2g0eeIJpfxppliCa1QI
	 UZH9kkatCg76m1ah9UARjJHIc/EzfaKe3GmdEx5VKvsOEWBkgF8m413tG40crBt/qK
	 K/dlIMAf3El8A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o9Rr5-0000yX-UZ; Thu, 07 Jul 2022 15:47:43 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 26/30] phy: qcom-qmp-combo: drop unused lane reset
Date: Thu,  7 Jul 2022 15:47:21 +0200
Message-Id: <20220707134725.3512-27-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220707134725.3512-1-johan+linaro@kernel.org>
References: <20220707134725.3512-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_064751_549812_D0AE8AF6 
X-CRM114-Status: GOOD (  10.87  )
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

Drop the unused lane reset pointer which isn't used by any combo PHY.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c18cd3b93c30..b266514ae9ee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -818,7 +818,6 @@ struct qmp_phy_combo_cfg {
  * @pipe_clk: pipe clock
  * @index: lane index
  * @qmp: QMP phy to which this lane belongs
- * @lane_rst: lane's reset controller
  * @mode: current PHY mode
  * @dp_aux_cfg: Display port aux config
  * @dp_opts: Display port optional config
@@ -837,7 +836,6 @@ struct qmp_phy {
 	struct clk *pipe_clk;
 	unsigned int index;
 	struct qcom_qmp *qmp;
-	struct reset_control *lane_rst;
 	enum phy_mode mode;
 	unsigned int dp_aux_cfg;
 	struct phy_configure_opts_dp dp_opts;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
