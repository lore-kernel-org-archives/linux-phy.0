Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3965ACCF2C4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsxFSpD1mbwZK9bEbrTx2/u7fWxApk6WdXAKgxWNy4E=; b=J31lyde0ZtK1oI
	UJHa4ZNsLbQZ/K8hpbeXo0Hszv0+RNAp/YIhQvRymaX24fvMa2OpijsvWcE/NL7TvpiQBDrf/Foev
	Z/gj80juMuJHvBE1r4tTwmXwLHYddLz2RcVKxq4iXi1TbSpUbtX6JdX8XkooNW8tzbRSr1Xr2tofO
	eS1PgnEDztze+1ZLqPVAcdvTbw5WgHK8tKH/TeOvJDrfx07yvwAhm4QZs2+lpqDA2a9dnEPBW2K1R
	vYCsidHf3LPsU0Mv9pOEMiQGeh1I85gKFneskF4CTQn4+L1SBnLJXQJ3x+WXgqB3AGHHIL14rgtUY
	EwgYXYZCI0QFoJxPYQEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7ye-00000004z0B-3r3k;
	Sat, 17 Oct 2026 17:13:48 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yb-00000004yzb-4ASn
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:47 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HGA7hQ1521729
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ltqFaMmSgGnES/P6zbjb05rmIORWfXOfi3iRRLOhfQk=; b=IFJupiN5UX5AN5Vz
	ULbbTgAghnGlEGk/S73+4qkZ/RF9XX57HQqAkqgwfe2A8eIpZ8hyt8SWYB1sRZZH
	6+n8Rxm3zlm8bLYyOOlhTXAweVvMDnKgD0wu6ozRpiUpzWJSHs2EmWkr3Zbs92IS
	1idS9oNNY2o181jsh0Ue543Rxi3YHKhvm7+92Rj7T67EB6gs+HqhsEODoFOwqAx5
	zGuPAewtwr/G3Jno0BtyZ0K3/FaACVoDFgF6NBYiRCp6EoNTbNGnlT+PGgrs5Uqv
	J20RG1pcBckV8V/arKeMw9u2woWMXlkor56lqTNi7f7AU1YvE98grFQzkCoxwni+
	LNQ/pA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hc1839d4q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:45 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3592749a017so950613eec.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257225; x=1792862025; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ltqFaMmSgGnES/P6zbjb05rmIORWfXOfi3iRRLOhfQk=;
        b=C7Jccw9UQ3HC/DXU9E9IDV97PvIie6Np2XoSPkOaZwRcu1Nj8JHNQITIxsjqiEC+WG
         IRSfVeaOxwZEkfP3YYI7W4tFQ3q7SpoUllOjrshD88S51rn0jCBaBMIGDE8AKuDohunR
         j1KXbSy48od0FOuW2lugYIVz5nFx+CjH28rHJr9mAa5ZoaxV6nNJ8qf0OH0Xu3GgC6HV
         iRpnYPiwxiUCStk1qgUxrkmHL0/7yNoq4KYMrf8oVPA87NdB4CfHr0M/70hsnNyaJ+xD
         eWPTcgRSNAhFsjGv51m8kl99cBEA7uQCgCsiRvJT8sSLSMvwcvGOPcjFXBEqE/yahCV3
         fKIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257225; x=1792862025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ltqFaMmSgGnES/P6zbjb05rmIORWfXOfi3iRRLOhfQk=;
        b=tPnkTwB6NxpA+VU/ANf4CJM6u1pCvj0Hdm8vvxF3TKvgq3O2/nv9IgelmArrQABot+
         3E/LUmOIASKD0ZwEChst7MpB+WYInS3IdRskJ0O0qR4pfTJx2FnOuAgjp1DrW+kDtH1G
         g5rDjBDLuGD4LWjlyvLbbUAfsKDr0kg7g6tOZK0PzM3EJUbIvQ/Y78ksnGVPKS+O1Ui4
         aGiE9lBc4Gps/0nQbRK/AVfW78hIEvEDJ2/fwqiMYlu6PFUNzYbGrPB+UvZJvPpB99rG
         JerTtyUjq0d758X4W0l/c/5mLfONKDRIvtUS9hI9dXsY9p8KsUSKooezEz3s0E4KPsFn
         +JcA==
