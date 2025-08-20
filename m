Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2DA6CA0EFE
	for <linux-phy@archiver.kernel.org>; Wed, 20 Aug 2025 10:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXdtHG5jSbJTKoRsIah2nlrqXNfFuQCfVYP/Vxya/cc=; b=F78bY9ZCC7xSNU
	0tuBDGmspYHevNdpaHASJMOtiw/LteXTy+8TDd8nDB0d52Lmpjp6HV5JAt9D6tzW93bSDQ4SpvmrX
	QhGV1J6QqY5cYhiJkyrOqWBi0Iz9Av14Djpk+qPLvuIjTTPIwpWPExf6nc7UzJovZhbWp+YJbVbcr
	F+tdGE4ZtYCDPY5sp+G2zde8MUFrid9xeE/T9qkcEn7QFYi8MdtPaBmqZB+1r2G2/snesr8kJyZpc
	XGSoSmVKs+q6lMr/cyyYPA+CVuyeAwABriQqvt0uex9qR4c7lOKXj3L1VzfkeoA8myqC5M/ymFwy1
	q3zLs0UhunImJbuQZ/iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofhG-0000000D5EA-1gGX;
	Wed, 20 Aug 2025 10:05:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofEj-0000000Cx9I-1dpl
	for linux-phy@lists.infradead.org;
	Wed, 20 Aug 2025 09:36:06 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1p2R9027085
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:36:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AWgj+1YIpaMRY/yWhK0hs1P4y4VfFaoAvgfjBAJlkCg=; b=cXgMSf3fnD8zorX8
	JopNHWRQEAlnni3NWHN+ivR8Ct+zyyPUQ03LPJBqJZdjbLLkyUnX+F7knHd5WmYe
	GAYyIuu96X5M/MBcsZaoCNmsksAic8cf15FxNNpmMvy8aJGY7E6IWFoYwu13I2ym
	BJ8eBQ8PemGMtbAVxM3SAHSgtkxYKxkcAILQS3PDdiV3EApxYMWFeGaIWJdYlxV/
	vYWE7jvdhJ6+pdvq0BKm+SGoZupaEC0Bs1ofiEimBUOzhc5/tEztdVB0uDTVOYSB
	Es6p+iBbaLK8Ae2fGBZsH8qRP2Rs/2RqB9Oo8Gw91JKYDZKvdQxmyTnMw0B/Nolg
	7VCySw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a97wy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 09:36:04 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-324e4dd1237so101900a91.3
        for <linux-phy@lists.infradead.org>; Wed, 20 Aug 2025 02:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682564; x=1756287364;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AWgj+1YIpaMRY/yWhK0hs1P4y4VfFaoAvgfjBAJlkCg=;
        b=mxBPO/+kyUZFUeKsdp1xNHsCeqBnFLObavbL1RiV9Nlpjp2F+ZpIB7ntMoO+WQexkX
         xrnd0TFSq1mevAyZfoa+6lACWOwjTm2hHAEokZVGrWG/FTrRLqMlTUU3/yWyHxB8SNnq
         7RvYRou3pWMfjdSzI/3cj5sKb7hy6CTRsbZWKjq/JvMS7X7j/XMZa+hWwLTPOLWWT7lX
         helbENVd76oX7EIAl3mxs+e6PbJpuVXR6/cvljiy8Xc7pQ0g6MVSQmBsdQQ5WNoYZ6vR
         rYoed5iqXh+PjysafiaXg0q7Cvbv2NrjkJ/HWOpHjLrzLQuHw8hdaaTBXLLUy55R0Uqo
         U/WA==
X-Forwarded-Encrypted: i=1; AJvYcCW4PtXLuTlJM8+ZAQyplUi0SVpy2Dc6TCuIERk542BHfuStdicE0QugWh/2EUKM4YOTHnDpFySZbIU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzvVOKUNWPMs4s5KqEmdag+RTV3Yr1kObiagOzQhTRvD4stHDNX
	RV7BIQ7HdZqjXnxBRWFZP+55MjWru21yy32WcjxuF3t7c0vqF9xOGTULjT15TjEWuGqf4UOs73a
	0cF2UwVDR6Jo4s6X1hHHZ8pa140qrq17aA4FS+hoMmPAEU7WnWtedRTkzslBE0guyWr/J
