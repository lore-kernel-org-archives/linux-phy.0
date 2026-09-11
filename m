Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F84CC88E58
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5zjN1cH2AUrBQ1Y2fLm8qWpLzfgogdWWKwcOnQYCNs=; b=NGK1srqzsnKOpu
	+AOoJhh1M2wZPnw1CzUABTM6UtyusjiG+T1d5lRGwF4EwD4lIeU9BTbR7X7knQQhTxURILZ6Wxkbt
	Mlpwq3TmlUYcIolJrAkQvpj2ajpNm1O0xG8WRFYJQ7VHMJVSE6ynfhzZMf1Mmg0+wFaUBj7+VYoej
	TkrDi08x+nFfSo3BQoku3F2dSXCQds+KlwnWO+h7HfPejeEWS1gEiNgILKIlSGPC4pNJk3DjnFv4d
	PnPBgRbYPcc7o5WHEtGSN3xeROPqtO7o8BHmQHhgXZYURCDZ7uUyAyJ477X9gwfSs6HGxqZ3jo9NC
	sXmmzJv8FkDkkPsIUkIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Ka-0000000H58Z-00oB;
	Fri, 11 Sep 2026 15:38:24 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53KV-0000000H57L-3HWs
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:38:22 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BFA6rj658277
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DROZeLrjFsEoOpdq3MSx8VXdFphleILDmRHCwOjsEHw=; b=FN7b2rgOGLRdbXwq
	yelWNls1Gb0ILWw0J2KIPsxiglGGu52Xfln9X+oiDJ1HHRe36QAoR59emDKLFXJA
	FpZzaSXUGzVDfAleSASezVAVIOx3HYDc7ENWV1hVmnJ93rclu1wMY5GG0sGOupbm
	JZX0tKWvY2YsRRK9n0LbjIsgwbA+43dgv4oJGVgWJ3gf8wWj+DIdQLO1lFvkLyEx
	xlH2HGJKnshX9PlmBx7UDDLiEb1V4KHzmwd7NH3A5sSWrgGO/nUzLiPEaRzKAvRj
	wQtA68+iGNeFY1UtnoqWqas5kXXS+pkwBEVeWR7sl8elLUQnIKPvcH8/NGv0oOIW
	1zSezA==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmm22r41s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:18 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-467c2c754f8so602780fac.3
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141098; x=1789745898; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DROZeLrjFsEoOpdq3MSx8VXdFphleILDmRHCwOjsEHw=;
        b=Lcn5fRY1FWnjGTrv0fyqCArcsi01yKkF+u4maiQz6a6lbRyH6KWg6AExtzgEOW+LBe
         4oIp65LHh9BYZkGeNmGp2bhzinCmU+OEW0thAf+DaAdZnF/gGFw/KKPaw19RQTr3DFYS
         yIrv4PlWaBxuh6NAdXkTzFhOUHQ4MEtjrFJYc7qEEUO1SvD6LaaCjqF9qV5kvLih8PbB
         YBY/41I76IDBiXiNwNav1SsMzfFp86Frz21wsWnkBRPPHOjD+O2hV62pIwGUUxg6VTdt
         Yc/Yl2cELq9aQOveZ6GEMQVx6pjab5naXAJRtJkOj0aCd/f8x30HFptV9EqpMKmoHcia
         SJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141098; x=1789745898;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DROZeLrjFsEoOpdq3MSx8VXdFphleILDmRHCwOjsEHw=;
        b=qvTt0qSEALHjrJtfoQJi9bftpLuKbF8peSwcQQ6WgTm3Uvm1hia2eyc9Nwb7+NKNin
         WWorI8OSo1SlZuWU2h8yWeshNbRSSu9OCTb0lzLg1+mF+IFVI7tIPey5dtZoFithgawf
         49id6d9W/IYFhO80OuKgK6Vu5TFSVoWvql/hHyifzWKAEAFvs5EAEL9lwxrn+JFtM/TR
         3oQKfUHOcFu5ggQ8H7VWRWkeZo+30H8d2eSQFqGETxIb5eX+9vZ3mu4WPiatbOUhwrqK
         rcR7y5HCydF0VyLMWkGcBSgkBrLof4S02OeJznm1jmujsQRWT+JiAsW5cb7zWisW9gHO
         2ncg==
