Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E116C6FD1C
	for <linux-phy@archiver.kernel.org>; Sun, 26 Mar 2023 02:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+i0B66M90659sMbvledsLPm/Nv+vgYTJ26mqTBXhgo=; b=LqroE1n+/tbty1
	IWCulzWcJOOO0TX9TfJ4kjw81FbsMeSeR15VoXGP4rNvYn1i1R1m0OdmZNF0vHRzmzdG6C4aPiRT9
	UcOZfngffVOBRPSatjSgNc0kKcUVgnQnv//TzDuBvK1+j2PD6wYZSllw3V7IiPVvnH318K+IMprcv
	OvfjA2hEetDwLomy+euBtzkjvhA+yL1levNgxybKi70bzUvyLQgSZg4xJ14Dnr68geL3W5bo8w2Y0
	nSTYxPUI/wZIwqeEU+97xIvrKwY68pghuSpOLdsUOlPqaY7hFXhpU+X07nF0BU6ZdwLlPhFmshOXf
	HXCVGI4ivXM4+8PvKsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgFhi-007pXr-20;
	Sun, 26 Mar 2023 02:01:54 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgEhX-007jpf-0S
	for linux-phy@lists.infradead.org;
	Sun, 26 Mar 2023 00:57:41 +0000
Received: by mail-lf1-x12f.google.com with SMTP id i13so6922422lfe.9
        for <linux-phy@lists.infradead.org>; Sat, 25 Mar 2023 17:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5B5p67y65ESS4CL8epSYsp4FkekQxX3QZ+z+dOdDv/w=;
        b=UFGWF/a8V10uMhsDxlEHLKDWbGAbpEmm4+wgDdUu66M58ZE0RI4dUGBMB9splX0zi0
         tsMx6/1dXuFijp64UTcrEBMeF0pYpqOQmZe44OfFtbmA07+ceYbmnIHp2CeXDYVxR7II
         kMN31CDnGleNSq4uk/8zNJkc0D4fJ9fnqAGNT49IWMR6vkCg9vLb8NrbV4GjcZvJvJCz
         C4BS8EKSHDtLk3+XYLB+DuJCnvmVcbfFML7R+vL8fVRD/N1BsjYGmENNgVrmuMmE/521
         K0baO1tD0RILT2Z2kp083UT7SrA9yGLCS2YWCPFcnEuyoWidnft4UDGhR4QCOLPZGVdV
         tkPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5B5p67y65ESS4CL8epSYsp4FkekQxX3QZ+z+dOdDv/w=;
        b=BWOdreFcGi53u5jhM1J7llrSHLq+EZMh5bp6vfzdWob+bVUGlqwYixgsjBqXUm0Bxu
         LuDsRuDVvfay+KAtbiu80bEks9A8jpJM29o0q1xYgafVEeH8Vv7v/itvyNHecMIGbn2q
         CWrn9tDBy2JdvcuGa1K7J9/7uvIXs4f6kzzwy7WdAhlgI6gHu+SwmhfTUXNRuB9D1p27
         2cNDIWufbc/YWBLrH5xqidaEhK+BlcxfRzmcuDQuoTy+DLBqWR0DeQwscjfUzBbCcc4z
         O4yzYLMh2FUJMdFaCYQx/5kx2iOpzWCIh0flfXfEOiSTRw1XPWjQxkliR8euSUaKgwQR
         Is7A==
X-Gm-Message-State: AAQBX9eA6Y151sksp6OMN3tmsLUtyDmZXI3ycREy90z3LoOWbu89SEaF
	LMkxR0Cm+7faowvD/P2XEQfmxA==
X-Google-Smtp-Source: AKy350agoMi6ZJubBmXXPZj7qS2kcxhe+rQWgpQQr7df8yAxsD+6WzeSRF5Zhxj4i/s2VYMbRBNfVw==
X-Received: by 2002:ac2:568f:0:b0:4cc:73ff:579a with SMTP id 15-20020ac2568f000000b004cc73ff579amr2028911lfr.38.1679792255507;
        Sat, 25 Mar 2023 17:57:35 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 2/9] phy: qcom-qmp-combo: simplify clock handling
Date: Sun, 26 Mar 2023 03:57:26 +0300
Message-Id: <20230326005733.2166354-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_175739_185824_FCA65D54 
X-CRM114-Status: GOOD (  17.89  )
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

For new binding we are going to drop ref_clk_src clock and always use
ref clock. Rather than introducing additional code to handle legacy vs
current bindings (and clock names), use devm_clk_bulk_get_optional()
when new bindings are used and devm_clk_bulk_get_all() when legacy
bindings are in place.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 67 ++++++++---------------
 1 file changed, 23 insertions(+), 44 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 6850e04c329b..d35d80f2a4f4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1263,9 +1263,6 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
 	void (*dp_aux_init)(struct qmp_combo *qmp);
 
-	/* clock ids to be requested */
-	const char * const *clk_list;
-	int num_clks;
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
@@ -1307,6 +1304,7 @@ struct qmp_combo {
 
 	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
+	int num_clks;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -1365,19 +1363,10 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 }
 
 /* list of clocks required by phy */
