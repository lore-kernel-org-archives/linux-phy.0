Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CCBCAC5A8
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 14:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtMUVygvw9DS1+aiymG6uv+MNJn42jcMNqQca24yTgs=; b=qDjfR8kf8jeF3v
	i/MHaCOrr6VdastjVGpm2LjhckpAlaGpQ9MmEHug6Toz4lvSh8l9MQf7MTyuBP/82Yt003rIhtoID
	euXwiUCWrDiF+xK5OzHo8DsGgwkne2fOVVCi2YQsUtFQ71lowson/e8WIX9qzV7K6I8lddwlfFvnJ
	Qi78LzXgQ06n4W4sYbWVP6g7yGbTNNAoxte6nbP7ykO4IrqXs7axt6JkKFdzQw0761dkYxkzS/Xya
	qzk8nOK1rh2ETN1jUQJYoOZEVrB1+rYVzOTQ+XiIkJorVriGUrQ5Yx5OfVS/8ghVxFUAvvfbIImro
	vWqvYJ0kVeRvjzDYjkaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3i-000000038JM-1a4b;
	Fri, 19 Sep 2025 14:25:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzc3f-000000038Ho-24qF
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 14:25:56 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JCWFs0032434
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4NPGHZZG6XJ298+gcQuKbhaG+vQUCP3RgV4uBh+3CL8=; b=KG30EoIjYXW9CY4B
	BF2pcR4slxppGfefFAtOnTz7qERmPJqIqcrn4TaUD4NfU0XU6g5LTGBzoXgqDjG8
	vJBId/NsBgTDvU5Q/u/pPArppULMDrq9YSrmHMpF5V4+IGJ25uoBIdFt2JqZJbvT
	Te6zI6rQejM6P3HlTmoI0miXRLU6OwR6u6vIA2LlO94XGBdSmR2d6y8W30iMhumC
	QZOIivBZ3KWzpT6CCWWxdIUdItPJVpLj1GoPzfX2uLe4f9SBmf6rmeFhG33lHEQ3
	bqQSgp+1jHACHY40yUFHmbCLCD1h6XBF73k1yfGKRzuRITk++O/BSktYqsdoL49x
	NXyvQg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxytqj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 14:25:54 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-245fbdc2546so4651915ad.0
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 07:25:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758291954; x=1758896754;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4NPGHZZG6XJ298+gcQuKbhaG+vQUCP3RgV4uBh+3CL8=;
        b=ZkLW9LzMkFgd+HBVeuTNtMnYMT0Pc3JTYTETkuPvcsByNIoGKDvo19TSGyzjhNUP49
         gk/UjocgZI9bHn+QYIkJdoJqEG9NJzxSgooNmcT5UgeLZSiKxUyEHKNrTL515g6MdZmh
         awFckCyRmBAeMNWgjJTcn1YoXJ0LX4p0Ahi6xhJkQy2UpNYWKktKnu15tRj0E78aROCM
         ims4Ci0pHAGqEFnaUkKjoWGGzN/u0+iwawVmd8HZRyZ9dqRbx2AD42IK0hMKzUWlYwj7
         Sx7ayfjqLG+S1U6Asa9gfkJGnYD7fMdzQBlTOwXRngUMZ9Z3rB0z5ju4YkHmRb3tUvxl
         pKvA==
X-Forwarded-Encrypted: i=1; AJvYcCX0cb4Joi5CvhtgBq8MetQLaRrT+xMyA/2WuS/qu6FWVIx8jKo84MUaTeWM/OPo6zp2vpX+PPkYFQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywdns7myMYTISzz5E+kD1nLdchqPTa3b25fvFaoxD2bFuE/Yv3s
	qoewcsVD3oOkftOSNS3FYhqFCvfgrejjHBJHYMfKYgvXCqcQ4ItzB6J8goIGmgo/2eiGP3mdXQr
	7l6CvYuRB9mggTtIqftTnuW6Mg9hQLsHsVoror898Xzuo+hDo0GBWHU6fjPjPMKIHkUym
X-Gm-Gg: ASbGncu3ovrQ/sKWbk9keysKZH/C0/qZpDcmNDC2CXY/MR4qWDlwoIxmuzQIg3RsPbB
	A11uIqWqw27aruHd1LO7f/NQwqWxDbHfGrPv2YsE8WvMrUcyCEcA4dEYlm1J/f6KXh931raeSwE
	M2bA24XBE0PUNKEqmdH9x0ZB+PWxweg1S8+eNIPISiB73gS8so91eamypbBvWlibJ3wLvzeGGzr
	8EYiHjODOgOYY9Rpb9aoJ9fDgb42Z6IVqxVVaU0U3256k9qczWrt08MCKDLfkAJAv0iDWRiKJpg
	vV0/8X5csEYXZbP+2m2DTO4L4xB3n0s0falnJlllZByHV4KKmNt5K7OORO1vH3eAmzYs0eShkUs
	4LxZGEjqZqlqxyA==
