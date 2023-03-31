Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7B64C77B70
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 19:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZObyNz0BEh7Lpjc+bwTDSvmDxf4b4ARxFPYruqhwBto=; b=Iufjg+kl7kGJwu
	NX1TRgW+sjcuyiETQkXdmgCVqltsw5IZ7E0mQbTvf0exKLC0xNAa2WLV97jiMJIcSPUmL2haoncHs
	WP9L8KCr38+VZVrL3iY21M2+Ljbfk58nOHQA2XHH1yOOVAmM4rgIsIKSgrha9667aKMJfoJHByT8w
	ool5IbdZeAfmdemCFOu6Nuw7rETeIm06jjOlFRIueCnkYc/MAEMdPla9XG6JO7kRJNA8tYg6SSnpn
	WBRCnXtSlDy2nUL/Wa5euR7+C0zkWFDDsTW9lmGhsK7Xbg1xz3fB81H5FwEBLuPhxxZc0uC8aHZay
	00gSw/0HFieeEtUdERTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuS-008h7D-0z;
	Fri, 31 Mar 2023 19:59:40 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piKuO-008h3b-0s
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 19:59:37 +0000
Received: by mail-wr1-x42a.google.com with SMTP id l27so23587230wrb.2
        for <linux-phy@lists.infradead.org>; Fri, 31 Mar 2023 12:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1680292774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0fthu4cbJuS/uLvSEiZqvZyqG03DhDKwpcohAdcCNaA=;
        b=VU2WVN1vgP+NTNn1Uvx7/DpTd9Tv1Vtg0p0PKnY5rhSAh10/mvrkj+fGH4oumch1/A
         rH3cteopkCW/wmEh/b65lAT4JXkClniFRAJgANUuZi0ZQ6rskDIhIZ388jpUdWBjRWBR
         aSR6JiBeZ7t6MqzhszMcCDpwCnmAVsnuS5ryo8VoZHTUTzdlPf1iWChCMpJYsteYiHZ6
         449Y2AqE3juVWa3+AQkSC1DIa8gqS5wwRKqtmehtl8eBxC3ZTwlrVylEWzD4eFII5s/g
         lIKDgVnaptr+YnVRkWjFHLu3h4f9T9gZpnOnBR2IFz5tj90sX3eXsHSTVO6oXwwU/HKE
         KlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680292774;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0fthu4cbJuS/uLvSEiZqvZyqG03DhDKwpcohAdcCNaA=;
        b=A98StJnhENSHqltOPXhLWU0bBRg4XSk5cIfd/cC8iGQxxXbBY9Auw8CuLsrH/7enRT
         v+AIoGjfQ55JsTsIMooMxt1eT62imv9xok/MABHuIAVJqwsN5xYdTazpDCu9s3W4fLuU
         bJKTzpQZiVn7aZmX/g9pJeJBs8QfJjBoES0yuHzutdIxgbvQEmbfcp+7QSUncuHv6+vS
         jM4I7gJAaIn2LqvE2oyyjfuPf65J/ctXps4UuXYDmGkzngQjOPbkcj/P2SQJVI0+8TyY
         9rEKhpIhPdiWgc6MBZGa7fbQN/1nStob3JzQMT3wBTNHvKq3gLloCUVHB9ZmGxrsM5ZY
         fLAA==
X-Gm-Message-State: AAQBX9deqCJJH5RKkDaxLDrorzBuBkSf9Ci5AyifdNfq/XAJcUfEdBdx
	OwhCCGeasXjYbqqFVXsFi4r3sA==
X-Google-Smtp-Source: AKy350Z1eZ5ZixhhVDDntJzKXIeve9ucwu9HarPzgmutM/g3sBvxQjGBB7Y1K0y5n3xN/BVZayoAAg==
X-Received: by 2002:a05:6000:1044:b0:2e4:c9ac:c49c with SMTP id c4-20020a056000104400b002e4c9acc49cmr5485342wrx.26.1680292774097;
        Fri, 31 Mar 2023 12:59:34 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:1dc:d1f:e44f:2a1d])
        by smtp.gmail.com with ESMTPSA id c13-20020a5d4ccd000000b002cff0e213ddsm2990286wrt.14.2023.03.31.12.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 12:59:33 -0700 (PDT)
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
Subject: [PATCH 3/5] phy: qualcomm: phy-qcom-qmp-ufs: add definitions for sa8775p
Date: Fri, 31 Mar 2023 21:59:18 +0200
Message-Id: <20230331195920.582620-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230331195920.582620-1-brgl@bgdev.pl>
References: <20230331195920.582620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_125936_339316_29608BE2 
X-CRM114-Status: GOOD (  10.21  )
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
index 994ddd5d4a81..126bd47c3fa0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -823,6 +823,41 @@ static const struct qmp_phy_cfg msm8996_ufsphy_cfg = {
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
 
@@ -1542,6 +1577,9 @@ static const struct of_device_id qmp_ufs_of_match_table[] = {
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
