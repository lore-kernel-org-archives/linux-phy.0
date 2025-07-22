Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE9AC87FCD
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4R4q+EsR4O6kd8gz6UxRxMfniaC4wMFukYtxjhbkkhU=; b=RxjLh3nnK+4faY
	Q/4M4bMIDH1psQ7WPW3jKoyS3Askmckdx+X9AV0yF9fSvx2f64B2cc6ZN51kSYNwnQJgAK3NOu2JQ
	v2qwFkuKu9ZrL8+IQcyiOdFeIQovISx3wUV3iBn58Y+flrBB/jpUJ5ajfAWiM0lr4Gjvt5LOCGb8g
	NvOXG9w6DnsFit9JeYTRG8To53wRzcr7rP5rJAjPok+b6caSRVhpU/swwMDk/QEM6FW0brcQv7xih
	Hu11BHIxWN1ijuiuebtLlQ4/w97qwfc8P8atIR+P7xST8d2RXPTp3pxUEwU+gisaNAwC1Lmy3iUEt
	Ve9cRg9D1MFRm3g2rqBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Lf-00000001cbV-3tkR;
	Tue, 22 Jul 2025 07:23:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7L9-00000001cLy-2nkE
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:23:09 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LMIRHm012733
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VT8b7qBDokN3MLpgkXbIZ23nfVJk/VqcFfWtXlYFuaI=; b=kwv7lJepHxwqBdSh
	fR3I4mzVGm22oceU8lIkqzW5kRgOiwxqOced/r5H7s0QRllLwdeLBwmej/D9zDbq
	NHfS6vUIrOv9iAfx9cD4ny0/QpEbaoLs6z1LAGNvhV7CLDJxIKcyIyVcSkEAK84h
	7ZNNfHaCwEL4arT65gRVDgszJLjdxYo7ecfWSxPla7v8WCskQIHo7kMBpMODxuqj
	U8ibXXNFNk6PtfqH+uE9K37TFAhGfG6jRcI9UobZpomP4LxqtMRhFZNpyxhXjiSn
	ziP77f5GHpYk9uJvs/3NwESnnRfEron8MpKYLUG7tKH1yoQUdZLNLx10vnrgPCS7
	L6WRRQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6jsb6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:06 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-311e9b4d254so296391a91.1
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:23:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753168985; x=1753773785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VT8b7qBDokN3MLpgkXbIZ23nfVJk/VqcFfWtXlYFuaI=;
        b=uTNvKo+oa8YABV/5C8svFBQ4Eup6jCnSCl+5DEHXMJyen1lEJpmFTTZAKHco8l49NK
         1KEPFiOKC987Xtv+y9+d6sjBhhGUhP3dlPqnOvQF+9xiCIxNtRaZcJELIvXEwtI8Xqp4
         EJzh/eDDr7tz1v2WSQl5L67uSoK+ngnSZhnmNV0tF7IllKl/DN6Br4qTnA+i78txlhFd
         BvZE+2W5AR8Orvx1na9uIqwGJmVJjrGb1Gezp5b4lXdeaGRsUjqNi+mJyrMsNpWpJjU5
         La/A/2CCo61KrQQ8E2TYd+bMKFIzfWggRy8Triss6SfD1m6YJeAKzQki4ZZXlDQor0Ts
         UqFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQFpkcJ8H9rjazGbFpyJCYce/piKB3BxI+yHFOBnh6ui7L9G2vYuu7uguFwoTEJwacI8GB7b2iaOU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4I9HeUxUddggPtDwbua5YI+FHM02MNGOu4IEGFt1mMFk8hv//
	PJbbxEErtL43gNsSmF2Fg4yobTBz7uJJU1LO8c1X0hfVbpIyezXzlEUqhFaR6APNWTYCQO+hsrZ
	B4BmUyKpQP8He1mGHqm8rBd2ORJqX5CYCoz4VGZGPSgoYxnYQXAjfNLHp4Tm8iwJsOZ+K
