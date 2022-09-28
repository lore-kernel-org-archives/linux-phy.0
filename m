Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 117BCC6FA92
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+ikc3QXU6dF5hE7EC/ffWcYaajnH6JWhrCRCF+oU9w=; b=dE1t7CrBnqpzGa
	GuLE9eAixL+oLOvOs09BE5GqveShmen/dq+d0q5dyX2HJ5a8bzXQKGLxa3C+3QyVyVyurOslr8Ata
	MuN/bWyzdNJiSNq4DxEqf88wXY9kt5dhGoMIHQJ5zx2GU5hhtPvLRK/6ZToLZ9BomMCpPslKbnrWf
	fbG00QvjjJ+OxCGi9n7jAgXTU8nUUbWQVf5KL8Fy0mnCUJni75MXVEE5rxgtfOgky+dhIXtel1PNE
	+wYFh1L6SOyiyA5RWrhddCP/YOu1HMQRMDpEhGDwiIX5sI8sB1gcm5fiaVi+leIO664CQqz5JTnnD
	2Gkf4W7WJQEuAazMBFYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCD-000cHV-G0; Wed, 28 Sep 2022 23:10:29 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC7-000cCO-1Q
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:25 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a10so15982104ljq.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=uzlJbr25Ee5CeDIpRbVJDePj8Z9TkKFdQtXGeZSLKLE=;
        b=Uws+GwmhptcEvrXeqilYpIlR/CdYY9hkSTSqJiCtyPb1QZB0Tob8GbXOXZ9lOZEvjG
         VUfHESMLRceHCD/YlMo175CYhx3TqPZxZLEyw7CxD6s8XPZfV1rnTOHPbOi6T6uIxCTF
         lsjZn2hWVh6al8i/+pr1QRHkiDT46gcB75mCoVAlxCpaxHCpUshJiHz87kLBMH/0J0tT
         pWUBqrAFIZLyfiA7NUrl1yfXf17CKbWf3VjLhtViZnf9yUfcrP6N8GD1evpVcfhXYNKZ
         vkeLQofljuL1V0F6CPzi+NYZxfct4FMmDQpO3mSt6sj78LeMAeIqjTYmMUG4EC+KWyHG
         fcXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uzlJbr25Ee5CeDIpRbVJDePj8Z9TkKFdQtXGeZSLKLE=;
        b=6KTN5GcuYopz8CcYKXf0SJI9Cf0gAFwuDtNcseFQME17BgkIxzkkC6Yv9zmBLBuNca
         WTMsdpFU3wfSYSJiMZNy2aWJyV623P3sxudTKL/tpLxPPqRUHYlsZzxX+fryt+t0PkwY
         dq56p8CjpFnYnZ41f8EhAR3r+gqycv7Cl5nDBF+54xgj16Xu69gWX7YH2V11cEmzAaYr
         46/vuVaJ8tQwMEMceQ8SfK8bYO3yxM5XFZzTDyD8F8OQ7TOKxRs2B9Ywl6oVyhODT1sI
         U45vEOjz2fgV82BlLhrNKJ3CFpp2r+bJjbdKl+IWjGrRZAFuesxMzjqnF1gC8KdMuhy2
         T/Pg==
X-Gm-Message-State: ACrzQf16Fv2jEY03KKGkSGtnwYfTRY5gjASpTrjwoio6F5KKDmzgpwP6
	maxvX7py5oO/LeRAEKLveXvA307/Ggb7yA==
X-Google-Smtp-Source: AMsMyM5o7OoWwx/Z0QVU+dJ8WuavAWLGAleTG44s72WWihEn7UjHUMlP5Q3gQtBH1J+TtNVLc15NXQ==
X-Received: by 2002:a2e:b693:0:b0:26c:3ddc:4175 with SMTP id l19-20020a2eb693000000b0026c3ddc4175mr60186ljo.486.1664406617770;
        Wed, 28 Sep 2022 16:10:17 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:17 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 02/18] phy: qcom-qmp-pcie: clean up power-down handling
Date: Thu, 29 Sep 2022 02:09:58 +0300
Message-Id: <20220928231014.455201-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161023_121767_AB6506D0 
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

From: Johan Hovold <johan+linaro@kernel.org>

Always define the POWER_DOWN_CONTROL register instead of falling back to
the v2 offset during power on and power off.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[DB: also updated pciephy_regs_layout]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 7710e4dee39c..015f17a11439 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -97,18 +97,21 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sdm845_qmp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x2ac,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 };
 
 static const unsigned int sm8250_pcie_regs_layout[QPHY_LAYOUT_SIZE] = {
@@ -1885,13 +1888,8 @@ static int qmp_pcie_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
-		qphy_setbits(pcs,
-				cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				cfg->pwrdn_ctrl);
-	else
-		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	return 0;
 
@@ -2014,13 +2012,8 @@ static int qmp_pcie_power_off(struct phy *phy)
 	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	/* Put PHY into POWER DOWN state: active low */
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			     cfg->pwrdn_ctrl);
-	} else {
-		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
-	}
+	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	return 0;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
