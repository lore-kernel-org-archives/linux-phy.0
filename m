Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FA10C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j4HMHYb5njr+fyBXEBVZcyoZ63+gRnj8Pz3LL60UFAE=; b=oxeTjQmpDUmyu4
	aIiGRve9au9EAnO3AgshBKaPwVcf8ml7HOvBncXM4ILuF0BKQfZvrsp3IG2bfV53lNN0hRFBCem5N
	jHKb9Kg94VgIgh/SKTpRvQBRMMx8kKsYiaAdnOFrNCB7YhEbBPbVLucCx396q2Nnz1eF2fUyF9bMq
	Rz+pLY2E2vZwx8ncigxnzCa8ocgXAgzDelzosQmClXw5mBK1IVp559lj62Np9889d2N8cgqocdwqd
	zWAM2/xJPZjMSlENwgdHY/Hro7t883wr0CYuEPKzDKTKQnioFlMw+a02YbbxKfB5yN8nl7WTRM5OL
	RrCJsoYSSb7Lp+JTHwLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsC6-00000005Kwp-1TDo;
	Fri, 28 Aug 2026 08:44:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsC4-00000005Kw8-0owY
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:44:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67S675ur1043729
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 08:44:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Oqpp/YqJcmbInDW8NldSo8VxqiOBNOhc5Rb5jj2yQKE=; b=ep6PIZSQAJWh9+CJ
	DHUfyd9B+GP3xPPswsw1/HCdB4ePEc22XCkhVeh3bYEyEMU9sLWx2opdPWMShUHo
	Ppzvw1R5P5M5ruThZg5Viv/fNBrJYjPELTIWlmf22y8wsVSKLrjdQn4ysODiYR4B
	ncGb1D8gKwL65HXKtkDbwQffMNc6b7hDs2hCEFh+Q7lzb5w73D6AV8ALUOXbnTbS
	0eLjgorj5up28hi3EkBZY+yZ97EgjSXsgMw+bccSIgLoxmdqEV3ohocqxtqlIPkZ
	n6UP603TmG4WrhgcyuL8eWoUTUi2qV/dvoDlv5O2lCfMaaJTc5x4rQuaGoXzhxJT
	07yAgg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gatnc324g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 08:44:11 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc1c2f1acebso1408703a12.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 01:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787906651; x=1788511451; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Oqpp/YqJcmbInDW8NldSo8VxqiOBNOhc5Rb5jj2yQKE=;
        b=eNG4Hto6D/MLmfpw/PORglLJO4yhdBAV4mzpRyDqJqESojM1Z2MDSNn2sxUt3RHwQ/
         YBVjcWPiss7PQ/8XjL7ONm/mweAz8X1qqDvJ2sqzWIE5FnHERIO5PV7bIZLQpv2ycu2X
         VY4G+dMfsWsvP/ypgSI+sPbyP0H4ZRCFPKHtdwqDE0p5yUSBC+BybMB0AIYFGy7MPIP5
         hM3z41pXrmU97HmbnOx8Ko7pyKNFm+4FcyejE5+mIhg2tHfoRwDWRAv4QoPqOs0WKNlI
         lBn0wAj+GKDPLaduLSCOOioaRqlQ8KhxinY09zv+V7FNUDZB1qLi3M0JajlYvc7mAmwD
         KvgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787906651; x=1788511451;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Oqpp/YqJcmbInDW8NldSo8VxqiOBNOhc5Rb5jj2yQKE=;
        b=nK5t6JbzjnTUzrz4LrzrM/F55CWVzPiNiYnobNhgKMWilSq1P9ZiwWwiitluTiiiYP
         OJGBAgSymxpvixo8fQh0nvcdDMdHOD2NOCMYmhoTuqR62xxk1zLc9Oyo/i862+uvKvSp
         GYIyempWCo3QzA9zGv0X46r6ZqJmstfMv9tEamZsG7wG7uy8RgjJg7PlBzBCmFy/y0fj
         +o13DEHDsilaySMUnmVZIQbTJQITM/onILLIwAVGSbSPCksQV6TdR23BIbGDgtbulgmN
         nWIb29kdbqtOYpaLmhQ471Ka12Kp/h+BGZadYNCDybamf8t9ftlnsWFhsYg2TuI3vgAR
         +CLA==
X-Forwarded-Encrypted: i=1; AHgh+Rr3O2MlIp/Mle2T++nSR96UEda/zP947VMVH35EHnSA8Ec12R+c+lOw3IovJ9Jb7PVA5T0BgmOsAr4=@lists.infradead.org
X-Gm-Message-State: AFuF++kqemSTffho4A5K7bvx0ZD71+jjiqTjDMUc9MWwC3mK1R450B4a
	WtMrWxgJbExI4m2EFXfvd+vzzGh4f13AvEEpug/MTJchA2d4POoVDozoKAvn0AOh0aocdENDpUD
	AdrDjtWyMRCZyCxwrTL0Tud8DP1EgOkKTRbyerLgZlEjskSVFcqmd24vJLGr2RlCfIBaC
X-Gm-Gg: AR+sD13t2w83uyzOuICl4R6ofThorLKSifyC9SFv/AoNI9Gw7lKdZg7husacDLDUPNn
	QUdBue0CxvMygqBQLn1CzbITl7lkMVHGQTs2uGmiMMvb2U/8UfSD5QeuICeMwgOXRsGyxJzvZH+
	3VJObc38ZX7eo5WvmvtTY0OfQKceDEJtqkhjlbqk4l4PKzKZ3605bP3RIgKeEMqbJYDgyASXOL5
	Br9Fp3Lqq0+crAE9IdK67qksEqCaTu2oR8yLa6Ubm4zXTwYoLMJLUZeP8fDiuu6Tt7euzHs6tsR
	liGjkG4v8nfGKuC/hXrw5yXHdImwfp1Q+zqCJ0JBxE/rWcAtdNT7X5Wwt1gVojAxD5CHmOmX3uF
	PT6u4BZoSMlwvhFwIrqI/89N1g/KU1v2VY9o=
