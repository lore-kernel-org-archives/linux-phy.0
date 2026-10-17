Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 460A2CCF2C4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtlTs8kF7CdRPoBED1olyEv72kUzYjHKnYpURvc0q1M=; b=oy+TwBYPw+faKE
	d7BOmDiSDyRVhCfhTFXlj5IiC4Utt2AoTUwSyoiN7CRXzPU+0I3PMJpN2lbnedNBPUe3WwzurymMa
	36tipXn3M2YF0vUfdW1vf83+Ds8A/XUxZpWF8t2yaSQ/w+abmmVyCnGnq8p/ans0PjyGpW5rq/Orl
	9gOjpQRO4Yu8FkmRYasFQdiAF9x2zB4IREiU9vqgzd9GuI/CZzjgEtIPYKjpUIwMPUYHCOXmwVYwE
	8m2LoOYoUt6hrprhOu3H/xOyxvECW1DltgNqjDN3YtZ/ugKU5ZKY4QfVmcLZlchGLTk9cZEbzRFIS
	O/rPeDnpW7y4HHk5k/RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yj-00000004z1E-43rZ;
	Sat, 17 Oct 2026 17:13:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yg-00000004z0f-3srv
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:52 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HG9ulX635204
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3vvHyWJklprO2+4qDOkCYLJSMqQhNDPpdS73Of4XPeY=; b=HnDGDYBKtYhjPR0/
	dL1OPHuL5UNDuzswJ0L8sxtkBom2X3Mhk4zrdbVo7hWgEFm4EK+J87AJkEiasiiU
	uoe7eATdxwaZtLohyPeN5YsSFWgKe4GwCafWYR4UKug0l0jP4XKH1pHOaosEpwGz
	kIkz2z1vwp0iCJg3tfcPZ4M6vbLl45Ch3q2QHygurhl1AlWp07e3qNbsuE7bi6ow
	r5NIUIe+x3GHc+qyIjez8PWvo8xBgLKU61iEY0AGA/5Aq/tFmV7UVknz/8fz54IU
	UECh8T5na1M0CG2e3RZyTe0h6CNGR4xlCB0xT4qThpEHn3hi8esXq8w/k+HDZjL5
	rtffFg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc2a9h8k9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:50 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-35fb6be0f9fso2405596eec.0
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257230; x=1792862030; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3vvHyWJklprO2+4qDOkCYLJSMqQhNDPpdS73Of4XPeY=;
        b=ArDXP4snDXMLj4lTbSMbOgCqDuBSe9CfI+JESRETeMJkwCFf6ec+ZngRdtEK/RhdeF
         VmYpvqBkQeoDcEMGsUyHmcwRJhvs3icmhS4OBhiokFtQVSp4HcqgIu+KGtzMBPwprnuD
         ReGEFxGGY1bIyL0cqmDshKYhQ65+NbyTSJXnHxm6vuX6l0I9iBQniuRoQnmTiihD8X7S
         apVnDLNIcaVqtrEe4QNhFulfRoHJuW4fJgDGGpT9g9HUNSp8HOX6Gj8jh9XXJIGyQQBn
         uR3+XH8I+bsj+CTgU851BNHhJwYKZFPdFOLfDPsAD5kaQQG9MI9NzENZI+3YsWg9YdpX
         P7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257230; x=1792862030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3vvHyWJklprO2+4qDOkCYLJSMqQhNDPpdS73Of4XPeY=;
        b=p82XeYyNqSR4Vz+xQLpfTw13hy1XaUlpUtPxVGrD4T+M3IkVgHEBfa6TZ/UBID6YtZ
         gi4rWMUPL7friwIZ0N7Stu9llG9biFy32NXCKUfgZgTxNneV6i5mDkqv7wWk9r2y1JyZ
         Hb39Uw/0tVFLdkxQi1TFoHABOj+DZGMIOsdbu8scNfM+VZwOyRwrwCacLJ8dkqIiow6o
         Uqzi2zYnP1NQnPDM4BRvGXKHhFJeWckjbRkiyw430P6Ukoq7fUsTR30FuzaarS5mwvJh
         Y0UvobVO/3zvLu8lYLvlizWqASmicEC5ZkcQ0MD6q5II+WhhyWc4scI0X67mr7suuyBL
         JAnQ==
