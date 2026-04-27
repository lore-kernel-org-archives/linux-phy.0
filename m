Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C921DFF8850
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 06:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOH9/ds8OnzwEdkM1t3L7Bk6Ip+PlUdinrYtC+dGofo=; b=J8a+u9nnCcvymw
	y7HS4R3q7d9yp8g+UYRfWogzdZEnPCmRwqfiNcCQIss/5bm2UPVP4ZS3spy35Xzlpk6hfcGqda5vR
	RVOb+aBGjsd+ge3NqzLZxwT6Ms6dLkXG2G7KkcNVyZLi/jqFFQHNYGK4KD0rCXg3GkNRx3gZlE84N
	36f+UV1+BmAdLdwM5R7eWArLg/+Up5Xc4FXSn/u7c1IEnGAskj+Rx+r/CJCGO7e/ScK43riczW0tr
	9Tr5Q6z3rJk6waXQb22WlvQcTIvsU/Yo3KCCqf2yEVzsh/9hBgQSx0suLnwJYUyg4fSgoecPq3szF
	xHD3bnlsGp0pQdOLqVhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZP-0000000GH6S-2OJq;
	Mon, 27 Apr 2026 06:35:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHFZN-0000000GH5f-16yC
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 06:35:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63R1DHnv2273990
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F/ivyNBjCAffYDhazIIzpEgKd96rMA5tlEiyp0VgCXE=; b=nWHbYaTYsPIiL0Lj
	GMbIfoYOYOqWVxTl1lRylN3VIhIpG88pFYMWYBA9isyU7fSAN1UWFZLTfC6/uarK
	xbxdxtvjUGJUAvo0Ys3aB1g6nOpbivqOQuesWmAAN8kTW3NuwuxfigrlntXeHzO6
	sOI4+ve6FKcLCUYGDLsg+oKrimjhPIwWsUW8H1XCz4oRcdwFV0C+LFzfhy1iphTe
	SX13vIa18nquLulqmHUKZ6rQkWRQmLh3UW3H181l7Q88VgUA4wOF+PWUSnMhwya0
	hdCoSpjD84CRRXxnG9OvR5jetgZh98FqKIQELtH0/fMDYeFaMl93EjTsCIEJFutq
	epQZIw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drpw9ckqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 06:35:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8ae752c5273so180794276d6.2
        for <linux-phy@lists.infradead.org>; Sun, 26 Apr 2026 23:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777271748; x=1777876548; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/ivyNBjCAffYDhazIIzpEgKd96rMA5tlEiyp0VgCXE=;
        b=JXYDLXTIdR9Q68O12bvUGeI6VjO0FhCvke+4LaCRq4Ujf5NQSw68KrymSh+aiYxvxa
         BcZi+xrlVY07+Tl3/zk/qSREoB9lrd1jOx7jlMI7QoRNarBqhe3EbOJOdd08oVulK7I4
         /3VzYyqzwVYlNvCqP1K+bbkrIHCKRv5oqlakQWT0wnXvPW+9q2iIaQLDGqu9n5wv2Mpq
         nSVNfJLaw6COOv+CwMsBdvKh/KdsNs2u8jWcjfYV7uPrvIcsJUzu6SFBMxUwSW1GBMQU
         ku6bOHGsdx6hYqQAR7Ju3Or+YMZloy3mR5ZN4uKtKZTt9hGM07euJwCYLZc1y7M+tWeE
         aTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777271748; x=1777876548;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=F/ivyNBjCAffYDhazIIzpEgKd96rMA5tlEiyp0VgCXE=;
        b=I5m6AQBn7HHPgCipeG/jiSQ2BjY9DDAzyEYgyOjilj5VYuZYA3x+ssgczw7mWxVpox
         Fcl6FUTAM2ihq4/+vKZ5wQZHZC4aT3XudNBpLdaCC6M4NtMlMFvW1zLiP05ORerKhxr9
         EkS3rxKr8QSjW33NiFSS98/lot42CgKHX7L4HnZ5bkpROM633Qf/ae923G8uuLG3HIgm
         QMA10QMR1/GmS0BQg4KrVEAfbEjXMnH6t4tcLOmj/ssI0AsboMU+FRnZHJkHp27FtKKX
         KArKODVelzc+hPwN5ULg60XHKRLy4hePC7lkuchVj8hrrHwsBJ4BaUg1rtZ3vv8xFrd+
         YbAQ==
