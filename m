Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49542C5DF9C
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 03:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sqfg50BhDG41l6xX6UaGbPzgQcCCwOY5OrVIfqP/x30=; b=bK2+IyjQ5snnRo
	jbmFcJwma8rtmgYNFZtCKAkMnK6laiO9whQm1Ns5AeyGWBHC9pqKeYvjiOPxHycWVtuNZa5KbExBv
	+RxF/mpeiljFh8KQDU00FuPDdxFaXTHzS9egIeBXbkUAC43PZntMN9kqRn8Yie4loFIoLV9a2nnXm
	l+tfOtd0U8nYGPA2sy3Oc+15iKLDgw9fi0jQNo0+BLOF/jeLzPsTLLBwI/dTsE5C5VtWH8l1sbEwy
	R26ufwRtmAQzZGrEhX4RD0gFa90782HJ+cjPjvDK9usYMuAvZmuc8dZHOA5rSGMSYuc166qKIRDgZ
	Hd/7rDaExBqmZ9GYP3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyi1x-000000006bQ-49xR;
	Tue, 25 Aug 2026 03:40:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyi1u-000000006aH-2hlW
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 03:40:56 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67P2RC9R3632576
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 03:40:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mghAs4DMl2QziDdbSxmizHokUORt+deiKrfMBKoEfws=; b=mPppTo/9avOwHGMm
	dKBrG/dYKB/oUI51i2f1MUnFSYAOGbtCUszwmZb1NvnGuV+9w4xlTxcg0qlBGSHw
	gAJb4eDwIqFo+oMPd2gbwYIJkt3WzIbrB3gzz7YLFiPb+1eJJkFS2x1Ds1TwteW3
	g30uLKm9qzeg9WHQ14QbohVQxOCPCuaHlils57Igf5F58DAMPMcIbXXiwKu4sSR5
	4RzF22c2fMbb6GU445H08QeQpmYDIXy5aqkCKeRB/IaJSI6BgsAmQ7qT6bCJz1Xm
	FJ7cb1etuFLpzEHu0KvDnzADi4N4Ui+ngpOq2jNLATRLmfTzzSTv1os5gyvr/jSp
	NnpiMw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8huf4d3r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 03:40:53 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3954def0191so7534750a91.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 20:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787629252; x=1788234052; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mghAs4DMl2QziDdbSxmizHokUORt+deiKrfMBKoEfws=;
        b=eKLFRD2bxWEhrM198fyTEobYih1Nkdbqe68rmbzji91rlLqs24TbxRlHWvRtzC2sYw
         dNoYjT5A4fzI+CPqYR7F+yIOT/lJD1uqmuoQshb9c25TfOIlsxLWWU8wOCT1JJE+p3JS
         TBdMhCTGqpp2I2W3N518Bz0gKZfoJc5dfYTTn9T/XkoMdw4QI5ls8I9ZFR19gNsapIzW
         TGkKzObABmOSkiebDR2ux0PeGcelZC7gs99+r43p4bPM700tdZSigsp/5xkYnIsy5G2P
         Oleu0JQZHPO1Iq/picXFL1hEoGjkxAObwjonDrkXMGnlpyUvskAkMt8v2piHtsNMpfsH
         M/mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787629252; x=1788234052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=mghAs4DMl2QziDdbSxmizHokUORt+deiKrfMBKoEfws=;
        b=gj//LXziGm2t2kVk35ZiACy5VzdAzC3DkWqci504hKyMMoKN5BCdfTsDO7YgK7tQxZ
         xGwg7N4B3vjntt4vzkwVnFNJhh4Rvhvzqm3ah1XV9U9hT9G0bllDBpN81OqY3UOSimp4
         TnwtZYC/TYnrMQLEPnUSNmo4JZhu/io86EKID9venY+WA33QDUFQO8oH61sLVAf/aK/D
         y/K87AdziQXi3SutHW09fSF2LzLS67HUcnAeu8rPjg6mzZf/jPvXm37GM89R1uqTf7nt
         zXV71TV0Dx6dS2A9gBIIBxfdb07kKiED5I8sHZmP7Jtyw+9iDWnLyfEMtOIfO+zRCakO
         Gl2w==
X-Forwarded-Encrypted: i=1; AHgh+RqDHMROA5SIcKabx7zCClu+w0Ei/6hCGJTJvFdss2EMiR5hDfE2Z0jb22mVq4Iven8txHJGzZhNxrs=@lists.infradead.org
X-Gm-Message-State: AFuF++l0LTLydlqHPp5dvkG4NaNvfTGaOq50YDD5iX3TUeH1B+/aINwo
	Gmq5CEMk886txJk5dhtmk9jE6CBpzSdf10mArhtn6OONECAArqrAoA0uO3Odo5/3vAimPkKsv2R
	2s56YlzYcPBses8kC00NpME6UOOU3cE4g54m+fX2OLE90bN3MRcM1LaNlpXh/z5N+bvnX
