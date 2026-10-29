Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E0A60A2608
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 06:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=XgEO80AZ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=NVzaCnig;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gu/bU87T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=z8J8YHfchAr6I/C6RhikabN6vWFi3/kQnNV+IQU44VA=; b=XgEO80AZ7FBV4nXlsv9pbVoG+1
	m5icMqjQrttbfiIVeGQXT22YqJhcBM3VQ0lnmLI6cHBjZdYjSV99iAgG+fEpQ3NVMj3OdK7xA7btz
	rpRn+IBhDJx9r71OmtLhYnONUzK3l/scUM1CwPv4Q1IaI6/B+wS0wk30BwroT8K57jTIDWlEOh4Ih
	rel18pOmrQniJebYPKCgZXopEg+74z/CjuPBCW41CJSYFFfjcWaeichFmmWi1bXJ1gRb+uMy/o4j6
	tXqh0n1shufewCIwPum6Iv4HuW2eVVVDg5dRHtrE3g04Lck2ldDyDOhInF5YNk1f7JAV4CGSs31Gr
	e0EAKYZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJLn-00000008RHd-3AE7;
	Thu, 29 Oct 2026 06:10:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMJLl-00000008RH8-0abB
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 06:10:58 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69T5GpPg3341048
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:10:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OqkXXGQXY2u3txgof/2HIibvpgoKdKYBIXMTYdCD0lg=; b=NVzaCnigFFTiqhbK
	TjBOXbFdu2y/w5TWJJIMGkE8KGyH0dqiKBL2PKDAQ31g9hvRhEhbC/fzR6iiqVL8
	156LSevJkcyUj2C8Jg9BEUPDKChFf0VLsQgXJo09S/nUC4MqrTjxlj2ChAfpy3Mj
	pWXn0RmK1Dz0kH1JwiDy6PUbPjMmvJ6I2dmLliGpYqw9ry7s+FUes9og3BQsbymw
	UdKwAVnn8wove3T/Ly0Cz6gvOikhSDNSXa5ZLChiZnArWAy68HR2FUW/fH+WJdwS
	bynmozBwb0Q+BqpLDpb7u7dQar/nOBOq02CAlhzsgFrw7Kvzc0GLlW5eYqhPzKTp
	D+mE2w==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hkut3gyag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 29 Oct 2026 06:10:56 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-36a3451ea93so499712eec.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 23:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793254256; x=1793859056; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OqkXXGQXY2u3txgof/2HIibvpgoKdKYBIXMTYdCD0lg=;
        b=gu/bU87TdE32XnsY2otcY61Lll2NnBXkfev2DrEMOeqhU+q2k5CJi+EV12LT1Ud54B
         TZFGZd4Hza0V3os/meQ/iCURgeyBCAUCQ/stXXCoMLNjrllhFxtodF+BF52T5U0igna2
         o/JMPSygvQRQ6LKO+aDeIEMDWGWnMEmGJYqlrH4HE4f1+/TjBb1FILj5KvkeGVYv5dPG
         50S4Dpi3JkB4Tdkv9omQ/vVIWo2HUH2DRjIIAF8kMXaJTmlQe7dlIBCFBhgd5vXhLu8f
         coamHT1Bf7Kz/Y0KPkawySrVeQvcrKzFq9eIsgTUOmdYqTRXfcrw8+l5dgYY27PL3iRO
         eyWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793254256; x=1793859056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OqkXXGQXY2u3txgof/2HIibvpgoKdKYBIXMTYdCD0lg=;
        b=ZZ8ezRDu/TQclQ6ABcLFgAdR1YxiC1CZmqwnyttHEug+4B2O+K8JvHhPugyBcjP39i
         2q6KqMc05wlGa5YUgQusCV1JVK+Hk17Na79hY9Y0lUQFuE9ozgvTBWMPxfehNGrSjLDs
         IakDcCCsbtm/q8VymT8wiuFkr1CrY83qgfUJ6eNvyfEj5QnhLHsAMnWo6HH6rS96/pBI
         ruG+2uK8ugUKEmkLvJiHpURg0SAyoZ4RTgJWtd1kUohPvoZr0fybeXX+lYY6WgQfy3oD
         bneitAD0k17mxbtSstEeyJe61HpLqSkUyikwNihpNIYnHJY/rBvzjrujGHD6vsyz/5Mf
         DfQg==
