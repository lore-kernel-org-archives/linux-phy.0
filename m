Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE71CA5FCF
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lFAa+gwWTcr/eFZR3VsqWx7Ey9Bv1iVugY07aBafA0=; b=IUmddjaerGoEKa
	rA+uxIwpSUZCI8g5nrZ0UHyo08kju37F/oLK4i+NShNxq+i9j1TWfAtJiZQZAps0/ZKqNdbdCHq/J
	l69tZaZ+T8cUmBvqzDz5NoXWfFZdxlaLMBTx0s23pVbDDCu1853qUS26em330v+VavttSLfuLQA5S
	3GZNhpP2buk4CVuYyVOwBzFpnxKpnySKJ4EF8ZTxBn078H7vzObdktDk8wDWfiAlrz4BOQ4Avuib4
	PeU6AcP1vFCF6WKrk/NE8gEKPwllw0mxpMHNu4PRQzI+9pms0tanbtmAVpOvzrejun7BHkz8aI3VX
	mruSI2G4zufqAB+M0tsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCH-00000008Ny7-2wvC;
	Thu, 01 Oct 2026 09:35:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCE-00000008Nx2-2PEG
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:23 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xh3n1512010
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d6bjQ1I/J+lMYzebHvdrZOk3S6dIwxL/iEe5SwfdHAU=; b=mU+bWQ9Dzi1jNbjz
	sehanTHooxWrdtjAhSNp7kdjpG9A9zyXknQUrp32T0fJDtLbVXjqO8FtWYG0jfED
	/6haBKBCdDGFMo/ZaoWOVZw8lDEskgdosXiDkabNziOs7g4QFhsP22TAPn7QrLue
	FFlbquSiL21HjNlpG2zDn/KbuOrGXc2nbVodttyHGIqrp+T3uNgyz8quCwR7Z+ha
	ARtF7wpOb5L0+kS8cUa+B4qtHxZA5AIgzOx8E0k4Y4z5E2PxsQ33ht6WLsrKdMNQ
	CGEz+XeGX9LmAezIz7uV86l7UuD/F1ADVEfY7oe7QZQNDaL7V6U65QG7adtAim27
	wsCJPQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h188stwp2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:21 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc1cade6b71so584667a12.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847320; x=1791452120; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=d6bjQ1I/J+lMYzebHvdrZOk3S6dIwxL/iEe5SwfdHAU=;
        b=jfytdcSIChIxO5krJ6A7ZgM2a6RtBQ0k5G353qtgCV1xGa8n/MbRahCoJ62IBkIsNh
         8P/8FMYly6yj/VNAbV26ke9LAtFks04wVvA95XyaRCdKNbVE+Ot+ZJ3v9YYHpQ1/XJHX
         vWHc1q/LXbrsODGyY2KnUr1TIG1vYMi1XAMxos7UKhnwJ4WzEPNVR0nIoYk9NYQM87Us
         tPZofwGg/v6MBf7BrfTk0QsbTrmZVVZKiPAZ4Hul34AuxH44c1HVBgoC1fik/SvwnYLu
         mBiuZxI95x9GbAcKWCa7Aejcz4+obAD8DP34PtAxP5sbvIo6RSOXQFtOzAuoceuwnwje
         jjkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847320; x=1791452120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=d6bjQ1I/J+lMYzebHvdrZOk3S6dIwxL/iEe5SwfdHAU=;
        b=ddFM5nu7QcPfkTa09ZcKFXNLTb7mmvSuxOQeY1xwxzfDtiCHiLCDRKQXdHdhvazy4p
         APNtq/M/pBnYLQi6y/BLBhWzGpkkl0vbT9jcwBTdR2b5yhX0x238JIosOFh1X+YXDW/a
         JhF5qMPYWu5V+yIB1DDsrRMHelOV7wc0UCMyDHV/KqW7g8iY/b+pswmpxGyS9RDXST5q
         waH3l9kXo5Ikm8aPXIaqSOhwasFP8/m/u4PwsohljK8mshMgw6O942ZNlkPYeclLqoAt
         AVVV1eX0yP98oCAI8Rcn6cQPjxdaqJn+b2RViyIM0bHhVTcso6yaOu9d12WfPgY0tEYY
         9Vhw==
X-Forwarded-Encrypted: i=1; AKwUvBy3twompXSwBTviw9SG5zg6vwJPR/OJS8CJdhFsqGCNaAbwfJWXRFmZ1aoLIdNVVy62dMmPPmeNfg4=@lists.infradead.org
X-Gm-Message-State: AFuF++npFVzyr2h3MmuXqerermR4bvsIdQwZMI6iRZBQPb5K6ztKeYmI
	iVdiKc08fFLqFWw0+ZI3qMzr0b44UBnXFW4F/7oxr0SdlildT2EdoqiNHnm2+tFqmiWBujQ4UhK
	vJ3z6oXSjgshwvgl1UdMCI2P+uw8duPfNOEbZ0hd3cAAga8i/VYN7g1F2AehWB2eHK9xZgQOR1u
	G0
X-Gm-Gg: AYBFou0bns5rk592hk7xSRSceGD7J0TB2k6mkzi6D6ID0U0weKZEz5A8Vez/wvBxYIS
	lIqpMPbWmKOE9WHOaHxZykgH9olExzIOXLNFW5BdaSm6y8Xt/5vSIfesof5z0OzufCM43QAgeOP
	RHesktWhSSRnX07cclTNfNudHXSGC+/633Cp4bg9w/DSODHq6hR10ckcHRf6HVyglL7NKCM5tBK
	45RIzCBtzV25C+mXAW6d9r4tvNONl1fzbVLaEVZUWw264LV5AdUPfYxSpeU+QhKARwYDggZT+Ly
	zO/jDsfp92aEpzhydsCiiRN+Tyz9JVEOkwy3uc1SRlgh33OkAEjJlSG5MuiVwDygwCmsKRT0EjH
	a4PrO1jFs63/LXbFnkoof5QLmga0=