X-Gm-Gg: ASbGncs3Su37KbvTXJ6dm3WoXCO1eKpkMdDLT1OhDwwaHHpKQiyPeRAwmxn3siX9gRR
	IcWp55R42fgBnZ3hfHQ3+wt5geNe6Qxhy3UWjnMpwgCTxIiH+5N10PD3Rk7+gX55LUpcMNayX2/
	75ZLR3bh1t7tjBtV47ujX4xsZgT2DTRmkriqkndObP9KeUeB8r18B0qx9UT5ZajHU13UsPkGhib
	ohuM3N0rOTrx4+hHEWyw2lB6auBY04a9c45fuEAFvRiWCN3X1t7E3YzMXYeJVLAgbxLORUEqbAm
	fFpbDcbCetdW97zxz7n3XdsvGkO5sanqjqp+gfacEqXZsw8eKuFbniZbdGxacd/xenLp03deJEa
	2r0/rvl/3KmOh2f2YYroCxbLjnn0lHY6QtYgFKus3zyEtHTeyhMp440Ik
X-Received: by 2002:a17:90b:2b50:b0:314:2d38:3e4d with SMTP id 98e67ed59e1d1-31c9e77383cmr12638595a91.3.1753168985252;
        Tue, 22 Jul 2025 00:23:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsYuvflrRFQOjPT9Kd44yOZC4H81PfsHvY7KycJKf8BF5a4xjLlYXRHnJJenqyoUqbLnUukg==
X-Received: by 2002:a17:90b:2b50:b0:314:2d38:3e4d with SMTP id 98e67ed59e1d1-31c9e77383cmr12638574a91.3.1753168984765;
        Tue, 22 Jul 2025 00:23:04 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:23:04 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:07 +0800
Subject: [PATCH v2 06/13] phy: qcom: qmp-usbc: Add DP PHY struct
 definitions
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-6-42b4037171f8@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168937; l=3659;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=fKOEEn238gPnE+qsS8pCjAlw+CFDdTPuR+fL/yjRTNg=;
 b=zV1gjcxy8pY51xKllTd6Tt7ApQk1amC4wRL9m2Mh/bQnoFpYUnlZaE44CklCsZyMugCPsWIJf
 +QI5UeioP8dAZyd+472EtsKsTcY/DUvabnbohnR8aXnf35DgkeCjXEQ
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687f3c5a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Wh4CJP1ljwJP8B485oAA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: qhgLRS4dVLXGQm0m6oWzn5nIJiBCVMEc
X-Proofpoint-GUID: qhgLRS4dVLXGQm0m6oWzn5nIJiBCVMEc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfX3no1XqiU4KtI
 Ajk4hu9q1p27ARjP8zVwb8OO+p/cVNKscpKUS8vPh4VETE/dsig3cejz7v07DS4A0iFXqPZjHuh
 /akJRZRuQwdgWSOAPK8UXpkltJazQJNqS28eNwHmjXhIGSy3fTyx9ttCu9nmZyC3XHf2jDyIVQK
 Lw8IiDZ7Pzj+N9KQDmQWqGiHyvI8dY2T2dCaLw2XK/nk6J4tjhsslk10trmBIumLfhv/qs6/IXo
 Pu8eZB3e8TObD0ySJ7f4XhqpyarO85dwD03giCwtlAi67rT3R7hRH8Xqt70Tn9o8cq+53lzx9MU
 PKtGS7P81qaYBQDI5xl0JhOMvEhdp/XRlPCcSzjqiX3YmmOLXbw2iYnGH72yDj4CLKq7TpJVIhx
 /2NPmKAlEX8u8ugPsFaimOe0KtZz3TS5Ee4bxvZzdKwkVOW8yW1DTLvOJv5qKuLUYQs42ReX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002307_824470_53433473 
X-CRM114-Status: GOOD (  15.40  )
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

This patch introduces new data structures to support DP functionality:
- `qmp_phy_dp_cfg`: Platform-specific constant configuration for DP PHY,
  including init tables, function callbacks, swing/pre-emphasis tables,
  and regulator definitions.
- `qmp_phy_dp_layout`: Runtime layout for DP PHY, including mapped
  registers, DP options from driver, and dynamically configured clocks.
- `qmp_usbc_dp_offsets`: Platform-defined base offsets for DP
  sub-blocks.

