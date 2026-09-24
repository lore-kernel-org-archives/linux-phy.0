Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72BFC98314
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 06:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7FfDEQybJKRBz3b3TLTV3Gat+hz3evuC59RrJs0jG8=; b=UbkZHGVH1C0vd0
	GdvkzytpV0kK7WsOPwWBycA4wiOjjw3Xj/p5v7Yzk6xZv47QsTVLwFlnNm3NGNrm/StcmGOhUnpDx
	B3GUes0WTvCigL6gvJh6bvna5d3POmOiXx+tSVhoZbhtCMmx9KgtBKbaJtQcA0aRtX8MOz3Kt6lOr
	aBznq1RHUqFlbIuFXkyqXlf8y2BdL1Bd6r5DUD7Rg3ukZwgwNVzWO14Zg1thUYEnvX85D5v0ur65b
	jDdoKkI/Cm40MshIahuWlbG1L552dtfoWd7cjxltBAAyEcxHURGT09qraLyu682gIyn4fiCU5pyup
	UFma7jg9EP2kHfIEjuzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cfS-0000000A7sY-1aqI;
	Thu, 24 Sep 2026 06:10:50 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cfN-0000000A7oO-3hg5
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 06:10:49 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68O5eLuh1278331
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QT+YF61f5o/fn7STVpLg6IhJeyrRCRNijTHEH9W41Es=; b=YqxEbuE9KzaAGMk5
	oxX3v9z/OMB4yhLcrRaiBoQrUIQ5kUYcReGc5tcXemKQ29rZ6UFEfK8KZLpq3CH6
	k0TWYYJPyI+klV4CX0P28tyumwxlFed/76w0MKzV3LejtrxUpWGy+B8O3XVrV+lP
	qhMgdKSMJdZ2oSdZTArX3HVXuuF+V8u7VyTqdYapbIWAnpNMqyIbyfxY03yBtKlc
	o1zODpAKFmq7DCxnuA5Zm8gAVUtWl5AICd6pF5D2JoYzrvLFsWORjSrEyewZcLFD
	NkABBeRHHkTr/pz7ufdm2IMHQExow6NqUJMYfwYAsjRg2QtQhy8Q+H8vl6Ze0JVf
	21uydg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvhsb2vyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:44 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30bcb065bfdso2541126eec.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 23:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790230243; x=1790835043; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QT+YF61f5o/fn7STVpLg6IhJeyrRCRNijTHEH9W41Es=;
        b=Cz5Vdk4/W5+RkuZyRkMbIPvOT+o1E04TGdkaahVjGlQW0reK/4Ywpa57SFXHTTKUvH
         diyseUU7xCo4QiO1gkvM1GrpKxY9dObadNMUtBbvK39SpBcFL1XmT8RDF7JCZEX/mq64
         NZeiiJpR6VJgWbwkmN6mStIikQpwL/wKL0ryO1gcsTCuMIGYxbAGBPt7ci4P4l5Cz+Lm
         VZySt4ZgMVMPECUyK+dGGQRtUbyfImDNQFWaerwqQVbRzBbGT88T/dCTO2JR1jz3OUFw
         N+Kzs3r763Rmgarbs//Lv933exIr3GVXD90o/z9zCHOEtugCNGZsA9MFXeE2vSK2Kn/u
         i42w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790230243; x=1790835043;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QT+YF61f5o/fn7STVpLg6IhJeyrRCRNijTHEH9W41Es=;
        b=URJk01lJ1k1EKTFSS43utpTVP6TU9Iu29jx1jVI6Krwx7ePFpOhZRNmtjKmj5hWZw0
         zf1B5L78yn31oFNE5cErvpLD4R0ljjizRM7qTxjDECAS7Ht4VKUgk6MC4S9c5s2sw92k
         wMsZirqMa8SZ2VY3ePQndtI3aCpqAwdhdbZolCpTjneTjK5rZbp+BGfWLhwAh0VCIA36
         Gb/14KzKrLpr/sGgD+IrGXAU9tXWSHXCTBry0YbQW6T4BysWxb70sePZ/lBv0JEAy+dV
         wsMkr+5dA1H6RsgVk/6HXQNsVYKCc+HfbBJvevX4/+uHYGI40EAvI9EwssvwbCs3MV+e
         gWJg==
