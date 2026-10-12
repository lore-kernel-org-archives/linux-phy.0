Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B91C2CA9ED2
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjza3Fnig45LiliUaVsKD6K/hpt6Kk+0UhQsFhXu7UQ=; b=2jNaq/mF7emuPX
	DyXm2LoR3XYjcLj14v8riSO7zAfZGnRkFKnc0MtwUisyBbEa5si0WZWkxQTBELkNVx74IOBVtnPdD
	6cPxLaSdATSXFPWvxxjIxAcYcr098/MXHjYuEipY5c36uqU0dH7SUgAOLkC2TFmg2VzsbKbJNqJGy
	qKo8UdoBLedk3RkmwDT7wwy9Kjj64LgPyUyw6AUNgYe7pko/7apBGMuU84RLFSAgAfESxAi+wFlWT
	i2e+MrMzT1rTcYlSjRTF9XAx3Hy81gVPOmbGxthIlRxNJqO14nPVFyksD7X0tPInN9Alhp1Du3/ip
	BHTCXB0QFJKgidEkm7Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAq-0000000AatZ-1daS;
	Mon, 12 Oct 2026 13:34:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGAo-0000000Aasv-392W
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:34:39 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CC0AR9802084
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MH8WUhN/uk47zXTtBziw108eq20eC3q5Tm23CfZZvYk=; b=Kecer+CPGi5EW48l
	CUbVCVIAcHqQf9LzC1kzPQyKKOtTBOBRgoEzU7SnsI8tZBXTxBOL6BgZoyo7Ybwo
	Bszi8xFwdosh69R2Apl1BjozI7fAkKSqeqsfLxv05A9yZuABl1rpiOoh3XYcSLys
	1TSB/+RaiN00/lqPtZs5Fgp3plGv7g/cGCgqotqXOl0oU2dnahcF6bRynNUx0R0a
	iAb2E0+LbZXVUNruoIJfp36gLJ5w7sZuqZRuNzq/jDlhB5hlVsnFXzZOqlfBCtau
	+8bQ+qdsx/3EtTMWJfG2+Ur1GojvDkYKoS/yMYJIt/KeHO2VtN+rfk2P1c/a34/e
	TE4RlQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8wfcrwg6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:34:37 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-341eff9e381so5651425eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812077; x=1792416877; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MH8WUhN/uk47zXTtBziw108eq20eC3q5Tm23CfZZvYk=;
        b=JBqPOKx7H+k2Q2lP0WMGg+FbT00WfK3l87mWSwLNUoP6uZc5eU0DSVN9KLoc3KJBCb
         UzG0cbJk/DYqQH00K1WFIMhBb2r6jVWsm3iPj6H4K7nlg4Un1nQknxi/IgAHTprANYeh
         Eo/A4B2QKxGwLfEY2sNUoJPp/i0yhebAu7obI1Cz0AWbfPA9fd3ZdjHBt1fY2Ci6up+v
         ///BeaqQkSju6kyyxSC3dZOUS9qX8Q6pLGXXPMAdcKg4anDKlOcrISJedsnRFrEPIorr
         B/py6/0PvM5Lstq0Nj57xLcJ2pkQLgdfzApM8e8cJ6eSFuYDdDC0rKXujMh+vjli1xWL
         uWsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812077; x=1792416877;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MH8WUhN/uk47zXTtBziw108eq20eC3q5Tm23CfZZvYk=;
        b=ut8/zTgako02GqaVtzc0sGrUthILZIR96+r6Gsmt41E4x1Qqaff8bm3oalFCtH1UZE
         g6npojiBQFVh3cOY6cR/BGPQFu6Tq6cm+4MFdSJbSNA4Xy4j/H0DUAAS3shAVlyP6zk3
         KGyfKLVuAYLD4JUH+zhWzqOihBYDilB6iBTDUXPhGizM7KvgphOnEStuvJD1GJH0x70c
         Oyav179426ZAVKR2V583PaVGflyZGTG2ELItzQBwMw7AgJ/CqEYdIZ+13p+LjnFYeiaU
         46coVXzzNCX2W6siyRRZedVOpdpA9Bb0BjPU4tWOt3eWBC0N4s1+FMpqLToxyFda8czJ
         U0Nw==
X-Forwarded-Encrypted: i=1; AKwUvBxyUPuzEaLQS+NTJ4/hTU2lCYKUOCw2ILKAVxFuRCo8d8Ba16XmCpjxK+uysGYnpoYt7W71SuiQLN0=@lists.infradead.org
X-Gm-Message-State: AFq9FYJhRKEfPZcc4VkhF0qGV7ga3yB6xk7eLwZf4I9Rl+D3tfs6vZfS
	7oQ4QdsirvQaWKzzflT/X3w0onKzYOlod0Ah0M3kwYRkRRXPw04wWk6wAalgmGvslTyA6BOac3w
	Qyo82oj5NclmUyo3MSBQ2yEbiKhuFloaEIRhKP02ua4449jmBbCi6irjBkatUgdCtwaLn
