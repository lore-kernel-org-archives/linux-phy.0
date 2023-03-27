Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD8EC7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 09:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+nBwp7DfdnEx3N9PLWJvK4jcS0GbO4OTdTWuL5pBPAg=; b=1TUaEdH/ckTNnl
	62wHfwzLFhE6NY0fthNoE6gwzJEzK0Iafb5Wzhr5oAAF5mxhMdTSVdiDH9y8l6bjViCcSCVEPsJAq
	8UrcbIenp2h8CENDpgbtMIlZGM5aZtzRN6idDJdEFZDeSAODeks0SgT4NtR/rftzsaTCQbq9+ekc/
	l545cMvuXEiKpuU72B8S2LpGY/jL9QjGSP9PUvGVPnZ7+jIe4T2AfFyg+tLJQMWWrwzJBDcOoEGzQ
	GeqFNjdPX2/Lvk3jfEQUJ1gsGafSvA6tvjGAgUE7YTi+1HOoLRwcIq9Q1Z0AoLaW3DNuWuij8Zdnl
	xsgM9i4q9gY9pds+cy9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjCT-00ATqd-2d;
	Mon, 27 Mar 2023 09:31:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjCQ-00ATpf-2A
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 09:31:36 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32R83Y2m007320;
	Mon, 27 Mar 2023 09:31:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=qXvObXy9pOfXRBzqCnE/T6SFpVjllSjDMoH60EBtH2I=;
 b=g8IlnaiSO4J5+X8IiB5vWv3EEGt6LDjbYzWlnlXUp6PYMSN3lhje8rmUs8WomCnnGcpi
 pigyPn9JV6yb/IuMrGVxhpNgkCJXGXqcjohtMSc5KnKsTevwzKbXQ7tZ5HQJ6xmAPVxV
 k8Kv03eIdF1Kh4hMQ/4EyHgDfaGj/+sZFIwJyBwA4q2xQnWxTk8M05aUD/jAXM3jbRcs
 ovkVN0HcUETzXpy9mw21ELFiZwShI/Q43TVSmUFevMFWG3lTzn5qcQZS4aVcMquzY0oS
 sat0vZRVqRfG9zsLP/uKgc8v7Ug6JWJQMcvwgdFFAlXrGV+AMlfluNsOmQ9GhVxkHTzI Cg== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3pk79b86ch-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:31:29 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 32R9VSsR031367
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 27 Mar 2023 09:31:28 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Mon, 27 Mar 2023 02:31:23 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <gregkh@linuxfoundation.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <quic_wcheng@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v4 0/8] Enable IPQ9754 USB
Date: Mon, 27 Mar 2023 15:00:52 +0530
Message-ID: <cover.1679909245.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 6WliksmsN_uKZ6Z7PrNifcnbm06xIjg2
X-Proofpoint-GUID: 6WliksmsN_uKZ6Z7PrNifcnbm06xIjg2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-24_11,2023-03-24_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 mlxlogscore=513 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2303270077
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_023134_716889_29FB0CD3 
X-CRM114-Status: GOOD (  14.80  )
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
configurations for enabling USB on IPQ9754

Depends on:
https://lore.kernel.org/all/20230217142030.16012-1-quic_devipriy@quicinc.com/

[v4]:
        - Incorporated review comments
	- Address all 'make dtbs_check' errors

[v3]:
        - Incorporated review comments regarding coding style

[v2]:
        - Incorporated review comments regarding coding style,
          maintaining sorted order of entries and unused phy register
          offsets
        - Removed NOC clock entries from DT node (will be implemented
          later with interconnect support)
        - Fixed 'make dtbs_check' errors/warnings

[v1]:
        https://lore.kernel.org/linux-arm-msm/5dac3aa4-8dc7-f9eb-5cf3-b361efdc9494@linaro.org/T/

Varadarajan Narayanan (8):
  dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
  dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3 PHY
  dt-bindings: usb: dwc3: Add IPQ9574 compatible
  clk: qcom: gcc-ipq9574: Add USB related clocks
  phy: qcom-qusb2: add QUSB2 support for IPQ9574
  phy: qcom: qmp: Update IPQ9574 USB Phy initialization Sequence
  arm64: dts: qcom: ipq9574: Add USB related nodes
  arm64: dts: qcom: ipq9574: Enable USB

 .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    |  25 +++-
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   6 +-
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  22 +++-
 arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts       |  12 ++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi              |  83 +++++++++++++
 drivers/clk/qcom/gcc-ipq9574.c                     |  37 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 129 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qusb2.c              |   3 +
 include/dt-bindings/clock/qcom,ipq9574-gcc.h       |   2 +
 9 files changed, 310 insertions(+), 9 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
