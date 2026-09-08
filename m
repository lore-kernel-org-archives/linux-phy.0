Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27E9FC79F82
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IYO3e+7agiYf4P0W+DaxOekt+NKdm35Ga8YMlg7G24=; b=Buy4G/EiqPnoeC
	ttpvxUPiF5+hNPPGWM/0MGLvwQk/+TtoqtDXB5iB6++ng/8UjbysxuVmCEVHVHNz2p3kGO5cH7k2+
	h1REP7MMQDEMe8UP05ru4+Kz0IGoGwWFG/uSmoIVwkxzyWBoJOTExXxFFvXJKXlxMjXwALy4FGZl0
	5zEj1kSTKWr31Pdv17wIS10twjpuTv14ajLkW6TOwheHpxPvw9coA/5pb0l0R92/QQFxIFy/8Zx3u
	Tp9/jC7CChZIoXa+gx+xp60pJSA+fFRogQxto2b1lXuH/SmWZwQohou1trAo+ASToFUJY49Me54fB
	v0g2E3zIFQVeupwhiauQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOW-00000009Dco-3cKa;
	Tue, 08 Sep 2026 14:01:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOV-00000009DcQ-0Goq
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688CksD04163129
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hEgodOPsnVk2RyMGUA76F2Quat3GOBq2+U6/p5NKQEk=; b=jKyRbfOO1l0O01Vo
	sAj2Rn7o2cYjF1pQqVGzZZ+QfIO5G2FlrvybvWtf9whRf5xVNThF6IFehjGEu3Oh
	fXReLC7pQWq6SssE3Jqqb21CAPukCi6lsMOHw9REeHI6OG5WPYblDmVPuzkZ6u9a
	arRRR3V2MHmJvsuZgcYem2XvRaRD3Z9bAGpHwH3aCfd5ZJ25PVPRVfYipEcV/nKk
	MCiTj209L2mjkSKk4EL8ml0Nhkj4i8egIKAOHviUa/pO68JIe6s+EdmFqs4fFSdl
	61KJAxWK/3db88XwOZ9+Cp62CLq+XxL785VfHJ+mRRmSHW6OHEIGsfsWlweDvBux
	HcYgvg==
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjb0pa9bw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:50 +0000 (GMT)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-4959c49e054so3330321b6e.3
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876109; x=1789480909; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hEgodOPsnVk2RyMGUA76F2Quat3GOBq2+U6/p5NKQEk=;
        b=Zm/g7B8LvENkhZtxP0UrhV75wfM/5HkoVsTggGSQhGjRxQRoHIySWEZtMDbQmi3oFg
         nwe5Dh4d1w3TqgMhH0pfDnwAQFX/ZndHKLkZTkaCMfXaBF/wTQuG5w1Onrx0gPN/udj0
         YmyvtZ2z6qf7wcOE9yHL3y7DKuiKgfXVn6wDe7XhHZdAuyJKMbbm0ikfNe/mPnWnCKLc
         Gxmca41uTaXvs6mfLq9uFdvveTANJ32qRLfdZFMoS4Zr6JRCmfKosYnE+zeXErFSPYuu
         a88FfKX2M6/X99JCfXXh4k8nLivLUozcD7l6ZPWIC6w1BfJipO7feaBfuXgS7LX72QD8
         YgFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876109; x=1789480909;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hEgodOPsnVk2RyMGUA76F2Quat3GOBq2+U6/p5NKQEk=;
        b=YWEP8s+dkmtswxTV+ToVnHY9NPEs+ycBic8+48KOKqUYa2M7gANoB2goTS0BauGj9x
         nEllnNL1kTxmhbSkdNXT4Y9e/6SMjYYoPyfoB5yuf2U6bMbdg2CKvu+mL2buI9dovv7M
         STzjk/qH4TvFjWwKaYnCPujJINisUUbGJqAjpzMSkVHF0G3VycuuI0ICuqwEiHqDIzuJ
         KmfQNkjktWPg0VzyXVdH8XP+DSMnw8sygzmMygtYrwO/d3G6pVLRe6EgdgMU1zkufZRG
         f+QDiryRrD3ac+bxUj0s5JHyyjbVSBvB8T2zOfy1Ycv3L9clVZJVExDvGYNJ9/bE+wDb
         nWlg==
X-Forwarded-Encrypted: i=1; AKwUvBxZZgNkYGryCWzsrelV9I70hcmaZX3E1KBqWWj6VBBvBFuND3FgtHODt8XzAp2SKc738IAK+X+fnvs=@lists.infradead.org
X-Gm-Message-State: AFuF++kIoX0svlFhg8H+QRRMCdXkQ4IAg93n8DAg/FDMOw8hQceJ06aE
	vskqLMM7U/xJ+RLPO/6LRB70t2v4UMmsTNfTUPp++4UlOKUa05+IUhOoQ1M68ubq5hpiwQdEgH5
	KBOLegudaoNGsbezGJR2UodEwJS9MySvnV6yBOcpaMIKQZjC6oEZvbK6X2Mjx2aWeGB8h