X-Gm-Gg: AYBFou0cICr6j650EkaYMMhiJZaIUnA7grbgIYr2gmVwEPVlAeOk4IGoAqBydTeaavP
	7psxQ8YeO0m8ptbh6lwrOsh8yNSbWFqM2JPJGV62ZsN2WeIFd/1PxaUnJYsTkZWCfQU1Ohlw0cY
	7taBWMtbbmcNmntRzNUHw21O5+3erYOiPVI9q/v0ySnVJRh4OOkuBimR4b7jw6FF8ZE1e4GQPHO
	oEF0ZSRR35rEpdCqSxxSZT/AYc7MTH5gEqnyM45SEHD3BAtIC3LQIGHzWf4fWjti/qZlGgqrvqO
	UNxLzJv0SHjJPd+CKDoFUVhkgS88MKnZ5+TDvkxOu/TqUQOrLaLHcBLLq9MrNtDiEw1ZeqI4VTx
	qNohlNmygXTAJAxFZALW1OHRIPh8=
X-Received: by 2002:a05:7301:1a04:b0:359:3460:bc1c with SMTP id 5a478bee46e88-3593460bce0mr7260024eec.12.1791812076787;
        Mon, 12 Oct 2026 06:34:36 -0700 (PDT)
X-Received: by 2002:a05:7301:1a04:b0:359:3460:bc1c with SMTP id 5a478bee46e88-3593460bce0mr7259889eec.12.1791812074536;
        Mon, 12 Oct 2026 06:34:34 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:34:33 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:23 +0530
Subject: [PATCH v2 13/13] phy: qcom: edp: Add Nord phy_cfg, ops and OF
 compatible
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-13-a2ab9af954d2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=2577;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=WRyL8CMWIhLtCVdKv+p4xo6VqSv7gN1Tojlh5IqU2kM=;
 b=0iT/5hPFnYhWK4aFKy2lRGhmL8bjiXZ0Y13HRMcmL7Zsnt9guI5XnKjtZJfIfkIcxaZhw0kw3
 a2RCqqMd8QbBy5CU5aVOPVbdlRqdGrY/tTvGdFnNF6qXVkIU6L6jCwu
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: vwB-rl8repPYJpouYLCCT5WhjwDXFBjy
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX2YV1Kug+x88w
 yuEM1iP5OXM/EDR7BXKf9n/Q6qv49/klOh9mf6/WOHprmhlE7Gth/i2LsEy2q5XImVv8EKDvt02
 iIrpCf18pxYLysLAME3exg5ABA/f44c=
X-Proofpoint-ORIG-GUID: vwB-rl8repPYJpouYLCCT5WhjwDXFBjy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXxB3znStNYlLm
 ZEH1CUXj4QCsGvZH8zY/ZWHROgATBMLX2/U5WY+1q3zhgMjTSgPAQcqkzxuEVG7/ngCPSjpqPxI
 KtTaX58OqgIu7P+xEBjUSTIXMv6jm4xhqgk6LRWjIJ4n127tzLrsGOI226rxguOzWWMX5OoqJBv
 pmY9YQrebaPZQ3pRMaEZJeqRgSQURnb+ZdJ4upSIxVP3+iHzSJ0smEb/D1uvxA9jd9qO4VF0a5P
 PJmRGYHnvRsmw5EgLJB6C1Px1/DQ3N1InAI+xxreUCbVVPdlTS8llDfyKYQOzK0ssPhfbZJKRLh
 /oAfBANVTk5+qwwtn7N17fQ1CEDKHgjpyCBWDpbU8wMSsxemXLrpreHKRnTePYMbjvd/2bv2No4
 A79nfmi2U3IZD/27/DEaIlGcSpaCgNF454uAFWqPdPw+k2IlR4vScJwPUFjjBtlbkX9dd+opgjx
 ELw14Gr+GOrfIir9ggQ==
X-Authority-Analysis: v=2.4 cv=PbhqFShd c=1 sm=1 tr=0 ts=6acce1ed cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=EQFMWDaH4iPFUakZLHgA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063438_797157_37B331A6 
X-CRM114-Status: GOOD (  11.76  )
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

Wire up Nord-specific callbacks into qcom_edp_phy_ops_nord and
assemble nord_edp_phy_cfg with all Nord-specific values: AUX/VCO
tables, swing/pre-emphasis tables, relocated status register offsets
and TX lane control.  Register "qcom,nord-dp-phy" in the OF match
table so the driver binds to Nord DP PHY device-tree nodes.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index cb5f6e0ae607..87400d61323a 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1774,6 +1774,30 @@ static const struct qcom_edp_tx_res_entry tx_res_cfg_nord[] = {
 	QCOM_EDP_TX_RES_ENTRY_END,
 };
 
+static const struct phy_ver_ops qcom_edp_phy_ops_nord = {
+	.com_power_on		= qcom_edp_phy_power_on_v8,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v8,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v8,
+	.com_configure_pll	= qcom_edp_com_configure_pll_nord,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_nord,
+	.com_ldo_config		= qcom_edp_ldo_config_nord,
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
+	.tx2_tx3_lane_ctl	= DP_PHY_TX2_TX3_LANE_CTL_NORD,
+	.tx_res_cfg		= tx_res_cfg_nord,
+	.cmn_status_reg		= DP_QSERDES_V8_COM_CMN_STATUS_NORD,
+	.c_ready_status_reg	= DP_QSERDES_V8_COM_C_READY_STATUS_NORD,
+};
+
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
@@ -1782,6 +1806,7 @@ static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
 	{ .compatible = "qcom,x1e80100-dp-phy", .data = &x1e80100_phy_cfg, },
+	{ .compatible = "qcom,nord-dp-phy", .data = &nord_edp_phy_cfg, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
