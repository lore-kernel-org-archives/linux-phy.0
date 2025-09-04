Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77777CA1015
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 06:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hDfDYEHMR8zwzm2RgR6Abx+0RUNhnzEbdQXFHdxS1E=; b=0y5XS4Y7Li70YT
	X1BSXNZ2x2deX1fQlhX6jb/wrYJ5lGBzykAA+5rfckwpDibmfxKqG1BRnGMKfFi38BvSu+Mwd48Ye
	SyynBYU3wPtYt9S3BvHadgcdT2xwOvzBHUl3dGlDvnW56Ew/Qyg88qDQpOTvFHVHWbK4x0xtGM9QZ
	haw3ZbWwBtCSniMFkOOZOt5nTlthG1BhDPWLbwUuQ0RUdEresKXfmiuVdq6lK+SZZd9cPKeGVxM6Z
	9Yp+YCcBCwXPANqrdq4cJZmBlYh6qMdPX+yR7dJlSGh8wLRBRGfeKoGw9nlwu+dNVeuEgGLGM4qsB
	w8rmpwk4Vlyj+3JiDQrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tW-00000009gK1-13QF;
	Thu, 04 Sep 2025 06:56:30 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3tT-00000009gIB-3221
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 06:56:28 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3dad6252eacso345157f8f.1
        for <linux-phy@lists.infradead.org>; Wed, 03 Sep 2025 23:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756968986; x=1757573786; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iuWa/TU+jCKequWuceGeCu2kioVsaALaGs2DgkR7OiI=;
        b=cwy7WFFwO6zfq3aVc69oevHn3CfeTzz1U/ybI6WIMB+kmBmfAVD/vGk6PsG0V3PuVq
         U8nEKC0ziebgRa1ox0IAvLG1K58EjY838lqDEdqGcqTkz5o3dfpLm3rivPK+na1Q6IA1
         Y29F2BkZbl7JLqajENmygFVL4yXT4AlNbrTcL8IWtPf7NrLUXT1JiiFbwOYuPfRnAZa4
         gwbthJFLHhNo9Ynp28zohm36PjP46wph2NhVjBKaTQ8+hu6UB9FqQ5vAFZZyhhD6OMew
         XcwIVP7srgYZFohPC3nsN3rSgubbPXM2/F1O82YpClkbS/zHmKvbgbJfkbAbA3DUHlxa
         K8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756968986; x=1757573786;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iuWa/TU+jCKequWuceGeCu2kioVsaALaGs2DgkR7OiI=;
        b=h9FnzaSBX5rbtv4nn/Wp47cvn4chU0E3mR/o3Ef4LYWerdcqASJkA9H/GS1vqqcRWF
         bVnChB7u8vWSWIirp/KcN3BNsVy8L6Gt2dauBsHQ1xp19yuZxAoQS7iuntXMzv46UpBi
         pHp2JIzfxN1UNSdkCiQEcGbUcf4nflBC+ZtoBPoBt0kR6m9dK3egWdNgatKoypy6z8NR
         Vmst/XBUcWadf7+d3e4L2d3LLvhB9svCAXjQ/DB8/YrZRIQ5eskd3z0bvw58LKbj0Izx
         oiyojTzYe5cXO33nlewhcnrNBFEevWVTZq/nPiNh3U3Zox/uBJGBpfETct4o8f7nQqml
         BSKA==
X-Forwarded-Encrypted: i=1; AJvYcCUeeMF/VKpU1PeopVcDYLdhX16/DmdUnzooQugENRK3fgr676P95ogiVn9vVJGcWgXcwVaGHRom8so=@lists.infradead.org
X-Gm-Message-State: AOJu0Yypc/3B/m7AwSQbz9pD9xlN0B6r3IbPjqQOI+8O+D8kwi0ZNboW
	uo9k+4TxtmqVrST+0QNw6jO5U0lP3MXoLig1FHttztHlbwqhLpRQW0UcK8vO4kzr6aI=
X-Gm-Gg: ASbGncsJ5LqetnNPkTI5TQ5K9U0v9d1vVEw3YgqoWl75F3I6NqRsOE7JiZRR2wq6dDW
	NDFHKE+ScyWYb5kJErBYiyyIvqKnnSF04RxZ5E8WvQMYayUB3bDHgPJNR7yKkwKdxTr8nrZylhM
	ay2RJL90t1NcTMIppiDO7g7pE61UX8e7upE9zmVxPyk911Bm1i377DZ1+mPdVGEJxAJDrvWWaei
	ImOrcf0q8NAEYgAszqmNcNya3HP3CPnQ9lm3DLjsnhGIAxIZbeXI1iMUF1wZ7w318p8t7viDBJS
	crm1CJdTHS32Gzhf/u29HeFomrNz3j48PiNKRlCZeRNgr7LNHIKH009qnsuShmj4F+vCvczOV+L
	R7MffaDNXqLR+stBMRkbC/XoDtgLP/Gl2AQ==
