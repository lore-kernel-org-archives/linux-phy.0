Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1829C87FCC
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRwTlDX12uCXMCAacRQTZu2pk2hFinG3GdRS1apC4jg=; b=xjUCsMqKL3hfoK
	A4zJT8IhLfxyRBDsd8nciC1McmJBW7pAwRZrau/Ge8Ainh2t73Bn8ycJL7qgeIViDxGfPMHUiL9Q+
	5lFxgRIzX5JHMOg5R4eZplUjd3wG5wHN+La21CRCmYz0naSJ/cS/7n8UJHwnHiVLae+BPJs/TKget
	WiSOt7q51UVfE5CynX4VOWZrNGklr5DmPaBODF+68r4atPXcml3rikEYcrWm+aWujEJZJA7HtzvX7
	nVB1svEbZZvNtl3sAkXKK06mEsMR0mzWYvQvauwLkBgVr5oF7+H38/WZg3iy6rJVAKcnSqEKvQY+3
	l1ZVYb3UeDTGJiSSdk1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Lf-00000001cax-2eLU;
	Tue, 22 Jul 2025 07:23:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7L3-00000001cIN-1EHH
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:23:02 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M15uHY016274
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YZ4FgzCJdzXTZ68oWJfU94gpKDzF/Xt5MxzpGoR2lPo=; b=n6+Xs1t7W7KzG/B1
	PAhr0SZg0iBIDLsAbPrX2Zwk8Wr4lya+C2+5+OdnzpDd43Z/erbgMbXCuEuBLieQ
	waICVPJGZEP40CEnOJ/Xt2PGic2xUN9+phA3jiZnCfD7rkKscpsbalAoD78O1JuI
	E2hGhJ78zHD3ycHeOLq8Zp7/DU3zWGJa/+Q+BBTT//nxGlgTX6ccW2QNCK02azuD
	G27CI1HVGaN66n/3FsNAoafNreRB0PGEzL9LoyD8+Vke+HLcDDD0Eh5kILUaI7Rg
	n5rbB372Z+LxwLDwSt6GEEx18Gm5Yvq2dNTsQC5oeqXLoYPDhhpyj9tGN6o6UO9J
	3pT8/g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s0hrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-311d5fe941eso1624396a91.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168979; x=1753773779;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZ4FgzCJdzXTZ68oWJfU94gpKDzF/Xt5MxzpGoR2lPo=;
        b=sVmdSmmRA+ItcEtv8jaASLOrliq3UUv5FN+zZuUsQmU5N3uTNHCvzMVDxNdVuBwRYT
         UtLh1mqEj3/pBEqr6A+SnQ08UeigoioYfZk6yr/nxHoC051SuE5wYJbwgRviIokYzIMZ
         KX1zd3/ruqxh6lvZoUW8IbCb1NxzLHcBL81EKWeUQI14dIPDU+Hs5qmm6sIud9SdmlrE
         3L2EWLBKwtt0MijE5P/ScJ6RX8Q60h7wFyWm4ji1dgbyakOTYNzh9ZVDFjVp83tWPu0n
         nVqZynTb2/1ckbHTIaA4NUx02CP9zGWPwHXHCMjEhkHHFizrqnHr8QOEXW/hrYoyGc8e
         bO1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXGrehDxjQnnwHrrxT33b0Yow9WlyYNCAcRIBziQinArQG/cl4aJJTEefMRupKQ6FhhEXPGiDO/nA0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUJ+hqljg+0MyoRkByFvoJ6Uur+nxzmeQi1ElrPheTWsTD4HkZ
	5CvWU7zgWamlp1o1NGR64uoI02UOhd4GyW0+664Uo5m23jVeaPp8ojrFXs+koXhF6E1xqqM/pom
	FnyJvs/4gRdVZi02YsQJytbFaghA8A9h1GNacaWafbMMKVClB58G4Wnrexh6A8EXsfNzt
X-Gm-Gg: ASbGnctjpn+2xZnimtECcHMOC+4ZJPrv95NXroqrdvXwSWmN2MlfNl9nCpuRJw0cQ50
	DOLkICzig3j+w5WkuJW/dhx2wTcIqKKL6VddGKyKniBGnuraATd5niiG3lWCens6UkTAbv/ibmE
	0jNOeKGW0FPvDhl+/apJx6zbqNliZOH0PU59mnthvHNwneb5x9M08b81KLQsDSPX2L16u4OZLkd
	cWR0mAc33HlmAl6XL/Lmux8E0fiYWGS9XBLwvH2F0/qhOWNoZJrbA7rVT8Y0mHlGICJ8kiIsPoy
	JprtSYXlprXlpEg0zvFdDI7oPy9pTAO2dk8l5MBMaK5KjNQm/OU3/9hIPIlG5REqGtwiC4j6Obe
	JYzsQP9m0DhfodV69Etz0MHqdyeoQKPuNVc9/4/6BL9Dho/eUCoGAM4zr
