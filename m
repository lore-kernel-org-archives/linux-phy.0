Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0FFEE7544F
	for <linux-phy@archiver.kernel.org>; Tue,  3 Oct 2023 12:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2VM6keX/D7B1GnwMuVTMx/0CA4h9p9hShQshwlowYbk=; b=GAeUZTQ8+5dUn9
	T52AjDkxaGhzIdJG6sB24SkEZ7Fi+3CGM5tvh3+WjUCXR3BGiVpNBw/bRkaLCDKePgixZEarAerRw
	5457majMyKUV7+Z+cQUKx1FvzICa93LfFms0JURIBLIs/XzuP7GhHAt40TPJTHuw796tIKZiPtHWv
	UDABKFqKcUuA+hQRv7v/osaU2gYazMVmjvEA/2WGkdI1AepahawpZXqoiL44G5ui8/gk8dIuiMSOK
	bpSRnzW/DHPMD17biJXQ42Px03szCkcdy/D9GyW+Y7JLSaS3ZhgQ5idRpe/WsSfDIsyswcoSagnbE
	Ry43UPyesbVGeL+uDl1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qneDu-00EaUN-1l;
	Tue, 03 Oct 2023 12:09:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qneDr-00EaNu-2e
	for linux-phy@lists.infradead.org;
	Tue, 03 Oct 2023 12:09:57 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39372KJ0004142;
	Tue, 3 Oct 2023 12:09:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=MBmuLVJ5qof0Fy+YtKzcWq7CgW3rViLRkagA6sXYRR8=;
 b=d5OO1Ysy47Cjkk5bYf3gAIe90InraCI2GklfHm/Tt3dg15DR1jF5QvEcDlHaMoW3hgmn
 Ja1Y3blsUlLFSTPi+jJtnzorW77sVz3GiOnTxBEM+irGD/ss1ZESC3Dkk0iBJGjpsT88
 qIDJXQ4MrPlSn9FDdvLSsEgA5yvOOLh/deaGKmkVsbiHyq1iDNMcxNAkLp6Rhem+p267
 tqgkYJC0+zVLtDBISS6JLePTzkVSSYpBCrATsbqxEvEvr7x1kSaU7Otnd+UvMTEfpiPo
 nec3q9b6I7L2N42n8+NxCc0sMNQd+Ivrvdy163DN6Zv8TtmQabUfXETLW+8+JJye+jBj 6g== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tec2enxdq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 12:09:14 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 393C9ChU028004
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Oct 2023 12:09:12 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 3 Oct 2023 05:09:05 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lpieralisi@kernel.org>, <kw@linux.com>, <robh@kernel.org>,
        <bhelgaas@google.com>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <vkoul@kernel.org>, <kishon@kernel.org>,
        <mani@kernel.org>, <p.zabel@pengutronix.de>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>, <quic_varada@quicinc.com>,
        <quic_ipkumar@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-pci@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH 0/6] Enable IPQ5018 PCI support
Date: Tue, 3 Oct 2023 17:38:40 +0530
Message-ID: <20231003120846.28626-1-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: XPjrhI3_Zud6qJ43SLbt2XB6YprnP2GG
X-Proofpoint-ORIG-GUID: XPjrhI3_Zud6qJ43SLbt2XB6YprnP2GG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_08,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxlogscore=538 spamscore=0 bulkscore=0 clxscore=1011 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310030087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_050955_979577_B8D9C529 
X-CRM114-Status: GOOD (  13.84  )
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

This patch series adds the relevant phy and controller
DT configurations for enabling PCI gen2 support
on IPQ5018.

Nitheesh Sekar (6):
  dt-bindings: phy: qcom,uniphy-pcie: Document PCIe uniphy
  dt-bindings: PCI: qcom: Add IPQ5108 SoC
  phy: qcom: Introduce PCIe UNIPHY 28LP driver
  PCI: qcom: Add support for IPQ5018
  arm64: dts: qcom: ipq5018: Add PCIe related nodes
  arm64: dts: qcom: ipq5018: Enable PCIe

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  36 ++
 .../bindings/phy/qcom,uniphy-pcie-28lp.yaml   |  77 ++++
 .../arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts |   9 +
 arch/arm64/boot/dts/qcom/ipq5018.dtsi         | 186 +++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |  22 +-
 drivers/phy/qualcomm/Kconfig                  |  12 +
 drivers/phy/qualcomm/Makefile                 |   1 +
 .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 336 ++++++++++++++++++
 8 files changed, 663 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,uniphy-pcie-28lp.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