X-Forwarded-Encrypted: i=1; AKwUvBy0jGqMCUM1DbF4R4SEtevc0nUtfohTYhqEbxRxvVKD3x9WMscPePX6kP5KuyWLq1fRh9ehvmIV+3Q=@lists.infradead.org
X-Gm-Message-State: AFuF++lXKYScoYUdTSWzfJqcT9Bx2+P15CPI3KhE6D3Y4IFTNsWed+ix
	iSWd0n7BTOoy61zuInRGpvPEKNtv8RUl5sGA0iciK5w7GHYajwRHhedTVLOgFUWwDKPtsKomJsx
	2BeHZ4sqzamawR/nkdViaNS9jD5ItXkDQaLA4EnFEbTOtblW+fli2jhhw+kR5F6ydpHmipUEeuo
	PV
X-Gm-Gg: AYBFou3/AUxvsxNDY0YfhCK0KPnbdFHdlfOIPJ1EvxTLyUrEZtTobJG3LCyi8E1xhVQ
	CQlWYB78s+U5krox49lTmxlqBYIbNY4ZPrb3h1sO8HP3OgUJHn4uGwx9JspvI5gkIPEV9JrTNU1
	JEDhZzgI6eVAquq31VXLzYwZjE/KyYpIjAYgirhrv5I0EtQf9CasjCTHIyfMRewZl0Bzms96zbj
	qtH7SljVteAFBqCn5Ne7qz7Weyf+kz3o4+H0kO4hWFIWLWNErblfnV6Ltv3dL18ebcbxdL2A19J
	8tfKpLIjU74wnk/a5I7sRCKEuFE0TaJuOcMG0VeVkYHmOhc+5Ccxtlm+mqYc/xX+lqoxYxXMPyJ
	cNOZYW47x4pD5eXlVtG3vwVlI80eSDJqwstV0B900nLeJeM9S1w//Q8+CsSkzpkrJU5yDRGqhxN
	OSum4/2J7MxOySI8QoObTMDtomMgVM
X-Received: by 2002:a05:7022:7e05:b0:13f:ad08:44aa with SMTP id a92af1059eb24-1450404d6a9mr1131418c88.13.1790230243227;
        Wed, 23 Sep 2026 23:10:43 -0700 (PDT)
X-Received: by 2002:a05:7022:7e05:b0:13f:ad08:44aa with SMTP id a92af1059eb24-1450404d6a9mr1131393c88.13.1790230242671;
        Wed, 23 Sep 2026 23:10:42 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f9895c1asm10197680c88.12.2026.09.23.23.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 23:10:42 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Thu, 24 Sep 2026 11:40:06 +0530
Subject: [PATCH v3 5/5] phy: qcom: snps-femto-v2: Add IPQ9650 support
MIME-Version: 1.0
Message-Id: <20260924-phy-v3-5-088e7be0cfaa@oss.qualcomm.com>
References: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
In-Reply-To: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
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
X-Proofpoint-GUID: YOLYIDZ1b2KsB9TJxA0wLra6x9k0c4aj
X-Proofpoint-ORIG-GUID: YOLYIDZ1b2KsB9TJxA0wLra6x9k0c4aj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfXxu1r8cbjAt3d
 gYMRAf0XE/AdzCgiUbpR6VaD1r9+WxsCqMytsuMMYXQForWUda1p1wMBRLntALkb0NdxTnT2lp1
 WibiNKOwC211EM3H7aIzofRDZdQBjIsZ0Kxx5wAbr58LRs77eQjq611cz8WuZydR+sQAyoo3+ig
 QqCAzYZmlHQDHMXOX9a16njechLvwKO46jzlJaPVAGga3joqOIZGc7U8dPTd0z0N1mpO5b/P75Y
 9CpkwaQoe4oM1L/GhK9r+BevVm3Hq15bltORsrD9j2xZN1j4NvMpZFIYrQJnmj1JXOWdE/pC6ZX
 XOqjTqRCXh2BoJC/LURje0QSBMpsJ9IXKmM/6WKMaZ9/TsN0RQZchbkuvClvDzFaJmskAxWTKAa
 3FfYUAWOFzceWkGPVSfJ/YztJi3qC9ImlwV4gcx6ppK++wUJJzN1czBcfphhlht/W/i4vVzYE8j
 nbpb/y7Gy2GLRyUvImw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX91PMbh/3p/O+
 Cf4YZvfqQpUPkb5TB0OHl3TOYch1oKNfupaUe1iuipI1wbFll/qHbu9zvSZlSCr930MQLEMFyIh
 ljBw3FnKoI39+KQujIVQIw5+jDTSgys=
X-Authority-Analysis: v=2.4 cv=f7vdl+yM c=1 sm=1 tr=0 ts=6ab4bee4 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=Q9t0gmS3rCGuRMBXcNQA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609240026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_231046_301329_F80994C2 
X-CRM114-Status: GOOD (  14.83  )
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
