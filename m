Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4D19EB7EA0
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 08:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dpp4AGnENwAM3pwGE4q87QxyZoslNrPcSzGIWhXgyPU=; b=gPz6bYimABmaNQ
	O+9s4O+qbhBPbHqqnh/KwvWaVgh4mM9Qobimx04OjNYGv8rDveixEybrpjjK7r1vUtWPdpr5yRXCU
	RPZ7KNzRSXv7G4QCH6D9jVTfBpdKF1jlr0I2FzklfLVh1aKI3FN89ADRPWgq1yaEIwOTYl2MR9CJt
	xF5FoIFg0RpsYM6eyV25QI9zJStc/NRLgPAynHFsiilg12Kay2ebL0JEW/NegrsjigINpAHd6bQvN
	L6DJvKMnkswVQjRn6TzeajMa1k7FuxIPoVi+3i8jdnb2AQVLS++AMkguvuemoE38YaDRStVvvz3os
	MUBEBCa8URS3OB71fMZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUj-0000000GjeT-2D9b;
	Wed, 04 Mar 2026 08:22:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUf-0000000Gjd6-44lA
	for linux-phy@bombadil.infradead.org;
	Wed, 04 Mar 2026 08:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=; b=UZ3ohJO63yxoHCcL9yQarh8nSt
	Cn961FE+ovBRZ7UAqOqI4USAvDe36M+5XzTKVZQ1bIQFGUwXWy4OPfYpmQiuHGOAMQII5UeqnN1SM
	zYRmZJQrFfhO11acBa0JIMtvBVG9+SLyvQT/KLLVFeVGWxAcQcezy22WtWIyBNTtC14YPaWSsmwZ+
	Pl5/5YsXYSULA2iCi50DXj5eVR568WFgLZ9DcjNwM+1eZMSLcAY1k04vqGmD1AyqA4MGGCaSrmK7Y
	1Nv8IF8HegBYZsXgriYtg8OTyKULgdndxIdezDw/6vIhrczNopQX4VKtNFGP35Ti19Tiqhn7aXH5a
	lRKo8WXQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxhUc-0000000478s-3m76
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 08:22:08 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6245SOdn152521
	for <linux-phy@lists.infradead.org>; Wed, 4 Mar 2026 08:22:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=; b=mnK7TA4Yk6R4y27Q
	bmrQuBeJNOyG8oMHPcD0hxc5bp5CDnLddLPmtQFWbb93H1eCtOfmUANg20WwL3ik
	R/+yFOaG7b9+FRuUrXE2PwiPPRpAF4eJuHD+10u9JfZMkoYaAupknncLO2Lm8q2+
	8sSARFhnIYcSAQ3rv8nUCV8mpgFNB5rOrcxNj4kwfV6eO1tNV8gqlb+lhfcvk8Qo
	zYm4qTZhj2zXVgxJMJPJknuB6tMYQdWlz56HrCU3A1BCU6TZY9465PenJW9WQpFT
	QgQFbN3uDd0nXSulkA3lSqyUsSjHAZpeAhEnCQPgc3LRdPEjkMosWtzlYaUDr4G7
	xYqUVg==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cp3tvjswy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 08:22:03 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-463a1cee56aso63262645b6e.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Mar 2026 00:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772612523; x=1773217323; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=;
        b=Hikz12PVu5AiuPrzogk/2vrBL/GNB3y0otl21vItNYWQmwiWvCuqT/8KWdgG4NnQT1
         544N7qCld5QCv8KBXh4e+GHtnMrrO5Mw9gGW7goH7dpnC/fBsTQHs0M2pijnYY5laQvV
         xfPQfNuj6Dx55xR5HiB+Xn3ZsuKfgLn7B3K5CREcvUX+UbQWSn2mSMM1v+9tlR18wEjm
         DSMcDXtqAuoDrab5YLAdabhj7urCgST8yi1JYJ5a2XVlqCN7Rng0QDsbbR5MQGotyMI9
         gM3YgA98z8S+Zq88z6VsP2pyg/Rxg3zqRZUMV6G9fDZU1LujHPhp9B0sgHY5wYoeUoZL
         mNhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772612523; x=1773217323;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Fpe91AwzgJkPRVG0kPNXA33C1a2urKT4TBX2sBM0Lyw=;
        b=DaDd0mJJaT93MPOEGE0Ur2GKDkX0fWMG2X+YCsFmD51jsFZIj68uGMNRuODR2WJJgn
         eoW6QazOPzB60JZ/40VGPrD+LdimOSqB90DMGmeeZRCQRGlpbzwZRcngvCFMZkvq8mei
         pTqfJzjZ3jRVEKY8JP1XOLU8UGLpblv7SssnnhgljI5Hs1LszCw9e2ZrM3IjHS3Hv6gW
         tWla2yGFswxnOrHQTl6mSNWWdzmdq79CDibjpdl4VTIgJXG4VYj10GJaSNb9BG7+IPGo
         Msnol0tePq2iMoKGEeY7ONYY011kNa+5aUEWwi2841TDqge0UoMeh4GBPYOgA1Iuxmgl
         L1Jw==
X-Forwarded-Encrypted: i=1; AJvYcCVr5OgZXZ9PfH1heU4fUb2ak93+UPnLOoPu/VzmAFnpin3iAvUpT9g7COTyBnXJAQp5gZY7CXOJZrA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZ8J4nLNvtzOZEle0qlND5wqlVMtyRLZTlbKDjSJ+9BJSs6RA/
	DnWXCX1uJqyCtXH9R1zNXEtUytV+mbZ/YkJnSUty7k720bNuxiF+9SHSmREW4JtlqbctsrGsiqR
	1RizU+dTrGddmWmLNg+fKLAf0Csq7tBZb8TfpeuTCAQh7TCCquc8fSgHUzFf3mN8xTP3Q
