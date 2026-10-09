Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC085CA6015
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 04:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXFOODf0ss6tbW4dDK+i1tq93ojhXIXTe0WPVYF1HAg=; b=ncWk7dTAHfoYo2
	VNAw8kG1IXiJfwRJAmnEX8QeG9f+7ptTF2yPXaMEZzBTC17CDb8WZqGU+K09jAv0V+LVPc3ynSIEX
	WsXhD8y4JOzZhPIQNOS43H3EjC/vXW+UrYbQ2vkd80vjwff7kr9ccCkchRaOfmdm5nPe/S2y/9pKb
	RIXWrwsLxukaik4Gwhc6VXGnVnEYrvz0YoKE/r/wVLmCp303kykWASBiMqH2SDLLoqEW61UtXVkit
	pqULUiTSUjgbVx0AEkwShAkDrMj5+EsCyRkE8hKgMfn/5v8iyPm7rt69F95g4XV2hmebrmf+kRBRs
	9BOWFWNOed4Jyq4RDAKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2ZA-00000005UME-2IFk;
	Fri, 09 Oct 2026 04:50:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF2Z8-00000005ULR-1h9p
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 04:50:43 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6993HLCS1089382
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 04:50:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	79Me7W2iKniVnetal+DAHqRpLGhIEUwBh9iL5gDtwQI=; b=WV1GvbumBbHSC27u
	NCuJtP143vNWChFtDnMGiqWhyluOSozTrJE+KCcjsaU4vaMepwLZPPxk2HdmhAAX
	WmZBZbuvaYBKIw1le1IdiWwM6P8GKoC6LKf3lso6DzCAkCPJGYN+xZQ2NPxgpWED
	wR6EOhmn/8NTqyCimGsD7dwSEx/+z6FffsFg7RHhAlXDTiLbXbug/VgLrM+NQCmI
	Kxm754TwHubaCTJXMyPWfod9fd6m0n9hPRqTg97eQzCvPvNMGq6huPO/eHjvdh68
	s6mrrnny0yrYXOiSQon1KHExQxukQupC8w/9dsiY7j8zUFpbfx7uhHePlPeUlMOD
	K7Bh9w==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6ekva8ag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 04:50:41 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so11465888eec.1
        for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 21:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791521440; x=1792126240; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=79Me7W2iKniVnetal+DAHqRpLGhIEUwBh9iL5gDtwQI=;
        b=ge1Ubt0W2qv7on0VJYx1ZhyVXGOXBltAQHkX9rUGNK1mH+pkLOkcp/RM5+s2CQ/V0Q
         gCL/SOtYS6nXUbHgivT8ZnCEIYvzLC5FqrRG9GEH71UXHISczyGLyAQzLaD9vF1LXnl9
         m2jk6csq1PToQKbprMrnZy5D2xRfadVdYhXGmLjDusEdOtCoIJt5sjRCdY6c9wxenbZd
         MUFY1Nk5XUwZujcJsTjFxwYhRjexyKKMM28gpBcahTaeRrMU4oVqKj7/lBfBR/73Ba1Z
         Pp6DIlcWyUDxjBV3Q7744pWuYFPwuLpzm0SQBlA1aG8pk3u2P9+opDkKpk29IAFxuCa5
         0suQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791521440; x=1792126240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=79Me7W2iKniVnetal+DAHqRpLGhIEUwBh9iL5gDtwQI=;
        b=ZUGhHLrP7BFQPEzHCpZCmIAXzhh+vBY4sZw5K0lQKgBCnvdmSSGY5z4jORePuXSrv+
         4KVi+zBR7FcD/D8hiSIm2XLj5J81fBqoTc1SCXsURJ0O22aEAU8U1n60+Ibs9ukthr3K
         JeKdb1rStFHF2UeUbIeXSwAvAih2IK3MZ0RQtZqFtbmjYmrwyL1pAuL2vwc4P0c6S8DB
         iM6cPjZwKJC/P0XbzinGd1Ej+TtMmN7timKiw8X8oAfgml5ncVf8FMIf10C6MaZNtEr5
         Mjs4lMeTOcj6GU7nc3M7rk2OIpDYmq8I51UU1GaBi9Gp1kOoCrJntlPAC2EMnq2f+YD/
         Dobw==
X-Forwarded-Encrypted: i=1; AKwUvBxHZFYhOPqMvlJaYREnrQdb1/pZTUtrA5HgtZp2pS+MXOVpMk55B9n0eAN0f0pkU5GAbgJUa2Vqp3M=@lists.infradead.org
X-Gm-Message-State: AFuF++lxqUHwH50a/auSfJwTszSvSnKPz0bLG9ZhjGgHdp1tUswVSdWc
	KaBtB+2kgehqvxA703OLaVU0poDKgJjktkkgNm5iKX82X8dZS53ys/uWU7i203hXKhryA+RqxM5
	yJT5i1bDa+IqnsdbHQsobQqSVGQDP1WSoBD+sBMT9Kw4OOC8xLCd8CIBYk+oh5G+ofXU0IdniJD
	bz
