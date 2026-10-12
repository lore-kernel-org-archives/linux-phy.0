Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC8BCA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g9ucpyZyiAz95bSau3d5t64UGfSJEV+eCCG030PhWsA=; b=4rDORtsxQyI3J8
	dPG9VAejAzYXZVWl7bJt5UtP38nXm65MYnl9U+bMpQf3qJ1DzeuwK+9ozMHET2TdG2HWQDiQQDZ1h
	noGGG9Zrq5DwpKrHX6nUQNFNoVH30eVpThBjSowd8KEUk3O8WmAtwlAlf6gwF/jCHvptrQZsHj/mR
	4Urzq46AQegGZU0Pcdoxzd3bQePyIfSZEXSremyGRAiX+MCN/XeoX76i65oDRCZPi5vbv1Gi8olZk
	G8V7YgIgmLdsVoI5XqUjx5xyJ0F2wbkfei/WOJHfE7hZG3vo3Aq3d7Ehktt9b5Dzk636yU54B6RiG
	da9SSNzJHkpHcGJtpLwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGA4-0000000Aajj-3y3g;
	Mon, 12 Oct 2026 13:33:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGGA2-0000000Aair-49Sl
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 13:33:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69CBxsqP1404351
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8r1kV/MAEEpfQTf+AOryDk8Vy/mH2u41tx3zHMQnDLs=; b=fsJKWlen8cXn9aN3
	x1mqBsH2Gai2+XOlzFBW287kmVwW1OE1Gdi+3o/ZtISt2fFwUpNTYWV6fZONsYGS
	MEOiwLJqf2+jR8CAUgqemkKiywP6L+6+/q+ESiGUMNRJQPREgrbPRo5kfVqYFWW7
	rWO/EH6h9fvw+QARDwDbJTUcSXjerzd7E8wzU9gcotMTXnx9LH0kucBLb7Q/BVVM
	/FILor4ikjsMP0vKUDsKR645Ga6RWpyL8nJao49Do1B9jb/NfL4kBVG+Y1vIdSJM
	PM6OX1hcT3xjRnMxg7EFwKlFu5y6PSBT275u02j9JiXlHPgWc0F9tJYwIw1wWnfI
	xCNn0A==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h8v7ks9yc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 13:33:50 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3592749a017so1561480eec.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791812030; x=1792416830; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8r1kV/MAEEpfQTf+AOryDk8Vy/mH2u41tx3zHMQnDLs=;
        b=Ys2zCWobwS0wr7tVIGN8Y2HuhcrlHNsvU3IyS+zIB38Sc/nqDrqvoswgQYpw+ODuge
         L/8rwy2VMJy71dz6RpgsKGD07ajB4DXvUNmjnev1MrJOfmxnnVRffS9rGNrUwgeCPZeN
         5ZZeLKzcbg4jv+Dh4YJjmZkCCrmYyn630aUawUYS2HTBoBVwFBQv3yY9oCA4QMD3uVpM
         0T2wrdD5nwF7NPdrpc8W0TXryP4JjFMsXhkoSg/cKO7Pdb3LrzDuybykhqRqkhSW5jon
         VAGmBndDAT9HfQLePRR0+0qfVXZNxFNR1SpO/toPzY7CO0OtK85omoNWHUikkDKmt6C7
         0p9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791812030; x=1792416830;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8r1kV/MAEEpfQTf+AOryDk8Vy/mH2u41tx3zHMQnDLs=;
        b=ibgCisA50+cz0bSFXnvECKNsZ30Z5BwhXvxE5IBbA513AQV3PSnzx5rd7Ly++fuObu
         +yRNlvCKXj5G/g0ECPZqHdyfaRIu3PwKFk1lYP4DIhuRNbGpFF1X2T0o3MFwU6nua+wc
         vMRuTStOsR3oN3074+JVLJL7J9hDwyhSCFwYZ4lvD+fK/vSIm9+XZeVVC/orPrQlxcd2
         MtGdIZjWNcMgRhbMIkoEOT62L+xX1nrEU+Xl91jOxXrn04fMpQYzgp14Otoyq3ow3LXn
         pUwKq+dRxHNTDi6/v/pI/G4PxD5Ttmw9EWOu9KrryLUdBccS4V1btybspiikDj+XAfys
         y+yQ==
