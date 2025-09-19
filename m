Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F25ACAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UOfmVBI9Mp4JrCYG+35Jot5dFgsVShUPHyo+2Iie3c=; b=LioN+10o+YS6TH
	pVs9feSarXOf4cRlHG9P4UdNptFVPhe1uMfnpxlD5eoEyBIglYdL+yjB4uhd8z7TVJ5nQ8qn/rauF
	c01ntSdGuaA7Ub8BpVoNvM58IWQfiEaOjTOHRVCEt2hXltFvnj8eL5c52l7hhpYu8QOiC0+6ovCVV
	AGjMJVsogryz3qzorx2xl2n2ikY3PZ41z/qoYuulWP74TJh8lY3yWLrP9X4GUtB28DvnO1am2IQ9u
	yk1mv/CXJ3xM/1b0RI8UuUSSPdafr00FbCfXiEH/aC3tlWyduAguEBREglF5KP5VTxCjR6k0VmHlz
	4dCIiKUCGKIygkxcFblA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3E-0000000388N-3RN0;
	Fri, 19 Sep 2025 14:25:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3C-0000000387Q-3dFW
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:25:27 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JED4rL032429
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xaxo68cQZZrWEEivhuCOX2owVkj5hniZ5EATwBZwjNk=; b=khaP++Er38sTrdaC
	a25QtnMmySG6jlbQzmbJPk9nvq8JUfUhtCu/p3VLfk0YA7FtM9oEN8s97ZnX5L1Z
	gnTjOdD7MtBAA2TeEWdbFO896ubNLF28BA4dxSc9ycdT9AwS9IBbzF4nrLA0hUZz
	zPty+mSFjpL2QHY9ENQPEnMwmPemM/tElkwKNgUF3FN5FMu6dGqPqdSpNeIILVvF
	gbskIgLEIDJW47aOensImQFZr1quulM+nEwqS9NJMHSuxcnVIj6KdotAuHRq5w8B
	QjSveBb6h3w8hYOsDXC13Zq5sik0CXxBfkW9nKcV5IKI7Bton3mEIg7ymC/0J7kk
	XZLwEQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxytqg9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:26 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-269b2d8af0cso2825665ad.2
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:25:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291925; x=1758896725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xaxo68cQZZrWEEivhuCOX2owVkj5hniZ5EATwBZwjNk=;
        b=EcoB4cxAjfyzD0kISZIiAn92fb99tBiLflMOO7DmQI73XSXy0ej+MMWr+0Cz1n/Mcx
         LE9GZDWCjcJelM162ATfpYNCQXzL8xRF4Jqa5QhXTiy0+Wpzu0LJ5WYwQIxVynqh33xn
         polLilymFvk8VSTCdlXPltDkHUt6pkiB95+PDMKSe/pJPE4XZZWm8NGBu2K2CK/uPCCQ
         5TBGg8H8JjMtaJY2nfToqvjfoJLPxv5JwOOSGvJh2ia09SP9M94fDxZ7q7zEK5VxPoW3
         muXKwKoBjWFA8zXgqFKfu6nzgdmrpyyiY7kFciDUEB/mF5vM2oXBaxdywfw7lM1VJBuk
         Cz/w==
X-Forwarded-Encrypted: i=1; AJvYcCWEQgWSdAjyHxCnhUQ5wEfgLX+h746filLd+NFKNJBClXsAfgcjtwFJ+WzfwsRJ3OmwCclT5ujHSdE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoXqTqdEIgw6vBJsetFdlN7YKWVMIlwqvnfXx9LzQKh7dasypa
	f7vRyIotRtbH9OC1hidzLOGTjcI7dpy0V4ak9NgJNOyWh6uiYttZcB3/Yz+X6Q9uDOTK1eh9DS2
	PSYiaFto4SVe6PGGrJl+R7vpE0kEXrSOgG/oEDhYG4bSQTeaZxDxrA2RyjfStKGa4+jjo
X-Gm-Gg: ASbGncv2OqvYC2XyclCRchZpE9eTnjIh41XAFEOTxPUOQcSlM8qP3q0ddX6vZOLnRWI
	vbbxXeeTZ5EX5eWHMNezUbXewlz/i+qYhpj4RiHCjIwXHAS5AOHca0gtlhYvWxw5717aYK4hXY6
	iwjyi+lwxMT5VXXSigzayf9KIyAVg7pO9iri7H6EGHYnENQz9s1+Ejm4dY4xZ4ofHZ9pgyjQ/J/
	ugG+ZjGpt4S3w0Rs94MLZSilwGLX9B4gcuPJ6cSSuFBOPLj/tlaa3vpuwM0Ml8DKDrJQGOk4OsS
	mlNBUVD4bNnQLyYzI2Sa9OYqWnXjZ9Gn9lnJ0OAol5l7KlIV+y4hHcNyjsmJ9UniFp5OVESBJpo
	kbODbohPNaIEXUA==
X-Received: by 2002:a17:902:f68e:b0:269:96d2:9c96 with SMTP id d9443c01a7336-269ba2611c1mr28869615ad.0.1758291925147;
        Fri, 19 Sep 2025 07:25:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBIBS4AXXrSudYOMfmAwfNi+JdtzGlXQtukko475U4cFxag3zIVrNAiD2nbk1f8DLKq0tYqA==
X-Received: by 2002:a17:902:f68e:b0:269:96d2:9c96 with SMTP id d9443c01a7336-269ba2611c1mr28869165ad.0.1758291924517;
        Fri, 19 Sep 2025 07:25:24 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:24 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:20 +0800
Subject: [PATCH v5 03/14] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-3-eae6681f4002@oss.qualcomm.com>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291893; l=3979;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=V+bmwYjKfMRV9O7yUHq5omi3q3vjjg0Qz8GTgu2JE4Q=;
 b=D+YumCGLZ9Fv17diaosjhiV66oYGcYAUQpxt2JXYY0XK8mFV9R6yRnGH0JVEsEsiIQs6Zzfex
 tbHbYNLSINAA4p/JbPECyhUigU1ZdJjQj/ZzXsCwtg6fIlUQ4UP5k2H
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cd67d6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jm3WsR2aq1IkTfYpOVcA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: qzB2tuhzoQWZ7ExSdxhzhD9UoJnTqypA
X-Proofpoint-ORIG-GUID: qzB2tuhzoQWZ7ExSdxhzhD9UoJnTqypA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX4lg1RQyM1fnZ
 po2qmaozYHXlJMe/nwgRvfOQmGd6YXBoUEk2gxsDuSc8WQg43HeyscBeVbjFv3LC/TkMRQbC8SK
 w04AR6kDhDvaQmpznmsurvgd+qlfn3sMiQAKFJwHj2wf1O7HmaVmzqtBupkN+YkWMZyW7LtMQ0f
 A8A2b852EGJPM+OTFrq+brl6eydL+LalmChz1DMFZ0EtCIzrvgRbF/ce52w6oQQquUwgQpBR/v0
 fiKP9Wlqpd3hu0z3olGmnSEDDH2FkIc+FuwvGr1fnBZg+gURx2vxefgK2j/OxrHs4CmIiYpiNbi
 YJxVyFnQg6VmLT40r6QgrNDRVbDGRw1p39sgu33iW/knubvvWpbVJuNJ+jK4SfkxN8kMIERSQif
 WhCPTxfa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072526_913301_232B9EE5 
X-CRM114-Status: GOOD (  16.89  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