X-Gm-Gg: AYBFou0efolsDCeSzFir9cxr/Q17IvMFPiEFjunpIF+FR9PJX+YdiPRRdO40PXdN529
	HuotZALRmICI/PIGOFkzqqOPJ0KRsimBxNX69FYAwGIaiZWmlkX5HLgnwWp4CaRqJss316sqjmI
	EPIjtXa62vsLXFvsFjwWUYQwO/Wbc3LJGm6aGynrR7UEJjECn3daZDNbfo+1+IVE9+gmpWa/wAB
	DyyZURQLwM84bFA/ZFVnq+n3aS7ANEkfy1K2X7fG8R9SRCk7mkRZstYg3rTmx7yKrkJLzuu4zPZ
	epo45f5g4TcDke5pfMZmR95CQ2v2OT5p1YYbEMkzkDCLiMXB2wb2qmTKaN/fshNNvaS6QkXVB72
	vLSoXI9xdmr2IYR5t4ofQBrAU85xhb0yFbVysflHBvWxRq/38t0UVZPCowOvr86qw73n0XIfDGV
	v5ISmah0HS6a9W20OKizLBaumjCsNEvw==
X-Received: by 2002:a05:7022:e888:b0:166:97d:4579 with SMTP id a92af1059eb24-16a5dbfdddamr1087990c88.8.1791521440073;
        Thu, 08 Oct 2026 21:50:40 -0700 (PDT)
X-Received: by 2002:a05:7022:e888:b0:166:97d:4579 with SMTP id a92af1059eb24-16a5dbfdddamr1087965c88.8.1791521439511;
        Thu, 08 Oct 2026 21:50:39 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a442956asm4151609c88.16.2026.10.08.21.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 21:50:39 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 10:20:00 +0530
Subject: [PATCH v6 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
MIME-Version: 1.0
Message-Id: <20261009-phy-v6-6-50408e45bcc1@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: -hYNWYCQbNHz2OaajxOE0j-TELPA0gZq
X-Authority-Analysis: v=2.4 cv=csYOAF4i c=1 sm=1 tr=0 ts=6ac872a1 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=uK7fivOqSnnNXXB6uWgA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfX85B/49bD6cd7
 wvefKIb8kgM3vkEA6b6GMjZSUI0Yyjpo8SfgnneZfVm+GvJtQnv/enSMhxSPX0r8iNya65AJDdn
 +oT34kaIcVkhZqC2zCm+17dUSLyZaoQH3ELU1jd7RcTArFTJ/IolLRw5pzaUlGidMy33OQWLDyD
 lUFrc1abfp7tFF6aK1g6A06DhSmECbDEjFkEJhQggQ8hKy/qLZisQFcofCNM0FvzXZalbRgD1iB
 M5ACL3VyPTZnltjOYjAulu53TzX38kcC6TQEOmb1Aa8gQhU/cjO1Fywmp+QNeCoF33xaX69q1z7
 mldBQIz81ON9GwcdV5iRk8V8byEaeCshkzVyl39K871eI23gGX3fHCBojaUlNRczSf3E2OeEO2Y
 O8NBsTHrwKmopGaNo71qwgPnM0VSDzslifmm/3dCI0cYj5K0gARx7bY/1GQ5FRLgU6YkPh07vN+
 oN5niPP/lktxv4S7Cvw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDAxOSBTYWx0ZWRfXyPBcamGIV/bO
 rZYoALmPzOw1pkVZYXKpyoVjXEEZOyy067+y00n/9TQuUwv4SSmnQqTF/HYxYLU0+0m6/az2VSp
 2U/4YpfN0NPBYk4QvMQsGkYJoyIPnFc=
X-Proofpoint-GUID: -hYNWYCQbNHz2OaajxOE0j-TELPA0gZq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_02,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090019
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_215042_579630_821EF47C 
X-CRM114-Status: GOOD (  14.93  )
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
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 63 +++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 2e37b39dabba..0dae8369671a 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2020, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -29,12 +30,15 @@
 
 #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
 #define POR					BIT(1)
+#define ATERESET				BIT(0)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
 #define SIDDQ					BIT(2)
 #define RETENABLEN				BIT(3)
 #define FSEL_MASK				GENMASK(6, 4)
 #define FSEL_DEFAULT				(0x3 << 4)
+#define FSEL_24MHZ				FIELD_PREP_CONST(FSEL_MASK, 2)
+#define VATESTENB_MASK				GENMASK(1, 0)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
 #define VBUSVLDEXTSEL0				BIT(4)
@@ -57,6 +61,13 @@
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
@@ -78,6 +89,9 @@
 
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
+#define USB2_PHY_USB_PHY_FSEL_SEL		0xb8
+#define FSEL_SEL				BIT(0)
+
 static const char * const qcom_snps_hsphy_vreg_names[] = {
 	"vdda-pll", "vdda33", "vdda18",
 };
@@ -330,6 +344,17 @@ static const struct override_param ls_fs_output_impedance_sc7280[] = {
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
@@ -418,6 +443,32 @@ static const struct phy_reg_config hs_5nm_phy_post_tuning[] = {
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
@@ -512,6 +563,14 @@ static const struct phy_config_data hs_5nm_phy = {
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
@@ -529,6 +588,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
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
