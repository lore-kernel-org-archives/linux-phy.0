Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40112C61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 06:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7FfDEQybJKRBz3b3TLTV3Gat+hz3evuC59RrJs0jG8=; b=Ewt3KQ1NkUqLBB
	MYk9qqakFPOiUW3sbozlO/GxUFHMggffc5GMvKLZsBUUGnhjDqYjqpnIe4kOpX8unn6IUOLHMON6h
	3SDoxdl+xom/D5wa8BhG9ruiZrJBtfwWyIVPDgPkIf8MLhgQuLUsB/7xVN5KgGTjpqxXdxSaz3Zk2
	/Wgtg+OeaDK83tDEwXW63whuMSOE8Hzi74VWVtPPMQ2EQf3e4WvlzvI6Ois0NQl0Yn0WFuQCemT5q
	CBevfM98DPoJrgkUh+cz9eQvmCD31znS+rLw7r1uyaW8023GzmFD89DOj+OyO+NOm2OKhbthXPc1R
	DXB1Y9uUcH6M5D0txn3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1HcH-0000000B2kf-3x7Z;
	Tue, 01 Sep 2026 06:05:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1HcF-0000000B2kL-0zyO
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 06:05:04 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68143Pnm1646261
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 06:05:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QT+YF61f5o/fn7STVpLg6IhJeyrRCRNijTHEH9W41Es=; b=nsbEAiqqVXuzBAny
	oIS1jSrUNGCeFMtFfiEULZpt8FCIXgz5DmcwZAh4/aer9FzeHsSBPsHYnPYUmZIB
	HZDfZQls74P1yiGR2ITujH3kQCFh7IeKHr8ckZ136IYp6SIgRmSOmEVTS/IMd6Ed
	fci3p5eNjk8KrsnUyAXL1LvfwR28b4G/aZW8THVOqQGyj9Lxy+C8TvLlCAnvhrjb
	tOHGx9rZughwVt6Pbv86YwJcoG9IuoYBHA2Eds+bS6G3gvnWHXwmaWS4eJbJ5BgU
	2fUjqoF55zWN6OuZn8U8UWztelyPb6eOByUA0A6NCIsTwqKeEsw8suav8kc1Tmzj
	fP9Raw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdqbh0cxt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:05:02 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2d55d8cd938so74475915ad.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 23:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788242701; x=1788847501; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QT+YF61f5o/fn7STVpLg6IhJeyrRCRNijTHEH9W41Es=;
        b=fUaDgSFbW7x0Oc5pFZN14uT5IonM4rXwIOrsJFf9Oh5FOSfa76ExZ9V2Y+g07f2d4K
         I6uYDVQ37bVdny+PvTgE0vl6f+3daZcLre75LQVefydrxHI89BCrTaC6EKWUnxWWN/yi
         6FRdZdce7lRxqEwPHZcPWf0v/Yg5C0zX0aJfXpeO1RLyTvPTKl9N6Ogrp1y/ux+1pgvW
         VyRBtUCwPt5Oc5B1PQj+/0/1XUwAhJqbmmjeBOHRpyb2hspRTDXPZtD2aGIAdOns9ZUt
         KhucOFWyb+3Wg20T1XmCVZm1JcApqtg3sOdLY99nOaV/vI6jscGxWbK4lr6hFZF7k509
         bLxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788242701; x=1788847501;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QT+YF61f5o/fn7STVpLg6IhJeyrRCRNijTHEH9W41Es=;
        b=eopKIomAZsvwUSKbnHPDpsBv49/6en9k6ypKGvnsUOG1Wri+o6V1qG8NsKT5zFU/nu
         wEQ6yCQClK+Ld/FvCc9NjhswlR2ETh7q56SKWSuupQWUJ/m8/uw1R0sjIKQ/0mA6oNY+
         MO1xX0kJAxHnR8DTMkEj92pJoK2Rm5OnYjvSA6ujSoqKpzdE+dkzGbvGPQkdxD7OAISv
         j8p7093p4JyrjE9ZGyWb29RmwXQSKAU3Krc1K8po+MVpFESZ3FswPriiD4+TgUBdKFPa
         F+awFA0pJvE0p328pXci/mf3YR//rDAR99o3OpUQyAQRJxR4X6icNJXfNh0Ji6qRY3Ej
         oFAQ==
