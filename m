Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63132C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OU8nlwSTXLSAAoxwpZYZv0XSYR7WTyMQhp0JAJeX2k=; b=Pt+YKsd40fOoL/
	bJAe4woHKUjLLfBiVMqr3cHaN6Bo2pnDJAujgNsTUnuDM12Xa+45330IvK4dvbdbgSgP3y3DJ4lA9
	XOoRL8aj7dAO0oxiAQDOeKWUnHPIDVLe8wP/DGqCvFcB558+THe0PmWmoa+c9FlaSZAspwhJBI3j/
	GF86PJOD5BWMXoXniiHYPeZZfMmXwDVZFQE86ob7iPVJgL4mFg3LqkKoBruMKN9dJHCcb7likulGz
	9Rma9aRGayRac7FBjBaVUNSoRgu1HwbxLV69pA4u4Wv0zOzJQ6tdPFZgYuxhYZEtwiZ+2vm0Naw1O
	GWR5iD4RLgwnB2JQfXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GnR-0000000Bcgk-45cZ;
	Wed, 09 Sep 2026 11:48:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GnO-0000000Bcg8-3GdC
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:48:56 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 689BU1TX1723057
	for <linux-phy@lists.infradead.org>; Wed, 9 Sep 2026 11:48:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3DAXnd9GeiIwiEmnBfwIbAz3fsXOFuF+4UTK6tCPQKc=; b=J6wXl+raPUV4eDRb
	rf8ALx+JSPH4XzgixCp+VzdxXoQs6crpzX7G+y8ttp+ZyKlTyNukOK0zzAHQzoeb
	gDvYADCXE1OC/oV3dAUk1E4G4doE0TKRqQPa9lRyqOMKxOaqJn1oXWx5Kro4UEPO
	cYq6b7NUWFZghBlW3n94cMCUHU5s6+lm9mA+gqQ4sl7UqU0zZfAUIVzq81+SN/3B
	yDhkoPD20lC2mx4Oxl1E1WuGrT3FNCPZlE7mPjTFxkMJzQ58rT+zHsE40SzL+xiX
	RhlNLFMsV/0opfIlmo+BDGzUM0Ttmzzgf3PbQvBDuwscipy5RHjSI5+DXxqGZyvF
	Y5vcQA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gk5cnrcpx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 11:48:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cc1b6f65dacso6475738a12.1
        for <linux-phy@lists.infradead.org>; Wed, 09 Sep 2026 04:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788954533; x=1789559333; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3DAXnd9GeiIwiEmnBfwIbAz3fsXOFuF+4UTK6tCPQKc=;
        b=CtNvGXKF23bGZf0gydjg39Se3u3rhctNlnUkSTzhy/Q5FFSBUiNnUtIDkHcW4Z9S8k
         ka0UeksMvF8eY0+oVlpkTBbaqzfjG7gKfJikdLNnPvkey/mEHi2/69kjOsHbe2edhsR3
         jZU9inxUaQ09Xg0MPho3qhxxU8aB4tLja6ImkfUXsrp5BFwXtJETOPpDvIjgG5Jcv3cf
         12wxmkw0pDAJfC1hszEI4LC/qmzqD9vLOwhBuXsLSyiCxZTLP1d7FD+jxvILjvJgFI8l
         QT2mTaeBNsohCg3bJV00AFij99NZGkkIXbx66XmRE8Pzh53ygDqBOeWeI5ASDej0DliC
         purw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788954533; x=1789559333;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3DAXnd9GeiIwiEmnBfwIbAz3fsXOFuF+4UTK6tCPQKc=;
        b=aZ8B5uR6SOx69Y4QzMCFPe1SyRwiaj9onnIuaO8Ao4F/NpHWnNqGsCPfDKaX32QRIz
         xFawiLiUUiw3OxZEm7oKYu5dq38eCDnqmADmf3iZnt+NiyjlRHzYtTasCqpgiCCk4uho
         S9oZLVrYvBoxVbmPcHCAWcU/8mg0Ryh9oQadmup7D+Jbo+KFe5H5s4YJbyBMz9QybSNP
         dm12fWxOWF306QA74KV/GkXJFJjUgQUis1KLyy1sbm62j0TeEJP6QZirN2+beQRLWDce
         FVoaYHvZ93pxR9Fo/xA4NOfDXzB88qowb9OlOnnOywDvfN5ANamqz3SJq0OTFJepXfh/
         YZbQ==
X-Forwarded-Encrypted: i=1; AKwUvBxoBy8g2W/1OaoCavoYhkBs5cIQwmFTkWdmEYuJoo1djYE3xnWqVPR/xGRH/aGc9e3BBzDutjKwCPU=@lists.infradead.org
X-Gm-Message-State: AFuF++mMoYd5LVhk+L7W1IiAiYTF7UiUzARps8fR2nuzIlsEyYG+wPkq
	GFwdt8HhpIhUXoSi7auuchL2WPmJiR1vLqKNgy7o7NbUHeY43ErayTNPb9sv/GY2Axfcp14b4+V
	Ce5zBbLuOSWD1FnFreg7le1z6Xw4vJhKP/YKguXZrW4y1GR7UfA4qZEd+2jPHrUcqtxps