X-Forwarded-Encrypted: i=1; AKwUvBw3m3Xo0+OwBmsGQV0gn2bdoHtcFH6zUuTceCTSweQNiAutpDvit3LCzZi2lL8jXUg8y1DmHJPkzdY=@lists.infradead.org
X-Gm-Message-State: AFuF++lVmPJhA6Jjmcte1TxKvk9t27mV5MpMjkU9fElCZiXtvCnWQcVO
	GvrMqrbOseENzkFzPL6D8aX+v76mOYgsi8/gOtPSUtuwzkEqEvTtytrVNalAzJDv7NnAqJMf0e5
	WCr8/54yOT/fHKt21wb6FkKaKBLXpDaSOUoe8CT9lqbGIZinU9sspovgOJomOupElgdw0
X-Gm-Gg: AYBFou13VnclArf3sos9SrDe9aeOV24U2dcbEMLqANENEgEpv46kaP/5MUhv+idgiMj
	AXja9oa4/9JRBMJE7eab7mnE03DFQRN22n6zjig9Y5aN9puex8gc8A4UobCgj7yNP/VmNieWRHE
	lJ5Riud/7fZnOCJWL3zNc7sTROUaZnW8w7+gIieIuk890DNQMFRhi57paGJe7C9uaHn69K/XfvW
	aupE+rkWK98mqts7VaaBJaLveAOsx0k3uVTl30XLO9ZTb61162gIFOOPjclS5oqk+iuVVTN2sQ3
	rRDPmszL6lk6Qkc/itRzbX+46A3VfR/6J4s2n+kofsOSXACrwos8tgHcvWIqn7rmo5fkwufXDCt
	mxwVlZBUYxAViI0R61OqkdZBPBY8=
X-Received: by 2002:a05:6871:340e:b0:448:7667:2e96 with SMTP id 586e51a60fabf-47de7836203mr3346179fac.9.1789141097925;
        Fri, 11 Sep 2026 08:38:17 -0700 (PDT)
X-Received: by 2002:a05:6871:340e:b0:448:7667:2e96 with SMTP id 586e51a60fabf-47de7836203mr3346126fac.9.1789141097479;
        Fri, 11 Sep 2026 08:38:17 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:38:16 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:39 +0530
Subject: [PATCH 08/17] phy: qcom: edp: Generalize power-on path to support
 per-SoC overrides
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-8-e25c073cf1b6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=4227;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=FpM14k9zoSvyybc0wXfwBuVOIjzNap9teV8zKiWlGF8=;
 b=OkS2dOi9eVbTtaegQB8+t+tTY6ndETEabUOuASZ8N3o8BfzK9ic4LBhA3pKKmOE/ajPo8An6m
 OFfAMW/PCzQCVB2CItOWlNTb9ivgJYLkJXRucx0rmEQl1trjPbQxkGV
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX1t+VXKo/BUUj
 vDzKHYtJMMikEL+LalhpHRx0F6Y5le7l7reivc/+pFsNQUG9QnRtQAZW1EYjRKdczl7k+Q4GN98
 +Ipxk6dsiPMddEZEtIyAA+r3QQpimM3tLsKWnAFjDZwg//uraHB5vbUKYzI2ANeAk8JwJLERYtZ
 LxnlznIqkoeKPOmsVSoYIIecF5v5eORTu841sJl/QMjVLpc/kSJiiYvk+o5ieWRPw0COdQGfJA8
 QBfLTOqz4oWZcLgBPJlBS4pU+uJFi3gbNyEy7zDRKvhST4pSjdAz/ViLLFB++ZePW7UaUSmJaLW
 NqyItozsi4bRjeu/f83na3GUZlAW3kkV5dmNg5+/BWfasC02MftZaPYJ2N2JH9q7lD6h6Da3A6Y
 c2WI13t71jyOnY2te3UF9S8tji3SLHBIHBALuKJkMWP/O+HIPMkr8BLXMgCeiyfFtcmRo6J8Jic
 yBA0Wek8tykMGZr1jLQ==
X-Authority-Analysis: v=2.4 cv=LPDz05W9 c=1 sm=1 tr=0 ts=6aa4206a cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=v4S7s_oVI5aw80GBEmEA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-ORIG-GUID: 8PMghnKvSgmQTWYZHnip6ttuezlKkqPA
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX0sOG6kZVgYMv
 r1vbgFqnXbLDnZ4wZPiLu2f8TXVh/516+gtdm6V7uUmxrilEfqhQVruwWzm9/H5PBCxl73DQ8gs
 roJY5aetns6hsb2GeTh+uiDueoPGOn0=
