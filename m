Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D671DEBFD01
	for <linux-phy@archiver.kernel.org>; Mon, 13 Apr 2026 06:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgfDSzfRC0WqBO/dU74DbPCjT1vYOASA6YNhmcZH5hU=; b=HJfuYKVHShoPP6
	TSFtTpOZcd7TlRjsnsL82tgsIQ3DVlROs/ZxMDWz6qmBvXpWfab4ncdeSu9oYxo09BeH/xXHC1S4j
	Fim9nqfRVgd+PCG3eI21VPBHDFlD+7kGjNK630tGcRDqUHzExSRgF8clEST1ztJ6mT6ibvTQTeJS6
	+5QeTSdLettMOgR1DrIYvhmCnj9qIpwefyGaFgc3HOhppYVpW2vf+kTqskIKXO3wqVlhKW4Trj/DV
	kjEcvIWgeE2N+ruv2/SNzbUjJ4NUiwHJf+xleEpkp92iQugjSwCdGZKRpbkjo9EFFPosVIRdKXgvW
	sUmMwh0rB3aLfc1PBqaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkc-0000000F4oE-2XkQ;
	Mon, 13 Apr 2026 06:26:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCAkZ-0000000F4lY-3czA
	for linux-phy@lists.infradead.org;
	Mon, 13 Apr 2026 06:26:25 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63CMLhsb1530389
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DKF85qW/Qlo6fJnzknZySfPyHFggl0ikhnUJiBDk1bY=; b=ih1JlhP0Cu/Lo6oi
	XBvnKymAxEa/lPLN69VIPOZIYO/6r0Fi1dqUvIwdSiab0V+FRPyyF99mgB2Gn54Q
	xvPZiBxyqReh02fa8EqPK+8dR5k2RVEqBRhdx/ENWUBsKYlKIX5vt2/FCiRLtOew
	A7CNq+R/p0jUuHnbQPFNS6cY5qXb/rJPWWNHL8j0hkvGFwAQnRedGl4Zpa1GXhzK
	kafZEACxfr0cBZijvZN8agnROOVC8ZKGuFUfDGaMPcTTDuYErx2CCV4MVBH1uZzA
	D2u7CKf+5YVvoKSHt57L3q+MxnISjktqSfOj5qzCDbWE26pGj9VPWKgyM3M2n1Br
	330XaA==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dff2bc0y4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 13 Apr 2026 06:26:23 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2bdf6fe90a9so5527824eec.1
        for <linux-phy@lists.infradead.org>; Sun, 12 Apr 2026 23:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1776061583; x=1776666383; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DKF85qW/Qlo6fJnzknZySfPyHFggl0ikhnUJiBDk1bY=;
        b=kOVWJs4eMuBqYJAI8gdvlmydMWJJLaaVit03CSYOVoMaXlVECYT2TUxtKY13fRcNZu
         FkATrXkzEAw8VHB8kPDU5DgTBtIBN4YToqmSf7eV6TEO9RiYT6y6YRR4EDzm/PyccKqq
         q0wyO99m8tbgJ1JnEVrW6NAC311/A+67m0MwgxF6PlEg+W4T4mnqLVmIEnXQLXgNofHg
         utCzTCbeQH2GR6IMc/8L/mf2dlMN50ltMdhgW1L++kZRNwQzD7bh0rTpONcwoUSZ9t8v
         jABrWygDdJoQ5rtdZRAZwUjnbUt+K227diCQexnsAXyOVwfY2vFzGZegRKQ5XQMbE7mM
         7PKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776061583; x=1776666383;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DKF85qW/Qlo6fJnzknZySfPyHFggl0ikhnUJiBDk1bY=;
        b=U+wLOef89M/+QNwSEBNNR8DQdgwohLFxzuO+veHBi7lo0Fo7a7rP5Qg01u0fAzOlSb
         vjy29mDH4NmXa6EBXn9p522P9r8J/vztqf7JKnLrgWfj9EAFvZsjK0N2FfOyzsmoSyB6
         6qHExSCFqOSQEGtqbBha681/RlbCteVn2VrwJ8bu6Ux/ej8HUVpKCZs5DywrJV+w0T4t
         RFsXhxcbrXwceTEjrGjqAa1J0fXWkCXaX//iaidDn/4BvkkpaR2itxUIACbfXj+2E0jx
         oEn2mSaYwxe0SWI9dpRsZxRthy7UYcs81gIgxJuOphp8pRLMw94a/8bS0tW8MFrRu8Hh
         SX8Q==
X-Forwarded-Encrypted: i=1; AFNElJ8jduhcUa4nomcQur+gn75rcUuCVSOqjejCs4Erj4az2ZMrITpfh5JhE6vAXeGTaGopbS22jgGdztw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwycxidG8A9N2wsIZAQqTBnBmFga0GMfzbhMAnPy4+GMU3ZF/34
	s/WSSudWBohJUeVG9vDk9hPkmOuNB4ggSfia182Gq3HIRcBARIhwYC8mv/Os05s+AAaxwLFhnkT
	3kuJ2NZ0MH2EsVmKQlkHKBh6W8LlilWr7+WTe5uXGcilEIfs9pLcnGLziihcwo9UnG4ba