X-Gm-Gg: AYBFou1gDJyoYLXZr7Oc3BpV4TjpC0GMu4BXL0Q8ZdrXj9FDKAD2XeCjVuIFPQgLcTO
	LoCKo0lxJwWCM28hZ5YWUemWRU6x/DWhDot4AyT7VKNlxTwOOKX4FWi++MixOy2Rc6BT+ogU5A6
	rGmmwBxiISjs8CV/EOwwnD1h5g7cnJha+JfG76RS0gOq2EVFoi/5NKaFNTa48jw6Ljx/akfYtBz
	3etI6IyvqvM+gdAipwNnQL+MK5Ww++IACvsy/5UKPgqqIzMqLHRRFrxXGJ+CoMGnhUY+NCcCy0v
	/rOliT+RQeDij6ruzCS5FG7HtRu6Z9i5KSWCwJad2GYNTXtC8hPYcFEqCMTg0T1vc4ALUQFcaJb
	ssvOOLL+uRzqjZnApW6K1Ob6Td4A=
X-Received: by 2002:a05:6820:561c:b0:6b7:46e9:9713 with SMTP id 006d021491bc7-6b746e9a381mr9125594eaf.67.1788876109488;
        Tue, 08 Sep 2026 07:01:49 -0700 (PDT)
X-Received: by 2002:a05:6820:561c:b0:6b7:46e9:9713 with SMTP id 006d021491bc7-6b746e9a381mr9125429eaf.67.1788876107682;
        Tue, 08 Sep 2026 07:01:47 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:47 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:31:01 +0530
Subject: [PATCH v4 8/9] phy: qualcomm: qmp-combo: Fix Glymur v8 DP PHY init
 and configure sequences
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-8-ff22e5150538@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=5341;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=AbJUtIvQ8HecHwJf3QH/5xJwEXa2vXvAnUzqr9IYKMI=;
 b=6aXBHHbfvnAttBgCYtSa0tkM9AikkPKmVlg6460l5d1j373kfwcYc/ySLbNCu/23ogfCc+CK7
 Lg0xBhcA+wjCHzm6uoLawAV692hdwKjlpKMu7Rh0ApjNcBrrnQ7sz5X
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-ORIG-GUID: MDSmf5559b4XmqX0WT1ITcYVs1QHo0lQ
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX1bU+KjqakcXW
 auSs8EQGEe2Bef8mQ9noay9d++tlo2RuVftLp4HWEuzzTvDgFemm4+2dYPXutITo1WaklAxCxIX
 PegoogZNJFsVjmr50byRyEGMbhQdJ8A=
X-Authority-Analysis: v=2.4 cv=HL3z0Itv c=1 sm=1 tr=0 ts=6aa0154e cx=c_pps
 a=4ztaESFFfuz8Af0l9swBwA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=AqvRyXP2OKJBH5cxV00A:9 a=QEXdDO2ut3YA:10
 a=TPnrazJqx2CeVZ-ItzZ-:22
X-Proofpoint-GUID: MDSmf5559b4XmqX0WT1ITcYVs1QHo0lQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfX2aAtPEhOkOEO
 J4RegIIIRUXSkSF/+JFHdKhEIyut770LvbvHWwg63li3XsgiyItFSQhk3Vq9BN3rk+mGqZgNFok
 PTYiya2hxjIG7LU7sFZP6CCqzG61Qouz4g8tsc3crk+VIBM++2dnKIMSzAjRuHCkBsK2GeH1eV2
 xwj3XPHNocHI5rN34qGb84F1bi2BPLdZtkLqeA2D9whjdvzU/Af2xZ8h9dPdtf/k4rt/CX41cIA
 FAGk8932WUtHq8PY4KYcArUPKqmMo05TdzoQ9VbuE39uMXJ4AzoVDAtx2kBjjojCXnc8DRdz2hK
 bcqsseZQ40Jwcrq3gu3+IvFe0n35e+a8/cQpbWw0tbzxFCSS2AWuW4MwezwejOy0/R+67VBs6xc
 3vlomb8U/2nao0E+f9ZZ9uVIvnWC+wax9pmnx8/JY9tp5ZCsUTfzq9hayUfVUV9kpf2RvC85Ugo
 UrtnLTH36bAuxJ0UYHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070151_136618_36FB5EDC 
X-CRM114-Status: GOOD (  17.65  )
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