X-Forwarded-Encrypted: i=1; AKwUvBzdZqLKfIrllqrlrpbEEqwth/nqRf3eQEHXAvEjK+BZJzpeLNZ0faz71wRUOj9wM1RFtDG4QoQ66ZM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJAp6zl4TDV8anmfX0juYV2TEbRLYMcTLTcPd3ckb77m+v9jN2R
	06Dh6+MGPP960CM2sSdPrL8WDcp+nM7u3Xmvmb5L7wzMm8MiD7flZrAzRvWTp1adwHF4CDoAW3D
	VQTBIgRoh/RXQCDjvjfqkQ/KcJcd/bSsNX8sXC8jU3bjLj888PZ1cFIAgz4XgI/ucsCNd
X-Gm-Gg: AYBFou1L7vy08yNTol2nQLEn1ukKJXW+1GhvUULO8wRSOV37vdLUc4cw7r+XDlGszf1
	tFK/wJLAqOk8hyhiKldg9PunHoDDBYh8LY+EMknVS8ML8SA56tj99YS/Iv2W+ud5Qo41sGkvrTs
	MgkoWyDBH91813M5avC78FFVFgvEthrmlk14JVfyoJzsVdP4BWyhIcIQQNuQe0Sob5lW3B0hE4d
	6C0dfjD2+1S0J0bDK+tqkfBA9EWl/lSlzHT/80vRUWo2MPIQ39o8a25hrJI4UBHPUgSxHPr8Jdz
	/egjzCtnWrLkHJlCmQUbyhYiZq8jc/pncDR2FlWvPGqaLSQ/Djj2AsqlviHkvdyAEHTugl/u329
	sAv11you5h1nGf1n0Z5mTWtu2+x6JRw==
X-Received: by 2002:a05:693c:8092:b0:35c:ea0d:a9a6 with SMTP id 5a478bee46e88-361a2942afcmr4574732eec.32.1792257229733;
        Sat, 17 Oct 2026 10:13:49 -0700 (PDT)
X-Received: by 2002:a05:693c:8092:b0:35c:ea0d:a9a6 with SMTP id 5a478bee46e88-361a2942afcmr4574696eec.32.1792257229161;
        Sat, 17 Oct 2026 10:13:49 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:48 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 22:43:12 +0530
Subject: [PATCH RFC 5/6] phy: qcom: mipi-csi2: Add C-PHY settle calculation
MIME-Version: 1.0
Message-Id: <20261017-cphy_support-v1-5-8b0e1237ce95@oss.qualcomm.com>
References: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
In-Reply-To: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257199; l=4083;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=/F9TRm0NTslNDbQdeo2qFId/qx6xQ99rqJfy7SMqejU=;
 b=GDSk0X42CxuJzKq/lb5YRKfcYqa2y+HIwbATp9KP6sHmlOj2RJLcPdUZXULKwnjFrtHzwsXC/
 Osi6BYHOA+uAVqGcW1jksi9xBhDMcU2+Og8NS58kM0zVNEqtT8sX2BH
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX2NlA8fO4cOOD
 8aULbFgCwaTEWNDDz2KdO9gr8+A+dhDYz/eLMmpBd+qeFyCy5T6nAlW8iJ5yXsHjKcPJik1tTjA
 MkNzcdvSYpvNkatHIv6+xvRkgtARWTs=
X-Proofpoint-GUID: P8nkQP9oDVNojwsfzJkvAF9KP1GHnhgj
X-Proofpoint-ORIG-GUID: P8nkQP9oDVNojwsfzJkvAF9KP1GHnhgj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfXy/YWLOLo/Mez
 74LRd4D/+LukHKkLcl6siynxzlQnZrWP69SB/K+avP+OqEPUzfxg9gE8ZcMt+wakuHNuE0g19wG
 YdzbxnSq5rsw0tJu6ySAebAIapHXhe/MEx8hCWPaofF6Cgk5aQnoQ3Mn9yYqKUvju673LBUBI2f
 nzg7VdoYFYtGb5+vezAF6bFxLarSkJjozYaKKLONSB/3OgwmCJgBGI+IixJaUCaxhzlCCR9cTID
 4YEPT1lKYpaxKdvlOtgFONwE9tWDg7ZPh9MNKF8A1ApMZakilGAdT0AF5VDsex/tdLPziY9qGUq
 twdg3iobrRgi4u6pJ/NRnqncWrp/+hMliOK1jybd5p/Sf/B8wdi+pxzzhJlsDHgZRDxbv9frwY6
 g/Y5ueNpGO5WB+0f77pQS+9OIX3vc/W0D5Jna0izm1b0zT7ACAj8U+nhz/LoU5uN62UhkRPUY6A
 yPwfeuPipnVqKesbY6w==
X-Authority-Analysis: v=2.4 cv=PMeaavqC c=1 sm=1 tr=0 ts=6ad3acce cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=Mptn33ViN8VS2oBQBPUA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101350_979140_6FB8E72D 
X-CRM114-Status: GOOD (  17.95  )
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