X-Forwarded-Encrypted: i=1; AFNElJ/wS38R/GwwxXJ7DhPdrOO75z50m3/Wf21gud1gVKD/L3YCEoHlMQJ1+0rZPTDQOd/5wwnTe9QpGhM=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNwthQajcB/HltIQPyCc/wvE9M1B8xYudxr9PR31epsFT2pWbZ
	hduqLuzNOv8b7uKGBEYXgi6gLbCG70/97LnGFoyn/+4qBmdidCxPrzAxCuWIe3VvvmElbA8p+jU
	HAXEiro0Ybv6kX3hxq72lrXBA++iWavR2iQh79+8gtwq7HserqnkJA1EZ8WwgACwEpLz2
X-Gm-Gg: AeBDievrCFUlGzeCMcsvrFclpLitftNp9DmFi4ur1DiPYH+inCXVBcaymmNo5DyKpA5
	6xw8YokFrRFoha5j/+maCD5i3Kh/gteWR+Ce2SH+cTepnGnxPujwGFFb3kT649ZbJH5WR6i6mnu
	WXDQWIYpPR9aqqaqdqdgrNQ9GvamqJLEVhP0GoVm0VJxv4iHsYoSWt2/VHFeVmFR5ubKPhbgbx/
	q2yyQsTTMGi/fZcB9W3m/724q9Q/ql13Tnv6+kn/EhuCeTPXa3XbRyUBlkYZ8U+JejVmPB8h7Kh
	JuMVCoqylKHTyg8Fv5ttWmxhcqfBAt4/InXEg1V9LhytYRg1D722xQEQKM3JXP7+ZOlXhiOgjEZ
	sFXiX5gtPYtcH1CdoOYU2g19lJsnhruLOGyZSbEnBIhxPXrguENRZi3VlyY8AA5l41iq/1HIh4p
	FsXjghF0MWdgfMmE4iWQ==
X-Received: by 2002:a05:6214:21ca:b0:8ac:b1ad:3a24 with SMTP id 6a1803df08f44-8b0280f1d8amr670800756d6.27.1777271747798;
        Sun, 26 Apr 2026 23:35:47 -0700 (PDT)
X-Received: by 2002:a05:6214:21ca:b0:8ac:b1ad:3a24 with SMTP id 6a1803df08f44-8b0280f1d8amr670800476d6.27.1777271747362;
        Sun, 26 Apr 2026 23:35:47 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8b02ac7d4e6sm251899256d6.20.2026.04.26.23.35.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 23:35:46 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 27 Apr 2026 14:35:23 +0800
Subject: [PATCH v5 5/5] phy: qcom: edp: Add PHY-specific LDO config for eDP
 low vdiff
