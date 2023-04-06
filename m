Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AC62C77B75
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/Kw/dv/jB8Z96kc6kZgnRFd14iHPP+G9UAhrvjmzlg=; b=yzMI0eepfiagML
	62ToOozMimIfb9h13huPfg1wJ4GRshI45Bqhc8YnRy1BEJokPF+a5kixYA2dxVjAjOPKkbjMUDCnm
	2buMLskXEBzN7BtqpZi4ZzkFyADjZVkFJ6VPMQgqBpf331OUoprpDi1wST0aCdgmHB3m67HJxKszW
	uA/whmkyOtoJpYf0V2Dx+ehI1ciG2JqYQZcVZh2KLmmCwBTDP1xxf6YyXy3F6ZSHTJ+slLDIStOMc
	gvFM2VIHyBP+ObVuV+MxHJThEMZ5motKa2gUKK5jNXkkZ1uaq8OVX3z7vFRd+yrrUdQXGCNqwETg6
	YFcE1fSYhEcP+2/mvubA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZp-008QkL-2n;
	Thu, 06 Apr 2023 19:47:21 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkVZn-008Qhx-01
	for linux-phy@lists.infradead.org;
	Thu, 06 Apr 2023 19:47:20 +0000
Received: by mail-wr1-x434.google.com with SMTP id r11so40598034wrr.12
        for <linux-phy@lists.infradead.org>; Thu, 06 Apr 2023 12:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680810437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eibFHvIgf05QKZ/3r3/eY9NPHy7GReZl9L/HNNvsxXE=;
        b=tUNDaGqs6SBx+PnwtkYghqfGdurrJZeNxnSHZWepcZsM0dyChH+KDbEMcZUCma+fpn
         kob1eg9eo3aMMscDXxiHB4rqkmSvWdEo2MQH1AeWgPLyehgcvwSQN9qcpGSh2P/68+PT
         2f+C9HgULwKhjlLYMjDARM54+H+d9lmjxWT626ZCnCEvQj3dVBW0AZtu1cBbjiHN5xhX
         NLsFin8HtDuOQ4QWAgiO6ui76iwR/VmmZCCT00wFGGwABYUbjyNrkCVKjk3/Ss37FMAD
         E8JJa3t/9yjCe7VRYv4DUdBnTlx1vQHBu6jkLgNQuRpDR0w4iIDlQMZwSF+uF8NwEWDC
         +MTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680810437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eibFHvIgf05QKZ/3r3/eY9NPHy7GReZl9L/HNNvsxXE=;
        b=tW6zHzQk0+pxFqVqn9ztFGpPfe8LnV5t26IwZ+6m+na0eHwD6TMaVAHScvFUilyc3i
         LNWqURmtXhCtNJIa0/3As3ecTAJMbVUSonZS0d0swRgT9Lj1gfnniuGUz0KJhEhuXI7U
         Xt4Q6F2ONgJeWIdkp9pKv8vK0sO4TDCeJ94Z1NQhm5Trw3C1jFcy22GPlEymu76bfaO4
         NxBdXoBXHedcPwK0dREIHiPD7xYzX+YrbCGsZEvSIavpTT6ir5d6Ew80W6Ym15rbgDCf
         kRknSMi1/SxOw92cWAprlpwNJa3HAXX7JflPJH71PyufHrSCn5ac5Y7eR+RE/KcBOMhu
         wakA==
X-Gm-Message-State: AAQBX9e/SdnLnmIkkNTGgbVaAFqImRuGYQFO7hn+XX6bcoh4SrEb1nbc
	iAjPXu2nCjPMy8LSGM8ACB242w==
X-Google-Smtp-Source: AKy350ZJuXhVqvPZs0WG6qinNmJqseB1dMFo7JPkdm82mqrtcUFu6CQwG7jgoDgVz68fpQTR5W83Ow==
X-Received: by 2002:adf:ed51:0:b0:2ee:c582:a67d with SMTP id u17-20020adfed51000000b002eec582a67dmr2304031wro.31.1680810436791;
        Thu, 06 Apr 2023 12:47:16 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:4793:cb9a:340b:2f72])
        by smtp.gmail.com with ESMTPSA id k15-20020a056000004f00b002c71dd1109fsm2593323wrx.47.2023.04.06.12.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 12:47:16 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 3/5] phy: qualcomm: phy-qcom-qmp-ufs: add definitions for sa8775p
Date: Thu,  6 Apr 2023 21:47:01 +0200
Message-Id: <20230406194703.495836-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230406194703.495836-1-brgl@bgdev.pl>
References: <20230406194703.495836-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230406_124719_042089_15508691 
X-CRM114-Status: GOOD (  10.49  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add QMP PHY config for sa8775p and add support for the new compatible.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 38 +++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index d58822049211..5612282eb378 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -853,6 +853,41 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
 	.no_pcs_sw_reset	= true,
 };
 
+
+static const struct qmp_phy_cfg sa8775p_ufsphy_cfg = {
+	.lanes			= 2,
+
+	.offsets		= &qmp_ufs_offsets,
+
+	.tbls = {
+		.serdes		= sm8350_ufsphy_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_serdes),
+		.tx		= sm8350_ufsphy_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_tx),
+		.rx		= sm8350_ufsphy_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_rx),
+		.pcs		= sm8350_ufsphy_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_pcs),
+	},
+	.tbls_hs_b = {
+		.serdes		= sm8350_ufsphy_hs_b_serdes,
+		.serdes_num	= ARRAY_SIZE(sm8350_ufsphy_hs_b_serdes),
+	},
+	.tbls_hs_g4 = {
+		.tx		= sm8350_ufsphy_g4_tx,
+		.tx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_tx),
+		.rx		= sm8350_ufsphy_g4_rx,
+		.rx_num		= ARRAY_SIZE(sm8350_ufsphy_g4_rx),
+		.pcs		= sm8350_ufsphy_g4_pcs,
+		.pcs_num	= ARRAY_SIZE(sm8350_ufsphy_g4_pcs),
+	},
+	.clk_list		= sm8450_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= ufsphy_v5_regs_layout,
+};
+
 static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
 	.lanes			= 2,
 
@@ -1600,6 +1635,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
 	}, {
 		.compatible = "qcom,msm8998-qmp-ufs-phy",
 		.data = &sdm845_ufsphy_cfg,
+	}, {
+		.compatible = "qcom,sa8775p-qmp-ufs-phy",
+		.data = &sa8775p_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,sc8180x-qmp-ufs-phy",
 		.data = &sm8150_ufsphy_cfg,
-- 
2.37.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