X-Forwarded-Encrypted: i=1; AHgh+RqMh6aQqhARpw1wV03qJkRcpjtoCsShmNy3UOQcKlhuoDxiysN82gMO/oh6HuChX24VfetCwYg/AdI=@lists.infradead.org
X-Gm-Message-State: AFuF++loVi+7qcBGt47fYBp6XElZdaYZ1fCB70pCf40F+7wAUgDtKpvV
	jUJvmg6hAqv5eo7tGe66eNomRJ0FIZJsWOvfUBMRoPjAoQHr/6O467JeaeygysPz3iaWnnPtrMh
	vDqzA9Jz96VEi3Zhlym/5xZtnam2nxRLIJ2jtRoYoAMJhwW6vCwaAwQi72/D0Y9NO9Cjs
X-Gm-Gg: AR+sD11qZDw0Vq6VikhriUDddLEe0u61bCxSm7iNLF32V2RdXrexECi3MwmYhDkEPzj
	1SSHUzw2+XVzDM3CgTiM7zLMWAhZ+kX2dMxwKRcyXwFB/ZBJIYWgUCBQKbVSsSyE+BhiuaLAyc/
	MYasik+la9xoXvbliqan4FS93Ln+2dykZpGlaFB5q76y9CZhqs2MSna5danyk+tg+B+MRWrFG/l
	AD9vT4c/lWSVkKNI3ruIshYY5Dlg83hOXVFY1B1tJGH8YhYJsPUeseXm14+rwwvw9BZPLd/tUnf
	OGhQvfcR4jLAw1h77Alq9rmJ9rX8roklXnOOgsMchx0+9W8Xtwc88YxbeOHQEOqYORbjEHLYTEF
	odn8h9v15v/Qj3/5E04RDkw2pBcKxTsQFztqnhUbmukK40RNV/DswbYef+MlleMqsW55HgorRTO
	CgtzOcjzvzBteJerUKkqmJVtAUXxt5xQ==
X-Received: by 2002:a17:903:390d:b0:2d8:d4ce:7e3c with SMTP id d9443c01a7336-2d8d4ce8391mr331992415ad.17.1788242700928;
        Mon, 31 Aug 2026 23:05:00 -0700 (PDT)
X-Received: by 2002:a17:903:390d:b0:2d8:d4ce:7e3c with SMTP id d9443c01a7336-2d8d4ce8391mr331991055ad.17.1788242700145;
        Mon, 31 Aug 2026 23:05:00 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa20e2fsm35855800eec.28.2026.08.31.23.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 23:04:59 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 01 Sep 2026 11:34:23 +0530
Subject: [PATCH v2 5/5] phy: qcom: snps-femto-v2: Add IPQ9650 support
MIME-Version: 1.0
Message-Id: <20260901-phy-v2-5-cc93d2f3b1bf@oss.qualcomm.com>
References: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
In-Reply-To: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
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
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfX+dDSJsJb70dx
 lxShNaGQvHVY3PVAqE3UPKTtInlsNLkIdLFKgkQhsFe2lVDVIxy7wvKktwArPsGS2tCXOs6Yetn
 YcP5w5kIbVtyQD+YejHNPXO/FyHxDeQ=
X-Authority-Analysis: v=2.4 cv=R9wz39RX c=1 sm=1 tr=0 ts=6a966b0e cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=Q9t0gmS3rCGuRMBXcNQA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: TJMhPWvekmFOKXgJvtbrkgwZEai_IW8i
X-Proofpoint-ORIG-GUID: TJMhPWvekmFOKXgJvtbrkgwZEai_IW8i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfX3Y+u94d55i1n
 V1ECSnOJJbUPdIlUF6caLV8ltnuAbQgQZW7DPpj5uS0zKL4KDUC5j8DNc3uyP2BjsKP/RXsSOjj
 fn6TOpfPGxVlOmEs+2NfmpJlnHnh4VKgXmpKF+g6UotQb4DP69/neE+Wjtz0G9c9qSH0v9+vw8c
 mT4ZWsDdFONH1PZe0zDFIgG5LY3IMtUwzoe0rm9jRPh500U42IW+PbKh26hQ220XfrFC/Kv2aUS
 WjluBQEMILp6abcUyrc/LsnbV/JDj+svMlGDEW88CwRKzQxV38JoFDB9xbch5hzz7ZDKwDd6Adc
 g/ursYZCc1EbsBgkKYHQgIutv+JzPhH5ZaQWX+/Oi/attRxJ/Pr9pJPdJ4Ltbc36LiMWMoylYfJ
 EbvaNSqM4wlYv12SEtymxvTKN/gsqBTtGvAj9Z7jRPKBFl6nRbJiRX/eLfDEsunrl3g96JdzJsM
 n6cMlQEw/UONKEQ+JqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_01,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_230503_399353_4734C71E 
