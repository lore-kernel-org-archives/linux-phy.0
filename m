Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 593BBC77B6F
	for <linux-phy@archiver.kernel.org>; Tue, 11 Apr 2023 13:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/Kw/dv/jB8Z96kc6kZgnRFd14iHPP+G9UAhrvjmzlg=; b=OALINTMaJsZtED
	uhUBvuyZmwsDq2WbQDVy/t/Wx1dR6lBy4r669kJ5C38Pinkd+8WohPIDFzJO1P4BG6ja1LTK4UYXc
	nzoStHhcVUHuoR6M1F4Ra19UwyVf4qJHtBP2vtXUTWzKf/u3ed/FCCawSoKJYvoBi/Pv6/7X/8VzU
	y06/JBdI+/UzPvCYELObNm2bPpujhur9Dotpcl/BxSm736HfXMVeRB2kiLSj33Mf+9aktgiSW+kRz
	XDwjYF6gSivU2AvVroFUpWzWQ9bMKaC9T1F8PJjac1Max42t8m/854/DfG0vVWlqrawSSbc83sU3s
	wSbuas5M0ZLRGb7+dPiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg9-0003YO-37;
	Tue, 11 Apr 2023 13:04:57 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmDg6-0003VE-0q
	for linux-phy@lists.infradead.org;
	Tue, 11 Apr 2023 13:04:56 +0000
Received: by mail-wm1-x32e.google.com with SMTP id eo6-20020a05600c82c600b003ee5157346cso5985095wmb.1
        for <linux-phy@lists.infradead.org>; Tue, 11 Apr 2023 06:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1681218293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eibFHvIgf05QKZ/3r3/eY9NPHy7GReZl9L/HNNvsxXE=;
        b=OjTJrHqjKnFcNtpxu+Jm5Qtw20XraHvEi7KW4YG5WJitLaThv138G8Ep+/ASeVEEfd
         ZDzqG+0RKLyMV9AZ2qtySMtce1bsorkt6nZviZVcsAtar6uLGjiVWx8MrKLJNy4ypnPb
         Fpn/DFqZ6iSw5WivvMhw3yhYLSMH2PHW+rULdXOXoyxGUB1V8Eq1sKGFGZnxApLpso+n
         yStFXsdWBkAHp4Zzthp04LtHgkXfp0esJVy01GetuGeyMFPFPApmQ2GrxPhimjrL4gW/
         P0mhTEbTDTvpjysE52MK0egEkotIv4w4+lfyGn42Hu6rbwYDLinBb2rfMpvxTGT2r+50
         wqxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681218293;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eibFHvIgf05QKZ/3r3/eY9NPHy7GReZl9L/HNNvsxXE=;
        b=AcYPChvgxFuWCNXV2rRLmCyXJDa23Z9A/VXw0p0nEl850RziChl0xz4fyFihSYhwnV
         nQh+58XFM2FPFFGEtej6RFhsUaK7NtKxDOsO71BRZA1/phHnlko/oiIvVWI/rRcxwpal
         norIoF5QGAxMlOcL3ILQZ50yp9XULws51knEHNQ91w5nYA/H+xOoMgM3hdt/ih89W8YO
         vCOkZR5fAuanmbyN4Sz5e1EaNw8r/2RelmDK1otlfWEttjL5Wb1ZSELeX1MRliliRVpx
         FSljQCTbFjk5DNjQ3OiioBwKKwRQzeINLyeJ72gCa2lYRNAmjklI24SPM3YBnUNdd8bD
         Or2w==
X-Gm-Message-State: AAQBX9cnPFyrkEIs54avphk0uRnYlF0ZPtTH6yJ/ybyR6FJUT2XyinSO
	txYafjIIFDspay8+jPHk67xXzg==
X-Google-Smtp-Source: AKy350Y/qWDD9jhMANGr002s2sMLeY1mCemNlu5GVy1e0LrfnYLry4tLbyvabwhYt2bJmEutw+9mJQ==
X-Received: by 2002:a1c:ed02:0:b0:3f0:7dd1:8e4b with SMTP id l2-20020a1ced02000000b003f07dd18e4bmr8941221wmh.6.1681218292676;
        Tue, 11 Apr 2023 06:04:52 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a099:fc1d:c99a:bfc3])
        by smtp.gmail.com with ESMTPSA id t6-20020a7bc3c6000000b003f04646838esm16921301wmj.39.2023.04.11.06.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:04:52 -0700 (PDT)
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
Subject: [PATCH v3 3/5] phy: qualcomm: phy-qcom-qmp-ufs: add definitions for sa8775p
Date: Tue, 11 Apr 2023 15:04:44 +0200
Message-Id: <20230411130446.401440-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230411130446.401440-1-brgl@bgdev.pl>
References: <20230411130446.401440-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_060454_300720_0F7EDB10 
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
