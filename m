Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86EE0F94CCB
	for <linux-phy@archiver.kernel.org>; Wed, 22 Apr 2026 06:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C96B5eKSX7mYociLukRdzK3zD+eaZsNGKtR+pQ8uEWk=; b=fpLxKker7TjBGX
	MMDkie/oWe/cbJ+vsRiZAAf5Oo3OeCqfMRplhnLdRYx1wRcFEZkFY3ZQYgpBWzl047mgjjhN0Gd1u
	lw5UpnSXv5VdCmxrFRv3qIgl9fK2pLxegmjqdIyplZzSX/MK7Qo+rxAvMmzO98QLSSlNgVDrKk7U3
	Ljq1/jOU9r57yFcodQ1uYszIRYRIvRlb725EYzb3yLGxncq5/WAUY81mLNon50q4uFW8R/cQWn1mZ
	w8YKiMlsGwiV2Vnfp18rqkDDs3fuF0mDsstu8w86ljBIxwjJAvojBigjvtHzjFFbbJ6Of29lXgneh
	Jji6oKVo2UlwDfDDLsgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfS-00000009drY-1Enx;
	Wed, 22 Apr 2026 06:02:34 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFQfP-00000009dqw-1R9w
	for linux-phy@lists.infradead.org;
	Wed, 22 Apr 2026 06:02:33 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63M5MioH2965895
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P3nGx0uGWf5/fdHyton5z0NTOdFkPwqGvS8tV5dTIN8=; b=Ar/CUHGduT+LrL8d
	VKJ88rtqH3A+ELi3Fy7xnZRuyWHzW90mcH7ASGNMzIJWTDc4Q9FTK94dfYqnQ8D9
	eWZ/IFnRwtnHg6veu4pHSE/0pU2lF5SQ7U2ntGOgHCXbbn4M3d1El1WvV5XMTJAE
	wOB2I633WIYdulJzf704otEliQrVoAg9w6Y5shUMfWfHTWXm+jrPcuawjuExVWPF
	TFilDsNHFBGAvYkHTw5SoGSDDr3PHj52bSiFmoOjw94Y+5MwVYgC906gBllscTwI
	LxL27BdPEtFg6KwB+vpRKG7tcN5hwC5ZCqSRKtCF8/93M9KsQtvPxlSKMKlaYegP
	bAZxfQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dpenfhvc1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Apr 2026 06:02:30 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8b02af4345fso173380706d6.1
        for <linux-phy@lists.infradead.org>; Tue, 21 Apr 2026 23:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776837750; x=1777442550; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=P3nGx0uGWf5/fdHyton5z0NTOdFkPwqGvS8tV5dTIN8=;
        b=Sou3vIuwLVqAPZ3kXsUsvy7GcFRZUyKGGnE8P//c9BwbGO9XA+X7WdZ8C6DJ5I6OpY
         WEW7iuJNYv8LdRWzVCNYXR8sWWdKfADFpPjHitoochDO7JB7ueCdmVmu2vv52kuPv27B
         J8hMvuPZHaNB3n90xAG6Pt5i0lOFBzyzt8kZY6PNZV/LLQTgyo0S350QDn7pmcge91uR
         w4bR6+EZ8nsWeU/iivl6ifn7DgCXw5mItOLjh89Zahg41yR0oCQOpt+aciP+lxeTINCb
         HkwTpjyrqa7Was1DFhk4EEHK9NMbI8zSAb1UtRRFvUY02tWt5+RRSbI07Mlp0NwqEWJg
         ZpQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776837750; x=1777442550;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=P3nGx0uGWf5/fdHyton5z0NTOdFkPwqGvS8tV5dTIN8=;
        b=NZ+vkejKfzUdK7ea7AlCDJoKby8BCHL1rgbe0h28wlEgVVw8mNlMa7w+sR+izi2Ur5
         Eh4jOzeZEVOFDAIFU5j3Qzn001/0r7SS+mXzT9xgjwYG9drPiTKD7JLbAthhy+oykDDr
         xWE6C+FRzstVS4VBq5XtKp5BBP1MWTGk/m/BE8+aBcyicgPHieS3LflBVLzKaGv/HQat
         YEBggmhGwdyHdqtpM+GfGqyCXYL6ek1S/YbUGOyZGp7YPQ864yp1Tt8YTwkyM6WBUyuK
         /PenpPtU7/Z+Xfr32zIqm3Ost4oeNS9NYJ9X2ElhkKlkFj4xAlZn7eCpXW9Ue+7bzWA5
         wk8A==