X-Received: by 2002:a17:902:e805:b0:267:b312:9cd8 with SMTP id d9443c01a7336-269ba5477ffmr23548515ad.8.1758291953934;
        Fri, 19 Sep 2025 07:25:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhWf2RyPDPG5JNlEIwfeKF5HBQZnjfl4KQdteIogUTd9k5aZvCF48gGr20YVSz2GhdBqTvZA==
X-Received: by 2002:a17:902:e805:b0:267:b312:9cd8 with SMTP id d9443c01a7336-269ba5477ffmr23548105ad.8.1758291953373;
        Fri, 19 Sep 2025 07:25:53 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-26e80409ee3sm2210035ad.80.2025.09.19.07.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 07:25:52 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 19 Sep 2025 22:24:24 +0800
Subject: [PATCH v5 07/14] phy: qcom: qmp-usbc: Move USB-only init to
 usb_power_on
MIME-Version: 1.0
Message-Id: <20250919-add-displayport-support-for-qcs615-platform-v5-7-eae6681f4002@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758291894; l=2160;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=X6747pX/z+HXPUbzpVscGZ+y7P+DLT2Ka1aFOv7nPv4=;
 b=SSWMxTP2f7OASGPCipXSWGNWwHj7K6Mc91TPyvdWPxTeS5cOPpYMfWRQHbNxnmcxvYFsI1FKL
 cF4Y8nqexATB6dv66j+Lt7F8NuZOncIpFaP8S1YPyoHfwOMj7NrfW4w
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cd67f2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lTgBPn2m1EfcVYAV3zkA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: DCTkSONNBI4aUjHZQt3yIrIg_2hx-2wX
X-Proofpoint-ORIG-GUID: DCTkSONNBI4aUjHZQt3yIrIg_2hx-2wX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX3ycfH7V7bv7j
 phONJ0dD6DXJnrGZofqFwvxJiyTW9lYz1wVib7Zs+3OebeGwzp+Pvqb4NNh/PfwgYk8D222IWmX
 cypBnlndv+ecF69TBbt+xCQvTatv1ltrAxZuxMlizabCubRT3JKx7j0ryJuqEKrQBUY8I1npaQ7
 GsOVPP5lNI9TvY+YnppfhPbhGqyHKyxsVei+WL5ZCCquFKsfk4b/SsqI3eDbOyhpfwY+j5FxjLX
 XsDaiQqfq7SC3pUaRy0lejZWjdpOR3h9pZ/lN1SJ0Ku1xLgJ0Q7SNtGBfs5qGpi8LPXduE8s7WZ
 +8yz2L15RnMQ6hZKmLz/WgeNPscv4f/W8rJnYmWYgtn5W9zJkwOze5ylptsPZg3rz+WDO4UGSfC
 hDDLufFb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_072555_556096_DF26C33F 
X-CRM114-Status: GOOD (  14.76  )
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

Move USB-only register setup from com_init to qmp_usbc_usb_power_on,
so it runs only for USB mode.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index bfb94fa1a86cc52e1c67f954376d5fd8d321f4f3..d570ce486aee8e8a3cf3f7bb312a00bc1cd03d82 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -30,6 +30,8 @@
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
+#define SW_PORTSELECT_VAL			BIT(0)
+#define SW_PORTSELECT_MUX			BIT(1)
 
 /* set of registers with offsets different per-PHY */
 enum qphy_reg_layout {
@@ -535,8 +537,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	void __iomem *pcs = qmp->pcs;
-	u32 val = 0;
 	int ret;
 
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -561,16 +561,6 @@ static int qmp_usbc_com_init(struct phy *phy)
 	if (ret)
 		goto err_assert_reset;
 
-	qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
-
-#define SW_PORTSELECT_VAL			BIT(0)
-#define SW_PORTSELECT_MUX			BIT(1)
-	/* Use software based port select and switch on typec orientation */
-	val = SW_PORTSELECT_MUX;
-	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
-		val |= SW_PORTSELECT_VAL;
-	writel(val, qmp->pcs_misc);
-
 	return 0;
 
 err_assert_reset:
@@ -603,6 +593,14 @@ static int qmp_usbc_usb_power_on(struct phy *phy)
 	unsigned int val;
 	int ret;
 
+	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL], SW_PWRDN);
+
+	/* Use software based port select and switch on typec orientation */
+	val = SW_PORTSELECT_MUX;
+	if (qmp->orientation == TYPEC_ORIENTATION_REVERSE)
+		val |= SW_PORTSELECT_VAL;
+	writel(val, qmp->pcs_misc);
+
 	qmp_configure(qmp->dev, qmp->serdes, cfg->serdes_tbl,
 		      cfg->serdes_tbl_num);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