X-Gm-Gg: ATEYQzz7J2YlE7+5q8Bl7GKKUbiQjgWUx7bcqvzgJhU1zeKOvjqiquT1WzsdVOMqM+4
	SbtKGyBhJssPnU0KjkrZrOwiFVSt1fBCUdQ4QFoNkV5F9vr7/Us7wnsy4WOw9hpONzYVGrGfrrE
	k1Ry33j/O9DtP8wEcEVKl2eTeHB1HeR1wZdbBu9O0tPiAkcNi3Jixl1IPUer+FznPsEXGp6yvYB
	6Ic+h8yE1CACjDUf4W6s0NBcf0QuRSuPewVbIFHh903MSWr9mdZtZNj+p9LlzEzgamGslWqgTzr
	TE7Oky9fQq8nN3xoaLsbjbfgEILnhyPfK7uLGpBwllKv+wn9rEuMZ2t2HVW1v1VPo1HljgTHTnV
	aVg4febIERoiLsvpqLpIrQ9EkQZ1b/hDkWvEdoJd4GHuER06wJRfx+8ZbviNKXOXxYt4e
X-Received: by 2002:a05:6808:2226:b0:45f:42d6:3006 with SMTP id 5614622812f47-4651abb49fdmr697292b6e.15.1772612522759;
        Wed, 04 Mar 2026 00:22:02 -0800 (PST)
X-Received: by 2002:a05:6808:2226:b0:45f:42d6:3006 with SMTP id 5614622812f47-4651abb49fdmr697272b6e.15.1772612522359;
        Wed, 04 Mar 2026 00:22:02 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d9absm18006952fac.16.2026.03.04.00.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:22:02 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 00:21:58 -0800
Subject: [PATCH 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for Glymur
MIME-Version: 1.0
Message-Id: <20260304-glymur_gen5x8_phy-v1-4-849e9a72e125@oss.qualcomm.com>
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
In-Reply-To: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772612517; l=2780;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=pysVn0dtTrLL13JfTAmWaZskCFGo4Q8dXZlR8KxW+RQ=;
 b=BrV+/QVloaGE61UM9FsVTPr1aD7EKrsxuuvTAL97xJSWFbb/nvTDE2ZYO448OIIlEvGWGJ83b
 SwWOHOvIf64Cmwl8OEAmycjsaK2g/zz/ahP2entS4lQoIo00OhmC+Ri
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDA2NCBTYWx0ZWRfX+1Y6O7v946Bq
 c51pn0lZe7jvuVfYewzQVt2wxkpscmyWOu0FY5X14kYekgNYVImCqKSh2qqQOL5CQsutIRCSdIA
 +Kjn5coAIOskm/5FTbdVEAqx5Jmw04Bw/Ie8mB6nEKvKcPLJhqr3OAqBoR6eq2iIWwZeNqLHuuL
 7y2to3tfL9P9lj/0ON4PkytUm0LzWeCNKbBrhyYTkQavn0Z8DLMskJTbQ26/M0zwmDyL+j9oDfX
 NkVeLKNRHC3lus8M6julFsUNRf9WvZNDrgHYQO4K7jA+w9cHHaZR85Yf60/kXb30se08Gfl74ze
 Q/Iek45nAO1hi/uvDVeoGYfzdR/vNFcBJxKZB3hRl3MTED+6cGD8pEwl+GrU+dELnwN8xIi8phh
 Z9+7BkJZKGPfc597KohSCyvHg54iDd+ScgqDUK79Uww/byBa99/rodniS27h9X9NbGourT4q6WX
 4vV++MqiSFpka7NjydA==
X-Authority-Analysis: v=2.4 cv=VYv6/Vp9 c=1 sm=1 tr=0 ts=69a7ebab cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=OKc3O2-h_waFBcwqEmQA:9 a=QEXdDO2ut3YA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-GUID: agWB2pkx0E22OP4o1W8feI9zf7mE_qLe
X-Proofpoint-ORIG-GUID: agWB2pkx0E22OP4o1W8feI9zf7mE_qLe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_04,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_082207_414212_9581C19B 
X-CRM114-Status: GOOD (  13.06  )
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

The third PCIe controller on Glymur SoC supports 8-lane operation via
bifurcation of two PHYs (each requires separate power domian, resets and
aux clk).

Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
clock ("phy_b_aux") required for 8-lane operation. Introduce new
glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 6b6c10218229b74540e520c6fe9fd1f890480b68..29bc0fe5ce37ecd6307da97d4e091b3a52074d2b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3378,7 +3378,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 
 /* list of clocks required by phy */
 static const char * const qmp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "phy_b_aux",
 };
 
 /* list of regulators */
@@ -3403,6 +3403,14 @@ static const char * const sm8550_pciephy_nocsr_reset_l[] = {
 	"phy_nocsr",
 };
 
+static const char * const glymur_pciephy_reset_l[] = {
+	"phy", "phy_b"
+};
+
+static const char * const glymur_pciephy_nocsr_reset_l[] = {
+	"phy_nocsr", "phy_b_nocsr",
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
 	.serdes		= 0,
 	.pcs		= 0x1800,
@@ -4707,6 +4715,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
+	.lanes = 8,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= glymur_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
+	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5484,6 +5509,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
+		.data = &glymur_qmp_gen5x8_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