X-Forwarded-Encrypted: i=1; AKwUvBwY07Dwps7okdbCwC8rQc2q4B8oLm7jkpQ9zpCkMa6RAwElYRFLwOTfRlfSaPEJMtcY71oa2zcV3Hk=@lists.infradead.org
X-Gm-Message-State: AFq9FYLouC1jooWwsA8D8KR8vLo8pY/kxWLAOeyPcy+k6Ksu3fxSUDmc
	2uZci4DFLxxZE3+wH4baOEevWGM+mBT/ct79C86P6782vNL/Bw2iG4562l5AetwkEl7HFRXDvLZ
	FVfsKcJTqalZzVXm0WTkz074xOQPW2s0HOcfcGFeqm6VNJAevgoEfucEuWTKPKyHatv9s
X-Gm-Gg: AYBFou1EdeG+OQw0iX0FgHMXYZDZ1mfvHzjRmAF30OSdzDlQzqqnxjzjtxkXzIxaYnb
	1hw+GvUvGw8UkwrxdXb5EBd9xzAtaGDZVv3F7pMqEUpBrkt5oqDzHjLgPC2ZYYon8baSzMu0+jz
	UKuxPkMLVnMk5cDAo9wjvyM38VvZapeRpP8fpxG5d2Pv+LlTuXdJN9qrpxnTH5lNGo6/aw+leTO
	uKJQ6iVqgH59LPWF2AhdH/MiJLv206raz7A6gtx12XzIGtmk0ZhcytHehQ223jyjLW807RngB7/
	R7BynMA76uykwHlEYc/8KHbhue2ie6vxvYKUV5u23qiKsh95fGz+xyPyo4T+kqXHhq4QvILFFdO
	o4CCc7DW4gOvsVUuJ7DGJD37N3WI=
X-Received: by 2002:a05:7301:dd95:b0:353:58b7:b5fa with SMTP id 5a478bee46e88-3535f48136amr13942056eec.1.1791812029507;
        Mon, 12 Oct 2026 06:33:49 -0700 (PDT)
X-Received: by 2002:a05:7301:dd95:b0:353:58b7:b5fa with SMTP id 5a478bee46e88-3535f48136amr13942024eec.1.1791812028880;
        Mon, 12 Oct 2026 06:33:48 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537ca1b556sm44740397eec.9.2026.10.12.06.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2026 06:33:48 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 12 Oct 2026 19:02:18 +0530
Subject: [PATCH v2 08/13] phy: qcom: edp: Generalize power-on path for
 per-SoC overrides
MIME-Version: 1.0
Message-Id: <20261012-nord-drv-dt-v2-8-a2ab9af954d2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791811948; l=8737;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=eF1Jpyt1qNMVw5DgVtoI8D/ioyJheTfzXdIRzkvKdK4=;
 b=fwlb3gaIOBYoqJ9GsBeBjI590rDx6+zP7ejlXPPM6qNRoGsR12CAKqd2bP3WQXqQYVdKa0I6F
 DMDo8LsAbNsDT3zv7KjfMBDrwDRiZ0NDTsfZHhc9TWVm254LK2/+pPv
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfX7XLX84IaEXII
 d42rOpONwtebIDgWuREJzhrW1a1qnkFUOtFSKT49VcBloApVJvt0HG73Ffo3OmVjrw/Vj9HBBr/
 LEv1DHCrLOsgUQASMQ/QJTbbjzEjp+WL6RpBzUOkuOt3fA7nFnzgRtrZyzfK4qWMnyMUc+eyrkb
 QQC123wqM1dUcOI1LuYp3HvVb83OHIl419k59GE6T1AbfIk2gfwXyPIZxO71k4anuQp9TUR2kCm
 5kf7l/qQuOatKBaOCIoUKZfcy9G/n+WQAHdYwhTBz195D0cO4HPHrx0/8mKu35t9O9SJWMjE/uQ
 ZlDISDtdXDCFpez+H/kBBQwgFpkEkGiqKqrIY0luEGO2OC12Q5TGX/oeypj4t8/9COFTjy0tH4D
 RSdpYKIujgLuq2gjIczeNMAZwKkQRgFHR2+GYi/6FcA9pRrGNKPJzWt5H39HS0V3JYjk4wyo/Jx
 TIFnwXw0DVXe2qz6rOA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDA1MyBTYWx0ZWRfXxmV1U7XFkKN7
 Sql6VapHaigFreYrDAZlXFEPbsX7Syx+lteuDMRb3sgDYy00PPAqsHaV5s/zPeY434BDr8XwjQk
 I/xOjjFY9avYeDla6mh4rcDbBVK7V7c=