C-PHY settle timing is provided by the sensor and does not use the D-PHY
T_hs_settle calculation. Add a C-PHY settle count helper and select the
settle calculation from the configured PHY mode.

Use the sensor-provided t_prepare_ns and t_preamble_ns values to derive
the C-PHY settle count:

  settle_cnt = (t_prepare_ns + t_preamble_ns / 3) * timer_clk_rate
               / NSEC_PER_SEC

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 54 ++++++++++++++++++----
 1 file changed, 44 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 30f7f39ba855a0a2921189050f0084dead207fbd..d93fd9845b50bd7e5623013aecd6db42dd491dca 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -210,7 +210,7 @@ static void phy_qcom_mipi_csi2_reset(struct mipi_csi2phy_device *csi2phy)
 }
 
 /*
- * phy_qcom_mipi_csi2_settle_cnt_calc - Calculate settle count value
+ * phy_qcom_dphy_settle_cnt - Calculate settle count value
  *
  * Helper function to calculate settle count value. This is
  * based on the CSI2 T_hs_settle parameter which in turn
@@ -218,7 +218,7 @@ static void phy_qcom_mipi_csi2_reset(struct mipi_csi2phy_device *csi2phy)
  *
  * Return settle count.
  */
-static u8 phy_qcom_mipi_csi2_settle_cnt_calc(s64 link_freq, u32 timer_clk_rate)
+static u8 phy_qcom_dphy_settle_cnt(s64 link_freq, u32 timer_clk_rate)
 {
 	u32 t_hs_prepare_max_ps;
 	u32 timer_period_ps;
@@ -310,14 +310,44 @@ phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
 	return 0;
 }
 
+static u8 phy_qcom_cphy_settle_cnt(struct mipi_csi2phy_stream_cfg *cfg,
+				   u32 timer_clk_rate)
+{
+	u64 settle_cnt;
+
+	settle_cnt = ((u64)cfg->t_prepare_ns +
+		      DIV_ROUND_CLOSEST(cfg->t_preamble_ns, 3)) * timer_clk_rate;
+	do_div(settle_cnt, NSEC_PER_SEC);
+
+	return settle_cnt;
+}
+
 static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
 					   struct mipi_csi2phy_stream_cfg *cfg)
 {
+	struct device *dev = csi2phy->dev;
 	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
 	struct mipi_csi2phy_lanes_cfg *lane_cfg = &cfg->lane_cfg;
 	u8 settle_cnt;
 	u8 val;
 	int i, ret;
+
+	if (cfg->link_freq <= 0)
+		return -EINVAL;
+
+	switch (csi2phy->phy_mode) {
+	case PHY_MODE_MIPI_CPHY:
+		settle_cnt = phy_qcom_cphy_settle_cnt(cfg,
+						 csi2phy->timer_clk_rate);
+		break;
+	case PHY_MODE_MIPI_DPHY:
+		settle_cnt = phy_qcom_dphy_settle_cnt(cfg->link_freq,
+						 csi2phy->timer_clk_rate);
+		break;
+	default:
+		dev_err(dev, "Unsupported PHY mode %u\n", csi2phy->phy_mode);
+		return -EINVAL;
+	}
 	if (!settle_cnt)
 		return -ENODEV;
 
@@ -334,17 +364,21 @@ static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
 	writel(val, csi2phy->base +
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 5));
 
-	/* Lane configuration for polarity @ CSIPHY-base + CTRL9 */
-	for (i = 0; i < cfg->num_data_lanes; i++) {
-		if (lane_cfg->data[i].pol) {
-			u8 pos = lane_cfg->data[i].pos;
+	if (csi2phy->phy_mode == PHY_MODE_MIPI_DPHY) {
+		/* Lane configuration for polarity @ CSIPHY-base + CTRL9 */
+		for (i = 0; i < cfg->num_data_lanes; i++) {
+			if (lane_cfg->data[i].pol) {
+				u8 pos = lane_cfg->data[i].pos;
 
-			writel(BIT(2), csi2phy->base + CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(pos * 2));
+				writel(BIT(2), csi2phy->base +
+				       CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(pos * 2));
+			}
 		}
-	}
 
-	if (lane_cfg->clk.pol)
-		writel(BIT(2), csi2phy->base + CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(lane_cfg->clk.pos));
+		if (lane_cfg->clk.pol)
+			writel(BIT(2), csi2phy->base +
+			       CSIPHY_2PH_LN_CSI_2PHASE_CTRL9n(lane_cfg->clk.pos));
+	}
 
 	val = CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B;
 	writel(val, csi2phy->base +

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
