Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B332D58E7A
	for <linux-phy@archiver.kernel.org>; Mon,  2 Mar 2026 08:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/n3aL0c9Ej+i6qn0QTxqnLJhlbv4/8DApWxSc8yVpF0=; b=SDSTMR1LL2WrHe
	mJ/mXUm0P/JrIe3IjL/q1p1phaE1IJk+fxSWIFBenFaW9pDZ1BgXILEUNNtoz98F0JEB1nptApmxB
	54+qDzqkvJYgnY3jSWqVm7XyqolfzEmC2qJ4jDVLliiXlpJ6K5p7TF5Lag1H6f4kqIHqT2rVyyXip
	FYlPgcu8sX9065Iv1Y4sVdBpRtO19WxyEWOVuKhbPNgZTKDHZ3f32s1GSj7apvjqcm71WV55gBHwJ
	HSw7FUOoBTnRb42EReEQjNepjK+1GijpEU9ZfUE/yjxakhq/Ul280iMxcd0hNlLL2XMmxZ8iOJKIP
	wnCubDGbmtIjIQRJjURQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwye1-0000000CWCS-1Yqr;
	Mon, 02 Mar 2026 08:28:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwydz-0000000CWBZ-2o3c
	for linux-phy@lists.infradead.org;
	Mon, 02 Mar 2026 08:28:48 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6227qbli2185340
	for <linux-phy@lists.infradead.org>; Mon, 2 Mar 2026 08:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SVcr8YN9sDAsKPDI36WQuczMepAZxihuQgrHo3tNpeY=; b=nY8xVwokoWVWVJBY
	ACEWjydMpBrOmilVLIcK9myydbvPa4kGduP59v5OmerxTcKCEDeRam1y0QsDw2tS
	yymirrB6ow+X1jmewOt5n9pNkfidd3EWm2LsLf1C1tIzVsUx8orL+6AfCc/edHdy
	ABmwL+y0Cj+YjpvPK1/NONrOj03sRVi1FUNa/puMMcw1sC7SjD1Y5Jtu527DydQc
	Ciqy9KOl8ibt9X8V2PrDT8Awv7cGgEY0M7hD3GpUZnFA/DAy+eWms2AYsrpQPe0P
	GU4NabBMJmPsItkym5m20vd//WKLS03rRjQlKewmJp8kaieaSb9At/fzI/Ma2rpk
	dbVh3w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksg74n3m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 08:28:46 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-896f84e69b6so588667596d6.0
        for <linux-phy@lists.infradead.org>; Mon, 02 Mar 2026 00:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772440126; x=1773044926; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SVcr8YN9sDAsKPDI36WQuczMepAZxihuQgrHo3tNpeY=;
        b=GDu4GH97lr28h9YjCe4Fujeb2DHbscGiuoi47JARfK8LeDSw51CrLct14hgnvOrUb+
         luSzHdrLhGhBvBQgAqmFWTlqXWH1BfeoMDzCGtzmdwJeEQVx7ZBka3wKkU0SIXnOZFxv
         MIlEdewUzbSyTabgN1Cy+DBFLuv4c0MFnXSoivmKRim4WLOfGnPhOWVO1CbKPzkl7e0w
         Zj4C4pRoCXmoZRgBLrmJp3coVI333pWShMj0x5AJq7hzeoGd11KZ21EEgdDiYFLrnCgd
         fkGN164jEwft4M3pF4yjfxrwYRDnEnKpOVV3setHz8I55bJOsZ2yTQTGqIUItwyWcb8V
         bDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440126; x=1773044926;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SVcr8YN9sDAsKPDI36WQuczMepAZxihuQgrHo3tNpeY=;
        b=q9n8mtUoaZ5BM29H26TIJve+yf3tZfLb9PATgVE2dWA0gKnGtYSRY3n7q+QSu/zs91
         el0JBilab+4cPHItGlUtiic9WNI2F0aq4yPNEUBoHvGO26SrzG+lmuX5nBBU8Fhnigtk
         Rl73l563rk81KJAtOI9kVchM2vnmhSEdJuUqT/8oo8Jqdz1uVLN5/j+HaWME3sm4qqW3
         wg6jGQjo96JsgDTHy/M1BJ+aElLsKquDYSPgyHMSdx6ALIgV0GRPz23tHDbzQeqOtHd1
         +UojKlMa3mPOlnWZIlsr5XnsAwVAxaDS8hSSyWe/eyG+IpHxjjT1kcxedQhNV5cVoBrK
         CuGQ==
