Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20294CD6E5A
	for <linux-phy@archiver.kernel.org>; Wed, 11 Oct 2023 11:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4qfrfN+j0trmUWmP3/zCrZwANOJtYlx9QdMUi4hIo9A=; b=Z6luqcfwJId12j
	PscCVekYAkyPs+f6UeRv0wxWoORYJiXJy8k+ucy3hU6vlQKXdbdhZPglIZdcjDw5vFI8d+7HYsPJ6
	/J7p554eKYHKfevRjKVU18txIu+ubKmXqQHdpWmh/GF40Mix+gPXKyERJKkOO0hZKWGrOzYku9NFG
	7bEzofPbV2OYFhk0zmugFsTIRFnYRZ2kalwQWV0IGuWe/9YPrCcYsOFdUfAD4hPMPHBOjkoGFNvW+
	odzCWotI/J4DGpqDHdF2rjh9UAGbn81oZx8+e9Z48BYSSmRMrUVva3mDG1QKTR/ydL9Q5RBLStO6Q
	hJ4giifvZ09+b/nfTQVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXF6-00FjCs-2Q;
	Wed, 11 Oct 2023 11:19:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqXF3-00FjBR-1o
	for linux-phy@lists.infradead.org;
	Wed, 11 Oct 2023 11:19:07 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39B8phZW000559;
	Wed, 11 Oct 2023 11:18:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=DRVR115ULH05dEvTGRQlvYcaD3JskA4PUOvyleNRpIM=;
 b=QijTvPTl3CqjGvQvLBuj3rIhU+aONPBq/2DujmDeC9Fh0vP7nCxAVgn7dXzsMavNkXGL
 1mvlReGP1Z1y1xXOLlbZ0NNZp5E5CmxuaOZ0sSL/itoorILNQcRuysPTjO0eDcK4gkQ+
 zyZ6opcqxTqPetD9y4UGHfYj17BcMQyNiL4eXWciKey+s3V7ShMSFMsds7nDKFzC9eX/
 dN8IPxHBHEjS41wJ+5qwTrNvihzzdZZ/+obSRzBpNarMBhBQmQCYsKileMWHOi8LAci2
 gMLlNU+tZmPppRj4mFLa/y2+C4R91gx46nHa9Hhs+ximaaM1fhfOPw1F5fxHEAGDOcHq Zw== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tnnvw8mmj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Oct 2023 11:18:46 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 39BBIc0Y011193;
	Wed, 11 Oct 2023 11:18:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3tk0dkmawx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Wed, 11 Oct 2023 11:18:38 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 39BBIcRd011187;
	Wed, 11 Oct 2023 11:18:38 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 39BBIbTT011186;
	Wed, 11 Oct 2023 11:18:38 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id CBB0343B8; Wed, 11 Oct 2023 16:48:36 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        dmitry.baryshkov@linaro.org, robh@kernel.org, quic_krichai@quicinc.com,
        quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
        linux-phy@lists.infradead.org
Subject: [PATCH v2 0/4] arm64: qcom: sa8775p: add support for EP PCIe
Date: Wed, 11 Oct 2023 16:48:25 +0530
Message-Id: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 1k85JyqyEewYSIU2u_O30ftyJ_7XE6Ux
X-Proofpoint-GUID: 1k85JyqyEewYSIU2u_O30ftyJ_7XE6Ux
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-11_09,2023-10-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=399 bulkscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310110099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_041906_153214_54D574A8 
X-CRM114-Status: GOOD (  13.50  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series adds the relavent DT bindings, new compatible string,
update PHY, add support to EPF driver and add EP PCIe node in dtsi
file for ep pcie0 controller.

v1 -> v2:
- update description for dma
- Reusing qcom,sdx55-pcie-ep compatibe so remove compaitable
  for sa8775p
- sort the defines in phy header file and remove extra defines
- add const in return type pci_epf_header and remove MHI_EPF_USE_DMA
  flag as hdma patch is not ready
- add fallback compatiable as qcom,sdx55-pcie-ep, add iommu property

Mrinmay Sarkar (4):
  dt-bindings: PCI: qcom-ep: Add support for SA8775P SoC
  phy: qcom-qmp-pcie: add endpoint support for sa8775p
  PCI: epf-mhi: Add support for SA8775P
  arm64: dts: qcom: sa8775p: Add ep pcie0 controller node

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml      | 131 +++++++++++++++++----
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |  48 ++++++++
 drivers/pci/endpoint/functions/pci-epf-mhi.c       |  17 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           |  41 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5.h         |   2 +
 5 files changed, 217 insertions(+), 22 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
