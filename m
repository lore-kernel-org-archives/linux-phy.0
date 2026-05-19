Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3275CD4851
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLt8shik6sZyZOL2No1pnUGLiWCnLw/JkQVlOkCLdK4=; b=drnL++e46uyqnh
	F06+h+i13daHnWdrI1uux/0b+xyr9HlKxjuMqGHvg2hyHuS9Tqutl6Ep11kCOjaVTz2lLZHFj496/
	c6s9RuY6LxxzZrYtYBhHqxSdGJBpMG9M2M//tf5isdlAdZDuqcCfsIaVzYHmN9ckaYogkVVoQ3iXe
	Y5IiUxT5gtsxqIGOphAxhWE8ipebLetm7QgwWHRKWz27VvLjd4Lqhiyi/R7KeKjB375N4NfsPgr8v
	vFSiqcpURwTX77jptjibvyDy2F/zvgf0UDi6SfHQcc2UjSvQIplOScAGvveIbekMkwdCJFeqcefEM
	qY8dRn2vTjBteUOfJBcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIi-00000000EQc-2k5J;
	Tue, 19 May 2026 05:47:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIg-00000000EO7-10KL
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:31 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J59ngB1251662
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C0GSTBL64LgRqeP391F8PGtCzro2cCQhAPnIDXVHDdk=; b=oqs38DJXyTSw93BZ
	EbEaCCLfC12gFHVmKLvkvbWmmOpe8suAJbK3mxC09bw4re1IJFyhZcDVCgQRX1J6
	xsqATNXqVRkOIgRJSrm+fS7VL2RDpE+f3pqRyhPcI4hp9h7RJTlfwNMRf5hs63Yy
	3pHJM4uwfMg0F3dE9UhmY3WbrKraeni2zdgnM4pTBBlLqMDjmnJnez1CBMrYKjXo
	TTmKnnBBsV+HHj57chjmlrPAiUd1fBhaj1uv2AEpOdZukdDeGirBnpIIFF6Gg7L7
	0doke5M1hjTUJYqF2xvMDZw/REHOqDSBa5CVBIZ1ApLFuuC2wef5TXACNw/lyprX
	DHMHxg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e82c0kj9h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:29 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ee34588671so3657334eec.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169649; x=1779774449; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C0GSTBL64LgRqeP391F8PGtCzro2cCQhAPnIDXVHDdk=;
        b=hMvGYIfDU/mdloMzMxVtWnxnYB15TO3lZyTxm3Ss377mwoOS5BPdMjO5/NcPnv4hTh
         W6VQx2C99lvyVZwdRoJXAki6A4105Z/5AMTp0rELxNXb02gEMDLcEZ+xyWg6BgAjRByg
         /zFqxcSYsB+sK7YWIzfb/Wu4mkPmE/goo0QJqmwS8LwyME3PPEK46RhjAbIfdFxuecdA
         kppThU1IDokSRRqp5RKK/QRoVGMKmElPpZmhN6jlhjnl/2rdQazfgM2h4GyjjjUnM3nm
         0YJHguzA1nxyoOYOGDsNlhKGqFAxcSD67fGv04ZjoJKinkxjAhHW9YD0YImre/c33G23
         dPig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169649; x=1779774449;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C0GSTBL64LgRqeP391F8PGtCzro2cCQhAPnIDXVHDdk=;
        b=n+shD72wIEE4B49iQNGdbJMD00pMdAS5yccbjGwkQkW5iORGcLWz6P96URlgBQHGTN
         zaXBhoPJ1UmejxgpA77GfotPZ9OpsHi7EYDr0+9IKz0dzUTvGK8joR52wd6vkFULbed9
         j8RPYNB+TNdR3HZC1AAHW76/2+FXep834euZSXb/dDaE6LvX1UTRw1XTP2wWzCcvk7yQ
         4txJt6FvDc0SbDfnPX+c7hvOTyjVUaNh4oK2ViYJPXNHQLxi2km8R64jUVXTrudUXED6
         P/re43GH4P/qkyltYnaWTrtRueRV25WOO6l8YqSZTYboycHPY3To0qVdXpowYovMdsbK
         ozEQ==
