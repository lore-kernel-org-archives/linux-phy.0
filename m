Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FE56CD1292
	for <linux-phy@archiver.kernel.org>; Thu,  4 Apr 2024 23:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bGlGeSaxaVwppQIU61iA+kCurUugCVIf790TBDkArpg=; b=GMWxfleFY2eluU
	T5K5omVM/tw46e3Jg9p1ln7mKOz/ClDMRsuZfd4jyaF6deoOQGu+x1ODaaKMpz0H7H1/jSKD9txeb
	6Za39A0iryvrqSEWaRHzHpHUDQWK3+LYZMblsTEO1M+w2UEiU/ljR+yGDsixbkcJigkUqT8u+IE/J
	Q4g0E1PrvSVBSVCjwCWFCimTez4DoAdLYAo4LWj0Vy55Xu2CMFdDI9OlrLpfa9ZwWVodkwmg6cLB1
	UhFFX7juxcO03uTXoOtB0UqdlGFZBpOXg380T7n6kLTv02gLPrLINYMmf16u9RPCME1F2oJaJrixt
	sgJx9RuUL7dtDndk8YXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsWkL-00000004dbs-0eBD;
	Thu, 04 Apr 2024 23:43:53 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsWkI-00000004daY-25a6
	for linux-phy@lists.infradead.org;
	Thu, 04 Apr 2024 23:43:52 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6ecf3f001c5so951924b3a.1
        for <linux-phy@lists.infradead.org>; Thu, 04 Apr 2024 16:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712274229; x=1712879029; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RMI5yWOLAVIgIkbCc96VWxktkn/9P3095VY77NHNd1o=;
        b=ivlAd6KxhxFtwkSnNriwBzhqokCq9yWe1iQ1qlc8p1Bqaiga7/1C+BFg2jTP5ldLNI
         1LLmZUm+2DhCXZ4xlrzRCrEVc8tc4GVKb7hLacQ39HPsZitunwIsVxW/RnN8X5VDJvt0
         z20NnpUvXxtGlTWrVVVrecOlPfsbwhBOblTJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712274229; x=1712879029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMI5yWOLAVIgIkbCc96VWxktkn/9P3095VY77NHNd1o=;
        b=rU85kEcbQqnCRymVgJ6iU+W/qBE6fERu55AMMMwhHpDbXLwUdNQfjujDblvqp/6fr/
         NbTYPLFy2tNRrZkSpUOArNZnBsOIKFI7lKjub1Scmi04LGsuggRbCIgIXNfGQzBSwAXS
         mN68PreOMb8Dn27KkdiF7ggaojOUqTa/A9Eo0bcI3gshfRCfFML7+IUNDv4V9xD13nEb
         2QrW+6Bt5AuOKnSRnEJuonBpMDQ7OnGU/NVJYYLhKILanhsf4dyU5oVbjy5A0fsonNXK
         Zc439MmDyoy8eiEAT2QDAU+42uGOoskdIAfThfjXJ4ARuuIdKR5LNguK3eOsf/j+KNAY
         qFag==
X-Forwarded-Encrypted: i=1; AJvYcCUEnnA2RR+aM4XTxBbERwnYBelZsK87zHCNxeni/6m4bkJULUIWlCmCmdt5KuIfoe/LuoO+k2aYGEVp/g/CaG7gGnO65QRIiUINLGOe1g==
X-Gm-Message-State: AOJu0YziiQnXl9J+eNIyhxPwq5GN98DCoNFwwGjWeyicfBvL62IK8P5G
	QIaHMQFnLZ7DfdkwAl/YfmInUYiEbBStvAl79rcAO3Wwc7DiZtP96G7pGYLjoQ==