X-CRM114-Status: GOOD (  15.27  )
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

Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
on this SoC require a dedicated init sequence and override parameters
before they can be enabled.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index b6bbf2b570c7..8957f208bc51 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -29,12 +29,15 @@
 
 #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
 #define POR					BIT(1)
+#define ATERESET				BIT(0)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
 #define SIDDQ					BIT(2)
 #define RETENABLEN				BIT(3)
 #define FSEL_MASK				GENMASK(6, 4)
 #define FSEL_DEFAULT				(0x3 << 4)
+#define FSEL_24MHZ				(0x2 << 4)
+#define VATESTENB_MASK				GENMASK(1, 0)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
 #define VBUSVLDEXTSEL0				BIT(4)
@@ -57,6 +60,13 @@
 #define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3		(0x78)
 #define PARAM_OVRD_MASK				0xFF
 
+#define USB2_PHY_USB_PHY_HS_PHY_TEST0		0x80
+#define TESTDATAIN_MASK				GENMASK(7, 0)
+
+#define USB2_PHY_USB_PHY_HS_PHY_TEST1		0x84
+#define TESTDATAOUTSEL				BIT(4)
+#define TESTCLK					BIT(6)
+
 #define USB2_PHY_USB_PHY_CFG0			(0x94)
 #define UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN	BIT(0)
 #define UTMI_PHY_CMN_CTRL_OVERRIDE_EN		BIT(1)
@@ -78,6 +88,9 @@
 
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
+#define USB2_PHY_USB_PHY_FSEL_SEL		0xb8
+#define FSEL_SEL				BIT(0)
+
 static const char * const qcom_snps_hsphy_vreg_names[] = {
 	"vdda-pll", "vdda33", "vdda18",
 };
@@ -330,6 +343,17 @@ static const struct override_param ls_fs_output_impedance_sc7280[] = {
 	{ 1310, 0 },
 };
 
+static const struct override_param_map ipq9650_snps_6nm_phy[] = {
+	{
+		"qcom,pre-emphasis-amplitude-bp",
+		preemphasis_amplitude_sc7280,
+		ARRAY_SIZE(preemphasis_amplitude_sc7280),
+		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
+		PREEMPHASIS_AMPLITUDE_MASK,
+	},
+	{},
+};
+
 static const struct override_param_map sc7280_snps_7nm_phy[] = {
 	{
 		"qcom,hs-disconnect-bp",
@@ -418,6 +442,32 @@ static const struct phy_reg_config hs_5nm_phy_post_tuning[] = {
 	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
 };
 
+static const struct phy_reg_config hs_6nm_phy_pre_tuning[] = {
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
+	{ USB2_PHY_USB_PHY_FSEL_SEL, FSEL_SEL, FSEL_SEL },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
+	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
+};
+
+static const struct phy_reg_config hs_6nm_phy_post_tuning[] = {
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2, VREGBYPASS, VREGBYPASS },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, ATERESET, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_TEST1, TESTDATAOUTSEL, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_TEST1, TESTCLK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, VATESTENB_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_TEST0, TESTDATAIN_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
+					 USB2_SUSPEND_N_SEL | USB2_SUSPEND_N },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL0, SLEEPM, SLEEPM },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0 },
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
@@ -507,6 +557,14 @@ static const struct phy_config_data hs_5nm_phy = {
 	.num_post_tuning = ARRAY_SIZE(hs_5nm_phy_post_tuning),
 };
 
+static const struct phy_config_data hs_6nm_phy = {
+	.pre_tuning = hs_6nm_phy_pre_tuning,
+	.num_pre_tuning = ARRAY_SIZE(hs_6nm_phy_pre_tuning),
+	.override = ipq9650_snps_6nm_phy,
+	.post_tuning = hs_6nm_phy_post_tuning,
+	.num_post_tuning = ARRAY_SIZE(hs_6nm_phy_post_tuning),
+};
+
 static const struct phy_config_data hs_7nm_phy = {
 	.pre_tuning = hs_5nm_phy_pre_tuning,
 	.num_pre_tuning = ARRAY_SIZE(hs_5nm_phy_pre_tuning),
@@ -524,6 +582,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
 		.compatible	= "qcom,usb-snps-hs-5nm-phy",
 		.data		= &hs_5nm_phy,
 	},
+	{
+		.compatible	= "qcom,ipq9650-usb-hs-phy",
+		.data		= &hs_6nm_phy,
+	},
 	{
 		.compatible	= "qcom,usb-snps-hs-7nm-phy",
 		.data		= &hs_7nm_phy,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
