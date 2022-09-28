Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E064BC32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJoUp4kaLm1TosCFAs+KnUtZetiL8gydcNvle+lkd4U=; b=Z/G+EiehBIVAuq
	zegLxPX/QDzDYevesiKnqFFAckEIctEsah/DwfytpsTPmyWHFdk89Ko9CHkACZ41A7f3WQiXmJMuD
	6ORTwHOr325RAfmxc1z0llGh9G52Jq7WtIV4/JCYqmFaXxPBULIoc4nn4bgeswWBS1sbJAFC/e+n/
	KVi6GDKvqLOQ5xA4DxEB8C8aZ/oSGc3e/ZzPJTU4iPSXKKaXAf5BsQqHrso7h1TLGfwmRMwIemRpc
	oHSUEcxOUteUMp6Tpc0UwfE+gzC7ujuliacazGTXq5fwwf3n78bVnihL/UJ7NqMcNF9IY+TgL/Jn+
	P27Ggj8V4xb0lq99aj9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCA-000cG4-9z; Wed, 28 Sep 2022 23:10:26 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgC7-000cCS-1M
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:24 +0000
Received: by mail-lf1-x131.google.com with SMTP id u18so22514351lfo.8
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ZjxL8JpqOHRf8ei/lLU7w0LbF8sHURWW068haj65LQI=;
        b=BEFT7v8K9Bg0MxWasSUH0TmrXxEmqJZsGIaW0cNQxNckfDaV754Ck1/wJOUgLBdnC+
         PMP9vbdQt6bGW1WlHj94qzHSCuWFswKTinNoI3nXAmLpdeq9fwTSGNA8sRYxLX3fcFy+
         o4LYs19tEl4GuC0VobovD9PZBBO7Z+mtV0R5o0NqzGs83cr+G9NNiiSb3Er0NdhMTk2p
         kf6U7kbKEVK9g3+FkV4xhzTGz0dPK3kz1N7Y4BPm1AjBIOGEQ3DKa04A/b513fGI8z3I
         JSGl49FIHTEUjkaCqXUEJWDmzB5bnVPNo+hIndzsNaocYcjEQEQIsfrHWZYx/z7KYmt+
         nPXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ZjxL8JpqOHRf8ei/lLU7w0LbF8sHURWW068haj65LQI=;
        b=Z9PWjvZZfODyZBsmJTAWkZGNAfobQpoI4xTwfLPQSbHcr4z/yPREXlr+vxQBBAJhgx
         dVwocT4/7OPetkg2G93nwt6t71E9akjEtJxXQfw7drFFQepk5Ll4P7YfQ8sKasJAK+YG
         t05i6ttWl7RzceO8ML4B9MpB0X5yMPR2FiDoWLPTKf/BKzUnJmHC9b60pMq2zWYJPSyk
         eLH6eQJqkPa88NLUxNi9nLfAqk5ZjuBoOjBUWfwGBFgDlNl+31oFQorx/twwFQbmsoRl
         qvBoLiki0zqB9FjRwf7D0F+juCclU6j2vb9fz0aMXYsGqvg1PEbLEd9lQEjQRMQIeA8R
         o4iQ==
X-Gm-Message-State: ACrzQf3uTaGG8n/sQNqKJSfmg4k0XNYY13NwWxbPnTiO6BJV6J7Zs2VQ
	MdaFuMAJN9GornYG4jcA2/1taw==
X-Google-Smtp-Source: AMsMyM4NdRvm4xr7ZI4GnHs6jRWy5XWglseDufrHYmKdy8F5VUdPauguGjg8r/Vm/bx/i7sgwoPHWA==
X-Received: by 2002:ac2:5e3c:0:b0:49c:9cc3:a530 with SMTP id o28-20020ac25e3c000000b0049c9cc3a530mr121587lfg.486.1664406619262;
        Wed, 28 Sep 2022 16:10:19 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.18
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
Subject: [PATCH 04/18] phy: qcom-qmp-combo: clean up power-down handling
Date: Thu, 29 Sep 2022 02:10:00 +0300
Message-Id: <20220928231014.455201-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161023_110712_13EA9DCC 
X-CRM114-Status: UNSURE (   9.96  )
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

From: Johan Hovold <johan+linaro@kernel.org>

Always define the POWER_DOWN_CONTROL register instead of falling back to
the v2 (and v3) offset during power on and power off.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 9807c4d935cd..c30af34d7f65 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -121,6 +121,7 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_STATUS] = 0x170,
@@ -1994,13 +1995,8 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
 	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
 	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
 
-	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
-		qphy_setbits(pcs,
-				cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				cfg->pwrdn_ctrl);
-	else
-		qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-				cfg->pwrdn_ctrl);
+	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+			cfg->pwrdn_ctrl);
 
 	mutex_unlock(&qmp->phy_mutex);
 
@@ -2153,13 +2149,8 @@ static int qmp_combo_power_off(struct phy *phy)
 		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);
 
 		/* Put PHY into POWER DOWN state: active low */
-		if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL]) {
-			qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
-				     cfg->pwrdn_ctrl);
-		} else {
-			qphy_clrbits(qphy->pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
-					cfg->pwrdn_ctrl);
-		}
+		qphy_clrbits(qphy->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
+				cfg->pwrdn_ctrl);
 	}
 
 	return 0;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