X-Received: by 2002:a17:903:24f:b0:2cf:c543:2c7e with SMTP id d9443c01a7336-2d74df5fa9dmr90023445ad.10.1787906650709;
        Fri, 28 Aug 2026 01:44:10 -0700 (PDT)
X-Received: by 2002:a17:903:24f:b0:2cf:c543:2c7e with SMTP id d9443c01a7336-2d74df5fa9dmr90022845ad.10.1787906650197;
        Fri, 28 Aug 2026 01:44:10 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f784857sm3673459eec.3.2026.08.28.01.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 01:44:09 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:13:37 +0530
Subject: [PATCH v2 3/4] PCI: qcom: Add CGC disable workaround for Nord PCIe
MIME-Version: 1.0
Message-Id: <20260828-nord-v2-3-18bf59d19d6f@oss.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
In-Reply-To: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787906625; l=2355;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=5x5TirLtHA0c0Rb9PKOOjbyhhs2shQyZ5pqbvgZXqk0=;
 b=IBotV43TcYpZpOfwsLPTB8XIkHg7+NNwBpXZCCtNFvB6kmG8fHVAB6hp3VkFYdr1DodhCbrZZ
 tHIu15FOJ/MBazQOqF4rdUggYLGaaymlDjGBZ/GECtR7jmRc5KklXoA
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA3NCBTYWx0ZWRfX/n+5S9IEPzV4
 RS8WNxPRNZWvdphnk4lCvKpl4IQ9sniuD1NKNRJZdzb0qvi5hM9ITHX+rg3XlsfO5NLIPhKI1yE
 pduE2Jc0mripHpP1bXZLwP8mFUBRvDHrM8WWWj9KgtL/13sSxiGaXh20CEuCEND5zTR/91OdK4g
 joYVq1YZY2Nd3rmZ8ylFEWADRSuOtpkF5/tX8YMJL0uBrgo40fvW4ipcGqokSfmLN6RAtw8+iZk
 d0FYBgsmF55thN1L/X5OqIgRMv7S9uq26aJFWd5jY/bkvEEnS4ZxYcgHrWmOuLYKmj3y9e2xN7C
 MsmSUcxuSGT9oDUYf7B0+yIzxhqemub5FAxuAC28LSL5l6x2R+iZTFNPgz2sLsMzVdAUkbKowQ6
 D0cYEe5o/+p/KE2J8Bil86zX09bTkYpBZOOy8TexLx6dDWPbeiRwOmsFqF1i0ki59NashiTa5k2
 J+RPX6iC2cL/cR8TTeQ==
X-Proofpoint-ORIG-GUID: WHssc9byAHvfgsEsu-rMxiNIB4Q0CR8M
X-Authority-Analysis: v=2.4 cv=HfUkiCE8 c=1 sm=1 tr=0 ts=6a914a5b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA3NCBTYWx0ZWRfXzMH7oGogqIhD
 2t96SbwLc5+tPhGVWSm4J5Mas+g3rXz3HPde1/uF0vTFsWP72gSEjay9EqhMIu23Wlp+jJEnfvV
 fSROdNm/mtLd/pipCck49QEOqFeAE8Q=
X-Proofpoint-GUID: WHssc9byAHvfgsEsu-rMxiNIB4Q0CR8M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_014412_266560_39E56380 
X-CRM114-Status: GOOD (  15.10  )
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

Nord requires a workaround to address a timing convergence issue in the
PCIe power domain. To avoid the issue, set the CORE_CLK_CGC_DIS and
AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.

The SLV_ACLK_CGC_DIS bit is already configured by hardware reset. This
change adds the remaining required settings as documented in
QCTDD11972446.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index b58a607b713f..b97e40fb7ec8 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -281,6 +281,7 @@ struct qcom_pcie_cfg {
 	bool override_no_snoop;
 	bool firmware_managed;
 	bool no_l0s;
+	bool cgc_dis_workaround;
 };
 
 struct qcom_pcie_perst {
@@ -1097,11 +1098,18 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
+	u32 val;
 
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
 
+	if (pcie_cfg->cgc_dis_workaround) {
+		val = readl(pcie->parf + PARF_SYS_CTRL);
+		val |= CORE_CLK_CGC_DIS | AUX_PWR_DET;
+		writel(val, pcie->parf + PARF_SYS_CTRL);
+	}
+
 	qcom_pcie_set_slot_cap(pcie->pci);
 
 	return 0;
@@ -1630,6 +1638,13 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
 	.ops = &ops_2_9_0,
 };
 
+static const struct qcom_pcie_cfg cfg_nord = {
+	.ops = &ops_1_9_0,
+	.override_no_snoop = true,
+	.no_l0s = true,
+	.cgc_dis_workaround = true,
+};
+
 static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.ops = &ops_1_21_0,
 	.no_l0s = true,
@@ -2464,6 +2479,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
 
 static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,hawi-pcie", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,nord-pcie", .data = &cfg_nord },
 	{ .compatible = "qcom,pcie-apq8064", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-apq8084", .data = &cfg_1_0_0 },
 	{ .compatible = "qcom,pcie-ipq4019", .data = &cfg_2_4_0 },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