X-Google-Smtp-Source: AGHT+IGZcOQmL7QDDiQf5uiqGROnu/ur6py/GIqo6bRLjxu/5sY/Q4fqFg8GKpIxdF5jT/ziSXFakQ==
X-Received: by 2002:a05:6000:2384:b0:3cd:ac2b:7f0 with SMTP id ffacd0b85a97d-3d1def61f55mr11300684f8f.49.1756968986068;
        Wed, 03 Sep 2025 23:56:26 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d701622b92sm15256075f8f.58.2025.09.03.23.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 23:56:25 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 04 Sep 2025 09:55:53 +0300
Subject: [PATCH 3/3] phy: qcom: edp: Add Glymur platform support
MIME-Version: 1.0
Message-Id: <20250904-phy-qcom-edp-add-glymur-support-v1-3-e83c6b9a145b@linaro.org>
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=13462; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=srebaxDv3eZJ3Yn5QEdqdMvmUTaVbZloO57dCUSYXak=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouTgRgAN4hAbV4ZOmc33+OmGfaLXBmYCk+Kvd+
 RiIB5LGl8KJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLk4EQAKCRAbX0TJAJUV
 VovpD/9OvHlxnwtUWXo367Losskrr81TZQxUS7pGnkp5abwlhIRkQf3B65I6ti5Y535Vyl7XWIy
 uJtOiOstGYLS4P09KbsK0cSWnsqBkT6CkkMs2LeQFnBXxWi7oqQadMxh+Bgppd7VFAT51BPwerm
 kzBGvidicXT+UpUMAD0YZpqUPFOmEwlVfayYT1y1HpdAKEfXt1VPlKLMWsnwK/vEFe7Zj4VXltE
 tAFXtClNYrChgDm5WGfmCAPozHkTrt/cVp2HFsuNdHp7Biof/WC3JwHHXqkgWltqXxcN3frgAtU
 kTk6UwORgyk/Yi9TyEEI9p+gfmLLkii6tFSTq5HhlCpntjlw6lkoco6cGgOelcSOW4RhZDqWh4U
 CNEPcP94yF+Qm7YjBOp27PtjhqniZRruhTeDI+XJxzDxQf/PmJRL+BDMBstYiSe2A9WNy/ad+8R
 dPgs01QqO/vLeFticouvsBp4/QzF9eezlaFSUla5pJD4irnPvEYqXCyuiSvr9Qi+4WqLAEzKc5V
 Km3IdwDY6nhLlQHSZVM2vG2nd8lgfxSryTCMtC9GaIfUld5RYbG9v5Sv6nz3JDjNsDqksWSPR9A
 hg+stA+UgbbPxuIomRXsLtdFim9+HuTed9+nhg/vNfskzdJtMRXiLfm4CawdbdCly9uEwI0Fz7J
 1/t9WYM6TnsmggQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235627_773796_94F069D4 
X-CRM114-Status: GOOD (  18.55  )
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

The Qualcomm Glymur platform has the new v8 version
of the eDP/DP PHY. So rework the driver to support this
new version and add the platform specific configuration data.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 239 ++++++++++++++++++++++++++++++++++--
 1 file changed, 232 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 116b7f7b4f8be93e5128c3cc6f382ce7576accbc..26af8d8db4d765ce35132a0fd092f8c8634e43d6 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -25,6 +25,7 @@
 #include "phy-qcom-qmp-dp-phy.h"
 #include "phy-qcom-qmp-qserdes-com-v4.h"
 #include "phy-qcom-qmp-qserdes-com-v6.h"
