Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98419CAC58E
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 14:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssNBaExEapyrMnUQRB8XJ8SYHd8qDnnSSmP+zv3Gfg4=; b=kUj53+ig6BZVFu
	aF5a/p/2gfFpchkXm0rx4bGmLgA/1/JMRv2lN+yZh7nURGr9XQ0PTap+S/Wm6U/BgS0kWu5b5BI2Z
	mVGn5xQO3Ki5TwYDO9F1rSvZcNFnRWgeJrwVEtfMbFavfpB1Upvp/ahJ0c1qkqsdBuPoG9SalUicY
	We/mVeCEHpiVINKgBjKh0hN7T6qJIgUZV4gC6SLAPl1CpcZ2w87pvfqP+FezyxOzM13YwTTHNxp8Y
	uEdpP+g2OHDWfLGY4h/U/GK3eFKv7p1GjfAF0GQXHtBr2m+XJZYEyeO7hUYB/17fO6Xw7GZ5lw0mh
	so58Q8aZokkJOOMUMITA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiih-00000003hiK-1cpJ;
	Thu, 11 Sep 2025 14:56:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwiie-00000003hgi-0hwX
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 14:56:17 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAoSLi006035
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CAnh39HSsou7guKP6/W0eKgu+3fgE+UqRuEA8rEgyiA=; b=jN8hU3Ga6Ly7uEfS
	0PzCS+XAAwH29rZM14zUuIWeWRyXh56YntI05tJEXl+PLkWR5p8wRsuK/giRrq/g
	HoDSYFNoD00sFyq8fq8ZRLUC8IFdC5oRgkDnAKERaU/buDzjJFvOaKJ75rbb4eZi
	F/+rT+OcgwAIcZ4p3MBc8mWzqYuRox0UwzeyT0QAZ/zFnb3cgm2hqiU049T/J5cL
	YbsgL+c+3V5rxKTyKtLtHopS0CKjkj/eNNpa6G3ls8F6og3u0ThW5zAv93efKk0g
	2sOaC4MqDN6SpW3QJKkM04oueNGf4ylqX+9JBm19PCiVnqUEMAwaQ+YM/mFAwjvd
	sSXAyA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8ag56f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 14:56:15 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24cceea7f71so2093205ad.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 07:56:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602575; x=1758207375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAnh39HSsou7guKP6/W0eKgu+3fgE+UqRuEA8rEgyiA=;
        b=UfDztIMmVQeA1p2FJ2PnWjHvgbFpJbYng1hcWb5S7w4uqOnLQEs8Bp0Zxkbizh5Jxp
         YGsQbYwy1FjFpLrxdteukBlqACSOkg8H/ie7LHoEDNUfhfontCtnuQ3KwJj/hMZDcc20
         bBFhj2Ksi/PtFJV7sLrzGFK+g4yMzc1a9e8W5VUjJ+KjJrXFEGaY3UCgpNjA7OOJrNuq
         5EFAwL1LhMTAFYPeinDKJOeVSbMbp8SlgnZ4ijet0W9FknwqsrcdaD6wS4jHGvLPw6jh
         sy8ds4rugNntgAfFnIK7bnt3pJ3Vv2NXqphLi8+HvMa7ZNSdCzjoPdhDXlEZZn5Ykh8y
         NmdA==
X-Forwarded-Encrypted: i=1; AJvYcCV2ujQ75PoWJ6qeGC8DKeIYXbS2Hxf1Ol4LKUFiQVjzVBb8uw4slUOvPG3F9Jm9r02I380S2IThzH0=@lists.infradead.org
X-Gm-Message-State: AOJu0YylXS78puz4IfADuLpP9a0bLY3hRl5XrBJDb5BNJ7T5ToT9Kx9g
	+DgSmm6PpRRnzuVjzFAqSwGHejXHDBVrMEq7ImzIkBIFPdK/NhLnMXRpWLycucYVn+rwXUFIyZZ
	HdgkYpv1a5jaZccJs1IDdh05gNtV47ZnVtd0xd0IPh90QcmycMxVurEv2aBLifgiBGFKq
