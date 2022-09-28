Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0937C6FA90
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TWv0CgeUXiqyF/X2r6ilSAL0/4jfYPSl8YGU5Tp+2g=; b=t487tKsbD9m6R7
	RX6IsY3U/zMU9M/zOFufy5IoPoDiZORDP9tJuV8Y4KptMadyjoWP0vMOB2XDvKsgv3rgIpMi6Iq9q
	hp9zffkjkeHMFxe6NL/THsywrlfiRXiW77aPtgbMHlEWvjj8y32ZzzKYLTrKqWX5dyuvSgMveDPW1
	13cTegDtSRqbxIbxUG1Ip+TkvU99tmPK6J6D/xX7DinA+5sc5IOCDSBifV/sZMFGGemo1ljsqvGDs
	q+5qdV5ZlZHhJZliRlXIfopwcyym/UucujqhB9dMCXLi/SqEQa4PMAJtdtbjSo5vARY9sq1P6l8oR
	d6D9bIgAyA+fJQj+H+dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCD-000cHP-E3; Wed, 28 Sep 2022 23:10:29 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC7-000cCR-1L
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:25 +0000
Received: by mail-lf1-x134.google.com with SMTP id z4so4765142lft.2
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=pGT763Ruuj1rRpQ5GP5KiZ/2Tu//UxTgarC85JTTSvY=;
        b=NAiVgohJYXoSq1Rk+IPUues5TnQU+fkoJ57Zj+/Ssh5abLT4TxRNQncb8tzMkqTg6N
         r4whax2KDu//QcbvRzMjgvtuoLhGBD3kXf0fy09Ve1CDBclW2XIQYg/2O2CZmSk20G9j
         RuQRbVA2QeGmLvjzGIrntZHLz05hjKoUFmbCl1HReer5hyNOxQGfHZEMW+rkRjUvGUlD
         tSOP4u1ZQEflDbjA9bEJ4IPckFf6PTe9bzEN3CtDGYszUGkX1Ua79mg48ECATQmvsGBk
         cF3WstoCQpR0SFh/ds1zAIcy5nkqhmv1U3fzbCrAoYypNj73KoGZ2BLotQIK67NvcSMl
         cGGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=pGT763Ruuj1rRpQ5GP5KiZ/2Tu//UxTgarC85JTTSvY=;
        b=UiSB3LecC8HnrM8nx8UFlFlxBs4ldSQixLxlvCC6oJRpIMxGYszTZEmVus900hDptC
         FcyhPyGTrLK7uN5slq/ifY+A9FGZAWtvJtYbtzobXQHdYnfmbbZJM+wBDlaRJlh/kzqf
         73xfdad6XRDIPDP5EPQDsc2yco9E6ngVyPPrXPI/+KEWXGKLLDW+FphE4uBD9Y1JydnI
         RyV2bYYR7fX3x21vrg4p34gwuI7O4bFGsYEBygZ2YbOpbjiT6k8Pj2a/5v9+9Z3fxBfx
         WJ6HcuoaWU5QWiauskkdVJkfmfa/JBxZhyMod8TmzGrLQNkNUwiFV95Yl5VEONJlhRUc
         qUyQ==
X-Gm-Message-State: ACrzQf1XWNe9TT/87n6zuGa4FUvgEYr7OEbSkwWb4WN6ffShsHjp7kxU
	d6YjYAou8uSLuGDJTue/9ZG4fQ==
X-Google-Smtp-Source: AMsMyM6xq/f0k7XGHDfsNpgbaa6xiOL7J5ZVdWD3/ZUKaZEVqiwrO2ck2qTcgR2Po/drVeKbXX/6mA==
X-Received: by 2002:a05:6512:39c3:b0:49f:dee8:c100 with SMTP id k3-20020a05651239c300b0049fdee8c100mr134986lfu.168.1664406618525;
        Wed, 28 Sep 2022 16:10:18 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:18 -0700 (PDT)
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
Subject: [PATCH 03/18] phy: qcom-qmp-pcie-msm8996: clean up power-down handling
Date: Thu, 29 Sep 2022 02:09:59 +0300
Message-Id: <20220928231014.455201-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161023_118751_56B2FFA3 
X-CRM114-Status: GOOD (  10.26  )
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

This driver uses v2 registers only so drop the unnecessary
POWER_DOWN_CONTROL override.

Note that this register is already hard-coded when powering on the PHY.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 461f0b5d464a..a5ebd77d5905 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -91,7 +91,6 @@ enum qphy_reg_layout {
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_STATUS,
-	QPHY_PCS_POWER_DOWN_CONTROL,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -591,13 +590,8 @@ static int qmp_pcie_msm8996_power_off(struct phy *phy)
 	qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 	/* Put PHY into POWER DOWN state: active low */
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-			     cfg->pwrdn_ctrl);
-	} else {
-		qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
-	}
+	qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
+			cfg->pwrdn_ctrl);
 
 	return 0;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
