Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F18AC76188
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 09:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9WPfs80UTM5cKJ0tjDQuyLhWH7I13oRAVNRdge2T0MI=; b=UWuAEAohmw7soI
	yPWVtKzn2Lo7ri8fJciKvEHD/U6/P7yArVqvJlNwF0WWPE434LIgFJeSukAYhfHJZMM6njqKKKKsv
	sddZA5bq0U8xTX3W9xGCHtDWmJO6dYMKrsinpxT3KM9JGK3D2+JtoRgzuPSjIDx/AjV7Q/a9GCs2q
	yzj+yqYBhEPMvX4MGr+ATtlopxojsRPxkdhpaIIpi9EMGtJCD/BNGoEAp1SkwWlLUdX305mijAR0p
	CgdG6JNuJOGhwHSC3eo3lp0EjSPjwfqternDXXLupsv3att57euSC2AIUMEg4CD+A/ljJ7zhFA108
	YdVTZ1nl1GD7XaZIuxLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzqx-0041VT-3B;
	Wed, 05 Apr 2023 09:54:55 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzqu-0041Um-26
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 09:54:54 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3359boCA029784;
	Wed, 5 Apr 2023 09:54:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=U3RjpZzG5jP0XnG5F++ZPO8sGVk1zH+LWUTE7a2f7vc=;
 b=hGZIBJPdDXEjYfDd2RqQOXk33MLenfGLLGBEX763GvefX//ZeA7SeewdApY+qCB0yiJz
 sdXhc7wlK9Wwx9f9KN2ybfd58nWoGV1X5Ssypa1HV5V16tIrPnYzk6u378a8I0zzyos0
 cg72GNOso4nWUHSMQzUZ0nOB3IICdvZ5T+s+mNzSv4aZKd1tSAVmEx++79cIk7RQBOMi
 8tq4+n6/2Fr78TCAHKATPrIoLMRIwm8W6Ksj9C4ZYZimIJBr3AYHP6TM6ZWv/Zb5wURV
 GYROmjIcLOBNqvHzIav60nFSvKAzT9h1OavEN626cilK1o0ykfRAqDjRUdzt8i7YQdAs Yw== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3prg8wue1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Apr 2023 09:54:47 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3359skGJ025348
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 5 Apr 2023 09:54:46 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 5 Apr 2023 02:54:41 -0700
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
Subject: [PATCH v7 0/8] Enable IPQ9754 USB
Date: Wed, 5 Apr 2023 15:23:57 +0530
Message-ID: <cover.1680688209.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sIvfJey9zWypwoKyIgPPFV1daGjoWgfj
X-Proofpoint-ORIG-GUID: sIvfJey9zWypwoKyIgPPFV1daGjoWgfj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-05_05,2023-04-04_05,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 spamscore=0 phishscore=0 mlxscore=0 mlxlogscore=550
 adultscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304050091
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_025452_695201_9DFF774D 
X-CRM114-Status: GOOD (  15.80  )
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

[v7]:
	- com_aux -> cfg_ahb in patch 7

[v6]:
        - Incorporated review comments
	- Resolve make dtbs_check messages
	- Fixed pcs_usb offset
	- Board dts file name changed

[v5]:
        - Incorporated review comments
	- 'make dtbs_check' giving the following messages since
	  ipq9574 doesn't have power domains. Hope this is ok

		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: phy@7d000: 'power-domains' is a required property
        	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
		/local/mnt/workspace/varada/varda-linux/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dtb: usb@8a00000: 'power-domains' is a required property
        	From schema: /local/mnt/workspace/varada/varda-linux/Documentation/devicetree/bindings/usb/qcom,dwc3.yaml

	- Move qmp phy DT node to newer specification

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

 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   3 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +-
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |  22 +++-
 arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts        |  16 +++
 arch/arm64/boot/dts/qcom/ipq9574.dtsi              | 120 +++++++++++++++++++++
 drivers/clk/qcom/gcc-ipq9574.c                     |  37 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 115 ++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qusb2.c              |   3 +
 include/dt-bindings/clock/qcom,ipq9574-gcc.h       |   2 +
 9 files changed, 317 insertions(+), 3 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