X-Gm-Gg: AeBDieunfyNDrGm/gvE20gyfgweVvXEgeVkEtK8uVi524skMuda+QT5RqK73MrZSOd+
	4fofV5WeLGs+57FIzuR644nNsZaC+orumgmfe0F2946PEqKlZnQyrxy+ccR9TOebNS4wz67xTAh
	SLwyvU+3XZ5kolqagkV7kcM2FGYIMvx3PUscDlyXglFDVjIenhg8CkbUVD9pMVIeKNlLIYSLTyb
	TFyBnYkZimtnc1s9yDRo9Ku0UR43FquxKqdZcDt4RislG7j0U6wpHcM07SvN+p1JOj1iRlunOo3
	if28/f5p321i6Fal4JyJ0BMVTtfH5zos2CdDAD6Ftb+P5F3j22uWbiLXmEPHzcv2j5rABUU3Iz1
	gGEmEhFg3X2Fq1+RbbOaD3N1N06jGVfVAB2u5HRhNfX2p3g/XOsvP87ancF8obB2n3kV7
X-Received: by 2002:a05:7300:c99:b0:2d9:db50:c6d6 with SMTP id 5a478bee46e88-2d9db50cbfdmr527217eec.21.1776061582801;
        Sun, 12 Apr 2026 23:26:22 -0700 (PDT)
X-Received: by 2002:a05:7300:c99:b0:2d9:db50:c6d6 with SMTP id 5a478bee46e88-2d9db50cbfdmr527201eec.21.1776061582246;
        Sun, 12 Apr 2026 23:26:22 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2d561cd3138sm15260935eec.14.2026.04.12.23.26.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Apr 2026 23:26:21 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Sun, 12 Apr 2026 23:25:59 -0700
Subject: [PATCH v3 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
MIME-Version: 1.0
Message-Id: <20260412-glymur_gen5x8_phy_0413-v3-4-affcebc16b8b@oss.qualcomm.com>
References: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
In-Reply-To: <20260412-glymur_gen5x8_phy_0413-v3-0-affcebc16b8b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1776061577; l=2900;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=/sh7p4m3hFNioD0epggEq613q+NXtlboppQCvliy7QU=;
 b=pvccYJ1o+XBVXIlPJ+tXG8SdBY4cZG643kh3kxkqPJ32WmQKZoLgLWckoLu/KLilZa8tT+SVR
 3Rht1St7TeLAaZpcCplH+tybzbwzKjQN8mG0cTjv7LEeCAofyQes+ln
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDEzMDA2MCBTYWx0ZWRfX6JMQi9aZioFD
 gkC1G3z8som0QwBs1JF1KQxbx5Ab7A+YUpB0JKfrsMQ6l4ttIO28o1SpAGRdxIknZzMwW+nM7Me
 6PndLPGoVmrYAvPq4o9qXIhq0xeLRk+OEg6kbHspEG37W3J3EI+NwWFkTaVRhOU46QXsPRdjL3h
 cvY+87fHehPGb/WdMghz2w59JbCzPmHSheuHc20ULssmbdMQcKtzZQMGtLBcwtBKQaSWB4PRw6W
 Uo/u9lPh3v3HMPaMV5Lz+mpiKYt6xDNyGlJ4+HR2vsKTdYI6yan62wVQweIkAGn5ENviAz8typY
 jF6D80Wu+5ceNNC+grdErYKy/+e6puAKa3qkOBYCAl2vpY1m3CO7bvILZ1zh2S8ZhPbNLYvWvAo
 4mvMKoaxOOy5so1d+9A2RnXyWThsezbOkjm4elbtSJ3D+cXtGTvbIS/a9LYXejYAnECyQmvHllc
 TCKz6InbyqLVmNdlYpw==
X-Proofpoint-GUID: QTlfOqDDO38Xpc5qfIp8MMdzLNkygUig
X-Proofpoint-ORIG-GUID: QTlfOqDDO38Xpc5qfIp8MMdzLNkygUig
X-Authority-Analysis: v=2.4 cv=W4gIkxWk c=1 sm=1 tr=0 ts=69dc8c8f cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=HL6OuJMUPOiLb2Wyts4A:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-13_02,2026-04-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 clxscore=1015 phishscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2604010000
 definitions=main-2604130060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260412_232623_935748_38F296C9 
X-CRM114-Status: GOOD (  12.58  )
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

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 51db9eea41255bad0034bbcfbfdc36894c2bc95f..e872b50b11da50e6317ce7e1acf6385925f92cdb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3376,7 +3376,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 
 /* list of clocks required by phy */
 static const char * const qmp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "phy_b_aux",
 };
 
 /* list of regulators */
@@ -3401,6 +3401,14 @@ static const char * const sm8550_pciephy_nocsr_reset_l[] = {
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
@@ -4705,6 +4713,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
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
@@ -5483,6 +5508,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
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
