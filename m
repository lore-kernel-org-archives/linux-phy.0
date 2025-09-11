Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2629CCAC593
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8885g4KSzUGMdNlFvq+ZnIiffgbvli9TXNoCOKvGiY0=; b=ijWPbxoo56Z9Ur
	d7fkuUlvZ0SNg610xhhSqzyHNr84kesZu0OT0DceptyKuh5sZJbHRfplvAYJJ+jRYsWK6GeJ9cyBu
	vX3J+tadYIyAFkZvXwFp2YUlXBdYVs/O0ZDiJKQd9+wzbwoC+pHsIk444acC4tlNXny1HYXZptTlF
	9E6M3Xmn/DJtFWRsV+xHsuFc9UZCxngzDV39+HbQ2NwyFOaW45ZU6KaT+/TVMor/2gRkr9f0V+phL
	1MrK+EqUbl7m+O4Tl0Zw6sohAuGU4USOvUWvoz5vmoy9P+ioOpq4jPb9Nxp3yZ4ULOWjY+LNGpyY9
	4iRcZHXppjKBxxWyUm7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiiZ-00000003hd7-3mwM;
	Thu, 11 Sep 2025 14:56:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiiX-00000003hbq-48TU
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:56:11 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BBEHIV016304
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Qf33+rpkqechNWLDM2iiocmjqpmdnUS1R/bV4PaBr7I=; b=IHffhLmg2Kp2S1GF
	7NUgB/aDIyENtgUzLBLy8UoNfDSsBtPFix49uLYfl6TVmX/cHQf0YsRk3X73Lhz1
	vcv/Ep/kjrtWH2iT/mUGrjm9LwrbSnjXsrftCu7HtCblXHGjoUHm0UHN/ciuWde8
	CMlON4E42Rz8WJFdB/ZrszPDwJ5LGpOox+3gVo/gPKPUCSQ/GywSj92C2rHaVJfB
	/evQ1AM+dOT5rdzFm8HoUwrLxjaOJDB+VEpBjJ1VylR6vaExAJbwCn3vR2ewTRdY
	HTF7gSyZYah0cR12KyO9S191LjFqkbYyvKo8QH4gs+kM8HBb9JrsU/bNlR7hrhCy
	XuWrZQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t384kc6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:09 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471740236dso36612a12.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:56:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602569; x=1758207369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qf33+rpkqechNWLDM2iiocmjqpmdnUS1R/bV4PaBr7I=;
        b=ocQVqjIJRTLm/9yrxexBR5QAB4BPAKkJxhjhZ8dqSRVDnW6JdDCaroX6XoZ+p+iRIo
         OMwCy5CGTh/85nAnWYIEW1BGwE+w6LDKlKLLP2zhDbXtuyXvOGgAqREr3CNqPtIyL+Oq
         QZwwjhTcvW7/hmCBUFHQ2cYWj7HUlKgVkOPcqkUxxnU1wSMO/jaLnynM18Ov9z24w2Uz
         etDtTS9bJsxKT1HqTZ6wbNj0rg/Bw8WcN/3zIAlfzqzMSRq9LvAZtY/7ckeFcDwKiNZ4
         64rYMVXOJYtJVF3JWAj3R4zxX5Yg9kos1pPfaXNVmVj2V4tEY3uUWDR7SIGccd9rPifV
         p1ZA==
X-Forwarded-Encrypted: i=1; AJvYcCV6+q+JIFku6KRfzQXm7g8Dk6TcwUpLxaku2ckBbpKz4Mujqq315jNIcdpQuDLIdVgrxXmRsxZCnp0=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVXwmbFsk0aKFzt7vIQ+NfmCb52GH/+o/z1UFW0dKOh0eOsR+j
	/QzcYdYcFW8+e0E2pjHRutBdctFfblR3vjLeyenrtKK43/ypPefE4CfJfiZm5qCb7I6f8OWySNZ
	PFcgAQRpoETKs+W0FUpPBFtdX3W/+hgh7G0RSTS5hrcrvh+6Q0pIxglQJ0i/NZEfcKYus
X-Gm-Gg: ASbGncu4uOabT8iNZp5j87UbYCJ1PLU3HXcXpie/hzbfmL+NVbdCiUYML60N/SyTy3s
	0Aib0+uY3qeXNHZpFJ1Kct5S9u4k4qdVjaAPr/QzY0PeEEszkVhPyHoq9G0OkrHV3a1ealaSK4M
	FyA0edTc3d/3yIfUZFahm466D/UBE10o4I/hxHAvDsJJvDmkET9rkXa6g1vb7CVKkmawRP/foY/
	1RkK+Of9JN2EW7VTzjMHyFQ+LPpNPNYnp/RKBXRxTg83xIO69NDB4c/OYm3so+LUcTs0hTTE6D+
	4X5wVDMBFBXLjD3PlYtetJmsGLs+0gektLzKIPUMZx1YJEAhxntJ2szoEbnqnruwss+Eu1tsCVG
	e3uVryXzR1IRmWKIDkQbEEGmVvOGc9dNfVMhRZEaRY2GopnQZn6R+/oVW
