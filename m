Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F2E9CAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH90BJlD75QcnMMDvc6icO5lUODN22C/dt2SewWzGA0=; b=SRKltOzlqPt9op
	sprHxAdPQBgs+7N2hWRPcc1wcgor96JzynFy3gYFxnnbwjW+4b0yES59UHFMxslfbLGR3fNhNlJnN
	DaciM0NCESsJZ8HJGgxIQTC0nbLdeVim+wDuZ8H2axenj3ofazUXNtvMNJTpuKebACYcsxHXkUm52
	31rPRpPyEMU7sbhyGUDXB73sqO2lbtngvoA+VZnkRgAvoFzZJHmnsTQSe+WEt9vvUKT6yz5svre5Q
	7H3nUO5UqNMjCaOfhhV/bMbLXK1gxWq3Mi3huvMbf/62A3pCs3mZFeTTbjE6U3x5DOyamMuHqhsHe
	OJSOTN9dusl9u1oPVSsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiiO-00000003hV3-0b9D;
	Thu, 11 Sep 2025 14:56:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiiL-00000003hTZ-1zd4
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:55:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BDYWnF002451
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:55:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yj6L58xwnl408i85N6AVkTYY2VfPx4sT2ZTdfwp/cHg=; b=Dwnw78TqB3/qxMr7
	2xvh+jOzRYgF2B3/DPw+zjLr8JSvUmEeCSmOhHYbdN1KwWoUeFPP5H24rEeGNtFk
	CObYPmlCGoPIAhQsyAtFtaxjF2Vc5qtOATmW5klZgqQc5YShIZ4XBxhSiH5oG4bP
	5jUmUs6363VUCTOrCMa0Zm8uJFrcdEwnu3IFpw4T3EN9/RxxNsHSq4bzGeGcXRDe
	ZGsPxZfa+GaBvfMui/jyOYZLK9BoM1Bxhavt5TI2OCggwPJx5i+3DdmfD/U0bO2V
	Dh/Y4BG9KshXILbiPmWlyllyZI4ksk1siFVZ7Si0Izk5d6guXJhL0RGc9Oi/Lsu+
	Vbd+dg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493ydv0b8f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:55:56 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329df266fe2so222584a91.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602555; x=1758207355;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yj6L58xwnl408i85N6AVkTYY2VfPx4sT2ZTdfwp/cHg=;
        b=i3jjgMjnXBeBu1I8qG2WVt4ceLVT3535gQ/gZ0awuXdLHqsGduMZTrPB6276ti4uJg
         BcR2lgSIjrOtOPLTpduiyEVn8YsJw//E1Z8ppSP1Ycr+SOD4cS6nq58po9PqDlcDAHKU
         M+uK0cX9DhzlpgHZKJRAROtDEj5qURrGHa1Zp8OvJbJFUDPoATl7bsTFrznYu/3y3qW9
         V4fuYFj8xIPZEgoMTuzo/Vgi43q/1cbRwLnlnXPGHhZ0LgOHcpzd39Zzv0Hq3fTxQDQP
         gQQPpjn7whZYLbeo8bJwdaqQPVfMqHpP4OP1mwbxOt9lvskvpexzrz+rAAqn/QMEghOi
         0l+w==
X-Forwarded-Encrypted: i=1; AJvYcCWM0r3SOhy8FAnZfmqDw61OGbBKT2ThIiBSoqiV1kGfyA0VgHucluZ+PA/JnLMfJOxxAxrLTosEQRI=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOGFENv1PilT23qJrJ2DKffnrB0oQgetf4AnW3tQib29ZK+8Kh
	xEk2xrKJTD5aXy/ozwZX/6J25IlC9WwUPuTPFMUUKQxtMZ5FXHoSj6lH8pja7E9t6Setg6d3vzR
	4x6SHY2ERl77ClkDBjg7oOMLmtJPl7otF9bkKcaGaonwY7KhmTFkLFfbCy7/jEZQbZit3
X-Gm-Gg: ASbGnctwGMGB85eU1KnN1MbVQtnNIcoHko0BzeDxSKoqfKMYAa+ftfWRToFUMDvo6Ba
	2Ya6PiAibCgImlQATmTkTr2nVrZxosia5QB8BhrPFjcqPORm+suKdHxpARcLqHeEMxNrdgU2fwK
	nYlQ0lodaZ5otaSwlRY0bz/+Pr3y6Aem86OX1xfuHQkqeptsCuFFYVOP/tsvX+9wsHndSQYV62W
	XMcW+BX0+77Esi10QjWWjyjGxuajC3OqLxJtt6h04zJN3iuIjBdRAmpSjLEx5PHvt3CIzIM6uGH
	xh3PvmPsKrcraJBbxbHuYW5guU9yVajH12pwzzCaAwk0mB3wovUDpCaF/vwQfxbdxRqrbOzriEB
	6wqUcLP/aKobhTDc5a3Vj41LFjbEFETG/SWAvG/jKuv3/bAb/25zLhcUw
X-Received: by 2002:a17:90b:17d1:b0:32b:4c51:628a with SMTP id 98e67ed59e1d1-32d43fb18dfmr13671115a91.8.1757602554886;
        Thu, 11 Sep 2025 07:55:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSF0u95PMC40wmGcQT8D474kYHcmFyGjeWgeP2uLbuzJLRPPy3g0ruE1l/NyUdy9AtHv34Ng==
X-Received: by 2002:a17:90b:17d1:b0:32b:4c51:628a with SMTP id 98e67ed59e1d1-32d43fb18dfmr13671091a91.8.1757602554372;
        Thu, 11 Sep 2025 07:55:54 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:55:54 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:00 +0800
