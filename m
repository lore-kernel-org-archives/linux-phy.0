Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB1ACCAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erxWkeSa8SewM6MIHiWeLSK2AJ7GTFS2HbZODBVoaCw=; b=OfLG2tlYUHuEPM
	9v3VnAgZQIHpjmX+YUnxvZkCaXKQzFv5miJijcqHl08iYhQ9JF82a3lyQtaBAnpdpDTJ66xawQ6xU
	cbttg2zL+h+a+PK8jrdE/jo+QTKgVneZ6X6MafQz4Hq6u+srqa3AoGOfa5JpV1X8kB2DfvuObpdlQ
	lx8p0SohfPPOrmjam7sFdSu7s4cBJCW+OpRq6P7wsEQBg60FaeoZGDS2Rmg1rUZiOG78pm2Ifr/U4
	rhB0RSof8j9s482sLwL8wp0OgjDC5HzplHxQ6K0R5XvK90yDLUW1VXLruWv946LpdFgcjN1G2QgaP
	pG1n/rmErIYwYEN5QREw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3T-000000038EE-2hOz;
	Fri, 19 Sep 2025 14:25:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3Q-000000038D2-3QZ6
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:25:41 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58J6sP4p018236
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s8Gat07gp3MRVOt4L/O159z0k7jLmrjqvCt4T7tTz2A=; b=kYoNGJBsNNDc+8ib
	pPKFA6X9HZyMwtM90sOBw4APhI9lfXd4YL9+1TZY71KnolX35ZqJxVcsAWaPogA0
	0j9x9ZjdwYot1Pd1T7OE7xJZNjJnobc4pMH6JY8VzaVhxb8pEnnFnMk8kn8XbZwy
	yQY6t/SYQJN7llRf6NntbdnMfdhQvI99oqoVfSHqdrm6d67zuEhhvOhZTZA2eXXF
	bBe+TosxQdo6HpyR/eDoftakW7g5UcTjL9puKV8arBk8vMxIbQvYMRs2WsEtV3t5
	MGtpB2sk/kX06MNRSnsN4fADMUTNFQ9ek5VqGNS6H/eTD8aaWnvP+yAEtoKo5+lK
	Fawmnw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxwjpj9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:40 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-267b2ecda65so5435585ad.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:25:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291939; x=1758896739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s8Gat07gp3MRVOt4L/O159z0k7jLmrjqvCt4T7tTz2A=;
        b=Jbstn2YFhSAlogCWbKXPMNu04TvWe8vEii6qlPvxsuhkNEkCEOMLxg8bVQmYgCJB6t
         kCN+/X5STZfrq1rU7lt0osxtu6ZJvC4qze3OWln6XbcsUVqe852j76zsSk3fZDNK6eVS
         ncVgT2xAICTeDA2tZKuGWRYiMjVpCE91H/1HVwh650EduK0jFOzq0hSr/Kta8k8du8kw
         BOnZ3ksMx6dQHi2758YTjn61YixbRL4eAjFd3ZEFR8QjH3i7YKmE2L/SQjFiZ7cWCN0I
         dvM8lOm1rseynZ8U1RzodcRBmtatFXAuGTPPz3N6SBTv3O4oHA5TiG1auRmO6OQ42uji
         DSsg==
X-Forwarded-Encrypted: i=1; AJvYcCXyrrYytWznijN5UDueTEYoriID/CMZb1eyhoY+6zMf5f+0p2dc4s4C67rNNYzGOXQeU9Asf9FQrDc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yynh6Kg84PhzZW96JnPbxDG3H5M61/hn1kP7S3JZchbEn/fiDPw
	nDonvqaNavhhrJaBU1LmLUFHKHwSndwRAbkEXTKHg+PCpGZe+JHzrP0ylP+ZCKlcGiuCFyOEXll
	kML15YKdTLfkCHeaze53dOCI66dnZxWB/jWWMEgpFoQ5JIFe8l4mw9ijezZeDF+x+yqzA