X-Received: by 2002:a17:90b:518d:b0:312:ec:411a with SMTP id 98e67ed59e1d1-31c9e76ae7amr13792188a91.3.1753168978869;
        Tue, 22 Jul 2025 00:22:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+RLb9NbCc3+jcSeXV7HScdHKbTZCeU1tAR9/nK43lPZ6TFTvGxTPW2EvCOjgTdwguI8na1A==
X-Received: by 2002:a17:90b:518d:b0:312:ec:411a with SMTP id 98e67ed59e1d1-31c9e76ae7amr13792158a91.3.1753168978262;
        Tue, 22 Jul 2025 00:22:58 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:22:57 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:06 +0800
Subject: [PATCH v2 05/13] phy: qcom: qmp-usbc: Introduce PHY type enum for
 USB/DP support
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-5-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=10901;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=A/33KDRt3oDK4NDO2X2o64L+cjx2DofT19gj6OCqf7g=;
 b=YDREKYRUTca7/pvK1h3Q1whlAfi6sY4u2iLzec2J+rRH4GEmAsQfi5xA6MykrceM7premjvzW
 8+2lZrRHeNLCOStdaoVpXGAY81dSnFd33BOhziX5Gq3z9TGWcw3TP/u
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXzh+iB2Bb2yea
 tM+XP9zGXMVYlhgvcxv1to3/+OdXIAwLb1q3c/7Jjf0Z5OJfom0AGoB1RxMei1zUY1yStst+LXD
 4+2E5C7paTiN7tB/y3CbahHetIrP/5v3WBe5ZFD8E/zw541+3d/R9xHspJSJ3D1wGV/K+YonmHK
 hpIe1rJk8nbD5xnnhRo1epMNeGEiVxaM3IGyIWcTXAwyHIJcRgIBU2jHUvQmIQ4L3C5ZasV9tyH
 N2D8h4FvTHmvMTtfYzPZG90G8ft4wPfjxMXNADcnLMdJVZqT7RVb7rYQl2PR6ij00bwot2fDbBC
 BA9FVBnKLcHlJQw+KCW6hutqhQTpgiUaAxgWYFQG17kQFEBEwqpje4SrTR3t2N6QChmsCnD4GlO
 CIXpPW+SKl2gNKSGBXsNAhioWOtxuprkXJoS+uPtKHs88dF5rE2E1hKMsSK+KKDVIWrrSw4K
X-Proofpoint-ORIG-GUID: r8JoAoYvUl8h_ampeCKcPes1beeO2R_t
X-Proofpoint-GUID: r8JoAoYvUl8h_ampeCKcPes1beeO2R_t
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687f3c54 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=lpKKpq6P2_pQO93rLgIA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002301_462771_2F8C251D 
X-CRM114-Status: GOOD (  20.86  )
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

Add `qmp_phy_usbc_type` enum and a `type` field in `qmp_usbc` to
distinguish between USB and DP PHYs.

- Introduce `qmp_phy_usbc_type` enum with USB and DP types.
- Update device match table to associate compatible strings with type
  and config.
- Wrap existing USB-specific logic with type checks to prepare for
  future DP support.

No functional changes and serves as a preparatory step for adding DP PHY
support.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 195 ++++++++++++++++++++-----------
 1 file changed, 126 insertions(+), 69 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 078752dbc66f9b9844c003e7755fff6466ea1d6c..647e2f54b744bf099ea667e672c606dd7aef3bcf 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -286,6 +286,16 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
 };
 
+enum qmp_phy_usbc_type {
+	QMP_PHY_USBC_USB,
+	QMP_PHY_USBC_DP,
+};
+
+struct qmp_phy_cfg {
+	int type;
+	const void *cfg;
+};
+
 struct qmp_usbc_usb_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -454,23 +464,40 @@ static const struct qmp_phy_usb_cfg sdm660_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
