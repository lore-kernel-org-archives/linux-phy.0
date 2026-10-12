Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9364DCA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnmOJd+HxNBElqC77OzMfKAX7wWxqc88ZejJgMM0RRs=; b=Sm7/jpAL7wzZbn
	lE4Zp7SmvpllO91J3HCuewSrOLExEZFByGvAohTdbRdsnNiu5tGCNTz7w24Hlg1J7spJzmeb1QKcT
	34/1DdtWkWHtBC2ERY0s/b76+bhNUQZeq7eRSI58y+IFttKI5+uhs7ERcHX5bAiV1kQGq3ucHvBgj
	Xs/Agdp7PaE2FpUnwQHKS54NoB+p0Bpq/1X3k2FHtydl3PRmYsZyIQUTw1qJrCKvT0oQAZ3FtGmRJ
	SdoQfsDE/NkBeDYfp9prELhkUU656Ma9xPygLkwtc5wdEJiH8ZM1Pmrt3nUewBwmXYOV245W7KfIL
	WKNXff+Tg6P21iIxtVYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAh-0000000Aaqm-1Dfr;
	Mon, 12 Oct 2026 13:34:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAe-0000000AaqI-1xxW
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:34:29 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0bo62679920
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AWuxUBcrInqnBnXrIjvNWBh+kSHK0gado8CZLpJNc6o=; b=b9AgZ7hVkss9ozdw
	1dWWNsBJBCUFaQgtPt6SpfZGaHdDI0pJq7MEgHYBTA7/XV6DD+snyQtPpwwV0piQ
	wwl/jd8CJAvovvkRbDnbwtmxbPhsu4QCxkbqU3A/+1uO7wTO7lUcqosu8+vBhh06
	aul+Qg/fe4lnM6h7q1cizMJsLhrngVnUt5eKK4Zhf/C6dyhdNKMo1Xj7vXUDUeAZ
	xW2guuXU/AwN+1nEr4WOfj6NS8QYqtNXCu6uCbSb5MsQIv1TcXjXMrMiAM5iPQtz
	GiLescQqKGvX8cRF+g9WmrSlMRrLz6zBoXeKclzn5L1UyFLpGqILrasg1r8VMQIS
	4JQRZQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8sd1t5gr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:27 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3510d0baf63so5397316eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812066; x=1792416866; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AWuxUBcrInqnBnXrIjvNWBh+kSHK0gado8CZLpJNc6o=;
        b=GAJ2XoaclOVJSmds9CXhK6eK9E/AlcnhqEBPx1I0E20Q07l7kWedmRyF2debN01Geg
         jBWhfTWv/kMBvc01dsdBnHnb1J/BG87trh07w5lfy5W9BCfIMUwp57bkJOVqQOx32VkX
         qBkkNbIZDUyZhCEWFVSJ1DeXtjBIyksQyMNLsoUbK1sImDKrC4TcEgLFBv7re/Ab1Xad
         ci++BPap1Ivw7l2l61hF6m78cSS0EDirF24/aJAA1LCpvigAUUlue6wFe04dzSaSHvv0
         3i+xxtvo1IEGinE+ifFKPGVh87N3BiSkOLbX+bXsu4bT/huLPjFuv1/pVjS58EUdsrsQ
         hx5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812066; x=1792416866;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AWuxUBcrInqnBnXrIjvNWBh+kSHK0gado8CZLpJNc6o=;
        b=ou5IHns7CYbHEA+/eP94RiYQi1BKo+GKRq0r5bcEOGkpiGghJDoKXjOPemKrNmFkhB
         gg4+box6ICl4l/2d5Eat+oRa8BeHV0LB8wN9rXn5HFuLrTAtXr0xfGk9pH/CJZUOUo2I
         l1PNyIyNOVj2Z70Qxu43wlzQpuCgnRJOgPnOjR5ejHXLOcRYM08zfi1d6///zrfjxxFg
         tyQKCLcVlRvGPpsmZiGkKP+XAatrHKDsg10jeELtZv6WVMYy0Wt6fISXmGXH98Fraq54
         cK9GuPXcWWmeI85dfqqighmk+qlSZwRhYRLuDJkEcUr28Km72eJyLV6QfBP6cW903/9B
         xR8Q==
X-Forwarded-Encrypted: i=1; AKwUvBwlULHwhgP/4WHNbIA9dNpKLkOu+NNRVQqMTKDLSByu5HaD0atVjTuMTfKxFfFgvmQIaKbE52LJvcQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYKGlcZwHDT0sGdbdtWWkk5LZwp0HKIqgWRloheQ81ZXffvUXCP3
	oYkQu0VvkGypL2jwZHsNB0blF8jjqdT3+IlA23wa98h/fo5H23UfCGVx47+2BTz77h0ENhrcAw/
	L0SdZlk1zJBgf+QwOGim9DasYKUhDW5ARvy6uBACmvQXtNhsP1IIg17KQ8SnKAkNdgToB
X-Gm-Gg: AYBFou3w9y+FHnXt3kmEywQSHXpMTedbJbOKGTRD9bZm5jl4+wQjUJv9wTqFHpGCt8f
	XUfHsJDRr5kFl2Wc8VruqAO7KhkAtd3YzOfttC1lEeuEXwsOA87bXaRuR6VEuk+s9K3rU0OdG9d
	HJZUN+iU6pFyBZO7N2quU1gwR96Z7513w8brtQdp2tFeQu81sSMJuLVFqxKJlr4cPw/dJJLT9h9
	pqoe086GQBXsj8ad6OgQEAgkW7bjF6OnludfKtnxrF7PTNh7rXFZIN8sTFmBQTvweEWgj1L3UME
	scM9djypSlPJ512jfy+ierCr1v8DeYoG2hUyuVap8EU/68fegmLHV+/IvkFqbED5Fpa91H0oTPW
	L5jlfkPLWxIY7O2r3Rq8rd9X+PRk=