X-Received: by 2002:a05:6a20:3c8e:b0:249:ba7b:e358 with SMTP id adf61e73a8af0-253466f7f0dmr16784911637.7.1757602568313;
        Thu, 11 Sep 2025 07:56:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzOKHmMadDOEhXme38l/SgVEjQSf03G6ln8D6mZepsc9zXZZEmfprR+eGiQM7vxndfPtt00Q==
X-Received: by 2002:a05:6a20:3c8e:b0:249:ba7b:e358 with SMTP id adf61e73a8af0-253466f7f0dmr16784879637.7.1757602567620;
        Thu, 11 Sep 2025 07:56:07 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:07 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:02 +0800
Subject: [PATCH v4 05/13] phy: qcom: qmp-usbc: Add regulator init_load
 support
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-5-2702bdda14ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=5710;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=Ka68iZ0YAPLqx39F2bkX9DO9L1BfCDXGkrO3CFDr1Y4=;
 b=/ZWVMXETRYCmYdA8o6t2MnLwpgwvcWgvtvLKQLXtulERXXssTrM8ZB2ekpiJCe6sF3eIQ5bs8
 k1596YGMfx3AcWiYQkCCQAZUjlVIOjpNMsbccZosgJojGzZ/aSeLQ9J
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: heFmTtVdxyO-_EKUetqTdwnZIzNnH1eu
X-Proofpoint-GUID: heFmTtVdxyO-_EKUetqTdwnZIzNnH1eu
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c2e309 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RNflNDmReaz8n2eeux8A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX6nR0b6W18Pq9
 ow6iC8+P+Wh4DWImL7Ul6HFPLuCvB+zpbZWBIytqGyQJ2KC7+iTsKl6PCcpDiz2sLofevEyC9UI
 leDtpZrqy1yN75++Ni7jDzhNxRFW0DXKKzdDScSY6nDse+gAfPQVzkrryvtQ6eny50nxGUDTSb+
 t+hqgTPjNM9dX4SvSRJDKcS6mGLGGojiXqu2Nwi9hhhdjO7tTlprPCHcPK8eYHf8bA7/GidnALD
 lOQLamm/Prt8SCzN+/YqDtQP6ecFqRFMqJ7cP573F1ZkL13clQXcS+JnlJsR8oLQPTypXcFRkNj
 8jOtyqZrYkK2zMQARuPTNabMN8nsBNVe+HCauPlYgfPb1O2HkM5V+3bQuAbq9cNOuXumlBu8KZI
 aAG8nBUv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075610_038868_882BEB95 
X-CRM114-Status: GOOD (  18.29  )
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

QMP USBC PHY drivers previously did not set init_load_uA for regulators,
which could result in incorrect vote levels. This patch introduces
regulator definitions with proper init_load_uA values based on each
chip's power grid design.

QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
regulator requirements differ. A new qcs615_usb3phy_cfg is added to
reflect the correct settings.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 70 +++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 791c7d86c51769bc9c7c5e1c73603c87fc71a820..23a0efa7fc4418f379ac4c02fd92080c7755dead 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -416,7 +416,7 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
 	/* regulators to be requested */
-	const char * const *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -508,9 +508,19 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
-/* list of regulators */
-static const char * const qmp_phy_vreg_l[] = {
-	"vdda-phy", "vdda-pll",
+static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 68600 },
+	{ .supply = "vdda-pll", .init_load_uA = 14200 },
+};
+
+static const struct regulator_bulk_data qmp_phy_sm2290_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 66100 },
+	{ .supply = "vdda-pll", .init_load_uA = 13300 },
+};
+
+static const struct regulator_bulk_data qmp_phy_qcs615_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 50000 },
+	{ .supply = "vdda-pll", .init_load_uA = 20000 },
 };
 
 static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
@@ -562,8 +572,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list              = qmp_phy_msm8998_vreg_l,
+	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
 };
 
@@ -578,8 +588,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_sm2290_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -594,8 +604,24 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_msm8998_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+};
+
+static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
+	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -627,6 +653,8 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 
 	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
 	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
 
 static int qmp_usbc_com_init(struct phy *phy)
@@ -911,23 +939,6 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
 			   qmp_usbc_runtime_resume, NULL)
 };
 
-static int qmp_usbc_vreg_init(struct qmp_usbc *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
-	int num = cfg->num_vregs;
-	int i;
-
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
-
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i];
-
-	return devm_regulator_bulk_get(dev, num, qmp->vregs);
-}
-
 static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
 			      const char *const *reset_list,
 			      int num_resets)
@@ -1235,7 +1246,8 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_usbc_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(qmp->dev, qmp->cfg->num_vregs,
+					 qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
@@ -1304,7 +1316,7 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 		.data =  &qcs615_usb3dp_phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