X-Received: by 2002:a05:6a20:2450:b0:3de:7f6c:b878 with SMTP id adf61e73a8af0-3deacbf03efmr1805428637.16.1790847320337;
        Thu, 01 Oct 2026 02:35:20 -0700 (PDT)
X-Received: by 2002:a05:6a20:2450:b0:3de:7f6c:b878 with SMTP id adf61e73a8af0-3deacbf03efmr1805397637.16.1790847319734;
        Thu, 01 Oct 2026 02:35:19 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:19 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:22 +0530
Subject: [PATCH v5 05/11] phy: qualcomm: qmp-combo: Add hardware-specific
 dp_aux_cfg2 and dp_phy_cfg1 fields
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-5-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=6615;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=ePNqq/ojbPoWMk86wIgOBwLMbYMMdGFda3d/uJWLqsE=;
 b=wFGY7rXOr+HIX0f1cW8qnVT3uUsAe2DCqjkUVGIcegZzmQciG+cFNvAS0eVFGRcTeq2P1BkHo
 u6aed9cxQebCIaMQthuNwEB+513geN7ruF6OSUNiCSFc5aVzwvKkmCs
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX8gO3Q3i8f20d
 3xEW53VIqswYIwoolNI1zd94VsKB2CxiMSnSHCsbI9usSxIr8lK/mdDkxrfgbEBtH659Fkc2AhX
 SaRpjiwhIylzGP+G7SDZXe90gh3GGeU=
X-Authority-Analysis: v=2.4 cv=OozaWC/t c=1 sm=1 tr=0 ts=6abe2959 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=AZ7O3MIRyL_cLquugRgA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: UeABXj3fgIOrnQYU1xVkZSqbIeSkvSIC
X-Proofpoint-GUID: UeABXj3fgIOrnQYU1xVkZSqbIeSkvSIC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX/5F2wVG1g2mC
 0uPE5+nqd6wakL8axP6IjlgELNfP3eHHlLsG2apGqpKhkAiedjipoDlQi/fdP7A+9W0r2lNbGMx
 rMGZPuQbNmSTdrV7L8cgqqI7IlFJc37o+ttIDlintTBK0N8ERFKr+mzToEUq+La/Od7KiuMyXPL
 rD5WpykrF6fZSx645zzKp2CxPzvWgS2UHxhsHdON/J9uSPwH4vey+bd1NF0x9ePaqln4nGZyLUd
 QznjIsaIxZFhIgLTuZhg90gbP6FEpqh4XwPn7xTR44KXmaAByWSKosxs7Sgp2sMqt9lwuGVHpON
 Xmko6GmwApWsj4hIReQYLdquYFpJNWGo+aSUNSZzKVOeE7XOU/bJ3wIryDFti6ItfA9qPIk7TSm
 yhNX7gBjfhQxGM9H1eKjlZXdohybQoy4Np3ST/l/zSXrXq4pihn5QvYtJpoFuSxWwBlTSxMLtHZ
 87V9/KIyX5fgkpirNaA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023522_741500_BA90F5F2 
X-CRM114-Status: GOOD (  14.59  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add dp_aux_cfg2 and dp_phy_cfg1 fields to qmp_phy_cfg to allow
hardware-specific DP PHY register values to be specified per-platform
rather than hardcoded in the configure functions.

Define named constants QSERDES_DP_PHY_AUX_CFG2_V456/V8 and
QSERDES_DP_PHY_CFG1_V456/V8 for better readability and maintainability.

Populate the new fields in all existing DP PHY cfg structures:
- V456-based platforms (sar2130p, sc8180x, sc8280xp, x1e80100, sm8250,
  sm8350, sm8475, sm8550, sm8650, sm8750) use V456 constants
- Glymur (V8) uses V8 constants

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 37 ++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 646e97a52886..ebe2e6136f7a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2486,6 +2486,14 @@ static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
 
 struct qmp_combo;
 
+/* DP PHY AUX_CFG2 register values for different hardware versions */
+#define QSERDES_DP_PHY_AUX_CFG2_V456		0xa4
+#define QSERDES_DP_PHY_AUX_CFG2_V8		0x06
+
+/* DP PHY CFG_1 register values for different hardware versions */
+#define QSERDES_DP_PHY_CFG1_V456		0x0f
+#define QSERDES_DP_PHY_CFG1_V8			0x2f
+
 struct qmp_combo_offsets {
 	u16 com;
 	u16 txa;
@@ -2551,6 +2559,12 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
 	void (*dp_aux_init)(struct qmp_combo *qmp);
 
+	/* DP PHY AUX_CFG2 register value (hardware-specific) */
+	unsigned int dp_aux_cfg2;
+
+	/* DP PHY CFG_1 register value (hardware-specific) */
+	unsigned int dp_phy_cfg1;
+
 	/* Set if DP mode configuration should ignore TypeC orientation */
 	bool dp_mode_ignore_reverse;
 
@@ -2813,6 +2827,8 @@ static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -2949,6 +2965,8 @@ static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -2995,6 +3013,8 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3040,6 +3060,8 @@ static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3149,6 +3171,8 @@ static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3197,6 +3221,8 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3244,6 +3270,8 @@ static const struct qmp_phy_cfg sm8475_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3289,6 +3317,8 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3334,6 +3364,8 @@ static const struct qmp_phy_cfg sm8650_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3379,6 +3411,8 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v8_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3424,7 +3458,8 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
-
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V8,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V8,
 	.dp_mode_ignore_reverse	= true,
 
 	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
