Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87DBFCA5FED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7vFX8wulIWaXuchS1pm9nsFPurbjNNTYRn/KFAY0RE=; b=zSWDrD+ySfGFmb
	rzf2RU5dppdGRUgQZoR+dc9Wp5NkRSRLhiZ1U4UX30/amnru30Im4XPFLsYXmUHo/RMRZeGfRNESI
	8FVewsd9wraOeF1YoBGihjo6aesEcexn1RbY0A4zwWFs9vZ7aZ00fhTuIy4nyWo0yNCGhopLCgZLe
	YzaEjG66kmqv//bGiiQJbgaWOWeKfLVbsFCYCgNyVr6E7Ywf3gYT74H7EUngpRwTMrl7gueQt2kic
	6MqiCl7sFvvnaAH2M4WJBZrqLqAJDQbf6Aw511f8Ad3L3CgMemdcZv0RFuAE8wsDheOOKtWNcPZLG
	hixpjP1NUucx9HMiAIhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Z5-00000005UKu-2EK2;
	Fri, 09 Oct 2026 04:50:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Z2-00000005UJq-1AsI
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:50:37 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HAaZ1598043
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:50:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qUVEH4qPe/WvTV01E7edf1dmd38bUwh693Oze6d4mZM=; b=kP0nvFZCcq/POuD5
	B36ovih/5KeWFVqfYzFKvk4wMHHiqs0cpla4FQ5oXsPWRyj6mMg1dBs/GQw4JsI1
	V48td2D7LEIE6GjLTaxHumkY/GV2W4o6P4Duavi7/uhCalyDyV6P5PfJBPq91jFL
	9FTlzqa+i3rhaZYINIGztrTB5qJIct+v+dku14JojW2a9ihJJ8MhFITSbNgM0VXB
	gms/ohg137/Dg7DZZvbPEHeN1/2Hx2N5aITNmiDe+xeLmpyeRq+KTXcJJros2TWr
	2BQajE1Sz56trN3cBjSmUlM7tQYH0mAQLZR+I4WGHAHTx5SgGi+VDhi3C/Ft5Lx6
	OT0grg==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6nufrqqv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:50:35 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-152d1363a29so12908796c88.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791521435; x=1792126235; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qUVEH4qPe/WvTV01E7edf1dmd38bUwh693Oze6d4mZM=;
        b=geJ4ZO7m9kK1nURp6YqeDfOE8jjKuCzWMs+zogQl6osjUho6IDOyvaRltFfAPtfrDe
         vdFEiaf4Vd3SGL5OaM4gLifW+Gfg04aLOic+T8XE5OjhIrKwE46QludTN46KWoJuH/E7
         K+uOExFZ6hefSyJTH99PakeT8rOEJe7hjdhPUS+7gG1f9myiq7m2nBIqZ9DkjkxXpCtF
         6o7F271KvEKlmlVRSrA67gA8jYPyOpMzLA2h1VMY1n2eqw9ZEEgLOjes9tIdLCbEUguq
         yUQ2ebI8Om2Xc5Eg6bHLAzF1VR3Rqp/gEDJ2OWcEywndQ/Hrmnmk0MYYwAu18ZQO9Mgj
         81xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791521435; x=1792126235;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qUVEH4qPe/WvTV01E7edf1dmd38bUwh693Oze6d4mZM=;
        b=A6UJX8td1S18yOisjMyBMPg+/tS+n6D+o1wc0y93Y94eCAWG+SGkvzgK5R9tbq+NBa
         MwlTgRQqHdKTME+PRHusOj1Aa+RqhdpIxbvK/kbzLc+Ju4dP2pghxf8HOx2q5003VqKb
         ob2vBtOyS2lIjewLf4hdPxg/IQjYSnlEJq1FSk8dduOnhOLpysHgEoeLk/wCSp0L+5LZ
         7BO8nttpP7B53YiWfpTUgoaiq1DnBBf/xCqa/VLdgJV/GdUtgJOlHvKtT55t7Y6Hy70I
         hpzYCjcJG7Q2kBBW3rhIjRSISAxgLvyudsoaFnCQlkywMLCkRYYUHWqlVdwHNOClHsEg
         OTQw==
X-Forwarded-Encrypted: i=1; AKwUvBxaVrMwWoxD8nPrKEjp5LQNJ5ZHX21J2ZADFiQ9M0ynY3u7opaLlX0UI6A2TW0L6qDAulMoP18knaw=@lists.infradead.org
X-Gm-Message-State: AFuF++mjuvW/sqdBmx2J0ft/V8VTh53PWvCJ2XtB1NJdq20kvivgYwsg
	v7f6Dlk7kJjnQ7zTHMcZdlKmBkYsjebbyGU9X5sqwVtT3igsuaOQr1D0TDrD+qdx4pMlr5R+Ajo
	J1b3rDE+/lsOPG8/YNadaM9wtNJ9H1N7iIWf7XT8/DYgHULouHL/dVEM0akFp8jUFelAF