X-Forwarded-Encrypted: i=1; AJvYcCXf2f5NOHMjrW7BrweATDKqfgqY2pjMdh+hoEMzcck+B9/DOWgk1y51QzXOg1H0DquyFYHFHy0/foQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFrLaQY7r675Xc3UAKmGtqTN9WJYb5jGrpubQJN4Xuwo35rBH8
	9hfW5RXDkr1F4hpFGtslxvVDXBoDvwNXoCfARGPj4qzg8ER/3+o8uzCVs/9gj7R6XnV97WgwZ0Q
	e/7ec3tjarCfEWickdJCrcTcSQdZ9OX8ul1WIsyiHqfpn5BS4K+kM10hFgZQz7EpL8/m3
X-Gm-Gg: ATEYQzzg0lfG7BIyS1YYeu0T206jyBaRMmjUM7EhxIeU00NYZFL4LPpsEYOEGOjcGQ+
	pkpdFVc3ERtJWxn6DAtij7ezSzAq9OKfKyD1wTm55w3SEDkQlm5LW+NZTiRnh0gbYW1e+7A+dHt
	2JVQFqiNdaxIe3tAWmpM2H1iUrAkDL/V/GeyQ018kMcr6r1LR3w66NMKxyiN2gWycIi2OT6+IjP
	QdKqhiZRTSyq8BDLukYNwrms5g8c2HignNr4nLzavVfcj6jwegGtC3NlCb0YmRgds3hErsmKSgS
	ZI7AUByagEokDnNIh/AmMAepuWYsRKKyHPxWYoCCGiAK2eMHhk9E/ZNXmvMw8h6mY3Iz/B6jVXu
	IYRO8mVSYNBn5f0cvbF9BfBdY+34uDvZvt7Yc0iHu+hUoVuQ84z5xtg7kjYVuVGnrpTW/9S5cNf
	QhaX3tXMY=
X-Received: by 2002:a05:6214:21c6:b0:895:1cbb:5d5b with SMTP id 6a1803df08f44-899d1e2b9a7mr180329526d6.32.1772440125894;
        Mon, 02 Mar 2026 00:28:45 -0800 (PST)
X-Received: by 2002:a05:6214:21c6:b0:895:1cbb:5d5b with SMTP id 6a1803df08f44-899d1e2b9a7mr180329206d6.32.1772440125393;
        Mon, 02 Mar 2026 00:28:45 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-899c7193227sm101354696d6.21.2026.03.02.00.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 00:28:45 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 16:28:30 +0800
Subject: [PATCH v3 2/2] phy: qcom: edp: Add per-version LDO configuration
 callback
MIME-Version: 1.0
Message-Id: <20260302-edp_phy-v3-2-ca8888d793b0@oss.qualcomm.com>
References: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
In-Reply-To: <20260302-edp_phy-v3-0-ca8888d793b0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772440115; l=6465;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=YJCpyIz4TCdjOpjGbf6o1zRPWSQ0oQEylCxPU7OtSbI=;
 b=pYYdYfq9k3t8lnU9A0S1GsHhUarTFiInP9vUOaGsDymYlwJ7FwIzBHThhSN3+DncRIhbY68hM
 u/5VUPpRNq6C5aET+ZGZYefJReEGZwaJa5sJ694Sq61HZ4sylB3aINv
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: GgB5gCOJmi-7LYJ-CFFqmMrPAKU5CCb5
X-Proofpoint-GUID: GgB5gCOJmi-7LYJ-CFFqmMrPAKU5CCb5
X-Authority-Analysis: v=2.4 cv=FaA6BZ+6 c=1 sm=1 tr=0 ts=69a54a3e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Wstf64DO4dhji1mrokQA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA3MyBTYWx0ZWRfX2xeU5hvWeeqP
 lkqqstLPGjLEItujbqGRb6YS8WuhqLslUhQgc7PjVy+ZWMcWOENxcmvJ357zr/CdwPTO4G70uko
 JK3VngsrSyC+VVBRHE43kThZGd74oju9kerRtmLVaTd2Ma/ioiIOd5M65ow28vE75kAribATsnB
 Qg8+JfD25pkIs9rGqUpZWQdiDk5josoCovvC+K7ZPnXa4mGZyTohLvhB97PqjwMV7EtosI4brWE
 09IlxPaZBMiG5AVD8BkfiyXoZpuNcldREayUYzgXFQ3su0IxiU7wv+DpQhTcC0GKYoCsvirR5u0
 QFQxOUqczxFcxftIRbSkNG0ExwQ+MvXLqBbd8kGLQwSot+uzp3x8LWR6Bdt8lF8OqSeQu13c3/a
 lEIii7KoaSpu5plvmzVcVyd3S+or6LVRumxIk8bTEKo0bz6C2XL1synHt2JoRwrUiQcsCUVJx9R
 yJT+GJmKaB2L1K3xgFw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_002847_915848_64C394BE 