These structures mirror the USB counterparts and enable clean separation
of DP logic.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 70 ++++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 647e2f54b744bf099ea667e672c606dd7aef3bcf..bc0eaa7dba9cb84b54c7c5a264aac613f888cb99 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -291,6 +291,12 @@ enum qmp_phy_usbc_type {
 	QMP_PHY_USBC_DP,
 };
 
+/* list of regulators */
+struct qmp_regulator_data {
+	const char *name;
+	unsigned int enable_load;
+};
+
 struct qmp_phy_cfg {
 	int type;
 	const void *cfg;
@@ -341,6 +347,67 @@ struct qmp_phy_usb_layout {
 	struct clk_fixed_rate pipe_clk_fixed;
 };
 
+struct qmp_usbc_dp_offsets {
+	u16 dp_serdes;
+	u16 dp_txa;
+	u16 dp_txb;
+	u16 dp_phy;
+};
+
+struct qmp_usbc;
+
+struct qmp_phy_dp_cfg {
+	const struct qmp_usbc_dp_offsets *offsets;
+
+	const struct qmp_phy_init_tbl *serdes_tbl;
+	int serdes_tbl_num;
+	const struct qmp_phy_init_tbl *tx_tbl;
+	int tx_tbl_num;
+	const struct qmp_phy_init_tbl *rx_tbl;
+	int rx_tbl_num;
+	const struct qmp_phy_init_tbl *pcs_tbl;
+	int pcs_tbl_num;
+	const struct qmp_phy_init_tbl *pcs_usb_tbl;
+	int pcs_usb_tbl_num;
+	const struct qmp_phy_init_tbl *dp_serdes_tbl;
+	int dp_serdes_tbl_num;
+	const struct qmp_phy_init_tbl *dp_tx_tbl;
+	int dp_tx_tbl_num;
+
+	/* Init sequence for DP PHY block link rates */
+	const struct qmp_phy_init_tbl *serdes_tbl_rbr;
+	int serdes_tbl_rbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr;
+	int serdes_tbl_hbr_num;
+	const struct qmp_phy_init_tbl *serdes_tbl_hbr2;
+	int serdes_tbl_hbr2_num;
+
+	/* DP PHY swing and pre_emphasis tables */
+	const u8 (*swing_tbl)[4][4];
+	const u8 (*pre_emphasis_tbl)[4][4];
+
+	/* DP PHY callbacks */
+	void (*dp_aux_init)(struct qmp_usbc *qmp);
+	void (*configure_dp_tx)(struct qmp_usbc *qmp);
+	int (*configure_dp_phy)(struct qmp_usbc *qmp);
+	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
+
+	const struct qmp_regulator_data *vreg_list;
+	int num_vregs;
+};
+
+struct qmp_phy_dp_layout {
+	void __iomem *dp_phy;
+	void __iomem *dp_tx;
+	void __iomem *dp_tx2;
+	void __iomem *dp_serdes;
+
+	unsigned int dp_aux_cfg;
+	struct phy_configure_opts_dp dp_opts;
+	struct clk_hw dp_link_hw;
+	struct clk_hw dp_pixel_hw;
+};
+
 struct qmp_usbc {
 	struct device *dev;
 	int type;
@@ -359,6 +426,7 @@ struct qmp_usbc {
 
 	struct regmap *tcsr_map;
 	u32 vls_clamp_reg;
+	u32 dp_phy_mode_reg;
 
 	struct typec_switch_dev *sw;
 };
@@ -480,7 +548,9 @@ static const struct qmp_phy_cfg sdm660_phy_usb3_cfg = {
 };
 
 #define to_usb_cfg(x) ((struct qmp_phy_usb_cfg *)((x)->cfg))
+#define to_dp_cfg(x) ((struct qmp_phy_dp_cfg *)((x)->cfg))
 #define to_usb_layout(x) ((struct qmp_phy_usb_layout *)((x)->layout))
+#define to_dp_layout(x) ((struct qmp_phy_dp_layout *)((x)->layout))
 
 static int qmp_usbc_generic_init(struct phy *phy)
 {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