X-Forwarded-Encrypted: i=1; AFNElJ9q5uABG09GuFY6v+3tqk0fknaKTeWyHhsnK4DSwK4szK6xLajZq1lXMFzPEgrdskovMI/MMSgkDzY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwcxWcAt4eoZcWVVe1bHjGUuoDatjRD2yz4wKZ7ELytZu7jAGPu
	JbkYa0Q2CTlC/AhnZPrxqR8rsJbopHgVvx0ixlHz0SJNzGsw4d+zdtnJypyauGUEo0mEFifDj9U
	IOQeSljy2oWBp/XID5KyXgNIWmLp5ZyxBlDIk8BU3o1mJVM/237hPStNDOuy+ES8SBpCj
X-Gm-Gg: Acq92OE4Tgvy9uVDwggjaAMBdQJlsTNh6SZI0RIrgkUY831QbM/+rVf2QtHKCOqIaR1
	LXSjZ50ei6V7XYyJsaNi4zKvsexXIPhr8GxZzIn4Ta0d9C1/MnOWLNqW2YX/aTeYDl1MgxSyaP4
	9EFS9kxHPbtnUB78Rp/frhvpFYLync4m5AC+DhEHF5albGn9ZcQ+Y8/YU3mvOAG+EKYH1UMY9pS
	e44V8oJ3LQcbsOHyx5J8bn71doZHsGh7Q+KgMjuRu7XKYJJH7M3guqcLbbUbbvutZFVzbHNW6hS
	Sql/C+XapHKlsFQl4NvpBSa6wwHCV6L9z+Pak8KSttZcOR090ILcbTQLsKaa9wYk1TZ+53lSego
	NhX/cjvi/R4XnNWKhYSbcvx+YAzF8PU5PgwhuMtY1vZYrEt7/z7h8Y9KICuVKQvI1ChqqsJi7lM
	kaqvg=
X-Received: by 2002:a05:7301:198e:b0:2dd:144b:6c2 with SMTP id 5a478bee46e88-303986a03b9mr7271836eec.27.1779169649079;
        Mon, 18 May 2026 22:47:29 -0700 (PDT)
X-Received: by 2002:a05:7301:198e:b0:2dd:144b:6c2 with SMTP id 5a478bee46e88-303986a03b9mr7271826eec.27.1779169648521;
        Mon, 18 May 2026 22:47:28 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:28 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:19 -0700
Subject: [PATCH RFC v4 8/9] phy: qcom: qmp-pcie: Add Glymur Gen5x8 PHY
 config and match data
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-8-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=4238;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=e+ge6SFVDXSZrp9sZxMLj4iJXXQDEqpoi4+iUcg4R2M=;
 b=mPxErfRhw0SH57/BJgIP8D86VgsLj1bdZiVnh04jQhF6OAk+fnKRRhEMolsLD2qde6UVaDqBo
 SkCs2S9qWw1CzU1HreTkO/PN8p+uPl5URL/DPRfsbUMGdNFK/BnPWqv
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfX4h5bkTkj3/pf
 2OphnVpQ8oJDyqWthclUd18h9ytuKQke7tE1uyXyaGRsCB6BFlHBsaA73TDtjdLUtPWL6Uflose
 3j8UBR52Q1vwdsPchhaP3/thk4XgyWSczzSRBBH+rrv61ahstPWn6zR7aiwNpkyj+DDw5LFWOUd
 ofZuymkl/ASs4Q1A+sIHPVYusOIMeX+nx0cki52WMxAQ2GxdemVw0+Ie5RY3bhsq31dJoYunhek
 DoVY5Ga6+JOC5OrZBU25y1E/Wo6mP3ZWSs+KYqtVY1UDV3E7uVo4SwFD4cemB32at01RiCnqxC2
 XnA6CgXdaSiEctLAwzQE4qQMM7ojNAMopbZEbqRgrsYT6Pjg4Fbb7cY+pA5VnH6M9aJsCsOjK+Z
 zuzfsTKkl5dByqu1/tJaZwPWMwqbbKfp43QaV92uweTJqfTwnObG/+smd01xUR1EHcTQpvW10U8
 oWg+5y+pzxcbN9mjgBA==
