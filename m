Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4E2D43FF0
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 08:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sraGKSrh+S4o11dd5E+22XBrmJZXigcSlnF6k2vFysQ=; b=HQ+LFq5aiqSpfH
	MKpQ/IMUyy031bgtCTrURV7LSfGiaEBTWGh2FpYpc+zLBCP/JJZNsdTLlj8SVFzq/QX3/mP9EtrXL
	Kv7Sq/2WTmwdZqEeRIJVqIA+5+Xl4PzzX6NqRV9g9IiLlVnXRXjciuzpwpYN+cLElx2tkwB7WRh/h
	Mcd709Pn2jG4cB/q4FwzGfXG97QLt3zJLLKS0QhvJmrfO+WphT7dUBuE2gAvFYQJguiTXsfuxV9ki
	7K3i67kIBw622xUyBhOc23tAaqLAnGb/FWxCLgVDDZMTQIffxq5CHHSfoxkC4JqvH1EcEOi9cYOY2
	aqM5GgvBtENjFL9UfgfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCx5l-00000008lZx-47Bi;
	Mon, 18 Nov 2024 08:26:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCx5g-00000008lW6-2R4p
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 08:26:39 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AI5RpKT003126;
	Mon, 18 Nov 2024 08:26:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=EGYM5UI0/CHTzaZbEclW0boEFuOVhs4u5Y7
	OeKVJmGc=; b=VyYMSHuYdc0P6UpfhsxrBOEROldbQSU8Ih3tpA/douZ8B/7NPfH
	Lvc8MgMdJBoiFKqVdTa2gaseiLdW1IzRE9PhB5z+zDaVEqRBYjD5rA6OY3qOITWp
	exnPhsvFVd8rcRIFyw5+ot8/eWs0DhrA2Vkxn0Ae4AfSCg9ICmeIX1ID3Xyl0sRA
	YmgDIq9lX3OJ8Kwofun9z5qlZifAegRSH8Gq/FuvaSecD2LJ7R3vEM6JlAK1gO3d
	Gl2hsE5lfDkTRjJ2lqU7ogmqjKgvsbbIcPik9+Fxy53R4Xf8gcdbr7i9+et/EyPE
	aoybcag+EgAjkK+ZPkuJvZxJvlRIVke9yWw==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42xkv9uuu8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 08:26:26 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 4AI8QOe5010288;
	Mon, 18 Nov 2024 08:26:24 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 42xmfk9tc8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 08:26:24 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 4AI8QN0V010282;
	Mon, 18 Nov 2024 08:26:23 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (cse-cd02-lnx.qualcomm.com [10.64.75.246])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4AI8QNEt010281
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 08:26:23 +0000
Received: by cse-cd02-lnx.ap.qualcomm.com (Postfix, from userid 4438065)
	id DB8DF176D; Mon, 18 Nov 2024 16:26:21 +0800 (CST)
From: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>
Subject: [PATCH 0/5] pci: qcom: Add QCS615 PCIe support
Date: Mon, 18 Nov 2024 16:26:14 +0800
Message-Id: <20241118082619.177201-1-quic_ziyuzhan@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Ea1OId-dyM6fcow3BHCb8OonsayJLODm
X-Proofpoint-GUID: Ea1OId-dyM6fcow3BHCb8OonsayJLODm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=732 priorityscore=1501 suspectscore=0
 malwarescore=0 phishscore=0 impostorscore=0 mlxscore=0 bulkscore=0
 clxscore=1015 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411180070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_002636_734644_B9447F24 
X-CRM114-Status: GOOD (  11.86  )
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

Update the relavent DT bindings for PCIe, add new config to the phy
driver add pcie and phy nodes to the .dtsi file and enable then in 
board .dts file for the qcs615-ride platform.

Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
---
Have folling changes:
	- Add compatible and phy compatible for qcs615 platform.
	- Add support for GEN3 x1 PCIe PHY found on Qualcomm QCS615 platform.
	- Add a new Document the QCS615 PCIe Controller
	- Add the compatible for QCS615 PCIe controller.
	- Add configurations in devicetree for PCIe0, including registers, clocks, interrupts and phy setting sequence.


Krishna chaitanya chundru (5):
  dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS615 QMP
    PCIe PHY Gen3 x1
  phy: qcom: qmp: Add phy register and clk setting for QCS615 PCIe
  dt-bindings: PCI: qcom: Document the QCS615 PCIe Controller
  PCI: qcom: Add QCS615 PCIe support
  arm64: dts: qcom: qcs615: enable pcie for qcs615

 .../bindings/pci/qcom,pcie-qcs615.yaml        | 161 ++++++++++++++++++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |   2 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |  42 +++++
 arch/arm64/boot/dts/qcom/qcs615.dtsi          | 158 +++++++++++++++++
 drivers/pci/controller/dwc/pcie-qcom.c        |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 105 ++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    |   1 +
 7 files changed, 470 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/qcom,pcie-qcs615.yaml


base-commit: 075857dab69e8d673eeaa4aa7f5228796a4c010d
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