MIME-Version: 1.0
Message-Id: <20260427-edp_phy-v5-5-3bb876824475@oss.qualcomm.com>
References: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
In-Reply-To: <20260427-edp_phy-v5-0-3bb876824475@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>, stable@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777271722; l=7072;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=UJfJbat0WxxGDDgc1J6mpbWkCUWZwu5kiHe5HC0OQjI=;
 b=yjUQR8Ti5SxHbjVW1hz6/RIkc1NgYL5wNokw2H+Is6pSidV1e9W2MzProOxrvWxN1W5R80J8D
 sDkp3K7Xz/ODozi+SKBIC2QAhnKraGBkVbjXMrQ7xNy/vB1or/J9Ghy
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-GUID: tJE4Yvg4XhRseKairv9jRjf8yfLvPBX7
X-Authority-Analysis: v=2.4 cv=H67rBeYi c=1 sm=1 tr=0 ts=69ef03c4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=Wstf64DO4dhji1mrokQA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDA2OCBTYWx0ZWRfX0xfluW+gzX9M
 pEcmYPbQmHwct4PS+NdjeyhH5jxJeDkI+tzfKwOmQISlwa1OLpZD6G/dJZKuFKerr4Hkhrihhwd
 3fUn6QP2pcDX0uvWZT50dpuH3vSXvtsawMiBiv07xuGCrLmOyQc7hobgxlfqw7kDcHK5zPfmuEG
 AxgLtTCFAe26wZdg+GEM0ezvff+8KSrrGRHBUPnVVJNYvSrxYT1XsRnBQ/B9C5jh3QAAK0mAZLD
 IfHYP2SrOjPxT/qbUVnhnMXdzPMAiP88HHGBjq5OyEl4FoTXjdkCMwsSluSrFy/5eiwl+t7dTdY
 ZA3sswOUGjv8zXYlrkWYyH5o8AP6UQkxFTptt+ILF596WdI7RKoSiglT98dlSVy2m10eYAXhzAA
 NKnwinFDrCpmkvvUuvezHFXIdl4xT5K7MJCpYsf/RxD/1zvLO8qPAMFJuAGOAyoSrcbMGXvREmA
 ba5bVzDcaalR1B1e3JA==
X-Proofpoint-ORIG-GUID: tJE4Yvg4XhRseKairv9jRjf8yfLvPBX7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_01,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_233549_314373_DC4967DC 
X-CRM114-Status: GOOD (  16.11  )
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
index 3a848f18a8d6..a3c893f72908 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -81,6 +81,7 @@ struct phy_ver_ops {
 	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
+	int (*com_ldo_config)(const struct qcom_edp *edp);
 };
 
 struct qcom_edp_phy_cfg {
@@ -352,7 +353,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
 	const struct qcom_edp_swing_pre_emph_cfg *cfg;
 	unsigned int v_level = 0;
 	unsigned int p_level = 0;
-	u8 ldo_config;
+	int ret;
 	u8 swing;
 	u8 emph;
 	int i;
@@ -378,13 +379,13 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
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
 
@@ -608,6 +609,52 @@ static int qcom_edp_com_configure_pll_v4(const struct qcom_edp *edp)
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
@@ -615,6 +662,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
+	.com_ldo_config		= qcom_edp_ldo_config_v4,
 };
 
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
@@ -631,7 +679,7 @@ static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v3,
-	.ver_ops = &qcom_edp_phy_ops_v4,
+	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
@@ -639,7 +687,7 @@ static const struct qcom_edp_phy_cfg sc8180x_dp_phy_cfg = {
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.dp_swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg_v2,
 	.edp_swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v2,
-	.ver_ops = &qcom_edp_phy_ops_v4,
+	.ver_ops = &qcom_edp_phy_ops_v3,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
@@ -824,6 +872,24 @@ static int qcom_edp_com_configure_pll_v6(const struct qcom_edp *edp)
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
@@ -831,6 +897,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v6,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v6,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
@@ -1011,6 +1078,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
 	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+	.com_ldo_config		= qcom_edp_ldo_config_v6,
 };
 
 static struct qcom_edp_phy_cfg glymur_phy_cfg = {
@@ -1026,7 +1094,6 @@ static int qcom_edp_phy_power_on(struct phy *phy)
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
 	u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
 	unsigned long pixel_freq;
-	u8 ldo_config = 0x0;
 	int ret;
 	u32 val;
 	u8 cfg1;
@@ -1035,11 +1102,10 @@ static int qcom_edp_phy_power_on(struct phy *phy)
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