X-Authority-Analysis: v=2.4 cv=A5Jc+aWG c=1 sm=1 tr=0 ts=6a0bf971 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=O3x3ihak103vsextEXgA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: qHsONvVoK5dXOtlQgzhjJI7R5L1WSkrl
X-Proofpoint-ORIG-GUID: qHsONvVoK5dXOtlQgzhjJI7R5L1WSkrl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224730_294571_736CA278 
X-CRM114-Status: GOOD (  13.69  )
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

On Glymur, PCIe3 uses a single Gen5x8 QMP PHY hardware block that can
operate in two link topologies: x8 as one 8-lane PHY, or x4+x4 as two
independent 4-lane PHYs. Both topologies are served by the same DT node
since they share the same hardware block and TCSR mode register.

Per-topology reset and clock lists are introduced alongside the PHY
configs to reflect the different resource ownership in each mode. The
per-mode PHY configurations and match data are then added to wire the
two topologies into the link-mode infrastructure introduced in the
previous patch.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 80 +++++++++++++++++++++++++++++++-
 1 file changed, 79 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index d78d57fb64d6..d4aeb3e00955 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3399,7 +3399,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 
 /* list of clocks required by phy */
 static const char * const qmp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "phy_b_aux",
 };
 
 static const char * const qmp_pciephy_secondary_clk_l[] = {
@@ -4746,6 +4746,81 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const char * const qmp_pciephy_secondary_reset_l[] = {
+	"phy_b",
+};
+
+static const char * const qmp_pciephy_secondary_nocsr_reset_l[] = {
+	"phy_b_nocsr",
+};
+
+static const char * const glymur_pciephy_reset_l[] = {
+	"phy", "phy_b"
+};
+
+static const char * const glymur_pciephy_nocsr_reset_l[] = {
+	"phy_nocsr", "phy_b_nocsr",
+};
+
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_secondary_pciephy_cfg = {
+	.lanes			= 4,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.reset_list		= qmp_pciephy_secondary_reset_l,
+	.num_resets		= ARRAY_SIZE(qmp_pciephy_secondary_reset_l),
+	.nocsr_reset_list	= qmp_pciephy_secondary_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(qmp_pciephy_secondary_nocsr_reset_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
+static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
+	.lanes = 8,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= glymur_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
+	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
+static const struct qmp_pcie_link_mode_cfg glymur_qmp_gen5x8_mode_cfgs[] = {
+	[QMP_PCIE_GLYMUR_MODE_X8] = {
+		/* x8 */
+		.cfgs = {
+			[QMP_PHY_SELECTOR_0] = &glymur_qmp_gen5x8_pciephy_cfg,
+		},
+		.num_phys = 1,
+	},
+	[QMP_PCIE_GLYMUR_MODE_X4X4] = {
+		/* x4 + x4 */
+		.cfgs = {
+			[QMP_PHY_SELECTOR_0] = &glymur_qmp_gen5x4_pciephy_cfg,
+			[QMP_PHY_SELECTOR_1] = &glymur_qmp_gen5x4_secondary_pciephy_cfg,
+		},
+		.num_phys = 2,
+	},
+};
+
+static const struct qmp_pcie_match_data glymur_qmp_gen5x8_match_data = {
+	.mode_cfgs = glymur_qmp_gen5x8_mode_cfgs,
+	.num_modes = ARRAY_SIZE(glymur_qmp_gen5x8_mode_cfgs),
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5797,6 +5872,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
+		.data = &glymur_qmp_gen5x8_match_data,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