X-CRM114-Status: GOOD (  16.12  )
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

For eDP low Vdiff, the LDO setting depends on the PHY version, instead of
being a simple 0x0 or 0x01. Introduce the com_ldo_config callback to
correct LDO setting accroding to the HPG.

Since SC7280 uses different LDO settings than SA8775P/SC8280XP, introduce
qcom_edp_phy_ops_v3 to keep the LDO setting correct.

Cc: stable@vger.kernel.org
Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 86 ++++++++++++++++++++++++++++++++-----
 1 file changed, 76 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 36998326bae6..d29e548fce9d 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -81,6 +81,7 @@ struct phy_ver_ops {
 	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
+	int (*com_ldo_config)(const struct qcom_edp *edp);
 };
 
 struct qcom_edp_phy_cfg {
@@ -304,7 +305,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
-	u8 ldo_config;
+	int ret;
 	u8 swing;
 	u8 emph;
 	int i;
@@ -330,13 +331,13 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	if (swing == 0xff || emph == 0xff)
 		return -EINVAL;
 
-	ldo_config = edp->is_edp ? 0x0 : 0x1;
+	ret = edp->cfg->ver_ops->com_ldo_config(edp);
+	if (ret)
+		return ret;
 
-	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
 	writel(emph, edp->tx0 + TXn_TX_EMP_POST1_LVL);
 
-	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
 	writel(swing, edp->tx1 + TXn_TX_DRV_LVL);
 	writel(emph, edp->tx1 + TXn_TX_EMP_POST1_LVL);
 
@@ -560,6 +561,52 @@ static int qcom_edp_com_configure_pll_v4(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_ldo_config_v3(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (!edp->is_edp)
+		ldo_config = 0x0;
+	else if (dp_opts->link_rate <= 2700)
+		ldo_config = 0x81;
+	else
+		ldo_config = 0x41;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
+static int qcom_edp_ldo_config_v4(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (!edp->is_edp)
+		ldo_config = 0x0;
+	else if (dp_opts->link_rate <= 2700)
+		ldo_config = 0xc1;
+	else
+		ldo_config = 0x81;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v3 = {
+	.com_power_on		= qcom_edp_phy_power_on_v4,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+	.com_ldo_config		= qcom_edp_ldo_config_v3,
+};
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
@@ -567,6 +614,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+	.com_ldo_config		= qcom_edp_ldo_config_v4,
 };
 
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
@@ -583,7 +631,7 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
-	.ver_ops = &qcom_edp_phy_ops_v4,
+	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
@@ -768,6 +816,24 @@ static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
 	return 0;
 }
 
+static int qcom_edp_ldo_config_v6(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+
+	if (!edp->is_edp)
+		ldo_config = 0x0;
+	else if (dp_opts->link_rate <= 2700)
+		ldo_config = 0x51;
+	else
+		ldo_config = 0x91;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+
+	return 0;
+}
+
 static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_power_on		= qcom_edp_phy_power_on_v6,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v6,
@@ -775,6 +841,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
@@ -955,6 +1022,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
@@ -970,7 +1038,6 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
-	u8 ldo_config = 0x0;
 	int ret;
 	u32 val;
 	u8 cfg1;
@@ -979,11 +1046,10 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
-		ldo_config = 0x1;
+	ret = edp->cfg->ver_ops->com_ldo_config(edp);
+	if (ret)
+		return ret;
 
-	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
-	writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
 	writel(0x00, edp->tx0 + TXn_LANE_MODE_1);
 	writel(0x00, edp->tx1 + TXn_LANE_MODE_1);
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