+#include "phy-qcom-qmp-qserdes-com-v8.h"
 
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
@@ -32,7 +33,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058
@@ -76,6 +77,7 @@ struct phy_ver_ops {
 	int (*com_power_on)(const struct qcom_edp *edp);
 	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
 	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
+	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 };
@@ -83,6 +85,8 @@ struct phy_ver_ops {
 struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
+	int aux_cfg_size;
+	const u8 *vco_div_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -185,6 +189,10 @@ static const u8 edp_phy_aux_cfg_v4[10] = {
 	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
 };
 
+static const u8 edp_phy_vco_div_cfg_v4[4] = {
+	0x1, 0x1, 0x2, 0x0,
+};
+
 static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
 	{ 0x05, 0x11, 0x17, 0x1d },
 	{ 0x05, 0x11, 0x18, 0xff },
@@ -199,6 +207,14 @@ static const u8 edp_pre_emp_hbr2_hbr3_v5[4][4] = {
 	{ 0x0d, 0xff, 0xff, 0xff }
 };
 
+static const u8 edp_phy_aux_cfg_v8[13] = {
+	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x4,
+};
+
+static const u8 edp_phy_vco_div_cfg_v8[4] = {
+	0x1, 0x1, 0x1, 0x1,
+};
+
 static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v5 = {
 	.swing_hbr_rbr = &edp_swing_hbr_rbr,
 	.swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
@@ -224,7 +240,11 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		goto out_disable_supplies;
 
-	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
+	memcpy(aux_cfg, edp->cfg->aux_cfg, edp->cfg->aux_cfg_size);
+
+	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
+	if (ret)
+		return ret;
 
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -252,7 +272,7 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	for (int i = 0; i < DP_AUX_CFG_SIZE; i++)
+	for (int i = 0; i < edp->cfg->aux_cfg_size; i++)
 		writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
@@ -345,22 +365,22 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[0];
 		*pixel_freq = 1620000000UL / 2;
 		break;
 
 	case 2700:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[1];
 		*pixel_freq = 2700000000UL / 2;
 		break;
 
 	case 5400:
-		vco_div = 0x2;
+		vco_div = edp->cfg->vco_div_cfg[2];
 		*pixel_freq = 5400000000UL / 4;
 		break;
 
 	case 8100:
-		vco_div = 0x0;
+		vco_div = edp->cfg->vco_div_cfg[3];
 		*pixel_freq = 8100000000UL / 6;
 		break;
 
@@ -398,6 +418,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v4(const struct qcom_edp *edp)
 				     val, val & BIT(0), 500, 10000);
 }
 
+static int qcom_edp_com_clk_fwd_cfg_v4(const struct qcom_edp *edp)
+{
+	return 0;
+}
+
 static int qcom_edp_com_bias_en_clkbuflr_v4(const struct qcom_edp *edp)
 {
 	/* Turn on BIAS current for PHY/PLL */
@@ -530,6 +555,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 };
@@ -538,16 +564,21 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -555,10 +586,37 @@ static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
+static int qcom_edp_phy_com_resetsm_cntrl_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + QSERDES_V8_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V8_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_clk_fwd_cfg_v8(const struct qcom_edp *edp)
+{
+	writel(0x3f, edp->pll + QSERDES_V8_COM_CLK_FWD_CONFIG_1);
+
+	return 0;
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v8(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x1f, edp->pll + QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
+
 static int qcom_edp_phy_power_on_v6(const struct qcom_edp *edp)
 {
 	u32 val;
@@ -724,6 +782,139 @@ static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	case 5400:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + QSERDES_V8_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + QSERDES_V8_COM_SSC_ADJ_PER1);
+	writel(0x6b, edp->pll + QSERDES_V8_COM_SSC_PER1);
+	writel(0x02, edp->pll + QSERDES_V8_COM_SSC_PER2);
+	writel(step1, edp->pll + QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 div_frac_start2_mode0;
+	u32 div_frac_start3_mode0;
+	u32 dec_start_mode0;
+	u32 lock_cmp1_mode0;
+	u32 lock_cmp2_mode0;
+	u32 code1_mode0;
+	u32 code2_mode0;
+	u32 hsclk_sel;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		hsclk_sel = 0x5;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x37;
+		lock_cmp2_mode0 = 0x04;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 2700:
+		hsclk_sel = 0x3;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x07;
+		lock_cmp2_mode0 = 0x07;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 5400:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	case 8100:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + QSERDES_V8_COM_SVS_MODE_CLK_SEL);
+	writel(0x3b, edp->pll + QSERDES_V8_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + QSERDES_V8_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + QSERDES_V8_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + QSERDES_V8_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + QSERDES_V8_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + QSERDES_V8_COM_PLL_IVCO);
+	writel(0x00, edp->pll + QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + QSERDES_V8_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + QSERDES_V8_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + QSERDES_V8_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + QSERDES_V8_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
+	writel(0x96, edp->pll + QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + QSERDES_V8_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + QSERDES_V8_COM_LOCK_CMP2_MODE0);
+
+	writel(0x0a, edp->pll + QSERDES_V8_COM_BG_TIMER);
+	writel(0x0a, edp->pll + QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(0x00, edp->pll + QSERDES_V8_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+	writel(0x00, edp->pll + QSERDES_V8_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(0x01, edp->pll + QSERDES_V8_COM_VCO_TUNE2_MODE0);
+
+	writel(code1_mode0, edp->pll + QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
@@ -732,12 +923,45 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
 };
 
+static int qcom_edp_phy_power_on_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + QSERDES_V8_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
+	.com_power_on		= qcom_edp_phy_power_on_v8,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v8,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v8,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+};
+
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v4),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
+static struct qcom_edp_phy_cfg glymur_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v8,
+	.aux_cfg_size = ARRAY_SIZE(edp_phy_aux_cfg_v8),
+	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.ver_ops = &qcom_edp_phy_ops_v8,
+};
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -1141,6 +1365,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
 	{ .compatible = "qcom,x1e80100-dp-phy", .data = &x1e80100_phy_cfg, },
+	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