X-Gm-Gg: ASbGnctZXKyZiYSq8bXSjtFmj8bAaMs1PrJ9z+/me8QGeoIXjYBsjFSdAXn1FBNjABc
	te2jYhAoj4PD09Aw0Ly5nuHjHPUdXtnQwGo1zSBj+G8hpxPKTvtBFJCtwjtsIi9kp9QG4eIMDLa
	V/czM4etgowNkm2LwBf1SsAaS0iApi0i5bcKGA1Y1nJDNwEBBaOgFFAnF6BAWKOt09htjKcCpnr
	k1oAX0YpE4X0iBqBa5xWpRLqCwd94xOZrT/uzIy4zigQ/RC89j3lR4XcbaKVqjx6lhyHPRD6vRq
	JgLvroheMqTEv0lUC/vg1i+cYEEIaRVbxX/KWG13q9WeWGrDr5nwEWbZfWnoKAdCubQYwTvBJ4g
	fsRmZarY2umb66AV56E5bsUPKzAH4j3hohm4AuwH75vp4ln4kF7S4KCGc
X-Received: by 2002:a17:902:f68e:b0:245:f771:4241 with SMTP id d9443c01a7336-245f771442amr2583625ad.7.1755682563893;
        Wed, 20 Aug 2025 02:36:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9IDMLLuCizqDn1Eie9iwbgkWU+1zGOnXJZGc8mc4IQjEGtB2REIhr9sTL5kOXEZ1CIGViEw==
X-Received: by 2002:a17:902:f68e:b0:245:f771:4241 with SMTP id d9443c01a7336-245f771442amr2583365ad.7.1755682563442;
        Wed, 20 Aug 2025 02:36:03 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:36:03 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:46 +0800
Subject: [PATCH v3 04/14] phy: qcom: qmp-usbc: Add USBC PHY type enum
MIME-Version: 1.0
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682520; l=2215;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=L77RPub4GUYm5+EpcE6zsdJ8e7TcjMW6KL61o2Mo0ZI=;
 b=DQ0gW20v1QwVf9ZNCC8n6LW3iHDlR0KstZhA7x5Lbvq9mjFrBMw+JkSg2jH/jW3XPqEVnFNMs
 VC00FmcL4nJCkp/c5mYGZ58jPMhHMU8LWEPS3yPwz4BZVLeNkt6MXYj
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-ORIG-GUID: XDJ_2mJTT-t8cI0NV16HG-Y6y04fXwQe
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a59704 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=FzSNxF14YNJ6EpJegcUA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: XDJ_2mJTT-t8cI0NV16HG-Y6y04fXwQe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX+HTza6sQxfhp
 1CaUqZwCVOSQYYR6HgNQmsTlmPfZypf4eflCfC8xk7JmngtyQh/okgP/F775SIaUHjzISunLMt6
 tLtFfVOaBuPNXls1moHSTu88j8Dy7Q3kbtBh76iy4itzNMjw8eXWE7z15MrIHvWUKGIF5rKNEmB
 5XkBEaajhySqVashGq9NQFWKd4jJ2M1UGKBBzesil90nDhbpPIe8OgIvj66n9P8fJ62145eBddj
 ctaaJ0DxI2chTJmtkBwFWYSxO8DayzdnQX3D0ugVuq37fq1aMvfJd7XSoAE6PT7Ma4nRHG2Cd7w
 V4nh9DqoIG0H5o/YRUE9Pr1PTynBnZTG3EI3En6TPZb9QlVRURiOlKhuWTFpbzMqspAfEBmuUCx
 Qzlw0kmoAKu3eGbp9Cv6NrmYonU4YQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_023605_446106_153808F1 
X-CRM114-Status: GOOD (  12.99  )
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

Introduce qmp_phy_usbc_type enum and a 'type' field in qmp_phy_cfg to
differentiate between USB-only PHYs and USB/DP switchable PHYs.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index e484caec2be20121cfe287c507b17af28fb9f211..5afe090b546977a11265bbffa7c355feb8c72dfa 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -284,6 +284,11 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
 };
 
+enum qmp_phy_usbc_type {
+	QMP_PHY_USBC_USB3_ONLY,
+	QMP_PHY_USBC_USB3_DP,
+};
+
 struct qmp_usbc_offsets {
 	u16 serdes;
 	u16 pcs;
@@ -298,6 +303,7 @@ struct qmp_usbc_offsets {
 /* struct qmp_phy_cfg - per-PHY initialization config */
 struct qmp_phy_cfg {
 	const struct qmp_usbc_offsets *offsets;
+	const enum qmp_phy_usbc_type type;
 
 	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
 	const struct qmp_phy_init_tbl *serdes_tbl;
@@ -408,6 +414,7 @@ static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
 
 static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+	.type			= QMP_PHY_USBC_USB3_ONLY,
 
 	.serdes_tbl             = msm8998_usb3_serdes_tbl,
 	.serdes_tbl_num         = ARRAY_SIZE(msm8998_usb3_serdes_tbl),
@@ -424,6 +431,7 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+	.type			= QMP_PHY_USBC_USB3_ONLY,
 
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
@@ -440,6 +448,7 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 
 static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+	.type			= QMP_PHY_USBC_USB3_ONLY,
 
 	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
