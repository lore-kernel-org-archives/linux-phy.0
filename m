Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5313EC88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RCr9szHJYMXD14a9fGgpy2DKGbavyDMNa4D1BZiK9I=; b=CbHjoHaS+cdYKb
	2dVj9wV6HxRw6H2PNdsDQmpJM4yi3EimtH6VWI5EXPBD/tqM62h0dlxPkVLjyaZ1o6rqhLfLApete
	GiMpZ0GGkEqxJr1pr6VLwOVCpOY7PvdFquXVCgLE36NgRjoox2wPfT6EzKKyqc+fmIqI0+ISHvH1b
	Q+GCeufW3jZsGhBMlWxZ3DzxeheyQAcaFPlEGxjZ6vCLRYwTX85bND1BJItqmQivHgYUCqkz5t7Kv
	ZJaJinjBdqyenCcXF8NNTX6uxyJrGjYFyLrdLwSGxU942FRcRUVVHHHhD6lyEI4RPbopodFSxDTmq
	k+mEq4n8ampwmT4EqQpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Ln-0000000H5UI-054S;
	Fri, 11 Sep 2026 15:39:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Lk-0000000H5TS-2js6
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:39:37 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEm0CS1370326
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TYKeXTa8aTR0bTBB6X/4VXQLUl7NXF2imUYHRSL6L6Y=; b=KUfMlGKDCYJUkNK9
	krs5AoW76Ydwk168/8HaKacxnVBbJwBkxOnwJbZLFnOqGLRigS/emZ85a9bHCdMj
	k0fuvdHDWf2T6JDb67KoF58rpj/dm9q6rsGX9WwcRmSUeBJ5mPvFFmGfFcwq/Z5l
	lNCitP0sZucMOzBzOlZyeIkbHK4iedThKhW8Dcb03G6n15biYDgVnDX6ZV5fRpPp
	e2mY8MowwTmW4yjJ5XX+yMUt/xDMX95c7YtmnigDMUn8uciuinlr1AOpzYsWrmkj
	4Bw5MaZ75BX+keYvX83+ZcKSyaWrVJGd8QTRLrVrtkF2IaZ4/o7cqW/RGqFeVNvq
	DFWZ8g==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbf8jj6a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:36 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-45eb9967696so1187063fac.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141175; x=1789745975; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TYKeXTa8aTR0bTBB6X/4VXQLUl7NXF2imUYHRSL6L6Y=;
        b=Axz0jZtOl+/AJstBSA5zisALAP3QgwV5pwu2UMu4rMRL/nazIuIIzDt1AxoTzOK4Hf
         pi2zHC5GpRZRLXkMIFhN8NYoUX2IVVHB1OaXN0uixhwGpjw6ALsYEdsL27W1nlAWQZFL
         o+gh/1P79Rej9d7M4AKo03yerivBGVT1AQCpvN0CQYJ3DP1ZudR1iWM0UDjg+g3lHRQx
         FKOW6S1/R2HLNQ88HPwlq1qg/witg7gVPXIe55KkOjSYSfOmhEBMvgnzqqRQwhEWhTc7
         pwPf26Qb84aE+Ejq5P4T6mT2sHaOQ21QUjtzMkcQSJzqiHep9n2/6ll1383m7fb/Jq7S
         eIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141175; x=1789745975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TYKeXTa8aTR0bTBB6X/4VXQLUl7NXF2imUYHRSL6L6Y=;
        b=qnNbpaZsNB1WGQsPvV3OPpLr8dTEDEBb7r9ZIZ6OKpthOB/q0G/KHiK7PH3PskIwt0
         TSOG4Y1yLSgmdth6sBpfA54eqxGVVuiSDQEywm23XilMzMGNAwPHgCt4voHI5l9PWOdq
         u9AtyvRhfSTpu/XaL3e2tlBxIb3BINN6mWHs5jjijATe6w7exCHQYT/Gu8GGulpps6cz
         +SFJ47CEz9MedlmjZqcC6ehouN3YVypZ1ml7nIBdVJU+hjcpDRyZZplein0VzYqCplzt
         M/prrwbUqjRrRjNfKcc402FyvGa7iatkmULt4W/CiYmgKm2VS1luLNlCuqMaJ7aGE6rk
         gbtQ==
X-Forwarded-Encrypted: i=1; AKwUvByNcDTP1I1Jkchc+Rqq8rY6Beo7M5Do/aJs4oToooFNhWR/CWfr0yRKy8QlboSu29/b+wQgEAT+338=@lists.infradead.org
X-Gm-Message-State: AFuF++lJYpVsEhAxVtHcSLq4rht9CJwo4Wzz0zyBZDiiVUEQgKjCDVLh
	Jm/paFGiYedA4phw4b0jR8oNJiBGCeFqEZbN0qQ12cYvBTg9ezQ/bNF29tgIGy4t19qDc3C5MUY
	XMqc5aR9hvLh0aSBEuFhDxNI0vMOeBFwtZnc6oEZpbJOeurkXPCBA+T9U5ixltjyCmZw9
