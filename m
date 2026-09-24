Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3FE7C98314
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 06:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EN7x6MfBwsPZTkNRS2YAEPsuth2+Sb1dFaY4SlqmLEo=; b=U9GqL0xdxlmSyp
	bYGkPWGN7f8sW+cOnMKkBuyyMcS7XLH9Gg9V5+ZHfw8yA1L/eNQuzrca59K3B/ObaMaTb++Cb+95g
	19rRvx4/SExPsRFOJclr2akot3prm3iGqba2IgI4OOvuCSSDscW8jOgq2TwORfr9twno1XEWy/LoW
	1y/gfo1KVeJjXUuI/KYAEg5R7IHE8eU1wrRGCDNzhyy+1r0AHo+GFu9onrJzZ0hCbu7Cl0eJjbEag
	7l7Q+2IJXOca2NsDpdVAEEGnT2TDymZWN8vD+nXLSAGysEF8WoWyBDx8JcCH24diN1B0bvusdl1l+
	X4RzSD4a7dZscRGi3u6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9chP-0000000A8Cx-2wSm;
	Thu, 24 Sep 2026 06:12:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9chO-0000000A8Cm-1CLm
	for linux-phy@bombadil.infradead.org;
	Thu, 24 Sep 2026 06:12:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/aKERj8vOTgNopINdWRvI+TeRfCoisGCiNjo8nkQDqg=; b=EDRlVgOFoZYX2HmZDPwuKLr0nV
	5w3oKFrNvvL61B6fS6dC4APZkHsfe021NHq2n3y1cL3Lne1uXmCTmyFVdYfVfJf5ZB5BMEF2L1ERJ
	3VA/DKog42J4IuFO7dQ2PAOVbIV8FvzCfHfInGJ7ZCMdsKGaawSPovP5W6YCebqBNpPqAsZwN0ebk
	P1Y7hNMMmaxpM2WqcuRHqsigbtrciVbVLsx2sPbAXhQr+1TKHl3nBqI1Ro+AL1zsaiP16MZ6YxwV/
	SYfCmpx+3dtpaf4nuesTXdkiCRjK7vBD3fEsuYbPnNucHyF4D7cqs/LFh1wZ0YCFuMi/7oJZkFDoo
	PY8oeBSA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9cfN-0000000FaB2-0hHj
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 06:12:48 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68O5eJAF1147917
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/aKERj8vOTgNopINdWRvI+TeRfCoisGCiNjo8nkQDqg=; b=AaH6D2VSBcI1/DT/
	6c3/2Evqd8/WFuiZ6mFHriVBrU721jrC+Ih9PeKs3WSQ+0SD7xEA8dgfGYMVLBTw
	r5fFaufh+2QXjnVVWX3PXom204MtQzW0J92KvBJa8NSBjJyAbpYCBg948QyVEtwN
	riFaFwJsss4oBAZWJPOd8r9SPPQIy0vD6r+oKa+qRtJOOBQYDY9rpizs7vBOmS+m
	MwEXZ5h0i7KUkSb/j8N2o3ylK3ZTMpgYUfA+ZErf9UFqfKjG1rE9RPki4IuhZ7BG
	+FGquIHQ2t+PkUOffKtaEPD3zPxrJ36cnZA8sb0v4KzFnMt/Q77XrE/BMon3ZsrH
	iw7eTQ==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvmrra01u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:39 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-14364a88479so196496c88.1
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 23:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790230238; x=1790835038; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/aKERj8vOTgNopINdWRvI+TeRfCoisGCiNjo8nkQDqg=;
        b=LSZ5bQXjKujZfbKw2wFojxPafHvv5t10EfkAAvP7OOudaXjtOin83l2gmhextSmQSh
         UJAol1xrkPbjWh8LMMoBsStR2Ofxk590tkN+ypPpLOaQIbiaZjO+A7YcV3UIfxiFyP/F
         pSKZEYAfX29JEIoc2u+oAwqNoOr3Fjep/stDjJTlJRPIJqK76h/DoqNEvzzh9zjlmErf
         zjmxmi1PEf/NMRZtB3GHVpmjT0PG0pf2JdJedHkYFNKiGFxVlwXrTTDBZHkK85rP6xyn
         TRa0nyxhQqTUGJFYH/BLc7e6AZR/06VaFApAe3VcO9yOHueDQTVJD+YNJRBVAraaVbrY
         cA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790230238; x=1790835038;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/aKERj8vOTgNopINdWRvI+TeRfCoisGCiNjo8nkQDqg=;
        b=AR4787re/e+oz0dlkQ1scgNPRusid9StUw9asA+tSwIVNxIi+x5MnkHKIIe2YMrrHl
         QJDdEB5y06wNnUbM7R7GqKJUAb3D6E3laySJzqkue2PsBGCxr5rRTScn9B/UgvUBpfX6
         B/xs/9gHFkMBiUycZHTX6ta/TCLbwZiHc6b5hyBWhsRS/uSXOiPg+K3030Jr+0XlUvfK
         8XzVkq9ab4dUjHEqNz98yLhBwrSVsI/vo9Zx4IfPX50DRVn/X5cCmbn4wYjEVR6yoxom
         a5bP3L6JzRaHi3kYIHYZadN9yeN+7ufqsk2Iq70vw+LVjQ/c/rVJvHeuVwCBnfF4PxPI
         5Gdg==
