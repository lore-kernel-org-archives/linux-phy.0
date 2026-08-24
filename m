Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E79FC5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 06:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKMFM0mg1BmjR6z/5ED2q5zYppjlGYy678GyVANHKTc=; b=NvzCtSaySLLaiJ
	g8bIC8VoU3VBFHbh1F4k8vjnaCrZMFtGLR8qZaDjKEn45nTZf1gWpND5C6kvQl8BsNF/N1KjhwWBq
	3V9dcjq9bWuLEBTV2T59zPalmzi6NfdcK6UJW7IU7iJ5x95yQC5V/CI/RBcChmfUUvHSvOmqZ2/sP
	Y6xRbJFPVCNq9WZHOLxmkc7i9tPessDZZcE+5kocDmsykY1ASMrXA84duFg4DITxca/uXe8adp/vy
	P+qqgLFM9Sl3g4LgFK8WcSjcctJBRl88XrkG7nn9cksdSvj0IXykfW2oP9MVFk/B7AnHVacfJaXH2
	SM++KEJgaXTzEKQtyRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOK1-0000000G0ST-1GTu;
	Mon, 24 Aug 2026 06:38:17 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOJy-0000000G0Rq-0qXG
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 06:38:15 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O6Sd4C1982488
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EZRCHHBEdUWnMJpJqD0Wd8t5U5pocYPVr4t8Dbz9/+Y=; b=fnGmr/iPXcfLfOjZ
	HLoMiTAW5qrP7RkCurUEQeKuvC5LtJBKfyNDlS8p7ilKYAGpi5y+7y6HfHQOSSNf
	xWrjT2LjFMdS18ojj/xz/eyujArmK9BMtdCSmlZXUA9W4yc2aRgnqCZhHgW/qv8/
	1CnzRAkWJzxK1tgNmnV5/P92MKeMmMgCB9JTiGsyGmCyJuXXVu/LCgSLd1g3Shby
	9QyYG33cNJQQLXXfLyP/F3LolSzOW7aKT1dDNmqw0SeJiSCeHC3ZLuVtIkP0w5ny
	vZxyo66bwxD3TsSgrQsJdyTHCrCe5NkTxHxjK0mtYB4O5z6sRAv3+NQPgWceyaVR
	sQ+eyA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8gqn81aj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:38:13 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2cfca8558d2so40985125ad.2
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 23:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787553492; x=1788158292; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EZRCHHBEdUWnMJpJqD0Wd8t5U5pocYPVr4t8Dbz9/+Y=;
        b=f7AvXW+nHJFF22iNaDWNXbX4lC55DnLX5ij2drhxkl0v31a7PkS4H/FyfZkutSB2nd
         pFYeSVLtCWdCsdsLvrJwl5IxQbrT3rf8SJghjHbK4q6B4lpfYqbhz43u7U0ksFFyF113
         59nZBNhx56FX9flk5Ul2B2C00lFS8I8euCutaUx7KW6/vRNsmPV8fTyikT+tKgmVYeOK
         fBbE3XLYtk6mcZi0U3CAVeHSwOVACDNkag1HCoiEWvYsenKaLGDWP7nRUY1dGCinTsZZ
         Wrx/y+ctj9TvZ3x0tMBIyKBRSiZB8fG9YCnijPOmtIwjsr1yn0UWOUIEnwh8u2YfqvyC
         o0aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787553492; x=1788158292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EZRCHHBEdUWnMJpJqD0Wd8t5U5pocYPVr4t8Dbz9/+Y=;
        b=TaDFCF6BLAVRZOwEubdgn8iu/nlEEL9hC60eXIVV5gnM5B+mqHqLEvmxYwwSS4jIUU
         fmVg+iDPkenFm8Z9rAJcBiAxXy840eMWLf5sxkLqkfVfyShyioMcf5tAXiaCW9mNBjWU
         VZ1RGXUaf4Ln+A4z2YWXIPnLUaZ5XxNXtFAyZ7ROs0gWcQbx8EGxMd28QDaV1XFzjX8/
         1Q1W7b6ivavyxe/nZBEBLPgM23nBqXeHfzFknY6apBTsUTuXcbWvK8CXPPAMCZU75xy/
         FiHPXMpOSz/AuCpdRwYrWH31LlEjl63xSyBqgS/yS2vZGaKRcpzwIY/VUZ3Di7IfAV3k
         wIJw==