Update qmp_v8_dp_aux_init():
- Add CLK_FWD_CONFIG_1 initialization (0x3f) before power-down control
- Replace PSR_PWRDN with LANE_0_1_PWRDN and LANE_2_3_PWRDN in PD_CTL
  to correctly power down the data lanes
- Correct BIAS_EN_CLKBUFLR_EN value from 0x1c to 0x17

Update qmp_v4_configure_dp_tx():
- Correct default TX_EMP_POST1_LVL value from 0x20 to 0x2b

Update qmp_v8_configure_dp_phy():
- Correct 2-lane and 4-lane driver enable values to 0x30 (was 0x10/0x34)
- Add CLKBUF_ENABLE (0x87) programming for both TX lanes before driver
  enable writes
- Add TSYNC_OVRD sequence (0x03 -> 0x23 -> 0x22 -> 0x3e) and
  LALB_RESET_TSYNC_EN_CTRL (0x0a) programming for proper TSYNC handling
- Fix QPHY_DP_PHY_STATUS poll to check BIT(0) instead of BIT(1)
- Replace post-lock TX_DRV_LVL/TX_EMP writes with two COM_CMN_STATUS
  polls (BIT(0) and BIT(1)) to properly verify PLL lock completion

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 53 ++++++++++++++++++++++---------
 1 file changed, 38 insertions(+), 15 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a07ad858b0d3..bb1c5df52d09 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3827,12 +3827,15 @@ static void qmp_v8_dp_aux_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_PSR_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
-	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
-	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+	writel(0x3f, qmp->dp_serdes + QSERDES_V8_USB43_COM_CLK_FWD_CONFIG_1);
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+			DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+			DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+			qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
 	/* Turn on BIAS current for PHY/PLL */
-	writel(0x1c, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
+	writel(0x17, qmp->dp_serdes + cfg->regs[QPHY_COM_BIAS_EN_CLKBUFLR_EN]);
 
 	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
 	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
@@ -3859,8 +3862,8 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 	writel(0x27, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 	writel(0x27, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 
-	writel(0x20, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
-	writel(0x20, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
 
 	qmp_combo_configure_dp_swing(qmp);
 }
@@ -4049,20 +4052,31 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
 	} else if (dp_opts->lanes == 2) {
 		bias0_en = reverse ? 0x3f : 0x15;
 		bias1_en = reverse ? 0x15 : 0x3f;
-		drvr0_en = 0x10;
-		drvr1_en = 0x10;
+		drvr0_en = reverse ? 0x30 : 0x10;
+		drvr1_en = reverse ? 0x10 : 0x30;
 	} else {
 		bias0_en = 0x3f;
 		bias1_en = 0x3f;
-		drvr0_en = 0x34;
-		drvr1_en = 0x34;
+		drvr0_en = 0x30;
+		drvr1_en = 0x30;
 	}
 
+	writel(0x87, qmp->dp_tx + QSERDES_V8_LALB_CLKBUF_ENABLE);
+	writel(0x87, qmp->dp_tx2 + QSERDES_V8_LALB_CLKBUF_ENABLE);
 	writel(drvr0_en, qmp->dp_tx + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
 	writel(bias0_en, qmp->dp_tx + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 	writel(drvr1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_HIGHZ_DRVR_EN]);
 	writel(bias1_en, qmp->dp_tx2 + cfg->regs[QPHY_TX_TRANSCEIVER_BIAS_EN]);
 
+	writel(0x03, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+	writel(0x23, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+	writel(0x22, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+
+	writel(0x0a, qmp->dp_tx + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
+	writel(0x0a, qmp->dp_tx2 + QSERDES_V8_LALB_RESET_TSYNC_EN_CTRL);
+
+	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
+
 	writel(0x08, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 	udelay(100);
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
@@ -4070,16 +4084,25 @@ static int qmp_v8_configure_dp_phy(struct qmp_combo *qmp)
 
 	if (readl_poll_timeout(qmp->dp_dp_phy + cfg->regs[QPHY_DP_PHY_STATUS],
 			status,
-			((status & BIT(1)) > 0),
+			((status & BIT(0)) > 0),
 			500,
 			10000))
 		return -ETIMEDOUT;
 
-	writel(0x00, qmp->dp_tx + cfg->regs[QPHY_TX_TX_DRV_LVL]);
-	writel(0x00, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_DRV_LVL]);
 
-	writel(0x2b, qmp->dp_tx + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
-	writel(0x2b, qmp->dp_tx2 + cfg->regs[QPHY_TX_TX_EMP_POST1_LVL]);
+	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(0)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
+
+	if (readl_poll_timeout(qmp->dp_serdes + cfg->regs[QPHY_COM_CMN_STATUS],
+			status,
+			((status & BIT(1)) > 0),
+			500,
+			10000))
+		return -ETIMEDOUT;
 
 	return 0;
 }

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