X-Authority-Analysis: v=2.4 cv=VOtIDNPX c=1 sm=1 tr=0 ts=6acce1be cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=-OCD7epTopYbqN3EProA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: ePwPXWNe_r8T5Rx7Wwp8t7ZU-ljHokJ5
X-Proofpoint-ORIG-GUID: ePwPXWNe_r8T5Rx7Wwp8t7ZU-ljHokJ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_04,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 bulkscore=0 phishscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610120053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_063351_054286_F0C1ECEC 
X-CRM114-Status: GOOD (  16.52  )
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

Nord has a different register layout that the existing hard-coded
power-on path cannot accommodate.  Introduce qcom_edp_tx_res_entry
and replace open-coded TX resistor writes with a data-driven loop
that also handles base=2 (PHY/edp base) for Nord.  Add
phy_status_reg, bias1_en_2lane, tx2_tx3_lane_ctl, tx_res_cfg,
cmn_status_reg and c_ready_status_reg to qcom_edp_phy_cfg, and
make com_clk_fwd_cfg optional.  No functional change for existing
SoCs.

Assisted-by: LLM
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 82 +++++++++++++++++++++++++++++--------
 1 file changed, 66 insertions(+), 16 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index d5c6835b6c70..c5df1086607f 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -81,6 +81,15 @@ struct qcom_edp_swing_pre_emph_cfg {
 
 struct qcom_edp;
 
+struct qcom_edp_tx_res_entry {
+	u8  base;
+	u32 offset;
+	u32 val;
+};
+
+#define QCOM_EDP_TX_RES_ENTRY_END { .offset = 0, .val = 0, .base = 0xff }
+#define qcom_edp_tx_res_entry_is_end(e) ((e)->base == 0xff)
+
 struct phy_ver_ops {
 	int (*com_power_on)(const struct qcom_edp *edp);
 	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
@@ -98,6 +107,12 @@ struct qcom_edp_phy_cfg {
 	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
+	u32 phy_status_reg;
+	u8 bias1_en_2lane;
+	u32 tx2_tx3_lane_ctl;
+	const struct qcom_edp_tx_res_entry *tx_res_cfg;
+	u32 cmn_status_reg;
+	u32 c_ready_status_reg;
 };
 
 struct qcom_edp {
@@ -313,9 +328,11 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
 
-	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
-	if (ret)
-		return ret;
+	if (edp->cfg->ver_ops->com_clk_fwd_cfg) {
+		ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
+		if (ret)
+			return ret;
+	}
 
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
@@ -672,6 +689,16 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_ldo_config		= qcom_edp_ldo_config_v4,
 };
 
+static const struct qcom_edp_tx_res_entry tx_res_cfg_default[] = {
+	{ 0, TXn_RES_CODE_LANE_OFFSET_TX0, 0x11 },
+	{ 0, TXn_RES_CODE_LANE_OFFSET_TX1, 0x11 },
+	{ 1, TXn_RES_CODE_LANE_OFFSET_TX0, 0x11 },
+	{ 1, TXn_RES_CODE_LANE_OFFSET_TX1, 0x11 },
+	{ 0, TXn_TX_EMP_POST1_LVL,         0x10 },
+	{ 1, TXn_TX_EMP_POST1_LVL,         0x10 },
+	QCOM_EDP_TX_RES_ENTRY_END,
+};
+
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
@@ -679,6 +706,9 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
@@ -687,6 +717,9 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
 	.ver_ops = &qcom_edp_phy_ops_v3,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
 };
 
 static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
@@ -695,6 +728,9 @@ static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v2,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v2,
 	.ver_ops = &qcom_edp_phy_ops_v3,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
@@ -703,6 +739,9 @@ static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
@@ -712,6 +751,9 @@ static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
 };
 
 static int qcom_edp_phy_power_on_v6(const struct qcom_edp *edp)
