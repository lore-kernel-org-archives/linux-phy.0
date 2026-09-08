Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0224C79F9E
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pRoES2TmzKBK1Lkr0uQ5yPFrkhNgMb0EJdgayWbchI=; b=FHZ8mqokPh2817
	VZor9mGT/00ek7btxZF/8IDyWv9ubp0/OxV1UKZ7JbBvvUHTaiEXXHQORhoeL8ceHfYyWOI1bH7Xq
	MWifyAfWW8xJebiefvwWfh9GWBmV9ofWJNUU/zodEcisHz7QSkXZm1nYAnRO3Ys9FTOlaInxWwkTT
	C+F8Jlkhb1uNi2ffI98YsYJ7ZEFZGsJTOCaz/YZw4tFoFxEKO9gIaIVIV30BERdG0taN6lOHX6HV9
	W+6xXQCTsDJyCTPWsVufJE+TRuV3+Wm9OuBtfeMi5pU1SfmhuwRpI+3NG+0mFvFWWp1zgZI309gPU
	JAsnt9uZO/89gXwQmbew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOH-00000009DZe-2q45;
	Tue, 08 Sep 2026 14:01:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOF-00000009DYR-0hv6
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688Cklxg2506687
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O/mR5Kpg24q3UNKuC+L1bOVHegCCGwSaQQL7AVGDOXk=; b=HquavSjwbOR+LUgt
	hN1pX2rPn9U/oDYMeprll3+b2tqidLbiVjby1sfAoaXWKIJZrwkLjXDfFzovdLd5
	/uzrkuE5iYXkgh+nulKGO8YUiTqa75TmMRQVpYqvDoJp8fAx8QGt37GmikXOqURF
	cEYuq6gWRUX0A42LNNu3dV102qqni3VXn7E52Fia8hXBdzCvaarrp7cqwDm7Hmql
	cjUnXKDji7rmf8S8lOC89yTS+J7yn0sVxqUyOgSqxZmzO3m1zMnseXUM5cfeSFfY
	0PJPjW3aBoT7jwySnldBS5hhOwPfMX0ZQnOILqozJwfalknE3iff6R6d2qH79D68
	8MYQ/Q==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjcvuhv85-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:34 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7f4e8568ccdso7910173a34.3
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876094; x=1789480894; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O/mR5Kpg24q3UNKuC+L1bOVHegCCGwSaQQL7AVGDOXk=;
        b=ASnIUS3+bDDcb/spZc8BkZ7rPryKmAmqZpFCVJje1eNrxlviJZTTHj+hVVMukFE6Q+
         PiuYD4th8R4hWEAwgXDaIwYGxmCfl38DPQ+8RaCCRDlula6OefYLZwbtjAscJsCGqFky
         8ljI9wgIDbf9IoEPi9Yv0tfx1Be21iXYoHXFUyvhsrFM+HBq/8liyqfntcIkM9BDz+1q
         L77w6mhGWmAgathI9yELLlCe+NwJMzvSxcBPBVhFunhEbu5JcvrOWKXlERp0S1ZaWCZI
         DsBzS/hgbsuPO4/TC5xr2ChUIC6Yv9Ys5kWGS7mgpoWFozUwxDmh+x0s4CBWVoY3USpt
         A/zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876094; x=1789480894;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O/mR5Kpg24q3UNKuC+L1bOVHegCCGwSaQQL7AVGDOXk=;
        b=CoIHxzpSUi+yRtKkBo6nTgJ7IrkzU+XsghMfSohQjjrTjLzOarKVkwWC7DGjo5SyvA
         p4Kr/lEFsr3f6bTHWGUD3IoFK05BRVWTD4suHlYUAM46BWEgI4JftTSu4erLdlRxjUDM
         BdtJVjuIA7BB4gwUBmtjYgftx/YdZr4Ba112aU8jpX1uWWRIZOy8MRxLepYlb/MOdnhJ
         zpyITp2MqsU8exHzvyR+YW2M2kvsySOirfzft0XO3L8KHCUi0hzj4bOBYAjvoAhvPHQT
         GszSNXWBahAssnAd00NVIc6FS/nap/0Qibu8xGfv6EqYrdqu/fQxkEpwrvzHM4758mm+
         HZAg==