X-Forwarded-Encrypted: i=1; AHgh+RodhFnjGuEmBeBf6x956rJOrtPfE5fHI58CZsa+m1/JaCTLesQlfuyOwia6G/mdHy9gCQCemVANjlI=@lists.infradead.org
X-Gm-Message-State: AFuF++k4steieM7d+Rono5sz1TyvG0scj74S+IlObVzCPK9o9SCnxBdb
	5x2yXWa8FJFdyf48DTO+Ucrednu1vjn26yMTDtyYxB3mKMv9NXumYBhwqaRQENW1VJ7kSznadHx
	p+girJneGENLeNdI9VVT4kYha5oSoVNFEdpkwO6ft2qiVzi4UgZ5YTAJA0ZM43pJeupre
X-Gm-Gg: AR+sD11oa/efiR2shFss82iwfMa3qTmXWvXyp3Nvu4dDOaCUGr6l6EegF56PUsN6tkq
	Qc8K5EoU1/O1fNnaFdkpWaq3zV2Ce8WPvYTqrGPb5mj25GR/4QOL4LMxS2zgP39YgSKZL06zPUZ
	WLvr2c6J2UpBbDLbJu/aiuGf6sATMbrRpMfbW0JijRHDAEq4c+duxBEF4uCXpGgCMpFs63ciMEW
	4chIfhHDvxP0KiiP9tqMwEsyOVM54DPwwQ8+aew/yKuLSuslMF5+EcDtclRGQwZWmet9wJoZezr
	HyuTulpJVbbIPo9m5J5mNXDpLnqWoUpgrG/lxPS+eyNpk53l4Pg5lsiSe+r4DjVg3uZCMVeGkmp
	QWWzksUAWzCsQ27WaXdtoi4a2Ej2B77X8QlndR7qXM0Dau1w29VthGuEfXSGfrHCHHSKTc3O7Ut
	Dj9L1IiD00NJk0x/9kRqOvF6HTkYpjUg==
X-Received: by 2002:a17:90b:4c49:b0:366:10f1:3d91 with SMTP id 98e67ed59e1d1-395c354d42dmr41460366a91.1.1787553492103;
        Sun, 23 Aug 2026 23:38:12 -0700 (PDT)
X-Received: by 2002:a17:90b:4c49:b0:366:10f1:3d91 with SMTP id 98e67ed59e1d1-395c354d42dmr41460287a91.1.1787553491596;
        Sun, 23 Aug 2026 23:38:11 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-141861732f8sm21667830c88.10.2026.08.23.23.38.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 23:38:11 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 12:07:44 +0530
Subject: [PATCH 4/5] phy: qcom: snps-femto-v2: Move PHY init registers to
 config tables
MIME-Version: 1.0
Message-Id: <20260824-phy-v1-4-257d68a3210b@oss.qualcomm.com>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
In-Reply-To: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX6tctHpk5Y6gg
 xriOHnsHQlTtVzHxP4HXVV1mOvnGr/D3yHpfgXgbAwA8/d+zSWtaUMYpm+K5Ph9gepu9eXv0SPV
 IikTRkhV90TSXDN9DBP+kFvZseukQOI=
X-Proofpoint-GUID: GWP331SNlOqVZMKpxHHyaEYIxxRMiD7Z
X-Authority-Analysis: v=2.4 cv=fqXsol4f c=1 sm=1 tr=0 ts=6a8be6d5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=zXcBnA3yxj2v5e4wiOoA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfXz5d4Lf4i9ZxL
 8REYTuKa/dHqxxCRcdBvR9LSYin3pJo1fm9xFZs7Fx9+lgRKZYj5HLj1e7YyRFkUTJ9RbmF61kS
 tZ+PaztOEgIem+HeyPZKLXg4rHfTqyGOgODA3LdiI//yaTdXucoSKLHn3tfT+WO7dok/kgPqvyA
 f7f5JpAHrLiUnM+oJUoD4Tb9YoDJmPfAOKezUakSbcZui+gVMWSx0gYB1WLfGWjxoZXl61SHMlH
 N/bwoCDyRvsu1EJAC9vLZwVFDAm/EkbuEhrZ/cJy8HMSjy96dtx0KwwR8XaI5K8frQY0oo5BYU1
 BPRMCpfc1Ex+F1AI42P4rkgthNSEIbdjoscGLFm/q8DeNBIU51lnuUQ/cxIDGO/Z9hBnHneflMl
 whrUFyCBaof5+jGfo53uz5CtlUU/jHWlOWJpgB4ER5LgQ3HRqFO9D74d7hVZ0xpRk5VcXtCWoVX
 JpVZaKI7ZILDFTjtHRw==