X-Forwarded-Encrypted: i=1; AFNElJ++KIQPEtsptzA6kFjr7S2f1Yu4fWwpz75SGxhgkfGykCm527jbKudeo7XAnaxkBtWJD5zhVMMyNgA=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCS1uo4Qfa6qPFvjreXAi+iCn0Dzb0MgeWTbxvtNFwl13cq2N/
	idmA1NiTwvRJeDEl/w0HSYslylqd7BBQKmE4xDnpJTInO8ge+qmadKDXLy1405LAjAqvhQMLqF9
	tRdDDG6qWruQ6P/x7F+2YSPbHpIlCnqp37Wmp9AcYkoGGljW3+o/wgOxe6ItFo3rujKHR
X-Gm-Gg: AeBDiesqK/f+1QoPOtb1LMi/ZWxhIhc0iL/kGC79iaj/yn78li9bbfvs0Od4cBd1w6g
	Q2WPBtc4tSTOntIm1tfi4WUrWs/jg6IvXPuMX0+NrdEte+Fi7DgJUX07X7mIBGxsIgmbK5xZ9Ql
	g+LijOLtjlvtpTJ5ZF8qriJ1DcOn9/jBjnA/rLGANpyl2mYUsrJzx3EjpqzuR9/+0GB1x8CP0z7
	Jw5GrBY2j0D7EK25GuYjHngIehvThtdpsRymvBqYp2TfggpJXnrjQu3oCPWgkm3n/w4sgcfRQxP
	gHcErQgxtfYH2HOCblaVZZhy3ckIUCxnQTvtMg7Le9LQZWfXeb9BfQpsyjq177CIkyHVYVVPPVe
	aGN5qz26isJpopK4cYYSpv8ItLRup3RHi2J5Ro2zjakOA4gDWXRP0RFvu47tyg/DmLBNweCoaVG
	QtocbcSoJHRz0aCKm6Fg==
X-Received: by 2002:a05:620a:7083:b0:8c9:fb69:e708 with SMTP id af79cd13be357-8e78fd216d0mr2899668285a.25.1776837749695;
        Tue, 21 Apr 2026 23:02:29 -0700 (PDT)
X-Received: by 2002:a05:620a:7083:b0:8c9:fb69:e708 with SMTP id af79cd13be357-8e78fd216d0mr2899664385a.25.1776837749172;
        Tue, 21 Apr 2026 23:02:29 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8ef12122800sm237379985a.18.2026.04.21.23.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 23:02:28 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Wed, 22 Apr 2026 14:01:55 +0800
Subject: [PATCH v4 5/5] phy: qcom: edp: Add PHY-specific LDO config for eDP
 low vdiff