X-Forwarded-Encrypted: i=1; AKwUvBxpz6lWtOSKuKPonYWBRDGkFs9VFwhLza2ubqZG/a59kFkNAPvuVB37uVXMPICMtbOR5tuIsXHZJzU=@lists.infradead.org
X-Gm-Message-State: AFq9FYJjg/bl8fdNSV2+C85hvNktNe6VmWh+M4qFg+9p47OYveil8aUh
	ZpdMAMEUcK2jLfxAi/DemxXlDt/NpFO0sdrJf+kHsg9UBG+cyzz6ck4HGd6umoeoK7gKEQDD27o
	EmE4k5kL/RHZNKQXGYC1rPc21mHOFOMQNYXIYB9F5JQbihp/9I+y85UWEOicO415E9mHU
X-Gm-Gg: AYBFou3odwhfamej1UfZ8Au0jc5JTHKo/TdkMpWrF7FZRLpQ8MZUlqH1X/BpwgbTWNp
	7+YfgwAyhluVmyraTuvs3ID0ibRjerMra1eFkea8Y8tHczOct5pr+lI276xxs/ujNaea6fHh/dj
	I30hKT3r6U841I+6PO/vPEaK1uOkkUJYXR7WP1tSCSt32RQh+7rglqFqCE97mnhgscWz/xDo5sO
	qOoRkKu9ztFPihJje0LXPnuPXQ9AacevgNq+cOOtSu9zsadr5zOL/zy6TX020Kwd66inan0NTto
	SjFPsOTpaLtaM5agA7IU2cXaWpmo17vmsi6gpudF1N1k/gLCeyrRCnq7S950/wHkEMPn1Olf9cv
	v2RN5Se949SlyaU494k9bwxTZF1drqUKDUShzVDVl/KXsfvP5kFcnmU/xQd3UPdDQmwpg1y0haG
	UR1jwHjPc=
X-Received: by 2002:a05:7301:618b:20b0:360:e2e6:f849 with SMTP id 5a478bee46e88-36a20138550mr6987951eec.28.1793254255591;
        Wed, 28 Oct 2026 23:10:55 -0700 (PDT)
X-Received: by 2002:a05:7301:618b:20b0:360:e2e6:f849 with SMTP id 5a478bee46e88-36a20138550mr6987923eec.28.1793254255044;
        Wed, 28 Oct 2026 23:10:55 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a239a2e29sm14038935eec.26.2026.10.28.23.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 23:10:54 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 29 Oct 2026 11:40:17 +0530
Subject: [PATCH v5 2/2] PCI: qcom: Add Nord PCIe controller support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261029-nord-v5-2-1a13c214e89d@oss.qualcomm.com>
References: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
In-Reply-To: <20261029-nord-v5-0-1a13c214e89d@oss.qualcomm.com>
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
        shengchao.guo@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793254236; l=2732;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Lw3570OqxcQHNzId2qfQIDjwIX3tpSz51KERraFXVRY=;
 b=q4A3SHVzw8pXcYpPKZ7EfYTFSjXX8WJ6IUqaPSCknJETuUzr1JZ94wS4sHh3iDD/HxZbR6arr
 dPjsM7cs6csAC4krwRmQ7lF7v0jApg4hzk5p3bmRMqMK+Q9fKHq1uHx
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfXyKUjBaQYH+QL
 16Pk9Zxe5E7QYqElMnuVDL7Uq7/t6KpkQFigUby7Q9LNWZfPIts7FT7Id+ee3ecAJUjLDPFAvxx
 tzXnl0JH4NwxasOFupFN4u47FAl93wY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDAyMyBTYWx0ZWRfX8nZ1ege65pnU
 c7ek8tyTLIYTB6QBncWvmTKxQa9bRylDA8bWWs0iebCloNLwss33m07BhyAO8T8i7o2RBgfbnEH
 8pcb4GKqXRuFIDl7+5GAYn9kxku3gvugkTZHn819fDrYIl7oXjucLH9V7wKVCjJwn23aq8MbeD/
 vYLeIqZsqqBpZ4WFyxLXxyM2MoKOvk1/tU6qGNv5mznhikoTXLCYAPqnOekoJAbxJquK6GfcgGu
 ONm2IK+FceexTYqT7XcK/tSA47uTJxwumOsyNsYhe6KVF32kdIQfOAH+4jVCJTfsbfvBm9wIFWx
 iZkVhNgpG9FeZ/k1IVF3M5sFRPEvoinuxmgHLcFUJPVxX41QGtBSGjKJ3GMwcs6qPEEvUr5w+MR
 evS8+bmXLnI4ehtN4zVfTbpnE9Mi6KnWfQ0QwA07pXs4L/TCflRjewFXORmGGxFyGhurMAF7PTd
 MHKb+eFBEkCX5REtLYQ==