X-Gm-Gg: AYBFou2Uk0AkEkCukxB5mLAV77IcLB1Cht5g6plFNCarh5PY01RGFSvAXz/8lZv9Ocy
	SfkpZZ51LZjz3QFBkPj3rbYKmJ3NbbAXC+cSmWKK0iC5cEDQ9OyRYTu2Km3UkGsSXmPjXF8LMzb
	yR1v+Z8dLtPXiSxMDOWM2hO8CGlIO1KngK3CX2Pe+GcaufY6KyKDKwtp0Ye7HSfztS+uS4O2faB
	eN2LXvVzvXMKBJnnANTL/LEmlR8WJS/LTT55kLCfJ0IVlTAYfpQzDEx+XoyDabu4eAP3MgfLTiq
	ZvqFdsRFYfQ7QDLHcQTX2/R75Ipm2R2BLgogNgeosIuXzsgMJwh/Hu/7MM6K2LBAbKns56OSiRD
	fM8xjSAQXVSae9fL1ZrFjyaaQWY77V1Q3DhI=
X-Received: by 2002:a05:6a21:e8b:b0:3d1:c99f:efbf with SMTP id adf61e73a8af0-3da3a11ed0cmr57825835637.14.1788954532573;
        Wed, 09 Sep 2026 04:48:52 -0700 (PDT)
X-Received: by 2002:a05:6a21:e8b:b0:3d1:c99f:efbf with SMTP id adf61e73a8af0-3da3a11ed0cmr57825764637.14.1788954532148;
        Wed, 09 Sep 2026 04:48:52 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339b608409sm50156857eec.21.2026.09.09.04.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 04:48:51 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Wed, 09 Sep 2026 17:18:18 +0530
Subject: [PATCH v3 3/5] PCI: qcom: Add CGC disable workaround for Nord PCIe
MIME-Version: 1.0
Message-Id: <20260909-nord-v3-3-b0a82721c547@oss.qualcomm.com>
References: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
In-Reply-To: <20260909-nord-v3-0-b0a82721c547@oss.qualcomm.com>
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
        linux-pci@vger.kernel.org, shengchao.guo@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788954507; l=2416;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=rYPf+uUwt3u7xdZ5YdOl1l1hU7kXwIXXpn48y5XM/U4=;
 b=OW2v2+NG6R3Rs49rBH9Sb6H/Aj7MnXJ1eyRAzgGGDSvRTMXMGhQW3QapQxZW2ZW1JVT2nzY1q
 2urgu8Xx2zNCCFaOSl4S+j7hKio1UBh2hbgJaHLQZECdoPmb0uUVGmr
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: vdMuj58UAxrpq1ukYvjVV8M5Mrb5ERhL
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfXwxjNPXjZQ1vl
 JkPdHgzZLB9CCr85+ZvZfALvW0jeg8DQKL7KvYXXWBhYmbv2EWJ0Y2T0fyYLQSkUi2V0LLH1DMA
 foYI6mOC1VCaBzbei/F5puMNJld79Ow=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA5MDEzMSBTYWx0ZWRfX7kMZllY/YWgg
 45JHLT9FH5NXlFv7w1v+Eta4JKP1hsXIGJ6Owe85X/gkKj686xiqQmd6sXV/pF56vCh35qf4LHj
 EtnZWBp/2NcGha1L9HMpZDSSHrLifEpyXaJ/VRclfHyABN3WgpFuXD4daVcAOnpZfxmeVgU37Oj
 PmzlXJ/jycwnRkrKj0IEsVTAO6Ou/RljQfATdzOJUzDbIdjZPy53TY/FutlDFQgZ6Y2V6/pnJrd
 ddN3oLWbYA196UNsjrur6LROER/g6ypYmVrt0XyreBMzsknWw1SIGyankFGL/35hnasdeWsRCIY
 TApI8sZgl+M5C3q9vNY6wSUblSAiZ0Cvvg3kGFPeBM3C1gapW/2h7psLvzw/J8oOZfiQ9xBTvTZ
 N3A/heV1s+OMRihX/y6JKk2T9jUo7q98JkMBmTMBnfGJR5vz8TA4okCK2aG4lXgNbzOY8jTDZLr
 0Pno/w0QvielzBHBPnw==
X-Authority-Analysis: v=2.4 cv=S+jpBosP c=1 sm=1 tr=0 ts=6aa147a5 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=kXhGf0cxdCgfIYue-YsA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: vdMuj58UAxrpq1ukYvjVV8M5Mrb5ERhL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_03,2026-09-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609090131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_044854_938793_4B9EF6CF 
X-CRM114-Status: GOOD (  15.11  )
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

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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