X-Gm-Gg: AYBFou1j63EiK1oVJbnYnOwPeV0wyglXGlUtN73IDZrJHwVV8quX0sX4+3Wr+FrUCul
	PCXr9auRDGW4T9jaRTS+YQWoCrIXn4sG7MSAMHbf0zgu85UdSgbyjOiEmme9NsviY9hcZpLOlMk
	71EZJq+b7pBLBWjxgVSduzgp7dgDYpN9AVV4UeU2U0CxoCFvXnk9e8Vo1kVgNcCSg9tpeHVR2Hp
	s6NrBA1f2M9LWKRc3VMbkxeOGsjIulfasf8EphcitfenrhHixT4xTJj71rO0Fpssxwwg38FBh/T
	PI1DdHuRR2SxNQWj3ebdEPWKdrvZ7fWHOb04mUrAourC3bycaoVUV6zdNL/6vl8tS1rmAmWG/lp
	FUrnqyYxJkeyk1CLZtbbb45KGG+oI3AVoV1dS5c3JO3bA+aKh63tBZMFsJg1L9URbM++U0a4kxz
	+Z5SHiAWDb2KUau9cUta/XJwku/a25Ag==
X-Received: by 2002:a05:701b:4518:20b0:163:d97f:96f3 with SMTP id a92af1059eb24-16a55481281mr929360c88.4.1791521435010;
        Thu, 08 Oct 2026 21:50:35 -0700 (PDT)
X-Received: by 2002:a05:701b:4518:20b0:163:d97f:96f3 with SMTP id a92af1059eb24-16a55481281mr929330c88.4.1791521434444;
        Thu, 08 Oct 2026 21:50:34 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442956asm4151609c88.16.2026.10.08.21.50.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 21:50:34 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 10:19:59 +0530
Subject: [PATCH v6 5/6] phy: qcom: snps-femto-v2: Move PHY init registers
 to config tables
MIME-Version: 1.0
Message-Id: <20261009-phy-v6-5-50408e45bcc1@oss.qualcomm.com>
References: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
In-Reply-To: <20261009-phy-v6-0-50408e45bcc1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=afn0Dhot c=1 sm=1 tr=0 ts=6ac8729b cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=dpbSYRCFOxhwq305YcMA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfX7zOyviP9uCko
 IsB3Bi75v4NDFHIT1+2e21cl97iGNXII3n5N1ztG4ASeFwZOthWCUB7UODiLHOHTPKS4UcrMG4I
 Fol+tJlfAevLVaVKdsDy1Y2mmnqTE4s=
X-Proofpoint-GUID: RgTXwTH1ac5o74dsTC8VogNr4G72y850
X-Proofpoint-ORIG-GUID: RgTXwTH1ac5o74dsTC8VogNr4G72y850
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfXyZ1RJpepEBpA
 1x9xoRG5zcL2lH90ZDGlY5nCpx5fWb92ZFJsieQKBXhPelaQVx546rSmRNVKw2lkAMsLNuO52Ih
 7J7KUOGwH0s9xjtNPtenzqrtzUFTWXc7+8rlXLSj2doM9jPVTwsQSXR/jax0FGPyIy6cJB/DzXc
 eQKuoX0rG57b61TtI/ZUlTTahC+62ZJ4bgHxgu3RzQ2din+xc3P9Vi0BQbwG2bBUY+ejfVpeTvi
 2A+i1vEIF5AU+tuRcv7J/lbC+J2ul+ZaAWjjVy8sVHMxYJdQhDIPfYswNutM4dxaFZLzhsLvHRK
 v+W61PHTfsNsDcGYW4YqMqIpLuv5Hgc5vn2vafZwUBadGIkug+lhEa6XY0Y5GA08B3+Zv+/VH7R
 PytcW326v84Xv7zJAuSboOydWiR3jWPEbT2S9zQ0q8KrgYLocXN69ehsDcSmpLKqXyHERH/63jD
 JKnD+wp1Uv5iqaxkb7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_215036_328757_E14E4D31 
X-CRM114-Status: GOOD (  19.01  )
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

The driver currently programs the common PHY register sequence directly in
qcom_snps_hsphy_init(), with the fixed register writes split around the
override parameter handling. This makes it hard to support SoCs that need a
different sequence or different values.

Move the fixed pre- and post-override register programming into per-
compatible configuration tables, and keep the 7 nm override parameters in
the same match-data structure. This allows the driver to share the common
sequence while adding SoC-specific sequences for future platforms such as
IPQ9650.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 129 +++++++++++++++++---------
 1 file changed, 83 insertions(+), 46 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 0ead37c0dcfd..2e37b39dabba 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -104,6 +104,20 @@ struct phy_override_seq {
 	u8	mask;
 };
 