X-Forwarded-Encrypted: i=1; AKwUvBztgybkGZfNnWEE5Ffa36gU5dlWIF2sKumN2KZHX3vFYo8TkU90L3pE+wTxHoiaCIijvFaVw6cWn2c=@lists.infradead.org
X-Gm-Message-State: AFq9FYIqV9CuoN/gzEa0oEToao40NP2w5KeUFWosbr9OxN6DV8Zq1SEh
	Z1w2hUN3V3IPHFDqNQ55GcsydQ6Lthd9YNxfnKnII2cqsqX9xbDS8XcLqzu2wxFHAUdZ0w4P57U
	xpWrmwkA/sr2q7JKx7idD2fdjoc5HGXF958gnU15drvZP7QQhkuuug16382QnqWYgIWXz
X-Gm-Gg: AYBFou3LdRWWCX6jjbOfivX69gfoZ0qly8TjX6QbDzfuTJrNWND3CsI7/LUtKHEMhop
	zrhFyq7A6HxxEVoTnKCayyNX/8heVneWG0jiFygb3W6vH2qH94coQkEtnhPqISCDcYciSEk2HR2
	OlAR8x7wFlIL1vQJ5SBgs+zN2zHr2IHZPvEKmonfEYrWCyCyy0ANH0Id7CQY0Bu6B2udc+0Y/wv
	D4lGojbmA0UsVyqY67oFx4/eW5lbgviuGD4Ar5VIBF4aRPIY8qelBjo4gpAo8+ZW29GMrb6FFtX
	UzZpiwUalTHv8BQgeNLhJRZGPzfUiVOZAI4c6BM6XlI4WRlz6cd9oNYjNdrmjNeCbNdKaxkMBwK
	MdjyIu6nqeVOc8GdBJrlbWKw2x3URQw==
X-Received: by 2002:a05:7301:e118:b0:359:27e6:b684 with SMTP id 5a478bee46e88-3602a77a5a5mr7756375eec.3.1792257224686;
        Sat, 17 Oct 2026 10:13:44 -0700 (PDT)
X-Received: by 2002:a05:7301:e118:b0:359:27e6:b684 with SMTP id 5a478bee46e88-3602a77a5a5mr7756334eec.3.1792257224088;
        Sat, 17 Oct 2026 10:13:44 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:43 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 22:43:11 +0530
Subject: [PATCH RFC 4/6] phy: qcom: mipi-csi2: Accept C-PHY mode and add
 register sequence
MIME-Version: 1.0
Message-Id: <20261017-cphy_support-v1-4-8b0e1237ce95@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257199; l=8080;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=t5DPdnAbypcQAjMqFD6co83PK04l2GGNiqBv+aUgBB4=;
 b=Cp9KUFG394o50sMYclla6LL9qyLfiMX+FoovLyNX3oqrXSEQfmVTJp4CaSwdsMGLpxqGJoZ54
 shWjhupgJb5Cgcv01WYOJrppqM+7CUp4/Wc9yYcLHNDPMTJWtSJa9/5
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfXzCby6RJnzu/O
 dwLmPAdY+yssRNT79YrA/m1f37WThha69FVmk3R8vKPoPACJSYBmr4jmCQMjdJif0hsiFxES0vM
 jqJIJMqKfcEW36ha4RlV7BM+tc7safc=