X-Google-Smtp-Source: AGHT+IEXZdsBDxClfnWn4V8ckwcGELQZihfoKdxkgEQZf2dDcxavcBDgDIZ9TfrbOn0Q57NFbPr69Q==
X-Received: by 2002:a05:6a20:1057:b0:1a3:6bb1:92fb with SMTP id gt23-20020a056a20105700b001a36bb192fbmr45166pzc.19.1712274228928;
        Thu, 04 Apr 2024 16:43:48 -0700 (PDT)
Received: from localhost (4.198.125.34.bc.googleusercontent.com. [34.125.198.4])
        by smtp.gmail.com with UTF8SMTPSA id ga16-20020a17090b039000b002a2b06cbe46sm269450pjb.22.2024.04.04.16.43.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 16:43:47 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	freedreno@lists.freedesktop.org,
	Douglas Anderson <dianders@chromium.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH] phy: qcom: qmp-combo: Fix VCO div offset on v3
Date: Thu,  4 Apr 2024 16:43:44 -0700
Message-ID: <20240404234345.1446300-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.44.0.478.gd926399ef9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_164350_564495_313EAE08 
X-CRM114-Status: GOOD (  15.02  )
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

Commit ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to
setup clocks") changed the offset that is used to write to
DP_PHY_VCO_DIV from QSERDES_V3_DP_PHY_VCO_DIV to
QSERDES_V4_DP_PHY_VCO_DIV. Unfortunately, this offset is different
between v3 and v4 phys:

 #define QSERDES_V3_DP_PHY_VCO_DIV                 0x064
 #define QSERDES_V4_DP_PHY_VCO_DIV                 0x070

meaning that we write the wrong register on v3 phys now. Add another
generic register to 'regs' and use it here instead of a version specific
define to fix this.

This was discovered after Abhinav looked over register dumps with me
from sc7180 Trogdor devices that started failing to light up the
external display with v6.6 based kernels. It turns out that some
monitors are very specific about their link clk frequency and if the
default power on reset value is still there the monitor will show a
blank screen or a garbled display. Other monitors are perfectly happy to
get a bad clock signal.

Cc: Douglas Anderson <dianders@chromium.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Fixes: ec17373aebd0 ("phy: qcom: qmp-combo: extract common function to setup clocks")
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7d585a4bbbba..3b19d8ebf467 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -77,6 +77,7 @@ enum qphy_reg_layout {
 	QPHY_COM_BIAS_EN_CLKBUFLR_EN,
 
 	QPHY_DP_PHY_STATUS,
+	QPHY_DP_PHY_VCO_DIV,
 
 	QPHY_TX_TX_POL_INV,
 	QPHY_TX_TX_DRV_LVL,
@@ -102,6 +103,7 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]		= QSERDES_V3_DP_PHY_STATUS,
+	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V3_DP_PHY_VCO_DIV,
 
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V3_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V3_TX_TX_DRV_LVL,
@@ -126,6 +128,7 @@ static const unsigned int qmp_v45_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V4_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]		= QSERDES_V4_DP_PHY_STATUS,
+	[QPHY_DP_PHY_VCO_DIV]		= QSERDES_V4_DP_PHY_VCO_DIV,
 
 	[QPHY_TX_TX_POL_INV]		= QSERDES_V4_TX_TX_POL_INV,
 	[QPHY_TX_TX_DRV_LVL]		= QSERDES_V4_TX_TX_DRV_LVL,
@@ -2162,6 +2165,7 @@ static int qmp_combo_configure_dp_clocks(struct qmp_combo *qmp)
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 phy_vco_div;
 	unsigned long pixel_freq;
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	switch (dp_opts->link_rate) {
 	case 1620:
@@ -2184,7 +2188,7 @@ static int qmp_combo_configure_dp_clocks(struct qmp_combo *qmp)
 		/* Other link rates aren't supported */
 		return -EINVAL;
 	}
-	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_V4_DP_PHY_VCO_DIV);
+	writel(phy_vco_div, qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_VCO_DIV]);
 
 	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
 	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);

base-commit: 4cece764965020c22cff7665b18a012006359095
-- 
https://chromeos.dev


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
