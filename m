Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B16FCA5FFE
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 05:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7vFX8wulIWaXuchS1pm9nsFPurbjNNTYRn/KFAY0RE=; b=pK3r/KriR5s1wl
	IwqURUA4HnTr+Usv+JHkCOtSslL2JbJMqnPl6rykYCbm85+9CcZqngkINX4PhO3sT1RlAb+77NRr6
	8jJBmI1r9LhCjAdcVIH8qlKq4vGEjrRt76wbKNPtFBriCyXwGBvoQ+tMypOZ0FTY53Mmr1a7MrytZ
	32LCEB1s3eozTyQat9977Q0Wys8qLiRJY2cftNZZciklwpmpj/ST3TfxcUzKqDyzMztC5uBnbjjYs
	Io03OZ+Si65oq6C/0VYly5zSgj0oKkVTOvJAS3W2qN1jL43QVyvEAdJdiTlctZJWAb//jNjxyaNB5
	Zb3jGJ5Oho//T/VXD+aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkU-000000004J6-0TfJ;
	Tue, 06 Oct 2026 05:29:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkR-000000004I1-0iB5
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 05:29:56 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6963AVbU4157863
	for <linux-phy@lists.infradead.org>; Tue, 6 Oct 2026 05:29:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qUVEH4qPe/WvTV01E7edf1dmd38bUwh693Oze6d4mZM=; b=FoUMA5RdEZqACW9S
	Odxp2Q9WbO9JTNPtAEZdYTelvG0gMiGCLIIGaSoN0yIaucmoPbqvBPw64GaDW7zr
	IPyE+HdJnJwmxye1kJtosgb3odILmmJhYPyF8o6c4liaN2pi3ViZjnMJSeEHFN1s
	6AoDdoYZcAX9XLWMb77JR5RrU8WPMaeZr+LSlnh77aHFC5FEZ41r2c0H1RCJa9mH
	DWL23LKIJxgULVxTxedttGkBoXLXGX5GEIv728Y78/hNGKlBopv7PNbuRimML1DI
	//Q49YWWfZ8qhx7aBhr4OAkEaatPO9PtmHZ9FhptZqSqEcKnZdTDKBaRj+J3kkzI
	aLGoew==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h4bhg3jh8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 05:29:53 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3510a481ae9so4583451eec.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 22:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791264593; x=1791869393; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qUVEH4qPe/WvTV01E7edf1dmd38bUwh693Oze6d4mZM=;
        b=h/5xSQGjxQQj+pNSR/L1Dyr0zVfGD/mm849F1XfN1peHrSzum2dCPN7teGPOcsq8QA
         EjnUpDyR79qwFgP1/kZLbMEx3+jFd9tT4Hp5ltsgkC184L0K13j5uqPGCPlT/t6GeyK0
         8l4DV5bITegzk7S+U6wOC2P2U1js2wiA9B4EFN51JWLAX5dpstybZn4/gd6xZzhdAUYm
         k0xfssA+DKvdDwYYZ9/tNsJ6fOLwOkuTs02Y/NJMFSE+PYqL2Zt3acmREoXDFQzxRHIw
         hxk1HWSucKiFO3+xufGN6ioE6/dUniNP5MrGAJoRroFX11d84QctYmGPiYN9tn4hSzBs
         uZlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791264593; x=1791869393;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qUVEH4qPe/WvTV01E7edf1dmd38bUwh693Oze6d4mZM=;
        b=AHh0zu4CnGBAuBVqtoEvtwxErQjrbtI1C2fjAGAAyu9kYr86KAwksTGoW826oCgLWV
         6s+fZZNikdfuw0N3L/PGKl5A3iuuL4uo7OElqpeKr25jbR8jBBp/fAXB2ulCViCUm2g+
         sc9aMWYlpGxnxndzeDQzd88bTrapZbzbZYexpmhxKXJZ6TzSKecakAS9WQEKROkKlyGJ
         wyhRsGAT24Fmot/fA/uI0v78fA+/U44bC17TQ7/oZ5jBYHbBnbbYrPfl9D9m9EIb98P2
         IN4TLKGeyjhJ26DIb86qvvvEokhT+f0il/Vtq6oHgyyoo5ljOi8IyiRNFjUepafrl2yO
         h+mg==
