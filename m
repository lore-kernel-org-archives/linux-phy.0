Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57BC0C5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 04:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fpNS/P2b6CmViXXvJSoBxtzCGMFoV6hynQirUoz0KQ=; b=wVIzhxk6SP78Bq
	KaLNE/TuDJyaCZPr1a60QWgt3ClGtq9zPFGcYoQupGYdmGH0V6OhfW+dVsTAJeS9si9ec2ahUp3VQ
	43P0k7M/NqU9P4iAUPvoH5dx54HAnv+MYfkITmZpJ8zVFkM8GOV6MhYgqOj7FiBdPisusWWfv4QaN
	CdoTTcGR9PseZH5NEyq8ggspyr0RUb7cjC5aA4foOfwGtZ+RJUbjezQVa+zVjTK3RN3ZDwsncnkqW
	Tgbt1zsdiuPpqiMz73TQ8BRXqGw9idNtWITe7Qkh2wDTGm5VQnL4ixGLM1AfKbJbqXMZxA6pPiFjX
	oCy+s5OIzOkqewLrMkgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sioIM-00000009mxq-48V5;
	Tue, 27 Aug 2024 04:59:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sioIK-00000009mwB-1EvT
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 04:59:05 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47QJHT2d024185;
	Tue, 27 Aug 2024 04:58:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jHB9yk9VaKLj8o1RY2pT6NEb5yxM0s2Bi/4RN2ueWyw=; b=pI+OB1lme4v0EhZI
	/h4DqVh5IepbIAgS6hpG00ix3cTAVkEaYqp1yL+KEXEQzAfiXs4vPIBvwnC0x5p/
	Fk0b7sdZWDw/jWJJ/IQ4uXk3ExQrn3t8E5AgvpKO7NxPD8JbvjlFQtkHf76PZ1zv
	pvFP+GF8DZu1y8bH6O1xSGvu5msm2KPAHRIBar5RwvW6DNRltr6TanvG76tMfgJl
	4xflew5WZPdHM2E6WGlwQnbzoCFgQcXwyWoQh3Mhp9CgagG4cttVJp/JpDTJ2jb4
	VsjBDY5Ar6Ge/G2gzS8FkM3n2411Hcu0ehmIdXsf4HW8BvIgWfQB8sPgC8UAUp6T
	F4KV4w==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 418rbxaaqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 04:58:57 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47R4wtC9028644
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 27 Aug 2024 04:58:55 GMT
Received: from hu-srichara-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 26 Aug 2024 21:58:49 -0700
From: Sricharan R <quic_srichara@quicinc.com>
To: <bhelgaas@google.com>, <lpieralisi@kernel.org>, <kw@linux.com>,
        <manivannan.sadhasivam@linaro.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <vkoul@kernel.org>,
        <kishon@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
        <p.zabel@pengutronix.de>, <dmitry.baryshkov@linaro.org>,
        <quic_nsekar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <robimarko@gmail.com>, <quic_srichara@quicinc.com>
Subject: [PATCH V2 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Date: Tue, 27 Aug 2024 10:27:57 +0530
Message-ID: <20240827045757.1101194-7-quic_srichara@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240827045757.1101194-1-quic_srichara@quicinc.com>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CG0lggzUw9Qy8DAvZwHZoq4UbsbXlpnY
X-Proofpoint-GUID: CG0lggzUw9Qy8DAvZwHZoq4UbsbXlpnY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-27_03,2024-08-26_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 mlxlogscore=768
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2407110000 definitions=main-2408270034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_215904_476110_42850E44 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

From: Nitheesh Sekar <quic_nsekar@quicinc.com>

Enable the PCIe controller and PHY nodes for RDP 432-c2.

Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
---
 [v2] Moved status as last property

 arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
index 8460b538eb6a..2b253da7f776 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
@@ -28,6 +28,15 @@ &blsp1_uart1 {
 	status = "okay";
 };
 
+&pcie1 {
+	perst-gpios = <&tlmm 15 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
+&pcie_x2phy {
+	status = "okay";
+};
+
 &sdhc_1 {
 	pinctrl-0 = <&sdc_default_state>;
 	pinctrl-names = "default";
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
