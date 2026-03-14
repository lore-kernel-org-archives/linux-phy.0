Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CFF8107BCF8
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uo3JLDCp86iy8yqfnq9vIXmEWS0NJhacYZOvA+hTbnU=; b=s0ksejy0qS22b6
	MWA2NJ8IPlnJTMAUmpW0/k/+eBLxK9u2C+PNY8KwaqaJCGeeC1c52UMp3iu+9iedUAHoL6jtCdQol
	2RbwyhGt1nZ6yX0J3G41yDlel6tzlmjvj5wXgCOdwDWMmTQIyQTn3KHZp/7dpU74GpIPF8TUf6jeB
	CHlZhFjGlTA+/o4wC5lvg2O4yyGaFbxzKzZ57Edp1FHLnkr1j4BCfkyehOj0lCS7NtESZtHVWKYBx
	bkzVbhLexjtyUPyfizFRkhNxyZsWRuLchlmiZUxUp5Qjv6hPH7Bu8JrSR5sOHHbE41Q04py4nTjuD
	U1wbN+70HDmieayXpisQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKp-00000001W84-1BKz;
	Sat, 14 Mar 2026 05:14:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKa-00000001VzP-0WSq
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:14:45 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E3nd2k2907467
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Xc0D7EYT+dK
	OMBn5fxcL/5DUSzq9ZKa3q5dm3mbCGVM=; b=XicuuCx6f5LlPoOGEYE4Qgf+Tvi
	a0q5Ai/Z70ASEwQ+SWGyS6VHOzBpMqFixg1kisoW/9YTKGmSZTFNZzixZHVzy+jP
	Hcpd9AHUEIYYfgqSi3/ukbUbvP4/ogPoTClopRfNqMWqbqKByAKh4E8npQMDeKe/
	8GMlSYGkwwC2zzmuVYFl3iyD4XfYx+AdMeeORklV9WCM5Ob6WVK+N09/4jrsfQmV
	6tr9Uy0lOVSxLivubNeNVxBk0GqJB5PZYbtPDeboSsWUkDo4LwH1kNqueHlP+ix8
	CMw8OIpZwvoZmMM3kfLo07rZ4id//3sHm9IpZ07ziWIF3xah+8NMKbTZRyA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw043g489-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:30 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2beb5d51b27so591942eec.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:14:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773465270; x=1774070070; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xc0D7EYT+dKOMBn5fxcL/5DUSzq9ZKa3q5dm3mbCGVM=;
        b=fp6SyuqNdZ1BgT5L5uhCkbNWIG+B4XYUSYd3LryMoGyK7u+3lDyhLj6FBFY2yH/q47
         Zx08xWXUtHDpZfZjmhiy8HAgUtRVLyP8g7A47+mXWZ9/SBzw3uog0aT5/F69tlFZzGjh
         xP3PmSHmqI46obvMxP1L2R2Q5V/YeEN6LmWL0npB270sePvZuEigKdGwNLFiVaTUL1iq
         T6uxlM1ADdGdzNqLOGvvccrcPKcV9Nc4anS/4rZiQPiJeDhcbzyHZE6h4j3xcZuriHc5
         YM2pmMFqszze6CztFVp8rKKqoWC+dHKpzzSgjWYup0cBz8QzmF50vdMBUSP728N1lqjT
         7GLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465270; x=1774070070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Xc0D7EYT+dKOMBn5fxcL/5DUSzq9ZKa3q5dm3mbCGVM=;
        b=E8GKE0qYhv/ljjCqslYvbSdIttC15fF1OcMpxl7FrUfyb2gkR/0ApEN+hKCT7kc9Ol
         Upv2S6cLkZG432uPI2Pkyg0y0D8s7uJUamiMzBs8e4xLSbhp8OPShQ4qbltolnSobK2Q
         1rEUCFdoovC5EBVXExsCRl4Xvlyf1rZwe1mV2O74LBEunBUBUGQujEYd/tQhBdvq/a4H
         hUzAThyH+pyk0B7M39YSMoFZdXl1Dik1RzdmrJs6T5VyQjKt0eGP24g2VxH8dFY95w0N
         HOqVpDcxvJ04Rewh769eCZZTAL6qfbdBjO7wZRWodpKx25cglV2Tl8Cln0L/oPgcxbUL
         sErA==
X-Forwarded-Encrypted: i=1; AJvYcCWqt/ljeSpOAUao6Y63F0gNDBMZb6lcWwnHieYX/n0dgwXNw+ZqVHIXFVtWUzQUa9SwvvYABMocFhQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwF48vIr6QezGC+bj58PQfzjKj7ZLykAn7OPeussqI9nM0V5hV4
	KWaBziqGwQjWnUym5OPF3PVN4fo/TPEn8Kxl/oNUNaIjiF4tGbiEeCCgghzDQT5o+8D8pFA/0Mz
	eyDMiuzVaYgIRPjpwwyC/aIwrtr/1VVL/mrZ1UH7CQaQNrfTuofDWdrZ2Tbu2WAR88mrF