X-Forwarded-Encrypted: i=1; AKwUvBwdcRx+36xHDVOcoB5adOZvAEePHJsPC4wPrKIu/XkWsRkK9wLdgnj7hVUzMFl40IDXnykEHEr+Wcg=@lists.infradead.org
X-Gm-Message-State: AFuF++mik5OESBYJVkfbNWCUAdmfbMC8UYk64a5KfZNr/rkCin2gl2Vb
	rtF4+5tTfVmpp1d9uMQMmf5NUf7m6U45t4mS2unL3GdhASb6GW71opqVlAL34YnrNhVJkMVH3Fu
	K3q0xkNYFKeHMwh7DT1IqA1zgCpSAZN0oEA/wdxQISGJg++0HFWKnc8bg1Zt7F2rzw8gxEUoZWu
	HV
X-Gm-Gg: AYBFou0syKbFAHNnLgCbkKTD6EYZeZn+8FZeWOLiCCBzUQ5Y/aFVrC4ook8XRVfHD+r
	RQcHjKmtpxlqu4JNJnt/3Y+cWO2Jxv20zX5z58gFbk1LmCttcOJ1xVbNadLoaL1HP3byHpu6if5
	cviWSm9N5gYdBonHHDe6bwk0Pu73JMfCzGr3VVjo9VJN+g9aKY+ovz/FyWgL2xiHh/C8dEM9vln
	Aq3v4FNXIHRSWP0+6yQzPb8HJoxag3rdc+5Mza7A979lL6wIp3Ldrlfo62HEzCMBtHIrzvphV80
	Vq99Dk9oM49lqdlqoQZ2LfMUeBkeb1UkWn90E0iNHVZtn/a6TfyLFs85XmbBvHn8qkxxyGMVvVH
	0nf+P+hJiF6+qsTqBQ9ZHen6I3FW1m43M5147d422x99JKh5UyiM+nxiT3BFAPRfndi1m0FnTOG
	ZfnDRdVCvKnZuXO3M4BDnwY4k1Lcq/
X-Received: by 2002:a05:701a:ca87:b0:143:6328:2a93 with SMTP id a92af1059eb24-1450404d562mr983330c88.10.1790230237750;
        Wed, 23 Sep 2026 23:10:37 -0700 (PDT)
X-Received: by 2002:a05:701a:ca87:b0:143:6328:2a93 with SMTP id a92af1059eb24-1450404d562mr983304c88.10.1790230237178;
        Wed, 23 Sep 2026 23:10:37 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f9895c1asm10197680c88.12.2026.09.23.23.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 23:10:36 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Thu, 24 Sep 2026 11:40:05 +0530