X-Forwarded-Encrypted: i=1; AKwUvBwo6tmE1HVPT3zfuvp6g3zjg4k+CVnWF08IkqODqxfzQdTJvQOg9sFpsLvEzUA5s/4X3up51FvQR+Q=@lists.infradead.org
X-Gm-Message-State: AFuF++nHh6mCYFRlQS/SH3ThfoOLyyjYZHrmM5xwE7QU3X3jgQQ31NIU
	3wzab8OlWLrQv2mSK9iK6WESNDLo1+sjDKIKJLFKVNEY/9e9V0AuR9ZuPaca6qleywCN3FhLPDz
	5IhXdGvyhJw6YYmWUf2oFf8JI8EmqiFZEmk4V55Ab7xeu68wQOlg9GTpnHyfJik8uXLas
X-Gm-Gg: AYBFou3c4Bq5AKyqBoo/FGo9lNbIpacg+0EEp09A4mwEKRGsiv/MHp9GTt7fJxv3Dod
	/9NgBIJ+edtS3R9itX6IXgZg60mmJTH3fpg6gERKrLstVeG52HH0txTjJfY+lD8RPh47a1A8Tem
	EQBvhFfQEBN1mtic+iU+rDt5xdZ2zZKzYfwYB1lWZe1A/2rwcHj5rsDNnnFX4v/DHIyjlaSv69O
	CxKb1gDiZ+b9AtoVt/hCyCMOeoT6e+6DCgbIYV6jt/dh0BaFLwo2GlNlCn8awvLcQ5bM8ISIAnH
	F71CUnGryRhFY0KBWJ4HIedcd+WCRnd94KYieMoRIs4cQcUdVCuW1dMAaX/9m31TigSPvg6dAIk
	FsFbkC9TYz5G6wdY23SpLW0GgwFXdlrGKHL6aJpbC5+kV0M3y4YXIXOYqyefxVs3VjYL9wZtji2
	OBAUf7idk4pmaIM/Mk3GytacXLfHMn
X-Received: by 2002:a05:701a:c950:b0:15b:afce:62c2 with SMTP id a92af1059eb24-15eca925216mr571896c88.41.1791264592580;
        Mon, 05 Oct 2026 22:29:52 -0700 (PDT)
X-Received: by 2002:a05:701a:c950:b0:15b:afce:62c2 with SMTP id a92af1059eb24-15eca925216mr571858c88.41.1791264592016;
        Mon, 05 Oct 2026 22:29:52 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-15d85781d49sm4017403c88.16.2026.10.05.22.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 22:29:51 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 06 Oct 2026 10:59:19 +0530
Subject: [PATCH v5 5/6] phy: qcom: snps-femto-v2: Move PHY init registers
 to config tables
MIME-Version: 1.0
Message-Id: <20261006-phy-v5-5-cbe9330a6449@oss.qualcomm.com>
References: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
In-Reply-To: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: DEgJd91uAGyJojtuPN1dpDO82py61JPt
X-Authority-Analysis: v=2.4 cv=GMGdgeNK c=1 sm=1 tr=0 ts=6ac48751 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=dpbSYRCFOxhwq305YcMA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX9jCWRsD2UJ0D
 C5V6FLSDT5ag2UcfhPBo57lxghi8I7it/4Ku9Vu9i7Blh0a4c2MWgVOCICdVmUP+3bKCe6/mZd1
 p8ILQFEl2eDmxp3AouIkKaR5HjDSaCM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfXxrZ/Z4Me9j9o
 LkPRRju22J+HxgZI7Em/vNui3cy3qs2qdhgD/AY6ixhWIwEWQakVeBdLUXvnocHy4lvcXZV2C5/
 LyZciHWzoTkYu64Ar5R7K8jD5VyNlKTEbirnjkhpesfeRPiz3ltuY2IKIGhFjw2UXQJp8R2FyxY
 uHp5JptCvA4gOhwa74vWLK7q+HnxM9eDscBckuJ4Zvh55CcDzCsMIcihM9cKigiRtr7w3rTU7/p
 DVXJ93sFCbfOU+X0Ya4zhCFtAUQ5oSyFIi2c3gls+KY4i7I1x3svZb5btS+U/BO092KbxuJnOy5
 DjRVz2lzCN6mb6LimuA8XYK7e0c+ZdY0b+si0c4dxCiwmx9zgWin1t13oSpDhrNKx6MjcmUCeQp
 gqVtk2elsRwczOPboo6ChR707xSmfsXTdDVSD2gPWcRaK2ew8/a77f4Dh766KtuhmIhEUNKmy0i
 w0se5H6wRm4S4h6M2wA==
X-Proofpoint-GUID: DEgJd91uAGyJojtuPN1dpDO82py61JPt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-06_01,2026-10-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610060021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_222955_429237_3A6895EE 
X-CRM114-Status: GOOD (  19.42  )
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