X-Gm-Gg: ASbGncsQprL24kU5M5b4pPWcKneQ9swHjGLFbEiUjf3bW6z5rZL99znnlTrnqjghcWs
	C5jCmPeQfyuj7ekDHYQjU+TiNopq2QjLuAJ0h0eQ00ZdRGpUV+nBsho+F/A7nRJH/exr/AJOi60
	i31Q2MP6KB8Xe/QWgwG3IqyPmBQo3SajqQ57PZ1fL0cGFWByW1w4IcqMCbNqlLiyifnXu9shR6/
	u4jOp5EWCg68zKoKuF+c1nUQzx6WlRzcbR24djYQyPCPAu4z3BIXYmJbrpmyWy+CURBtPCfQUBG
	Ow+r8F9Ark62eWpFvG7ikYSUF3j26B+xVXMtXpvc04xGOpoOiBEd+Nhraav1wOBn/owPf6w+nNe
	mm8p3gPGA/ejRgOUiAsQFtvNZynwrJxVEkCNtLxlPY//Qh2sOAn2f/byM
X-Received: by 2002:a17:902:c40b:b0:243:589d:148e with SMTP id d9443c01a7336-2516f23de24mr133000135ad.5.1757602574652;
        Thu, 11 Sep 2025 07:56:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUFTTFMQ2rdWbNsDbWngOPJ2WH+IaqettH8JeXlHbxDgg3kXL8d6vzlVpeg48nFbm+O4tliw==
X-Received: by 2002:a17:902:c40b:b0:243:589d:148e with SMTP id d9443c01a7336-2516f23de24mr132999835ad.5.1757602574070;
        Thu, 11 Sep 2025 07:56:14 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a387cd4bsm2107453a12.35.2025.09.11.07.56.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 07:56:13 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:55:03 +0800
Subject: [PATCH v4 06/13] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
MIME-Version: 1.0
Message-Id: <20250911-add-displayport-support-for-qcs615-platform-v4-6-2702bdda14ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757602527; l=6897;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=OWt9kB48mzxxvjrBaY3xyKfETt0QdvzjmmLgaJWlQh0=;
 b=KGI7fDuTXIC9M5EO9nZ+gm6xulQkGDTUo93FCzKvlUkt4ubvrY9zrKkv3xs4QtYBJf8NpMz5f
 eFtIBPbiNe9ALJDF8q8xE0SgYadPXCNSw8IxQZmqKrapSxh2WAtFU61
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68c2e30f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-_sGn0fMRN9O-kufMFcA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: InV1-dO0gYqYG3mA23lTHTCHs5IHEls3
X-Proofpoint-ORIG-GUID: InV1-dO0gYqYG3mA23lTHTCHs5IHEls3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX30lAzxajA/1C
 1rlejXHBB51zeC/dflcjYltY2L4JNnQb5U2nZA3JMRIiaMkGjFRBhf2Ahnn7TpK0SBq1wJVkJ76
 op5EoXUTk/rPK+RPQr9ldRdxG7tu1gUvZR+29/s8ry/Pqh3TzsnOUq+BoYWeitW0yaY2z7s1DR4
 +ZKJZm+KnwmfnuwS6Xat2Laa4Sfd95hDVRZjju2a5x22ig7AqVQgM8uojdkcDhAril0C/JlTFwf
 hXvjzCytNXSdpuNrKq0tWGtG4RhU50h4orY6jcBZMjpX936ft7QGx9tWrge2GqzHf/QCY1CxDbN
 VQoONomnt5dDDopf0WvvYMOpP2LNUygvpyzcuok2vrr8Re+Mu+PB0qnB3qKOF2MQAPCksCad8IB
 qqSEYbx0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_075616_219649_0FD883CB 
X-CRM114-Status: GOOD (  17.62  )
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