-static const char * const qmp_v3_phy_clk_l[] = {
+static const char * const qmp_combo_phy_clk_l[] = {
 	"aux", "cfg_ahb", "ref", "com_aux",
 };
 
-static const char * const qmp_v4_phy_clk_l[] = {
-	"aux", "ref", "com_aux",
-};
-
-/* the primary usb3 phy on sm8250 doesn't have a ref clock */
-static const char * const qmp_v4_sm8250_usbphy_clk_l[] = {
-	"aux", "ref_clk_src", "com_aux"
-};
-
 /* list of resets */
 static const char * const msm8996_usb3phy_reset_l[] = {
 	"phy", "common",
@@ -1451,8 +1440,6 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
 	.configure_dp_phy	= qmp_v3_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v3_calibrate_dp_phy,
 
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
 	.reset_list		= sc7180_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1496,8 +1483,6 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
 	.configure_dp_phy	= qmp_v3_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v3_calibrate_dp_phy,
 
-	.clk_list		= qmp_v3_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1543,8 +1528,6 @@ static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1591,8 +1574,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.configure_dp_phy	= qmp_v5_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1636,8 +1617,6 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
 	.configure_dp_phy	= qmp_v3_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v3_calibrate_dp_phy,
 
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1681,8 +1660,6 @@ static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
-	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1731,8 +1708,6 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
 	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -1781,8 +1756,6 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 	.calibrate_dp_phy	= qmp_v4_calibrate_dp_phy,
 
 	.regs			= qmp_v4_usb3phy_regs_layout,
-	.clk_list		= qmp_v4_phy_clk_l,
-	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
 	.vreg_list		= qmp_phy_vreg_l,
@@ -2487,7 +2460,7 @@ static int qmp_combo_com_init(struct qmp_combo *qmp)
 		goto err_disable_regulators;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
 	if (ret)
 		goto err_assert_reset;
 
@@ -2540,7 +2513,7 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp)
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -2785,7 +2758,6 @@ static void qmp_combo_disable_autonomous_mode(struct qmp_combo *qmp)
 static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 {
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
@@ -2797,7 +2769,7 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 	qmp_combo_enable_autonomous_mode(qmp);
 
 	clk_disable_unprepare(qmp->pipe_clk);
-	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	return 0;
 }
@@ -2805,7 +2777,6 @@ static int __maybe_unused qmp_combo_runtime_suspend(struct device *dev)
 static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 {
 	struct qmp_combo *qmp = dev_get_drvdata(dev);
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	int ret = 0;
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
@@ -2815,14 +2786,14 @@ static int __maybe_unused qmp_combo_runtime_resume(struct device *dev)
 		return 0;
 	}
 
-	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
+	ret = clk_bulk_prepare_enable(qmp->num_clks, qmp->clks);
 	if (ret)
 		return ret;
 
 	ret = clk_prepare_enable(qmp->pipe_clk);
 	if (ret) {
 		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
-		clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
+		clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 		return ret;
 	}
 
@@ -2893,9 +2864,8 @@ static int qmp_combo_reset_init(struct qmp_combo *qmp)
 
 static int qmp_combo_clk_init(struct qmp_combo *qmp)
 {
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
-	int num = cfg->num_clks;
+	int num = ARRAY_SIZE(qmp_combo_phy_clk_l);
 	int i;
 
 	qmp->clks = devm_kcalloc(dev, num, sizeof(*qmp->clks), GFP_KERNEL);
@@ -2903,9 +2873,11 @@ static int qmp_combo_clk_init(struct qmp_combo *qmp)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		qmp->clks[i].id = cfg->clk_list[i];
+		qmp->clks[i].id = qmp_combo_phy_clk_l[i];
 
-	return devm_clk_bulk_get(dev, num, qmp->clks);
+	qmp->num_clks = num;
+
+	return devm_clk_bulk_get_optional(dev, num, qmp->clks);
 }
 
 static void phy_clk_release_provider(void *res)
@@ -3273,6 +3245,12 @@ static int qmp_combo_parse_dt_legacy(struct qmp_combo *qmp, struct device_node *
 	if (ret)
 		return ret;
 
+	ret = devm_clk_bulk_get_all(qmp->dev, &qmp->clks);
+	if (ret < 0)
+		return ret;
+
+	qmp->num_clks = ret;
+
 	return 0;
 }
 
@@ -3283,6 +3261,7 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	const struct qmp_combo_offsets *offs = cfg->offsets;
 	struct device *dev = qmp->dev;
 	void __iomem *base;
+	int ret;
 
 	if (!offs)
 		return -EINVAL;
@@ -3312,6 +3291,10 @@ static int qmp_combo_parse_dt(struct qmp_combo *qmp)
 	}
 	qmp->dp_dp_phy = base + offs->dp_dp_phy;
 
+	ret = qmp_combo_clk_init(qmp);
+	if (ret)
+		return ret;
+
 	qmp->pipe_clk = devm_clk_get(dev, "usb3_pipe");
 	if (IS_ERR(qmp->pipe_clk)) {
 		return dev_err_probe(dev, PTR_ERR(qmp->pipe_clk),
@@ -3358,10 +3341,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_combo_clk_init(qmp);
-	if (ret)
-		return ret;
-
 	ret = qmp_combo_reset_init(qmp);
 	if (ret)
 		return ret;
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