X-Proofpoint-ORIG-GUID: aVviWHroUZ3PrvwkvE5mTJfikTThPloN
X-Proofpoint-GUID: aVviWHroUZ3PrvwkvE5mTJfikTThPloN
X-Authority-Analysis: v=2.4 cv=HYSB3SE8 c=1 sm=1 tr=0 ts=6ae2e370 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=fhppCylznReUS4Xj7DkA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_231057_217517_5106B88C 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add the Nord PCIe controller configuration and the platform-specific
settings required for correct operation.

Nord requires the NO_SNOOP override and L0s to be disabled. It also
requires a clock-gating-control (CGC) workaround to address a PCIe
power-domain timing-convergence issue. Set the CORE_CLK_CGC_DIS and
AUX_PWR_DET bits in PARF_SYS_CTRL after controller initialization.
The SLV_ACLK_CGC_DIS bit is already configured by hardware reset.

This behavior is documented in the private QCTDD11972446 erratum,
which is not publicly available.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Tested-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index d903f10211c2..c62abfc7a446 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -300,6 +300,7 @@ struct qcom_pcie_cfg {
 	bool override_no_snoop;
 	bool firmware_managed;
 	bool no_l0s;
+	bool disable_cgc;
 };
 
 struct qcom_pcie_perst {
@@ -1138,11 +1139,18 @@ static int qcom_pcie_init_2_7_0(struct qcom_pcie *pcie)
 static int qcom_pcie_post_init_2_7_0(struct qcom_pcie *pcie)
 {
 	const struct qcom_pcie_cfg *pcie_cfg = pcie->cfg;
+	u32 val;
 
 	if (pcie_cfg->override_no_snoop)
 		writel(WR_NO_SNOOP_OVERRIDE_EN | RD_NO_SNOOP_OVERRIDE_EN,
 				pcie->parf + PARF_NO_SNOOP_OVERRIDE);
 
+	if (pcie_cfg->disable_cgc) {
+		val = readl(pcie->parf + PARF_SYS_CTRL);
+		val |= CORE_CLK_CGC_DIS | AUX_PWR_DET;
+		writel(val, pcie->parf + PARF_SYS_CTRL);
+	}
+
 	qcom_pcie_set_slot_cap(pcie->pci);
 
 	qcom_pcie_init_outbound_blocker(pcie);
@@ -1725,6 +1733,13 @@ static const struct qcom_pcie_cfg cfg_2_9_0 = {
 	.ops = &ops_2_9_0,
 };
 
+static const struct qcom_pcie_cfg cfg_nord = {
+	.ops = &ops_1_9_0,
+	.override_no_snoop = true,
+	.no_l0s = true,
+	.disable_cgc = true,
+};
+
 static const struct qcom_pcie_cfg cfg_sc8280xp = {
 	.ops = &ops_1_21_0,
 	.no_l0s = true,
@@ -2586,6 +2601,7 @@ static int qcom_pcie_resume_noirq(struct device *dev)
 
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