X-Gm-Gg: ATEYQzxsI6y5ddVDbnyjfxcj76fpSwFFDzsTXHxO4v86tREOefQXZkPNgWmOZ2Zi5dC
	O1NmD4ZG/Ul/5v11UVMVlvS11RP9HocXUPJQ7oODfi6KzBNcwzg4FwtdhOf2FPxENEiZsAVNPrC
	Lawd1U+tlKjaXvZdcx6YgxqvlJbILf2HA/8xP78hmvd23CfCdvVOfIMp87U4cKf8u2qCqAQ+DQg
	WJfy8GVwD36THNqODX3xgJ+O45kHe+vnybF2m/cCEFej+56RsaBxVvnUG6QEh+edUOi/Mfk5of9
	WhdNp7pb3HRRMMKFvydL9Q4ZvUckQf/DJDbdSvDf3bQ8fP9knSOl0FXpCYUlSwRoF5jivx+V/YG
	/0/XvbuBTSCNfsrCoXwIOn0XAdYOH6CxNYyUn+n90mEx66Eda0VnEDnPqoBPg67uKpKZPqp9GIM
	+I8gScoA==
X-Received: by 2002:a05:7022:6b97:b0:128:d3de:c9e4 with SMTP id a92af1059eb24-128f3dea833mr2577279c88.30.1773465269582;
        Fri, 13 Mar 2026 22:14:29 -0700 (PDT)
X-Received: by 2002:a05:7022:6b97:b0:128:d3de:c9e4 with SMTP id a92af1059eb24-128f3dea833mr2577269c88.30.1773465268998;
        Fri, 13 Mar 2026 22:14:28 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm1784045eec.0.2026.03.13.22.14.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:14:28 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 3/6] phy: qcom-qmp-usbc: Use register definitions in qserdes-txrx-v3
Date: Sat, 14 Mar 2026 13:13:22 +0800
Message-ID: <20260314051325.198137-4-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzOCBTYWx0ZWRfX41+aKsd4t9ku
 XcSVr1+wvDs1Fs1AYDSuefA0Rs4isOQwJM8Dr1XcM4cTdH99NoMSnUW7Of8pPp6QLtwqQxOrusu
 SMpiub57ljgn6dBQBqIKTAbTVjHy/rUH9mDNI59s4supt0K1TgtibaMHWvZhQnzSk9sLRXrYh0h
 ecfxPq84T5/2DND01TGFIYTgSiSpb81j3Cq8rmPy+CQBZUnXbijU2mUy70JNoriYABMoOdEgJA2
 qyV4rxetM0DPk/1eN+kHpLYbEpWNZk5bsbpKErRaEkEmCjFymfnURlAD7Pox7CJlqiBR5fVDOio
 q7EXQLw2SncDVpE6j+LOSFmIXaMQ2L/s7yXKhHPsqC14Df3IJBpWdelkqfnNy9pNH/8O4qtQ/ts
 2wKRpVHGwokouAG3yOUCxjcnRV5l0RCKZrj2x336wd2yR29WOPTjtWUfN7ePIfqtfrqNPdJ6omu
 yXY4k9nuJAd/HLVAZdQ==
X-Proofpoint-GUID: tBumfh_9UzZtCMR8SnBe-UgHwj3jdVF3
X-Authority-Analysis: v=2.4 cv=fLs0HJae c=1 sm=1 tr=0 ts=69b4eeb6 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=f3I94rbs0dppKun-wmkA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: tBumfh_9UzZtCMR8SnBe-UgHwj3jdVF3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 impostorscore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603140038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_221443_034625_02972BD8 
X-CRM114-Status: GOOD (  12.56  )
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

The register definitions in header qserdes-txrx-v2 and qserdes-txrx-v3
are actually identical.  Considering that QSERDES TX/RX v2 is already
defined by header qserdes-txrx, qserdes-txrx-v2 is really just
a duplication of qserdes-txrx-v3 for QSERDES TX/RX v3.  Switch
qcom-qmp-usbc driver to use v3 registers.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 64 ++++++++++++------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 1b841e805536..3f8c4280b933 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -351,20 +351,20 @@ static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_hbr2[] = {
 };
 
 static const struct qmp_phy_init_tbl qmp_v2_dp_tx_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TRANSCEIVER_BIAS_EN, 0x1a),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_VMODE_CTRL1, 0x40),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_INTERFACE_SELECT, 0x3d),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_CLKBUF_ENABLE, 0x0f),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RESET_TSYNC_EN, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TRAN_DRVR_EMP_EN, 0x03),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TX_INTERFACE_MODE, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TX_EMP_POST1_LVL, 0x2b),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TX_DRV_LVL, 0x2f),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_TX_BAND, 0x4),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RES_CODE_LANE_OFFSET_TX, 0x12),