+static const struct qmp_phy_cfg msm8998_phy_usb3_cfg = {
+	.type = QMP_PHY_USBC_USB,
+	.cfg = &msm8998_usb3phy_cfg,
+};
+
+static const struct qmp_phy_cfg qcm2290_phy_usb3_cfg = {
+	.type = QMP_PHY_USBC_USB,
+	.cfg = &qcm2290_usb3phy_cfg,
+};
+
+static const struct qmp_phy_cfg sdm660_phy_usb3_cfg = {
+	.type = QMP_PHY_USBC_USB,
+	.cfg = &sdm660_usb3phy_cfg,
+};
+
 #define to_usb_cfg(x) ((struct qmp_phy_usb_cfg *)((x)->cfg))
 #define to_usb_layout(x) ((struct qmp_phy_usb_layout *)((x)->layout))
 
 static int qmp_usbc_generic_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
-	struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
-	struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
 	int num_vregs;
-	unsigned int reg_pwr_dn;
 	u32 val;
 	int ret;
+	unsigned int reg_pwr_dn;
 
-	num_vregs = cfg->num_vregs;
-	reg_pwr_dn = cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL];
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
 
-	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
+		num_vregs = cfg->num_vregs;
+		reg_pwr_dn = cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL];
+	}
+
+	ret = regulator_bulk_enable(num_vregs, qmp->vregs);
 	if (ret) {
 		dev_err(qmp->dev, "failed to enable regulators, err=%d\n", ret);
 		return ret;
@@ -497,8 +524,12 @@ static int qmp_usbc_generic_init(struct phy *phy)
 	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
 		val |= SW_PORTSELECT_VAL;
 
-	qphy_setbits(layout->pcs, reg_pwr_dn, SW_PWRDN);
-	writel(val, layout->pcs_misc);
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
+
+		qphy_setbits(layout->pcs, reg_pwr_dn, SW_PWRDN);
+		writel(val, layout->pcs_misc);
+	}
 
 	return 0;
 
@@ -513,13 +544,18 @@ static int qmp_usbc_generic_init(struct phy *phy)
 static int qmp_usbc_generic_exit(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
-	struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
+	int num_vregs;
 
 	reset_control_bulk_assert(qmp->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
-	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
+
+		num_vregs = cfg->num_vregs;
+	}
+	regulator_bulk_disable(num_vregs, qmp->vregs);
 
 	return 0;
 }
@@ -650,7 +686,7 @@ static const struct phy_ops qmp_usbc_usb_phy_ops = {
 
 static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 {
-	const struct qmp_phy_usb_cfg *cfg = qmp->cfg;
+	const struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
 	struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
 	void __iomem *pcs = layout->pcs;
 	u32 intr_mask;
@@ -698,18 +734,20 @@ static void qmp_usbc_disable_autonomous_mode(struct qmp_usbc *qmp)
 static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 {
 	struct qmp_usbc *qmp = dev_get_drvdata(dev);
-	struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
-
-	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", layout->mode);
 
 	if (!qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
 
-	qmp_usbc_enable_autonomous_mode(qmp);
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
+
+		dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", layout->mode);
+		qmp_usbc_enable_autonomous_mode(qmp);
+		clk_disable_unprepare(layout->pipe_clk);
+	}
 
-	clk_disable_unprepare(layout->pipe_clk);
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	return 0;
@@ -718,11 +756,8 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 {
 	struct qmp_usbc *qmp = dev_get_drvdata(dev);
-	struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
 	int ret = 0;
 
-	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", layout->mode);
-
 	if (!qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
@@ -732,14 +767,19 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 	if (ret)
 		return ret;
 
-	ret = clk_prepare_enable(layout->pipe_clk);
-	if (ret) {
-		dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
-		clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
-		return ret;
-	}
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		struct qmp_phy_usb_layout *layout = to_usb_layout(qmp);
+
+		dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", layout->mode);
+		ret = clk_prepare_enable(layout->pipe_clk);
+		if (ret) {
+			dev_err(dev, "pipe_clk enable failed, err=%d\n", ret);
+			clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
+			return ret;
+		}
 
-	qmp_usbc_disable_autonomous_mode(qmp);
+		qmp_usbc_disable_autonomous_mode(qmp);
+	}
 
 	return 0;
 }
@@ -751,20 +791,28 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
 
 static int qmp_usbc_vreg_init(struct qmp_usbc *qmp)
 {
-	struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
 	struct device *dev = qmp->dev;
-	int i;
+	int ret, i;
 
-	int num = cfg->num_vregs;
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		struct qmp_phy_usb_cfg *cfg = to_usb_cfg(qmp);
+		int num = cfg->num_vregs;
 
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
+		qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
+		if (!qmp->vregs)
+			return -ENOMEM;
 
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i];
+		for (i = 0; i < num; i++)
+			qmp->vregs[i].supply = cfg->vreg_list[i];
 
-	return devm_regulator_bulk_get(dev, num, qmp->vregs);
+		ret = devm_regulator_bulk_get(dev, num, qmp->vregs);
+		if (ret) {
+			dev_err(dev, "failed at devm_regulator_bulk_get\n");
+			return ret;
+		}
+	}
+
+	return 0;
 }
 
 static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
@@ -1061,6 +1109,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	struct phy_provider *phy_provider;
 	struct device_node *np;
 	struct qmp_usbc *qmp;
+	const struct qmp_phy_cfg *data_cfg;
 	int ret;
 
 	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
@@ -1072,39 +1121,45 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	qmp->orientation = TYPEC_ORIENTATION_NORMAL;
 
-	qmp->cfg = of_device_get_match_data(dev);
-	if (!qmp->cfg)
+	data_cfg = of_device_get_match_data(dev);
+	if (!data_cfg)
 		return -EINVAL;
 
 	mutex_init(&qmp->phy_mutex);
 
+	qmp->type = data_cfg->type;
+	qmp->cfg = data_cfg->cfg;
+
 	ret = qmp_usbc_vreg_init(qmp);
 	if (ret)
 		return ret;
 
-	qmp->layout = devm_kzalloc(dev, sizeof(struct qmp_phy_usb_layout), GFP_KERNEL);
-	if (!qmp->layout)
-		return -ENOMEM;
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		qmp->layout = devm_kzalloc(dev, sizeof(struct qmp_phy_usb_layout), GFP_KERNEL);
+		if (!qmp->layout)
+			return -ENOMEM;
+
+		ret = qmp_usbc_parse_vls_clamp(qmp);
+		if (ret)
+			return ret;
+
+		/* Check for legacy binding with child node. */
+		np = of_get_child_by_name(dev->of_node, "phy");
+		if (np) {
+			ret = qmp_usbc_parse_usb_dt_legacy(qmp, np);
+		} else {
+			np = of_node_get(dev->of_node);
+			ret = qmp_usbc_parse_usb_dt(qmp);
+		}
+
+		if (ret)
+			goto err_node_put;
+	}
 
 	ret = qmp_usbc_typec_switch_register(qmp);
 	if (ret)
 		return ret;
 