Subject: [PATCH v3 4/5] phy: qcom: snps-femto-v2: Move PHY init registers
 to config tables
MIME-Version: 1.0
Message-Id: <20260924-phy-v3-4-088e7be0cfaa@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX7KZ+xtq3Cpj/
 NdBqWUC+7loWAbeqQDAJ/j21SGARZD+y5nku3oB3QQEE+ejvdSl+Ums9B0kDSZip9uevA7wCdYP
 8hB3rY9bn9IYhLk2Liayn57bIH0XpqO6lwatKslFqfUwy+LJcOH2QVn3PtISPw6VJwXvLzJrnBo
 NkDYlMN89hfFE5T2ZP+zfeDMzg31+TMABPB+gmsL9zVYuelCxl7xVk4nGsSAJo9szU7RIJzY24g
 W8PG8UWtlG0v8OHmuYlNyOkNEZQFr3bffS+PfU6WY23HqtBRdQR4S/pGurGhOy5w/GmXUPL9F4p
 xov4Ig20iSbUa5oFRf52UxTYls055cu5PnvmT0qHRIFqFI3xXQagVcH9hNi4tOlDDg4J6qNdvup
 V6QFXOJC2oYuAVT+wGA6o2pH2AyURDmvHU14vL+LOykbusGI+yJH3N5n2dYT51WYucOm6AFq1wP
 Lgqhv1dasb6D1YGa5Zw==
X-Authority-Analysis: v=2.4 cv=TYwDJhQh c=1 sm=1 tr=0 ts=6ab4bedf cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=dpbSYRCFOxhwq305YcMA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX2u/pM6ofaau1
 mogdGtA+etChErbNoDDhCXC8Qi1kZIjXOj2vqQy6JRCYF+eJKWtV1YVj0YY9+vz+ruAwkwuhzeu
 HSrAdkLiRuiVHp9i5XYUys3CehN4Tsk=
X-Proofpoint-GUID: 4JQXzjBwqEi0yNmyqBRNuyz2jNnHmp3w
X-Proofpoint-ORIG-GUID: 4JQXzjBwqEi0yNmyqBRNuyz2jNnHmp3w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609240026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_071047_450374_2B3DA434 
X-CRM114-Status: GOOD (  22.18  )
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

Additionally, address the register bit field mask & value mixup for
USB2_PHY_USB_PHY_REFCLK_CTRL in qcom_snps_hsphy_init() and USB2_AUTO_RESUME
in qcom_snps_hsphy_suspend().

Fixes: 51e8114f80d07 ("phy: qcom-snps: Add SNPS USB PHY driver for QCOM based SOCs")
Fixes: 0d75f508a9d56 ("phy: qcom-snps: Add runtime suspend and resume handlers")
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 126 ++++++++++++++++----------
 1 file changed, 79 insertions(+), 47 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 980ad1fb1e2e..b6bbf2b570c7 100644
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
@@ -193,7 +207,7 @@ static int qcom_snps_hsphy_suspend(struct qcom_snps_hsphy *hsphy)
 		usleep_range(500, 1000);
 		qcom_snps_hsphy_write_mask(hsphy->base,
 					   USB2_PHY_USB_PHY_HS_PHY_CTRL2,
-					   0, USB2_AUTO_RESUME);
+					   USB2_AUTO_RESUME, 0);
 	}
 
 	return 0;
@@ -383,13 +397,40 @@ static const struct override_param_map sc7280_snps_7nm_phy[] = {
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
+	for (tmp = data->pre_tuning, i = 0; i < data->num_pre_tuning; i++, tmp++)
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
+	for (tmp = data->post_tuning, i = 0; i < data->num_post_tuning; i++, tmp++)
+		qcom_snps_hsphy_write_mask(hsphy->base, tmp->offset, tmp->mask, tmp->val);
 
 	hsphy->phy_initialized = true;
 
@@ -495,14 +500,38 @@ static const struct phy_ops qcom_snps_hsphy_gen_ops = {
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
@@ -541,11 +570,14 @@ static void qcom_snps_hsphy_read_override_param_seq(struct device *dev)
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