+struct phy_reg_config {
+	u32 offset;
+	u32 mask;
+	u32 val;
+};
+
+struct phy_config_data {
+	const struct phy_reg_config *pre_tuning;
+	const struct override_param_map *override;
+	const struct phy_reg_config *post_tuning;
+	const u32 num_pre_tuning;
+	const u32 num_post_tuning;
+};
+
 #define NUM_HSPHY_TUNING_PARAMS	(9)
 
 /**
@@ -383,13 +397,39 @@ static const struct override_param_map sc7280_snps_7nm_phy[] = {
 	{},
 };
 
+static const struct phy_reg_config hs_5nm_phy_pre_tuning[] = {
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
+	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
+};
+
+static const struct phy_reg_config hs_5nm_phy_post_tuning[] = {
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2, VREGBYPASS, VREGBYPASS },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
+					 USB2_SUSPEND_N_SEL | USB2_SUSPEND_N },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL0, SLEEPM, SLEEPM },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ, 0 },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0 },
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
+	const struct phy_config_data *data;
 	int ret, i;
 
 	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
 
+	data = of_device_get_match_data(hsphy->dev);
+	if (!data)
+		return -ENODEV;
+
 	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	if (ret)
 		return ret;
@@ -414,24 +454,11 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 		goto disable_clks;
 	}
 
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
-					UTMI_PHY_CMN_CTRL_OVERRIDE_EN,
-					UTMI_PHY_CMN_CTRL_OVERRIDE_EN);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL5,
-							POR, POR);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0,
-					FSEL_MASK, 0);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
-					PLLBTUNE, PLLBTUNE);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_REFCLK_CTRL,
-					REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
-					VBUSVLDEXTSEL0, VBUSVLDEXTSEL0);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
-					VBUSVLDEXT0, VBUSVLDEXT0);
+	for (i = 0; i < data->num_pre_tuning; i++)
+		qcom_snps_hsphy_write_mask(hsphy->base,
+					   data->pre_tuning[i].offset,
+					   data->pre_tuning[i].mask,
+					   data->pre_tuning[i].val);
 
 	for (i = 0; i < ARRAY_SIZE(hsphy->update_seq_cfg); i++) {
 		if (hsphy->update_seq_cfg[i].need_update)
@@ -441,28 +468,11 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 					hsphy->update_seq_cfg[i].value);
 	}
 
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2,
-					VREGBYPASS, VREGBYPASS);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
-					USB2_SUSPEND_N_SEL | USB2_SUSPEND_N);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL0,
-					SLEEPM, SLEEPM);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0,
-				   SIDDQ, 0);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_UTMI_CTRL5,
-					POR, 0);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					USB2_SUSPEND_N_SEL, 0);
-
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_CFG0,
-					UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0);
+	for (i = 0; i < data->num_post_tuning; i++)
+		qcom_snps_hsphy_write_mask(hsphy->base,
+					   data->post_tuning[i].offset,
+					   data->post_tuning[i].mask,
+					   data->post_tuning[i].val);
 
 	hsphy->phy_initialized = true;
 
@@ -495,14 +505,38 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct phy_config_data hs_5nm_phy = {
+	.pre_tuning = hs_5nm_phy_pre_tuning,
+	.num_pre_tuning = ARRAY_SIZE(hs_5nm_phy_pre_tuning),
+	.post_tuning = hs_5nm_phy_post_tuning,
+	.num_post_tuning = ARRAY_SIZE(hs_5nm_phy_post_tuning),
+};
+
+static const struct phy_config_data hs_7nm_phy = {
+	.pre_tuning = hs_5nm_phy_pre_tuning,
+	.num_pre_tuning = ARRAY_SIZE(hs_5nm_phy_pre_tuning),
+	.override = sc7280_snps_7nm_phy,
+	.post_tuning = hs_5nm_phy_post_tuning,
+	.num_post_tuning = ARRAY_SIZE(hs_5nm_phy_post_tuning),
+};
+
 static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
-	{ .compatible	= "qcom,sm8150-usb-hs-phy", },
-	{ .compatible	= "qcom,usb-snps-hs-5nm-phy", },
+	{
+		.compatible	= "qcom,sm8150-usb-hs-phy",
+		.data		= &hs_5nm_phy,
+	},
+	{
+		.compatible	= "qcom,usb-snps-hs-5nm-phy",
+		.data		= &hs_5nm_phy,
+	},
 	{
 		.compatible	= "qcom,usb-snps-hs-7nm-phy",
-		.data		= &sc7280_snps_7nm_phy,
+		.data		= &hs_7nm_phy,
+	},
+	{
+		.compatible	= "qcom,usb-snps-femto-v2-phy",
+		.data		= &hs_5nm_phy,
 	},
-	{ .compatible	= "qcom,usb-snps-femto-v2-phy",	},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_snps_hsphy_of_match_table);
@@ -541,11 +575,14 @@ static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
 	s32 val;
 	int ret, i;
 	struct qcom_snps_hsphy *hsphy;
-	const struct override_param_map *cfg = of_device_get_match_data(dev);
+	const struct phy_config_data *data = of_device_get_match_data(dev);
+	const struct override_param_map *cfg;
 
-	if (!cfg)
+	if (!data || !data->override)
 		return;
 
+	cfg = data->override;
+
 	hsphy = dev_get_drvdata(dev);
 
 	for (i = 0; cfg[i].prop_name != NULL; i++) {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