Move reset configuration to be managed via qmp_phy_cfg instead of
hardcoded lists. This enables per-PHY customization and simplifies
initialization logic for USB-only and USB/DP switchable PHYs.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 56 ++++++++++++++++++--------------
 1 file changed, 31 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 23a0efa7fc4418f379ac4c02fd92080c7755dead..663024b8c09124f2991b8e0537a9feb60baaa686 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -415,7 +415,8 @@ struct qmp_phy_cfg {
 	int (*configure_dp_phy)(struct qmp_usbc *qmp);
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
-	/* regulators to be requested */
+	const char * const *reset_list;
+	int num_resets;
 	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
@@ -447,7 +448,6 @@ struct qmp_usbc {
 	struct clk_hw dp_pixel_hw;
 	struct clk_bulk_data *clks;
 	int num_clks;
-	int num_resets;
 	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
@@ -508,6 +508,10 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
+static const char * const usb3dpphy_reset_l[] = {
+	"phy_phy", "dp_phy",
+};
+
 static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 68600 },
 	{ .supply = "vdda-pll", .init_load_uA = 14200 },
@@ -572,6 +576,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list              = qmp_phy_msm8998_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
@@ -588,6 +594,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_sm2290_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -604,6 +612,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_msm8998_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -620,6 +630,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -653,6 +665,9 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 
 	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
 	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
+
+	.reset_list		= usb3dpphy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 };
@@ -671,13 +686,13 @@ static int qmp_usbc_com_init(struct phy *phy)
 		return ret;
 	}
 
-	ret = reset_control_bulk_assert(qmp->num_resets, qmp->resets);
+	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 	if (ret) {
 		dev_err(qmp->dev, "reset assert failed\n");
 		goto err_disable_regulators;
 	}
 
-	ret = reset_control_bulk_deassert(qmp->num_resets, qmp->resets);
+	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
 	if (ret) {
 		dev_err(qmp->dev, "reset deassert failed\n");
 		goto err_disable_regulators;
@@ -700,7 +715,7 @@ static int qmp_usbc_com_init(struct phy *phy)
 	return 0;
 
 err_assert_reset:
-	reset_control_bulk_assert(qmp->num_resets, qmp->resets);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -712,7 +727,7 @@ static int qmp_usbc_com_exit(struct phy *phy)
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	reset_control_bulk_assert(qmp->num_resets, qmp->resets);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
@@ -939,25 +954,22 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
 			   qmp_usbc_runtime_resume, NULL)
 };
 
-static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
-			      const char *const *reset_list,
-			      int num_resets)
+static int qmp_usbc_reset_init(struct qmp_usbc *qmp)
 {
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	struct device *dev = qmp->dev;
 	int i;
 	int ret;
 
-	qmp->resets = devm_kcalloc(dev, num_resets,
+	qmp->resets = devm_kcalloc(dev, cfg->num_resets,
 				   sizeof(*qmp->resets), GFP_KERNEL);
 	if (!qmp->resets)
 		return -ENOMEM;
 
-	for (i = 0; i < num_resets; i++)
-		qmp->resets[i].id = reset_list[i];
+	for (i = 0; i < cfg->num_resets; i++)
+		qmp->resets[i].id = cfg->reset_list[i];
 
-	qmp->num_resets = num_resets;
-
-	ret = devm_reset_control_bulk_get_exclusive(dev, num_resets, qmp->resets);
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to get resets\n");
 
@@ -1147,11 +1159,6 @@ static int qmp_usbc_parse_dt_legacy(struct qmp_usbc *qmp, struct device_node *np
 
 	qmp->num_clks = ret;
 
-	ret = qmp_usbc_reset_init(qmp, usb3phy_legacy_reset_l,
-				 ARRAY_SIZE(usb3phy_legacy_reset_l));
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
@@ -1191,11 +1198,6 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 				     "failed to get pipe clock\n");
 	}
 
-	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
-				 ARRAY_SIZE(usb3phy_reset_l));
-	if (ret)
-		return ret;
-
 	return 0;
 }
 
@@ -1246,6 +1248,10 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
+	ret = qmp_usbc_reset_init(qmp);
+	if (ret)
+		return ret;
+
 	ret = devm_regulator_bulk_get_const(qmp->dev, qmp->cfg->num_vregs,
 					 qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