X-Forwarded-Encrypted: i=1; AKwUvByOPzP5D/ZiQhzkKHXM6ki1AZVW3Bw83vmefcmMUsHNUUQqo7KPkiMtOUBCiJmOke+/zZ7dHI5D1w4=@lists.infradead.org
X-Gm-Message-State: AFuF++m2XH2sisZ2y5TgqGintYesyhrT+Vsj5fVVGTur1tBm+nWYgRdE
	HRHKyhp0wf68Z6pkVr3ZjkK//xxrw9hT+CSTnjLe/M2RwvhFpdZfYu9ZXpIM/tSUyuJ4uHZNjwo
	wuOae8K3OS6Lt2KQyM/X0vFNCF27/1D/nieWXHXn6/jbIXGx8idF4eErSSmV9PunHROdb
X-Gm-Gg: AYBFou3sDDVJxCxnkMJzOTEFSE0HPDsQA0IoVMMTRgxqrLe1zG+lWGLw4lP2AsjKd5S
	zIZn6HX+GNmLQG8GGCoRpAhVlhL3zMLCuiFfQpSinO9AxRsfqTJ7nU3jqXymXQh14J0by0vXM3K
	yJg8LOY3/5P3Cw92YVUCoOigffDf7T0+8P0S/uSXcpFr6xffTYqvCY2JPDRCW2q/zlG04+zCfyH
	+mUxaWcxq4mgw4+wd8R6UzPgkXKoP+O5Yjr8e+YFMTZIgsj+/0U2T/pJXG9OJDlSdlvKQYGaKgk
	Ei04P8hey1BK1UaX7urHQ1GHFpT/IY9O+raFQiI5cPrjcDDhTA4Vlg+a/SVdUroh0M5sc8ek4kX
	i35ltzAcvGILt1Ztg7/sUZHsRrpc=
X-Received: by 2002:a05:6820:1c9d:b0:6b1:c6df:868e with SMTP id 006d021491bc7-6b6fa3ddfd4mr17217622eaf.13.1788876093719;
        Tue, 08 Sep 2026 07:01:33 -0700 (PDT)
X-Received: by 2002:a05:6820:1c9d:b0:6b1:c6df:868e with SMTP id 006d021491bc7-6b6fa3ddfd4mr17217527eaf.13.1788876093064;
        Tue, 08 Sep 2026 07:01:33 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:32 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:30:57 +0530
Subject: [PATCH v4 4/9] phy: qualcomm: qmp-combo: Add hardware-specific DP
 PHY config fields
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-4-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=7393;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=s0NCoMqwgDTMHYa34sPnu4vrchO1ye5QcjKsdOKSeu8=;
 b=Ve9IPWcBWSyGHkN15hx2BYH/mmkCPVk8W/Osy0cyG33guvbaC+qh/d9P84Esqxkjs6Br8MOSH
 P6n/iMl4W2tAGV2FyQBSWwYsy/Hn1btUh/v9mcuHevbNRz71Hg1WaL2
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=ePkjSnp1 c=1 sm=1 tr=0 ts=6aa0153e cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=ewTIzfVZd68T06PS6vkA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22
X-Proofpoint-GUID: Dc9xKnv5usUdNVW1BNCMz8U2PbcOwaVw
X-Proofpoint-ORIG-GUID: Dc9xKnv5usUdNVW1BNCMz8U2PbcOwaVw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX6dILcpVUOlDK
 oW+B0gCGzAS9IQSruKc3EqqJK4XP0LWPxFaIU/9+2g1Jlxy87wPD3Klmk0MLMBLP04xGJnz0I81
 zyD7jlUYY4R5lJpIKDg5p8Lzkfj21qTyUlHz64MpCpp3qabSxNluu7SxG8E8xB4wFBS6tPBprzm
 TDg7mDmtiZAMZVR+qNC58ctstiREpoz62bn2mlZfUT91PXaI3ZIexKfTH1XbWp6YyCAAUkFG9x1
 TSkv7CESn5WKY2gPQrZmDPmvoSBtIuHHcSgpqLU7+MDlYmWmDijJcIMs8NTjAESS2Rbo9vElk0b
 jhXcOK14plmmCG7p7bdMW78x8zctPnZFOnaG9pfzEGun91hk3WP86IUHUsswS2hsnvK8qGfoFYt
 BNyxbDdvEZBLLDf0Y7iWm80VK71y/Ap7VWuNh/73hQp+LUcu8SrbBC1Fr53GueR/wC40cfp4hld
 e3PwNdiXiK+uSQrSJUw==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX/S3v20L1geb0
 /xg695JTbaq9OEBol9Nki9VOeQXwjGjikKSSY6rs8QG75pjo4zueM2cqHHlVtWmjw6dvg8ResFT
 KcC1D3HV+s1fzDUYpY55FILmiF9dbGg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070135_222276_78EE67EB 