X-Gm-Gg: AYBFou2STpIa4k+Ll3oEmj1I/o6Yf9cClJiqGvqCBbStIPa90eq0s/ioOyBM77UC4xW
	DefQLBUwvJlm9QFXe1YiHbjLkXWacmORKJLhr9u1VVBHF6Ce6ogoXC7FhElqoCKr9sE++tR8LSm
	4Z3qIhEjVrWKPBl0lITjj7cq21iPXOIYDBmHjL5S4gnyyUg6/ldGvlmMtAp2/qKRnStFp7Gygrc
	Pbd35hHuW2lGlJK32ZcqDTtMD/pa2H9/L06XmiO1W7Vejk5nz3tiW+0N2+FBqmXnh1BZlNQ0Xtb
	c13XW9sDsNLDl9Kupn+8D2kZoW/VZlMEeN5A2gh3yoH2BEXh0SqzPzmBm0w1OqTD2EpXowkvmoq
	xf6kEHmnAzwa5HcEw9GD6PUJrcqU=
X-Received: by 2002:a05:6870:180b:b0:42f:f3b2:e2c9 with SMTP id 586e51a60fabf-47dcdbbb17emr2893627fac.0.1789141175320;
        Fri, 11 Sep 2026 08:39:35 -0700 (PDT)
X-Received: by 2002:a05:6870:180b:b0:42f:f3b2:e2c9 with SMTP id 586e51a60fabf-47dcdbbb17emr2893597fac.0.1789141174947;
        Fri, 11 Sep 2026 08:39:34 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:39:34 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:47 +0530
Subject: [PATCH 16/17] phy: qcom: edp: Introduce Nord phy_ver_ops and
 phy_cfg descriptor
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-16-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1972;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=94rmdeySxa5fJHfAGld0di57h9zUDb4Ov4YG7k/0YKI=;
 b=6FCW2hLlHDUGqMX0JBT6HvN4i3iC42y74fuKbeKZlV000G80lciwX8BRZBP8TXys2iqxrET60
 2aPAk+8qpgFBX7hOiipgM7AllTxJBIHmy2S9y05wfDnVnAl+d3FZOnR
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: 0o4bD-rbmkF1d-BauG4ep1KyRmcXfRs4
X-Proofpoint-ORIG-GUID: 0o4bD-rbmkF1d-BauG4ep1KyRmcXfRs4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX/vR+doTMU5nR
 +UaRKZqdPOgiW6BPaubphdduUAbg1kHAnVPdIMGUtKO55bFw1/9lXyunR8SlsrsLYA66lhA4yOl
 oZk1mHAyCsX0R0e/BukutQzzZDYC6SzWXiGcE7uURgdoRsnHe2PH64ioewMlQDn9R489/3JJT1R
 H6HY+XLj/P6N7E8MpTAfsYCu1HVeIu5Qqar29eRsN3g5nggEix6IZwChBU/2GTuRd/JrDKabKCV
 2dvGsA5AAm1Dq2tkgjuuGLCahm0DtZAcu+xDPdNylRRLW3U5vGoKdbIFSATRkKF0oYi4zvNgu00
 sAnIoy9z0RDmoRTiWA6E+Axw2RQDq9V7ibZRL1dT5dOuhT9E73kySOoWOPyVJy5DuTyY1j7+mrK
 LAnGn/tsmw8lvlAcw8y7M4ha2BqGZl8bNOZuBKyU1hWdnDSQmXGxKvl4ENtWCgl3RsMQTVNq3jc
 ofuZz+ygioqOrOCCfvA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX2/tTQVzgYAMS
 y/bxENb/6ks8eY5zBY1fpCeOJEdmf/8tR+zmrcCTcK0yyhJVKixm7FXXoCD+dDWpeSHdzgNDTSb
 pcIYSQgezmsY18VEblYC8ZhiLKtIYXo=
X-Authority-Analysis: v=2.4 cv=UJFIjyfy c=1 sm=1 tr=0 ts=6aa420b8 cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=hnKCH8YYcLMkF2FFhooA:9 a=QEXdDO2ut3YA:10
 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 adultscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083936_704823_4E5FC0DD 
X-CRM114-Status: GOOD (  11.59  )
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

Add qcom_edp_phy_ops_nord wiring all eight Nord-specific callbacks and
nord_edp_phy_cfg collecting the Nord AUX, VCO divider, swing/pre-emphasis
tables and ver_ops, with phy_status_reg overridden to DP_PHY_STATUS_NORD
(0x0110) and bias1_en_2lane set to 0x03 for correct 2-lane operation.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 361f4e467351..338f28cb404f 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1847,6 +1847,29 @@ static int qcom_edp_phy_tx_res_cfg_nord(const struct qcom_edp *edp)
 }
 
 
+static const struct phy_ver_ops qcom_edp_phy_ops_nord = {
+	.com_power_on		= qcom_edp_phy_power_on_nord,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_nord,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_nord,
+	.com_configure_pll	= qcom_edp_com_configure_pll_nord,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_nord,
+	.com_ldo_config		= qcom_edp_ldo_config_nord,
+	.phy_tx_lane_cfg	= qcom_edp_phy_tx_lane_cfg_nord,
+	.phy_tx_res_cfg		= qcom_edp_phy_tx_res_cfg_nord,
+};
+
+static const struct qcom_edp_phy_cfg nord_edp_phy_cfg = {
+	.is_edp			= false,
+	.aux_cfg		= edp_phy_aux_cfg_nord,
+	.vco_div_cfg		= edp_phy_vco_div_cfg_nord,
+	.dp_swing_pre_emph_cfg	= &nord_dp_swing_pre_emph_cfg,
+	.edp_swing_pre_emph_cfg	= &nord_edp_swing_pre_emph_cfg,
+	.ver_ops		= &qcom_edp_phy_ops_nord,
+	.phy_status_reg		= DP_PHY_STATUS_NORD,
+	.bias1_en_2lane		= 0x03,
+};
+
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