X-Gm-Gg: ASbGncscZDIjCL+JPxzX8VnQBy7OxHdKgZ6fbCr4/K8xEXGuSW08+mDKJ7eI9k6EaU6
	unhx7UQP8Khi89BMpVvF2KvW7JN0KcDdtHJhSub/t3VQTwwfdjbOkwF4me9Mk9JAmic3tr87j7f
	fxbR9bDJsPgwyxO5s42XLl9owNHu1z/keqn+GWK6DYMqz0j5MXv2tsZrSDlFYmxn14bdO8rLAwM
	rxgq2EWtc3DKm1TgDioMYc+szdikFYPHvfr/+vYVQJusnHcInIwrRabZLRrTTUT4qE3+FxRgUgi
	NQDaU3b5yEP6FIR+niEckZZIwd4eqbTcu6wDuTcT7OvQqPWYDI01RPyuEL7dlGzzEVBG/JqRbn3
	oe/aW1W4UPQqWFg==
X-Received: by 2002:a17:902:e783:b0:264:cda8:7fd3 with SMTP id d9443c01a7336-269ba524fcamr23697615ad.6.1758291939376;
        Fri, 19 Sep 2025 07:25:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1kN5CdBbgtNitx8qEDVbtTkUx50Cb0tShRZ+81fS8AlMsoBbd1UoYI7x3OsJPQoi2b5RSdQ==
X-Received: by 2002:a17:902:e783:b0:264:cda8:7fd3 with SMTP id d9443c01a7336-269ba524fcamr23697235ad.6.1758291938856;
        Fri, 19 Sep 2025 07:25:38 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:38 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:22 +0800
Subject: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291894; l=3439;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=u9wOAKxkjnamI2H2q1squA5Lj0dD2o8MZknhelsq6I0=;
 b=EpbxVqfS5D6TBeLH+5VJDRNxVNdHBlYL1HJL3hVzX00jjVkBmU6I99OLKvT9n5mef4nA5F7SY
 q2yh4lEpjsFChCZm6w6UcLrKNnVneXfAfMOtixmvqW4eKiMpIvPd7MI
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=HbIUTjE8 c=1 sm=1 tr=0 ts=68cd67e4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=RqUhitWEW_Btmly2q4YA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+2bSHYmPBliV
 BKFurT2kO1LGt4lYcv078aVbbX+Muk0PQtyhN5MFQOgvonWtDdCPfWHeAzWRFzRTbjwo4GmH/KQ
 S2SCp/HEOuLGEF9LuukSga1LKlFI04DxKREY29vra+/9aFCJmLle3jaZ9SH8TTY3lErvBZGLy7X
 vh8V81bnGlnY8tQorpe3/kNKkijSo77t1Bz2Mv29GOXb+VxUH4V1+DbXNYEJGGRiHF5nbicP/My
 2Y9rZp6YCvyQZ2xJ+Gx98UatViTHvWcLJKDgsx5i+SGu1nnwMOny1aeHNBSnRw6gHjUgS2NMpRx
 +OaVLWfqezk8uhERJYlRptgrirorauJAQfYt7dgF72OlXROk6716W9dZOpFfJ+sxlGXTI0q9in2
 /q/qN9v5
X-Proofpoint-GUID: jy4u27sH65cVcAtp8ZPo5EIbChPq2hua
X-Proofpoint-ORIG-GUID: jy4u27sH65cVcAtp8ZPo5EIbChPq2hua
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072540_867605_1942ADF4 
X-CRM114-Status: GOOD (  13.47  )
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

Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
path on the old hardcoded list; non-legacy path uses cfg->reset_list.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..3d228db9ef0882eb76e7ab9e82f8122fa9cfe314 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -335,7 +335,8 @@ struct qmp_phy_cfg {
 	int (*configure_dp_phy)(struct qmp_usbc *qmp);
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
-	/* regulators to be requested */
+	const char * const *reset_list;
+	int num_resets;
 	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
@@ -428,6 +429,10 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
+static const char * const usb3dpphy_reset_l[] = {
+	"phy_phy", "dp_phy",
+};
+
 static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 68600 },
 	{ .supply = "vdda-pll", .init_load_uA = 14200 },
@@ -464,6 +469,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list              = qmp_phy_msm8998_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
@@ -480,6 +487,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_sm2290_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -496,6 +505,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_msm8998_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -512,6 +523,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -1051,8 +1064,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 				     "failed to get pipe clock\n");
 	}
 
-	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
-				 ARRAY_SIZE(usb3phy_reset_l));
+	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