X-Gm-Gg: AR+sD10hYz+0+iG3HghnEJ4hSQ06sRF0HbVqboMnHDooJ9MokKkUcnBlvlX5Da/ntcm
	pKOh36rgbrUTzZGVr/LN14wqZe0g8U6Fy77zJE76i3fMGl7nNnZ+Ur5Eb21yfmtBTF4bDLPksBh
	HKcbo5PZNsjNL/711EuNW3jbXpZ2GhvnDV/dqzh/gv85whVdzxn13GEyszAxRHQT0wO+8LJ0KBL
	X2m162YTpnJgfeQZA45sQ5phwvG0Z7/PGn8Pk95GIJ0kDGHmHFYawhxWs328gkF5vppF5xyr1rD
	TI1ZdgSnf/omRO4VyXcG3LGYiEaTX5HAbiWHY3cPUAEoalPCMhQ1UNZlZWnm/9FHPQ+jyd5RjRS
	PfiBn0fqrKMBeW1/5KAFMLt/Ngp9jM004BHw=
X-Received: by 2002:a17:90b:1b41:b0:383:5a16:bd70 with SMTP id 98e67ed59e1d1-395c39f97e8mr51196098a91.16.1787629252096;
        Mon, 24 Aug 2026 20:40:52 -0700 (PDT)
X-Received: by 2002:a17:90b:1b41:b0:383:5a16:bd70 with SMTP id 98e67ed59e1d1-395c39f97e8mr51196015a91.16.1787629251637;
        Mon, 24 Aug 2026 20:40:51 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-327f91d36f9sm46440083eec.16.2026.08.24.20.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:40:51 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 25 Aug 2026 09:10:24 +0530
Subject: [PATCH 3/4] PCI: qcom: Add CGC disable workaround for Nord PCIe
MIME-Version: 1.0
Message-Id: <20260825-nord-v1-3-7c02f2b8765a@oss.qualcomm.com>
References: <20260825-nord-v1-0-7c02f2b8765a@oss.qualcomm.com>
In-Reply-To: <20260825-nord-v1-0-7c02f2b8765a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787629229; l=2301;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=pnUfS1D4ryHbnN3ay1WHwI/EX6dn6xIWedo2EUlAh/M=;
 b=A5+LJQ0DvKPTuC+Blx8ArneS2OlrX+eeCZcHQm7Vd8/jAHAYY8say82bXyMadyPhau9mYbezZ
 gO8kabdxMNTDZOjgajCNrJiECDYr9EwAn2LoPTA4K3vJwLP3J57E/VU
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI1MDAyOCBTYWx0ZWRfXx7XOlfu6D+ot
 ZPalpQhr+zrBH5GwFqH94C1yvWYV0yfGMQ8ythrfl11erjnURCjYiTR+nTiKK0/aFj8FRrohJ3T
 mezSZpWcSpaWrBDGX1gvCxweOH3Rhs0=
X-Authority-Analysis: v=2.4 cv=Wac8rUhX c=1 sm=1 tr=0 ts=6a8d0ec5 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: _lvVAtrGT7T16x4ifzg_9FGNxv6HjceP
X-Proofpoint-GUID: _lvVAtrGT7T16x4ifzg_9FGNxv6HjceP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI1MDAyOCBTYWx0ZWRfXy0xfwSbT2aYy
 F7j3N9rL8740MFSKncg/zUGvkqGf1mkxvJOn9FlhTDFsxwzc0OJIbdoojcMDNfk4gN9YHu1Mbv0
 poI1AuGji+QmEl0HspEG/Fm7zbGsRGuetlz99NfPjkKVret3XPQiMY5QntCvM5lJOsa4uW3pBdD
 411X0DC5M/0jGogn0i2T3ADTBRoDyzepjqugTh3nTrCLve9DN4FXUm7HwVj5NxHxkmD4vqYTIJQ
 aYzdKO2L0aMMF/j0tYDm6EKiHaFEOZANbgkCt9hs1p5zrj2PW1KuV+srpyeShRWqdjKOWn5IxiC
 HPR7R3holY3YjXGCyqhw03L+DDixD3GfakoX1KptYvlKIjg0nAd3g0D0F9Tkc0+5ISIz7lxeLmL
 1xYneyel6R6GSQcVDUeeeWHivHBJJv60k2upNFNWTfB+2DUL/A8rhYSGbLkET7d2owpYXepbQTe
 05/3GzAEqh5Df5/tXEw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_01,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608250028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_204054_814416_984EDC8F 
X-CRM114-Status: GOOD (  15.00  )
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
index d8eb52857f69..9fa7ab47c86e 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -266,6 +266,7 @@ struct qcom_pcie_cfg {
 	bool override_no_snoop;
 	bool firmware_managed;
 	bool no_l0s;
+	bool cgc_dis_workaround;
 };
 
 struct qcom_pcie_perst {
@@ -1073,11 +1074,18 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
+	int val;
 
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
 
+	if (pcie_cfg->cgc_dis_workaround) {
+		val = readl(pcie->parf + PARF_SYS_CTRL);
+		val |= CORE_CLK_CGC_DIS | AUX_PWR_DET;
+		writel(val, pcie->parf + PARF_SYS_CTRL);
+	}
+
 	qcom_pcie_set_slot_nccs(pcie->pci);
 
 	return 0;
@@ -1604,6 +1612,13 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
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
@@ -2282,6 +2297,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
 }
 
 static const struct of_device_id qcom_pcie_match[] = {
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