-	ret = qmp_usbc_parse_vls_clamp(qmp);
-	if (ret)
-		return ret;
-
-	/* Check for legacy binding with child node. */
-	np = of_get_child_by_name(dev->of_node, "phy");
-	if (np) {
-		ret = qmp_usbc_parse_usb_dt_legacy(qmp, np);
-	} else {
-		np = of_node_get(dev->of_node);
-		ret = qmp_usbc_parse_usb_dt(qmp);
-	}
-	if (ret)
-		goto err_node_put;
-
 	pm_runtime_set_active(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
@@ -1115,15 +1170,17 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	 */
 	pm_runtime_forbid(dev);
 
-	ret = phy_pipe_clk_register(qmp, np);
-	if (ret)
-		goto err_node_put;
-
-	qmp->phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
-	if (IS_ERR(qmp->phy)) {
-		ret = PTR_ERR(qmp->phy);
-		dev_err(dev, "failed to create PHY: %d\n", ret);
-		goto err_node_put;
+	if (qmp->type == QMP_PHY_USBC_USB) {
+		ret = phy_pipe_clk_register(qmp, np);
+		if (ret)
+			goto err_node_put;
+
+		qmp->phy = devm_phy_create(dev, np, &qmp_usbc_usb_phy_ops);
+		if (IS_ERR(qmp->phy)) {
+			ret = PTR_ERR(qmp->phy);
+			dev_err(dev, "failed to create PHY: %d\n", ret);
+			goto err_node_put;
+		}
 	}
 
 	phy_set_drvdata(qmp->phy, qmp);
@@ -1142,19 +1199,19 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 static const struct of_device_id qmp_usbc_of_match_table[] = {
 	{
 		.compatible = "qcom,msm8998-qmp-usb3-phy",
-		.data = &msm8998_usb3phy_cfg,
+		.data =  &msm8998_phy_usb3_cfg,
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcm2290_phy_usb3_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcm2290_phy_usb3_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
-		.data = &sdm660_usb3phy_cfg,
+		.data =  &sdm660_phy_usb3_cfg,
 	}, {
 		.compatible = "qcom,sm6115-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data =  &qcm2290_phy_usb3_cfg,
 	},
 	{ },
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