X-CRM114-Status: GOOD (  15.86  )
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

Add dp_aux_cfg2, dp_phy_cfg1, and dp_mode_ignore_reverse fields to
qmp_phy_cfg to allow hardware-specific DP PHY register values to be
specified per-platform rather than hardcoded in the configure functions.

Define named constants QSERDES_DP_PHY_AUX_CFG2_V456/V8 and
QSERDES_DP_PHY_CFG1_V456/V8 for better readability and maintainability.

Populate the new fields in all existing DP PHY cfg structures:
- V456-based platforms (sar2130p, sc8180x, sc8280xp, x1e80100, sm8250,
  sm8350, sm8475, sm8550, sm8650, sm8750) use V456 constants
- Glymur (V8) uses V8 constants and sets dp_mode_ignore_reverse = true

Update qmp_combo_configure_dp_mode() to honor dp_mode_ignore_reverse,
so Glymur can bypass TypeC orientation-based lane reversal.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 44 ++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 16ccabd945f7..53fc1d1e8494 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2478,6 +2478,14 @@ static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
 
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
@@ -2541,6 +2549,15 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
 	void (*dp_aux_init)(struct qmp_combo *qmp);
 
+	/* DP PHY AUX_CFG2 register value (hardware-specific) */
+	unsigned int dp_aux_cfg2;
+
+	/* DP PHY CFG_1 register value (hardware-specific) */
+	unsigned int dp_phy_cfg1;
+
+	/* Set if DP mode configuration should ignore TypeC orientation */
+	bool dp_mode_ignore_reverse;
+
 	/* resets to be requested */
 	const char * const *reset_list;
 	int num_resets;
@@ -2780,6 +2797,8 @@ static const struct qmp_phy_cfg sar2130p_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -2916,6 +2935,8 @@ static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -2962,6 +2983,8 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3007,6 +3030,8 @@ static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3116,6 +3141,8 @@ static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3164,6 +3191,8 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3211,6 +3240,8 @@ static const struct qmp_phy_cfg sm8475_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3256,6 +3287,8 @@ static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3301,6 +3334,8 @@ static const struct qmp_phy_cfg sm8650_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v6_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3346,6 +3381,8 @@ static const struct qmp_phy_cfg sm8750_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V456,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V456,
 
 	.regs			= qmp_v8_usb3phy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3391,6 +3428,9 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
+	.dp_aux_cfg2		= QSERDES_DP_PHY_AUX_CFG2_V8,
+	.dp_phy_cfg1		= QSERDES_DP_PHY_CFG1_V8,
+	.dp_mode_ignore_reverse	= true,
 
 	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
@@ -3539,7 +3579,9 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
 
 static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 {
-	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE) &&
+		       !cfg->dp_mode_ignore_reverse;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 val;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