MIME-Version: 1.0
Message-Id: <20260422-edp_phy-v4-5-c38bef2d027b@oss.qualcomm.com>
References: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
In-Reply-To: <20260422-edp_phy-v4-0-c38bef2d027b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776837726; l=7071;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=RhFRLlIrjEyLFZIjMhkbMlMfeYE/d1JO3bZyxo2u2Rk=;
 b=3gY99s4GmyTX2jrAG6gyXVJtdhicODfINJMMTDprC2ZutH8VdZaqjWTItYXEIIKiion8e9ewo
 tonr+NGmVzpC2hxStRLzzdqOLfgeq0dG17TUlsKcMOT0h+lp4V8zIfe
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=Y6rIdBeN c=1 sm=1 tr=0 ts=69e86476 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Wstf64DO4dhji1mrokQA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDIyMDA1NiBTYWx0ZWRfX29P8ULzg34Hz
 4yMoVwpuM0t/sr7g0h/wOP7iIUUdL/MmE4olVsfhKK5y1USk9DSLEpuyNOtqsDcHvCsc8C8vGYC
 jL5m4dt4iEjPSZ0VryCy/805wBIHsDvIZOaezxtVZsEqolNT76W75W6aOpI3EIacY35EmV+irv3
 7ewq0tRdh5xMAddjAcxjjJ+WGy1Ci0HKSjyGObAlhJU4DjQxFKtQP4t/aKMYaZ1ki0VOXhYqxUw
 mssd0yJ+j4DgUN9NsqwB1qfZlddLa1lVkRi6ZmlMvqIAsUlpBGV5wj2MNzVEwoCEE8wKOmXqVRx
 Z83uLN5kO+NB/ntbVBZwj74pGs/Z+VLobrJHyITcoXqNAkR73zTriedPgfPrH77Dhqc+Wmo+G46
 PiVsCB2EvAFB0BJhQ9JptthQHqXZyAOc979Syva5doVlPUUC8EeTTRoeWzp9KpUCdmInMZoY5U4
 INQUicI7m+252qzRYeA==
X-Proofpoint-GUID: kABQHtzJ0-IpXEPuqJTgEg_VPLvNX2Ji
X-Proofpoint-ORIG-GUID: kABQHtzJ0-IpXEPuqJTgEg_VPLvNX2Ji
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-21_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 suspectscore=0
 phishscore=0 adultscore=0 clxscore=1015 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604220056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_230231_397041_8B9F698F 
X-CRM114-Status: GOOD (  16.71  )
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

For eDP low vdiff, the LDO setting depends on the PHY version rather
than being a simple 0x0 or 0x1 value. Introduce a PHY callback to program
the correct LDO setting according to the HPG.

Since SC7280/SC8180X uses different LDO settings from SA8775P/SC8280XP,
introduce qcom_edp_phy_ops_v3 to keep the LDO setting correct.

Cc: stable@vger.kernel.org
Fixes: f199223cb490 ("phy: qcom: Introduce new eDP PHY driver")
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Tested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com> # SC8280XP X13s
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 88 ++++++++++++++++++++++++++++++++-----
 1 file changed, 77 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index bbd45f709a4b..3a5284522bab 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -81,6 +81,7 @@ struct phy_ver_ops {
 	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
+	int (*com_ldo_config)(const struct qcom_edp *edp);
 };
 
 struct qcom_edp_phy_cfg {
@@ -339,7 +340,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
-	u8 ldo_config;
+	int ret;
 	u8 swing;
 	u8 emph;
 	int i;
@@ -365,13 +366,13 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
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
 
@@ -595,6 +596,52 @@ static int qcom_edp_com_configure_pll_v4(const struct qcom_edp *edp)
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
@@ -602,6 +649,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+	.com_ldo_config		= qcom_edp_ldo_config_v4,
 };
 
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
@@ -618,7 +666,7 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
-	.ver_ops = &qcom_edp_phy_ops_v4,
+	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
@@ -626,7 +674,7 @@ static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v2,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v2,
-	.ver_ops = &qcom_edp_phy_ops_v4,
+	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
@@ -811,6 +859,24 @@ static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
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
@@ -818,6 +884,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
@@ -998,6 +1065,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
@@ -1013,7 +1081,6 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
-	u8 ldo_config = 0x0;
 	int ret;
 	u32 val;
 	u8 cfg1;
@@ -1022,11 +1089,10 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	if (ret)
 		return ret;
 
-	if (edp->cfg->edp_swing_pre_emph_cfg && !edp->is_edp)
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