X-Proofpoint-GUID: 40U9IyVJeUdoxEPPxrX-7wNtbwO8o73P
X-Authority-Analysis: v=2.4 cv=Bu8IUoX5 c=1 sm=1 tr=0 ts=6ad3acc9 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=nWSibxTITU1ETIuES98A:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX+2fZyEkKNq/Z
 tMXIFPES2g06va2ugDpBms3M5TxIfcDSEZyEfd256bxm8IvjP2dGwWvywANDfgsIKsXYv2VdRBc
 k0/i2xUWrJuSsuD25EJGLqIdU5U1xFsV+YSwOTUeZQD2DveHPw0UbKV7j/0FKgFKTOEfN9LiGhs
 9QXTZQN53r4/L2o6+9Nom2pGxisrYRrIyBfFRV8y1MgXXpHIk0TvXFAOo7AVX11/pf5L5qfPr86
 B1etC9r+Y2AhaC084mDwZn/JynS0KNFuWfhLRPg0m4KQl1BoHfZtsn5Tjjbewi44AWpAm2Rwnqi
 YcYjxUCehhQPT8IgfgLDVSVuGdIjIErdpEggC/8mCnuIkiMPWcTdn2jQIWciad9PIhK9O53OW4x
 xBkBkbhNZ4Y32erOZoVB8YgqEdzhmPYggeT/aAbViZ/awx1SMz4gNjjXypug0E0WydiryVWCNSp
 mWvqKuIkPbJwolMtssA==
X-Proofpoint-ORIG-GUID: 40U9IyVJeUdoxEPPxrX-7wNtbwO8o73P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101346_042103_1843457A 
X-CRM114-Status: GOOD (  21.97  )
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

The CSI-2 PHY core rejects all modes except D-PHY, so CAMSS cannot pass
C-PHY stream configuration to the PHY provider. Accept PHY_MODE_MIPI_CPHY
in set_mode() and configure(). Validate the trio count and store the C-PHY
link frequency and timing in the stream configuration.

C-PHY programming needs a common base sequence and a data-rate specific
sequence, while D-PHY keeps using its existing sequence. Add
mipi_csi2phy_cphy_rate_settings descriptor and select the register
sequence from the configured PHY mode. Leave SoC-specific C-PHY register
data to separate patches.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 51 +++++++++++++++++-----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     | 51 ++++++++++++++++------
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          | 17 ++++++++
 3 files changed, 96 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 79c7fa57d059b29f2f72a0c1208e07115b3fb049..30f7f39ba855a0a2921189050f0084dead207fbd 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -266,14 +266,48 @@ static void phy_qcom_mipi_csi2_write_regs(struct mipi_csi2phy_device *csi2phy,
 	}
 }
 
-static void
+static int
 phy_qcom_mipi_csi2_gen2_config_lanes(struct mipi_csi2phy_device *csi2phy,
 				     u8 settle_cnt)
 {
 	const struct mipi_csi2phy_device_regs *regs = csi2phy_dev_to_regs(csi2phy);
+	u64 bit_rate;
+	int i;
+
+	switch (csi2phy->phy_mode) {
+	case PHY_MODE_MIPI_CPHY:
+		if (!regs->cphy || !regs->num_cphy)
+			return -EINVAL;
+
+		/*
+		 * link_freq = symbol_rate / 2; convert to effective bit rate
+		 * (bits/s) for comparison against the bandwidth table:
+		 * bit_rate = link_freq * 2 * 16 / 7 = link_freq * 32 / 7
+		 */
+		bit_rate = div_u64((u64)csi2phy->stream_cfg.link_freq * 32, 7);
+
+		for (i = 0; i < regs->num_cphy; i++) {
+			if (regs->cphy[i].bandwidth >= bit_rate)
+				break;
+		}
+
+		if (i == regs->num_cphy)
+			i = regs->num_cphy - 1;
+
+		phy_qcom_mipi_csi2_write_regs(csi2phy, regs->cphy[i].cphy_init_seq,
+						 regs->cphy[i].num_regs,
+						 settle_cnt);
+		break;
+	case PHY_MODE_MIPI_DPHY:
+		phy_qcom_mipi_csi2_write_regs(csi2phy, regs->dphy->dphy_init_seq,
+						 regs->dphy->num_regs,
+						 settle_cnt);
+		break;
+	default:
+		return -EINVAL;
+	}
 
-	phy_qcom_mipi_csi2_write_regs(csi2phy, regs->dphy->dphy_init_seq,
-					 regs->dphy->num_regs, settle_cnt);
+	return 0;
 }
 
 static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