@@ -913,6 +955,9 @@ static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
 };
 
 static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
@@ -1045,8 +1090,8 @@ static int qcom_edp_phy_com_resetsm_cntrl_v8(const struct qcom_edp *edp)
 
 	writel(0x20, edp->pll + DP_QSERDES_V8_COM_RESETSM_CNTRL);
 
-	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_C_READY_STATUS,
-				     val, val & BIT(0), 500, 10000);
+	return readl_poll_timeout(edp->pll + edp->cfg->c_ready_status_reg,
+				  val, val & BIT(0), 500, 10000);
 }
 
 static int qcom_edp_com_clk_fwd_cfg_v8(const struct qcom_edp *edp)
@@ -1074,8 +1119,8 @@ static int qcom_edp_phy_power_on_v8(const struct qcom_edp *edp)
 	       edp->edp + DP_PHY_PD_CTL);
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_CMN_STATUS,
-				     val, val & BIT(7), 5, 200);
+	return readl_poll_timeout(edp->pll + edp->cfg->cmn_status_reg,
+				  val, val & BIT(7), 5, 200);
 }
 
 static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
@@ -1094,6 +1139,11 @@ static struct qcom_edp_phy_cfg glymur_phy_cfg = {
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v8,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v8,
+	.phy_status_reg = DP_PHY_STATUS,
+	.tx2_tx3_lane_ctl = DP_PHY_TX2_TX3_LANE_CTL,
+	.tx_res_cfg = tx_res_cfg_default,
+	.cmn_status_reg = DP_QSERDES_V8_COM_CMN_STATUS,
+	.c_ready_status_reg = DP_QSERDES_V8_COM_C_READY_STATUS,
 };
 
 static int qcom_edp_phy_power_on(struct phy *phy)
@@ -1128,7 +1178,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 
 	/* TX Lane configuration */
 	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
+	writel(0x05, edp->edp + edp->cfg->tx2_tx3_lane_ctl);
 
 	/* TX-0 register configuration */
 	writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
@@ -1166,13 +1216,13 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x00, edp->tx1 + TXn_TX_POL_INV);
 	writel(0x10, edp->tx0 + TXn_TX_DRV_LVL_OFFSET);
 	writel(0x10, edp->tx1 + TXn_TX_DRV_LVL_OFFSET);
-	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
-	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
-	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
-	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
+	for (const struct qcom_edp_tx_res_entry *e = edp->cfg->tx_res_cfg;
+	     !qcom_edp_tx_res_entry_is_end(e); e++) {
+		void __iomem *base = e->base == 2 ? edp->edp :
+				    e->base ? edp->tx1 : edp->tx0;
 
-	writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
-	writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
+		writel(e->val, base + e->offset);
+	}
 	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
 	writel(0x1f, edp->tx1 + TXn_TX_DRV_LVL);
 
@@ -1184,7 +1234,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 		cfg1 = 0x1;
 	} else if (edp->dp_opts.lanes == 2) {
 		bias0_en = 0x03;
-		bias1_en = 0x00;
+		bias1_en = edp->cfg->bias1_en_2lane;
 		drvr0_en = 0x04;
 		drvr1_en = 0x07;
 		cfg1 = 0x3;
@@ -1207,7 +1257,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 
 	writel(0x19, edp->edp + DP_PHY_CFG);
 
-	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS,
+	ret = readl_poll_timeout(edp->edp + edp->cfg->phy_status_reg,
 				 val, val & BIT(1), 500, 10000);
 	if (ret)
 		return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