X-Proofpoint-GUID: 8PMghnKvSgmQTWYZHnip6ttuezlKkqPA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083820_950991_D92F3EA1 
X-CRM114-Status: GOOD (  16.33  )
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

Nord has a different register layout and power-on sequence that the
existing hard-coded paths cannot accommodate.  Make com_clk_fwd_cfg
optional, add phy_tx_lane_cfg and phy_tx_res_cfg callbacks to
phy_ver_ops, and add phy_status_reg and bias1_en_2lane fields to
qcom_edp_phy_cfg so each SoC can override the defaults.  No
functional change for existing SoCs; new fields default to zero/NULL.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 43 ++++++++++++++++++++++++++-----------
 1 file changed, 30 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index bf8a17336c7e..373f13b3d6d5 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -92,6 +92,8 @@ struct phy_ver_ops {
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 	int (*com_ldo_config)(const struct qcom_edp *edp);
+	int (*phy_tx_lane_cfg)(const struct qcom_edp *edp);
+	int (*phy_tx_res_cfg)(const struct qcom_edp *edp);
 };
 
 struct qcom_edp_phy_cfg {
@@ -101,6 +103,8 @@ struct qcom_edp_phy_cfg {
 	const struct qcom_edp_swing_pre_emph_cfg *dp_swing_pre_emph_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *edp_swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
+	u32 phy_status_reg;
+	u8 bias1_en_2lane;
 };
 
 struct qcom_edp {
@@ -316,9 +320,11 @@ static int qcom_edp_phy_init(struct phy *phy)
 
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
@@ -1131,7 +1137,13 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 
 	/* TX Lane configuration */
 	writel(0x05, edp->edp + DP_PHY_TX0_TX1_LANE_CTL);
-	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
+	if (edp->cfg->ver_ops->phy_tx_lane_cfg) {
+		ret = edp->cfg->ver_ops->phy_tx_lane_cfg(edp);
+		if (ret)
+			return ret;
+	} else {
+		writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL);
+	}
 
 	/* TX-0 register configuration */
 	writel(0x03, edp->tx0 + TXn_TRANSCEIVER_BIAS_EN);
@@ -1169,13 +1181,18 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	writel(0x00, edp->tx1 + TXn_TX_POL_INV);
 	writel(0x10, edp->tx0 + TXn_TX_DRV_LVL_OFFSET);
 	writel(0x10, edp->tx1 + TXn_TX_DRV_LVL_OFFSET);
-	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
-	writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
-	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
-	writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
-
-	writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
-	writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
+	if (edp->cfg->ver_ops->phy_tx_res_cfg) {
+		ret = edp->cfg->ver_ops->phy_tx_res_cfg(edp);
+		if (ret)
+			return ret;
+	} else {
+		writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
+		writel(0x11, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
+		writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
+		writel(0x11, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
+		writel(0x10, edp->tx0 + TXn_TX_EMP_POST1_LVL);
+		writel(0x10, edp->tx1 + TXn_TX_EMP_POST1_LVL);
+	}
 	writel(0x1f, edp->tx0 + TXn_TX_DRV_LVL);
 	writel(0x1f, edp->tx1 + TXn_TX_DRV_LVL);
 
@@ -1187,7 +1204,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 		cfg1 = 0x1;
 	} else if (edp->dp_opts.lanes == 2) {
 		bias0_en = 0x03;
-		bias1_en = 0x00;
+		bias1_en = edp->cfg->bias1_en_2lane;
 		drvr0_en = 0x04;
 		drvr1_en = 0x07;
 		cfg1 = 0x3;
@@ -1210,7 +1227,7 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 
 	writel(0x19, edp->edp + DP_PHY_CFG);
 
-	ret = readl_poll_timeout(edp->edp + DP_PHY_STATUS,
+	ret = readl_poll_timeout(edp->edp + (edp->cfg->phy_status_reg ?: DP_PHY_STATUS),
 				 val, val & BIT(1), 500, 10000);
 	if (ret)
 		return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