X-Received: by 2002:a05:7301:4707:b0:359:c5c1:1561 with SMTP id 5a478bee46e88-359c5c124afmr6226020eec.13.1791812065836;
        Mon, 12 Oct 2026 06:34:25 -0700 (PDT)
X-Received: by 2002:a05:7301:4707:b0:359:c5c1:1561 with SMTP id 5a478bee46e88-359c5c124afmr6225974eec.13.1791812065235;
        Mon, 12 Oct 2026 06:34:25 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:34:24 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:22 +0530
Subject: [PATCH v2 12/13] phy: qcom: edp: Add Nord PHY configuration data
 tables
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-12-a2ab9af954d2@oss.qualcomm.com>
References: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
In-Reply-To: <20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=2153;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=mc70GfhABlJEcIgszTS9OYEd+47rUg6PffkmKCnmkaA=;
 b=Rtaxo/Nh7eGn0ieiVqBP2KN9g33OKo536bTfySr6a9ADjYIHd80Dbex/t241gIRSnoVRjQRgj
 /oYuBiVbkZcC1tnPnA/IuOsx6QfOu0PrlLstteaT6LPSojTMVB9dae0
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-ORIG-GUID: 5DUtNpbVSo0dqN5HzaupbghJcGUM7gy1
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX2EaS28pgjFYO
 JJFskMYNXI3OoqEqAKUq4D/M0raAN5NNA8IS9Ol5k0av8QfG33qSco7vGuO87Hlz2FJs+8AGHod
 rdtnKcnTgcDtbW3GBz6nJwWj/wb3TZ0=
X-Authority-Analysis: v=2.4 cv=QtHLTlyd c=1 sm=1 tr=0 ts=6acce1e3 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=44JGFhAfC3nl-4BMLwQA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 5DUtNpbVSo0dqN5HzaupbghJcGUM7gy1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX7J6IosxUDp3l
 ul/F8sTyg1aBCRuBoa7HV9OW2tO6+FO32KY3aly1x8z0pvdJaFcYv2uWedpdCgrn6ui6nEr4SoG
 zVyrOu7e31B22MvzI4Qs28YQ7gnjJPrAKSozdY+bT7u6OkVkGvZe7GCufYYrHbAcq9wF48ylrmr
 mpQGYNHxZwy8zSZ2jEranUVWc6CRmdzAuiarevFhkjwzbYQe/RbDNcTiUOZ7RGx1z30QyZcbxg2
 G/LxMJukgDWNEKxkKDu2OsTcdobB65E4aWuh/yHNcfCuUoZJL4XKlxFm0P9wb072eKONeOUHb+U
 HcoIlsGQ+GPaiF2leuL5+tfijJESUzJmK3MZ7N/D8bCL+5Um+rOVuzmKGO6Ob50lSGyUPEXcR4H
 CyYOCyEHOo1AAPTwtFhRqZ4V0VGCJUimoiEiiX7WS0pSaG0rZUCX4yu2W4HcOqayp1C2PWYY6hI
 NKoUDW3PnK5xB9U9wdg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063428_632694_71B08CF5 
X-CRM114-Status: GOOD (  12.96  )
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

Add Nord-specific AUX channel, VCO divider, LDO and TX resistor
calibration data: edp_phy_aux_cfg_nord[], edp_phy_vco_div_cfg_nord[],
qcom_edp_ldo_config_nord() and tx_res_cfg_nord[], sourced from HPG
Tables 2-1-a, 2-1-b and 2-1-d.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 3e857d105668..cb5f6e0ae607 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1741,6 +1741,39 @@ static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
 	return 0;
 }
 
+static const u8 edp_phy_aux_cfg_nord[DP_AUX_CFG_SIZE] = {
+	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
+};
+
+static const u8 edp_phy_vco_div_cfg_nord[4] = {
+	0x00, 0x00, 0x02, 0x01,
+};
+
+static int qcom_edp_ldo_config_nord(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+
+	writel(0xd0, edp->tx0 + TXn_LDO_CONFIG);
+	writel(dp_opts->lanes > 2 ? 0xd0 : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+	writel(0x03, edp->edp + DP_PHY_LDO_CFG_NORD);
+
+	return 0;
+}
+
+static const struct qcom_edp_tx_res_entry tx_res_cfg_nord[] = {
+	{ 0, TXn_RES_CODE_LANE_OFFSET_TX0, 0x06 },
+	{ 0, TXn_RES_CODE_LANE_OFFSET_TX1, 0x06 },
+	{ 1, TXn_RES_CODE_LANE_OFFSET_TX0, 0x06 },
+	{ 1, TXn_RES_CODE_LANE_OFFSET_TX1, 0x06 },
+	{ 0, TXn_TX_EMP_POST1_LVL,         0x06 },
+	{ 1, TXn_TX_EMP_POST1_LVL,         0x06 },
+	{ 0, TXn_TX_BAND_NORD,             0x05 },
+	{ 1, TXn_TX_BAND_NORD,             0x05 },
+	{ 2, DP_PHY_TX_LN0_DRV_LVL_NORD,  0x12 },
+	{ 2, DP_PHY_TX_LN1_DRV_LVL_NORD,  0x12 },
+	QCOM_EDP_TX_RES_ENTRY_END,
+};
+
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