@@ -283,12 +317,7 @@ static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
 	struct mipi_csi2phy_lanes_cfg *lane_cfg = &cfg->lane_cfg;
 	u8 settle_cnt;
 	u8 val;
-	int i;
-
-	if (cfg->link_freq <= 0)
-		return -EINVAL;
-
-	settle_cnt = phy_qcom_mipi_csi2_settle_cnt_calc(cfg->link_freq, csi2phy->timer_clk_rate);
+	int i, ret;
 	if (!settle_cnt)
 		return -ENODEV;
 
@@ -329,7 +358,9 @@ static int phy_qcom_mipi_csi2_lanes_enable(struct mipi_csi2phy_device *csi2phy,
 	writel(val, csi2phy->base +
 	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->common_regs_offset, 0));
 
-	phy_qcom_mipi_csi2_gen2_config_lanes(csi2phy, settle_cnt);
+	ret = phy_qcom_mipi_csi2_gen2_config_lanes(csi2phy, settle_cnt);
+	if (ret)
+		return ret;
 
 	/* IRQ_MASK registers - disable all interrupts */
 	for (i = CSI_COMMON_STATUS_NUM; i < CSI_CTRL_STATUS_INDEX; i++) {
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0c87f6c18b35e625f5ba1769c94e7..56b8830d69ee34280119d8b813ede643252e3606 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -100,23 +100,46 @@ static int phy_qcom_mipi_csi2_configure(struct phy *phy,
 					union phy_configure_opts *opts)
 {
 	struct mipi_csi2phy_device *csi2phy = phy_get_drvdata(phy);
-	struct phy_configure_opts_mipi_dphy *dphy_cfg = &opts->mipi_dphy;
 	struct mipi_csi2phy_stream_cfg *stream_cfg = &csi2phy->stream_cfg;
-	int ret;
+	int ret = 0;
 
-	ret = phy_mipi_dphy_config_validate(dphy_cfg);
-	if (ret)
-		return ret;
+	if (csi2phy->phy_mode == PHY_MODE_MIPI_DPHY) {
+		struct phy_configure_opts_mipi_dphy *dphy_cfg = &opts->mipi_dphy;
 
-	if (dphy_cfg->lanes < 1 || dphy_cfg->lanes > CSI2_MAX_DATA_LANES)
-		return -EINVAL;
+		ret = phy_mipi_dphy_config_validate(dphy_cfg);
+		if (ret)
+			return ret;
 
-	if (dphy_cfg->lanes != stream_cfg->num_data_lanes)
-		return -EINVAL;
+		if (dphy_cfg->lanes < 1 || dphy_cfg->lanes > CSI2_MAX_DATA_LANES)
+			return -EINVAL;
 
-	stream_cfg->link_freq = dphy_cfg->hs_clk_rate;
+		if (dphy_cfg->lanes != stream_cfg->num_data_lanes)
+			return -EINVAL;
 
-	return 0;
+		stream_cfg->link_freq = dphy_cfg->hs_clk_rate;
+		stream_cfg->num_data_lanes = dphy_cfg->lanes;
+	} else if (csi2phy->phy_mode == PHY_MODE_MIPI_CPHY) {
+		struct phy_configure_opts_mipi_cphy *cphy_cfg = &opts->mipi_cphy;
+
+		if (cphy_cfg->trios < 1 || cphy_cfg->trios > CSI2_MAX_DATA_TRIOS)
+			return -EINVAL;
+
+		if (!cphy_cfg->t_prepare_ns || !cphy_cfg->t_preamble_ns) {
+			dev_err(csi2phy->dev,
+				"Invalid C-PHY timing: t_prepare_ns=%u t_preamble_ns=%u\n",
+				cphy_cfg->t_prepare_ns, cphy_cfg->t_preamble_ns);
+			return -EINVAL;
+		}
+
+		stream_cfg->link_freq = cphy_cfg->symbol_rate / 2;
+		stream_cfg->num_data_lanes = cphy_cfg->trios;
+		stream_cfg->t_prepare_ns = cphy_cfg->t_prepare_ns;
+		stream_cfg->t_preamble_ns = cphy_cfg->t_preamble_ns;
+	} else {
+		ret = -EINVAL;
+	}
+
+	return ret;
 }
 
 static int phy_qcom_mipi_csi2_set_mode(struct phy *phy,
@@ -124,7 +147,8 @@ static int phy_qcom_mipi_csi2_set_mode(struct phy *phy,
 {
 	struct mipi_csi2phy_device *csi2phy = phy_get_drvdata(phy);
 
-	if (mode != PHY_MODE_MIPI_DPHY)
+	if (mode != PHY_MODE_MIPI_DPHY &&
+	    mode != PHY_MODE_MIPI_CPHY)
 		return -EOPNOTSUPP;
 
 	csi2phy->phy_mode = mode;
@@ -278,7 +302,8 @@ static int phy_qcom_mipi_csi2_parse_routing(struct mipi_csi2phy_device *csi2phy)
 	bus_type = MEDIA_BUS_TYPE_CSI2_DPHY;
 	fwnode_property_read_u32(ep, "bus-type", &bus_type);
 
-	if (bus_type != MEDIA_BUS_TYPE_CSI2_DPHY) {
+	if (bus_type != MEDIA_BUS_TYPE_CSI2_DPHY &&
+	    bus_type != MEDIA_BUS_TYPE_CSI2_CPHY) {
 		ret = -EOPNOTSUPP;
 		dev_err(dev, "Unsupported bus-type %u\n", bus_type);
 		goto out_put;
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index 528e80109c2f96b8c66d989ac834e30e7b38c732..31103546e4874ffd519fe7f386d779f17325cb30 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -11,6 +11,7 @@
 #include <linux/phy/phy.h>
 
 #define CSI2_MAX_DATA_LANES	4
+#define CSI2_MAX_DATA_TRIOS	3
 #define CSI2_DEFAULT_CLK_LANE	7
 
 struct mipi_csi2phy_lane {
@@ -26,6 +27,8 @@ struct mipi_csi2phy_lanes_cfg {
 struct mipi_csi2phy_stream_cfg {
 	s64 link_freq;
 	u8 num_data_lanes;
+	u32 t_prepare_ns;
+	u32 t_preamble_ns;
 	struct mipi_csi2phy_lanes_cfg lane_cfg;
 };
 
@@ -52,8 +55,22 @@ struct mipi_csi2phy_dphy_rate_settings {
 	unsigned int num_regs;
 };
 
+struct mipi_csi2phy_cphy_rate_settings {
+	/**
+	 * @bandwidth: Maximum effective data rate for this register sequence,
+	 * in bits/s (= symbol_rate * 16 / 7). The first entry whose bandwidth
+	 * is >= the configured link bit rate is selected; the last entry is
+	 * a fallback.
+	 */
+	u64 bandwidth;
+	const struct mipi_csi2phy_lane_regs *cphy_init_seq;
+	unsigned int num_regs;
+};
+
 struct mipi_csi2phy_device_regs {
 	const struct mipi_csi2phy_dphy_rate_settings *dphy;
+	const struct mipi_csi2phy_cphy_rate_settings *cphy;
+	unsigned int num_cphy;
 	const u32 common_regs_offset;
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