Subject: [PATCH v4 03/13] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-3-2702bdda14ed@oss.qualcomm.com>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=3912;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=7+KyniYQTJ+9G3oqOiRpqeMGFIBrJBIyusIP4VdRaxk=;
 b=DZMpi5unXPCafzFW8cKQEPg+NAoZ8HMSlQCoFHZsiNctl7mZcEIdfdbbHbFCF5e3h1hXNi3T2
 NRHO3m64nqfAuLqIKQUqrMS3KA18+vrmGif51fpbuOmGYa6QEJtix5+
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDEyMCBTYWx0ZWRfX2Eim1I8zVcWY
 cFaUqqkVDTX1mDwvZEDDGE3Vhv1raXNdEMpzvHbSuDrCeLyyqp+Vug9dsDPlKq8uv25pJFxtnPa
 Tw51ZNsMg36DXUoIIVjVX0BvsSszLnOrXGUSO8wYHsGvt/j4i/l1znxnhdt/vDxW2UUzs1Q1W5f
 eYelaTwEJfW51YejrO45JNIRs+Cb4fcPxN3xHy5U78HauLrulVUXW/wlEl2tb5xrnyphyaFHdpr
 bjfaSO1jp/FQybz7Kbk7GGHsJgUOYbg0KBP6+Mvr2M9ia9NB1zOWPJDLtQPh0kK9884neEmglQB
 3RDxsOFjewWi+str+ytNmSut9KUASf56sJAlSLAlSOv5nbX1uLDsZkK1uw2CuPBHT66gb7aGmUk
 KqJar3B8
X-Proofpoint-GUID: 4vj9yoWytbA3QjvYyLd3j7GE6djuhBLx
X-Proofpoint-ORIG-GUID: 4vj9yoWytbA3QjvYyLd3j7GE6djuhBLx
X-Authority-Analysis: v=2.4 cv=LoaSymdc c=1 sm=1 tr=0 ts=68c2e2fc cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jm3WsR2aq1IkTfYpOVcA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075557_640447_F944D523 
X-CRM114-Status: GOOD (  16.52  )
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

Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
including register offsets, init tables, and callback hooks. Also
update qmp_usbc struct to track DP-related resources and state.
This enables support for USB/DP switchable Type-C PHYs that operate
in either mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 54 +++++++++++++++++++++++++++-----
 1 file changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 62920dd2aed39bbfddd54ba2682e3d45d65a09c8..de28c3464a40ea97740e16fe78cba4b927911d92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -293,13 +293,18 @@ struct qmp_usbc_offsets {
 	/* for PHYs with >= 2 lanes */
 	u16 tx2;
 	u16 rx2;
+
+	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
+	u16 dp_dp_phy;
 };
 
-/* struct qmp_phy_cfg - per-PHY initialization config */
+struct qmp_usbc;
 struct qmp_phy_cfg {
 	const struct qmp_usbc_offsets *offsets;
 
-	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
+	/* Init sequence for USB PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
 	int serdes_tbl_num;
 	const struct qmp_phy_init_tbl *tx_tbl;
@@ -309,6 +314,27 @@ struct qmp_phy_cfg {
 	const struct qmp_phy_init_tbl *pcs_tbl;
 	int pcs_tbl_num;
 
+	/* Init sequence for DP PHY blocks - serdes, tx, rbr, hbr, hbr2 */
+	const struct qmp_phy_init_tbl *dp_serdes_tbl;
+	int dp_serdes_tbl_num;
+	const struct qmp_phy_init_tbl *dp_tx_tbl;
+	int dp_tx_tbl_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
+	int serdes_tbl_rbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
+	int serdes_tbl_hbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
+	int serdes_tbl_hbr2_num;
+
+	const u8 (*swing_tbl)[4][4];
+	const u8 (*pre_emphasis_tbl)[4][4];
+
+	/* DP PHY callbacks */
+	void (*dp_aux_init)(struct qmp_usbc *qmp);
+	void (*configure_dp_tx)(struct qmp_usbc *qmp);
+	int (*configure_dp_phy)(struct qmp_usbc *qmp);
+	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
+
 	/* regulators to be requested */
 	const char * const *vreg_list;
 	int num_vregs;
@@ -329,24 +355,36 @@ struct qmp_usbc {
 	void __iomem *rx;
 	void __iomem *tx2;
 	void __iomem *rx2;
-
-	struct regmap *tcsr_map;
-	u32 vls_clamp_reg;
+	void __iomem *dp_dp_phy;
+	void __iomem *dp_tx;
+	void __iomem *dp_tx2;
+	void __iomem *dp_serdes;
 
 	struct clk *pipe_clk;
+	struct clk_fixed_rate pipe_clk_fixed;
+
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
 	struct clk_bulk_data *clks;
 	int num_clks;
 	int num_resets;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
+	struct regmap *tcsr_map;
+	u32 vls_clamp_reg;
+	u32 dp_phy_mode_reg;
+
 	struct mutex phy_mutex;
 
 	struct phy *usb_phy;
 	enum phy_mode mode;
 	unsigned int usb_init_count;
 
-	struct clk_fixed_rate pipe_clk_fixed;
+	struct phy *dp_phy;
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	unsigned int dp_init_count;
 
 	struct typec_switch_dev *sw;
 	enum typec_orientation orientation;
@@ -689,7 +727,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->usb_init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -709,7 +747,7 @@ static int __maybe_unused qmp_usbc_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->usb_init_count) {
+	if (!qmp->usb_init_count && !qmp->dp_init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