-	QMP_PHY_INIT_CFG(QSERDES_V2_TX_RES_CODE_LANE_OFFSET_RX, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRANSCEIVER_BIAS_EN, 0x1a),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_VMODE_CTRL1, 0x40),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_INTERFACE_SELECT, 0x3d),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_CLKBUF_ENABLE, 0x0f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RESET_TSYNC_EN, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRAN_DRVR_EMP_EN, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PARRATE_REC_DETECT_IDLE_EN, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_INTERFACE_MODE, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_EMP_POST1_LVL, 0x2b),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_DRV_LVL, 0x2f),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TX_BAND, 0x4),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_TX, 0x12),
+	QMP_PHY_INIT_CFG(QSERDES_V3_TX_RES_CODE_LANE_OFFSET_RX, 0x12),
 };
 
 struct qmp_usbc_offsets {
@@ -809,10 +809,10 @@ static int qmp_v2_configure_dp_swing(struct qmp_usbc *qmp)
 	if (voltage_swing_cfg == 0xff && pre_emphasis_cfg == 0xff)
 		return -EINVAL;
 
-	writel(voltage_swing_cfg, tx + QSERDES_V2_TX_TX_DRV_LVL);
-	writel(pre_emphasis_cfg, tx + QSERDES_V2_TX_TX_EMP_POST1_LVL);
-	writel(voltage_swing_cfg, tx2 + QSERDES_V2_TX_TX_DRV_LVL);
-	writel(pre_emphasis_cfg, tx2 + QSERDES_V2_TX_TX_EMP_POST1_LVL);
+	writel(voltage_swing_cfg, tx + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(pre_emphasis_cfg, tx + QSERDES_V3_TX_TX_EMP_POST1_LVL);
+	writel(voltage_swing_cfg, tx2 + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(pre_emphasis_cfg, tx2 + QSERDES_V3_TX_TX_EMP_POST1_LVL);
 
 	return 0;
 }
@@ -871,17 +871,17 @@ static void qmp_v2_configure_dp_tx(struct qmp_usbc *qmp)
 	void __iomem *tx2 = qmp->dp_tx2;
 
 	/* program default setting first */
-	writel(0x2a, tx + QSERDES_V2_TX_TX_DRV_LVL);
-	writel(0x20, tx + QSERDES_V2_TX_TX_EMP_POST1_LVL);
-	writel(0x2a, tx2 + QSERDES_V2_TX_TX_DRV_LVL);
-	writel(0x20, tx2 + QSERDES_V2_TX_TX_EMP_POST1_LVL);
+	writel(0x2a, tx + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(0x20, tx + QSERDES_V3_TX_TX_EMP_POST1_LVL);
+	writel(0x2a, tx2 + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(0x20, tx2 + QSERDES_V3_TX_TX_EMP_POST1_LVL);
 
 	if (dp_opts->link_rate >= 2700) {
-		writel(0xc4, tx + QSERDES_V2_TX_LANE_MODE_1);
-		writel(0xc4, tx2 + QSERDES_V2_TX_LANE_MODE_1);
+		writel(0xc4, tx + QSERDES_V3_TX_LANE_MODE_1);
+		writel(0xc4, tx2 + QSERDES_V3_TX_LANE_MODE_1);
 	} else {
-		writel(0xc6, tx + QSERDES_V2_TX_LANE_MODE_1);
-		writel(0xc6, tx2 + QSERDES_V2_TX_LANE_MODE_1);
+		writel(0xc6, tx + QSERDES_V3_TX_LANE_MODE_1);
+		writel(0xc6, tx2 + QSERDES_V3_TX_LANE_MODE_1);
 	}
 
 	qmp_v2_configure_dp_swing(qmp);
@@ -955,12 +955,12 @@ static int qmp_v2_configure_dp_phy(struct qmp_usbc *qmp)
 		return -ETIMEDOUT;
 	}
 
-	writel(0x3f, qmp->dp_tx + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
-	writel(0x10, qmp->dp_tx + QSERDES_V2_TX_HIGHZ_DRVR_EN);
-	writel(0x0a, qmp->dp_tx + QSERDES_V2_TX_TX_POL_INV);
-	writel(0x3f, qmp->dp_tx2 + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
-	writel(0x10, qmp->dp_tx2 + QSERDES_V2_TX_HIGHZ_DRVR_EN);
-	writel(0x0a, qmp->dp_tx2 + QSERDES_V2_TX_TX_POL_INV);
+	writel(0x3f, qmp->dp_tx + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
+	writel(0x10, qmp->dp_tx + QSERDES_V3_TX_HIGHZ_DRVR_EN);
+	writel(0x0a, qmp->dp_tx + QSERDES_V3_TX_TX_POL_INV);
+	writel(0x3f, qmp->dp_tx2 + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
+	writel(0x10, qmp->dp_tx2 + QSERDES_V3_TX_HIGHZ_DRVR_EN);
+	writel(0x0a, qmp->dp_tx2 + QSERDES_V3_TX_TX_POL_INV);
 
 	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