X-Proofpoint-ORIG-GUID: GWP331SNlOqVZMKpxHHyaEYIxxRMiD7Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608240057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_233814_372988_EA71BD03 
X-CRM114-Status: GOOD (  19.60  )
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
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 120 ++++++++++++++++----------
 1 file changed, 74 insertions(+), 46 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 980ad1fb1e2e..5ffbe1a77dd4 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -104,6 +104,18 @@ struct phy_override_seq {
 	u8	mask;
 };
 
+struct phy_reg_config {
+	u32 offset;
+	u32 mask;
+	u32 val;
+};
+
+struct phy_config_data {
+	const struct phy_reg_config *pre;
+	const struct override_param_map *override;
+	const struct phy_reg_config *post;
+};
+
 #define NUM_HSPHY_TUNING_PARAMS	(9)
 
 /**
@@ -383,13 +395,42 @@ static const struct override_param_map sc7280_snps_7nm_phy[] = {
 	{},
 };
 
+static const struct phy_reg_config hs_5nm_phy_pre[] = {
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
+	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_DEFAULT, REFCLK_SEL_MASK },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
+	{ UINT_MAX, 0, 0 },
+};
+
+static const struct phy_reg_config hs_5nm_phy_post[] = {
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2, VREGBYPASS, VREGBYPASS },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
+					 USB2_SUSPEND_N_SEL | USB2_SUSPEND_N },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL0, SLEEPM, SLEEPM },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ, 0 },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0 },
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
+	{ UINT_MAX, 0, 0 },
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
+	const struct phy_config_data *data;
+	const struct phy_reg_config *tmp;
 	int ret, i;
 
 	dev_vdbg(&phy->dev, "%s(): Initializing SNPS HS phy\n", __func__);
 
+	data = of_device_get_match_data(hsphy->dev);
+	if (!data)
+		return -ENODEV;
+
 	ret = regulator_bulk_enable(ARRAY_SIZE(hsphy->vregs), hsphy->vregs);
 	if (ret)
 		return ret;
@@ -414,24 +455,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
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
-					REFCLK_SEL_DEFAULT, REFCLK_SEL_MASK);
-	qcom_snps_hsphy_write_mask(hsphy->base,
-					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1,
-					VBUSVLDEXTSEL0, VBUSVLDEXTSEL0);
-	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
-					VBUSVLDEXT0, VBUSVLDEXT0);
+	for (tmp = data->pre; tmp->offset != UINT_MAX; tmp++)
+		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);
 
 	for (i = 0; i < ARRAY_SIZE(hsphy->update_seq_cfg); i++) {
 		if (hsphy->update_seq_cfg[i].need_update)
@@ -441,28 +466,8 @@ static int qcom_snps_hsphy_init(struct phy *phy)
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
+	for (tmp = data->post; tmp->offset != UINT_MAX; tmp++)
+		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);
 
 	hsphy->phy_initialized = true;
 
@@ -495,14 +500,34 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
 	.owner		= THIS_MODULE,
 };
 
+static const struct phy_config_data hs_5nm_phy = {
+	.pre = hs_5nm_phy_pre,
+	.post = hs_5nm_phy_post,
+};
+
+static const struct phy_config_data hs_7nm_phy = {
+	.pre = hs_5nm_phy_pre,
+	.override = sc7280_snps_7nm_phy,
+	.post = hs_5nm_phy_post,
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
@@ -541,11 +566,14 @@ static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
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
