Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED3A1CA0EEE
	for <linux-phy@archiver.kernel.org>; Fri, 30 Aug 2024 08:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C2+6tDdY7NBl9QVC5Tr1EyGH/ktG1jrWhFFl5/rdAVc=; b=g73oiEhUQX0ct7
	6bsSaC8DDnvwtxZ/N5rm2fGeyVVF1pBTusjXAvyibz6pCgtBejvFNtKsalqt/O6bDPml8XFHin7oM
	iggN7R0nXsye9WJGF8er07xkILNrx28G7A32Rq4cvXMXEVfgQp4ZSHD34gU908Rvd64xSWVqhsi/9
	7aFsOt9DtCuw4sxWFLva5FRqwvUHQroC9cstUIYvDHNlEEuUhUT6B70KwnQmqMVO6k/3RJow1GHw6
	p9nbTKi7mvi2w4dlBEkMwIH8NS9sylyVAiuqjhXehI3yFXTcncfPEcb7C+1TefsnLNAey9pYEE+To
	jM1+dv8U+DIDXt4Ox1RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwmY-00000005HxR-1R4v;
	Fri, 30 Aug 2024 08:14:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjwk6-00000005H5N-1kK4
	for linux-phy@lists.infradead.org;
	Fri, 30 Aug 2024 08:12:28 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47U82FKK014817;
	Fri, 30 Aug 2024 08:12:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=WzhEQEwjdllwj0vXOBom7x
	uTc7Ztg2B5E/X6dg14QpA=; b=f6gk6D9WwtGHIt5gkp9TZb/NKW/a/XmVQI1onI
	jq152p+AlX0oOialE1DmqF/+NkUa6z9dmiPJhLMN3QGZaGPippSTnwtLpZmoZvg6
	1xvHWmfabPu9GBIBCbpktvM2ASvR8mOVKmCEQi7uf01UoirwxMnC03WlrteDupL2
	ao3snsyT+uvQJnZni2YuHoTDoFKQG7np+4tsDn/hY9B3OiguwOPNOGL4uNWNaXp9
	TAXnaYuJBHR4562m8wSypNZBRIEri+FJ6ya2QDUbKRyjzWsj7J8oiDULT0v35qfm
	rPM7oRnd9w7PxNfMQz1AhWyMaTypqahK7L2mriOs0F3/mqLA==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 419px5qsyv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 08:12:10 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 47U8Bqr9006343
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 30 Aug 2024 08:11:52 GMT
Received: from hu-srichara-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 30 Aug 2024 01:11:46 -0700
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
Subject: [PATCH V3 0/6] Enable IPQ5018 PCI support
Date: Fri, 30 Aug 2024 13:41:26 +0530
Message-ID: <20240830081132.4016860-1-quic_srichara@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: q7F81tEDt44XnZU3hI6WA4efSH2nwZDP
X-Proofpoint-GUID: q7F81tEDt44XnZU3hI6WA4efSH2nwZDP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-30_03,2024-08-29_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 adultscore=0 suspectscore=0 lowpriorityscore=0 mlxlogscore=887 spamscore=0
 priorityscore=1501 bulkscore=0 mlxscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2407110000
 definitions=main-2408300060
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_011226_598800_9BA49184 
X-CRM114-Status: GOOD (  10.84  )
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

From: Sricharan Ramabadhran <quic_srichara@quicinc.com>

This patch series adds the relevant phy and controller
DT configurations for enabling PCI gen2 support
on IPQ5018.

v3:
  Added Reviewed-by tag for patch#1.
  Fixed dev_err_probe usage in patch#3.
  Added pinctrl/wak pins for pcie1 in patch#6.

v2:
  Fixed all review comments from Krzysztof, Robert Marko,
  Dmitry Baryshkov, Manivannan Sadhasivam, Konrad Dybcio.
  Updated the respective patches for their changes.

v1:
 https://lore.kernel.org/lkml/32389b66-48f3-8ee8-e2f1-1613feed3cc7@gmail.com/T/

Nitheesh Sekar (5):
  dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
  dt-bindings: PCI: qcom: Add IPQ5108 SoC
  phy: qcom: Introduce PCIe UNIPHY 28LP driver
  arm64: dts: qcom: ipq5018: Add PCIe related nodes
  arm64: dts: qcom: ipq5018: Enable PCIe

Sricharan R (1):
  PCI: qcom: Add support for IPQ5018

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  35 ++
 .../phy/qcom,ipq5018-uniphy-pcie.yaml         |  70 ++++
 .../arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts |  37 ++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi         | 168 ++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/Kconfig                  |  12 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 346 ++++++++++++++++++
 8 files changed, 668 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq5018-uniphy-pcie.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
