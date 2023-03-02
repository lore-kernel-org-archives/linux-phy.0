Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDC2EC678D4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Mar 2023 09:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OsU8ap4bphBw11JpJsrW5pnRPV1fX6656/yPh5V3PC0=; b=cXWhfbgZEWG6dL
	mR9jk75JK2u/qyHXR/+ZzUgwL9t7oYF9qcS6NBTHx81DTK5RHXDcRhenVoGyNwAApzGGktEmZHOUp
	gKaPtWXqa56gRZjZOckZiRplbBimkv6K/MmF3Z/WqrCKG24g3zU5r0QyWCm5iNje701TYGmUqo9uy
	OKZk/y73+sArdIH60p8980PNLALdeQccUWuKOzINZtgSTc5Gv02Qozv/+QXTwlvpnuy4zVvPEbhgW
	NWsgmN+z/d7Su1ZfvqxsKC9RXx+9EbnxaDRKpQWFH/1KTCgFXW4ZOqb0E00mI0w60sXrQtqXVFcXY
	+RN5Uc3pK50leTJ4QB6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXfea-001Xjf-7d; Thu, 02 Mar 2023 09:55:12 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXfeW-001XhN-QH
	for linux-phy@lists.infradead.org; Thu, 02 Mar 2023 09:55:10 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3229giH1001800;
	Thu, 2 Mar 2023 09:55:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=R0Z4E2YGg3YStUNJXj+bRr0mBgUwf/rrCLLWjjUXfrQ=;
 b=igbe7EPKq3hXGUNxMgZ1SQ2+4gwFIMY7uWQWz1B/3Okv4ehwnsx9+nnI/zfQXXTjmgE5
 uFH2CW+8WOacmQdXaYzqK/r+NGslByrT5FKICncM9Hizi+GDCvr03ueQtdbw8YXfPjZh
 OuAt0o2HIRKTqqOSkP2KgC1cRPbKQwnPKs6M/6Lnl9EkBP6MI+U4QA4p+eTAUaVu9gbw
 xcrC1oa/2aQXAuJ9RNQFPMvtfH+7rwz65nV0tn+IfmNGRGf25Cof7pCh63rc13WBM0wR
 Rt4XtOjPC8tQqf204FOgmX/ksiwKvQY8jXHpf5q2yRpLmiXta6uj8ugD08CnxNP5je8O /Q== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3p2cur1r2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 02 Mar 2023 09:55:01 +0000
Received: from nasanex01a.na.qualcomm.com ([10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3229t0nn023470
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 2 Mar 2023 09:55:00 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.41; Thu, 2 Mar 2023 01:54:54 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette
	<mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Thinh Nguyen
	<Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <linux-usb@vger.kernel.org>,
        "Varadarajan
 Narayanan" <quic_varada@quicinc.com>
Subject: [PATCH 0/8] Enable IPQ9754 USB
Date: Thu, 2 Mar 2023 15:24:39 +0530
Message-ID: <cover.1677749625.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Z6URMhTjq3UewHaiTkifOH7i7DfQBNBT
X-Proofpoint-ORIG-GUID: Z6URMhTjq3UewHaiTkifOH7i7DfQBNBT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-02_04,2023-03-02_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 mlxscore=0 suspectscore=0 mlxlogscore=392
 lowpriorityscore=0 adultscore=0 bulkscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303020085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_015509_011292_037D703C 
X-CRM114-Status: GOOD (  14.09  )
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

Varadarajan Narayanan (8):
  usb: dwc3: core: Handle fladj becoming zero
  dt-bindings: phy: qcom,qusb2: Document IPQ9574 compatible
  dt-bindings: phy: qcom,qmp-usb: Add IPQ9574 USB3 PHY
  clk: qcom: gcc-ipq9574: Add USB related clocks
  phy: qcom-qusb2: add QUSB2 support for IPQ9574
  phy: qcom: qmp: Update IPQ9574 USB Phy initialization Sequence
  arm64: dts: qcom: ipq9574: Add USB related nodes
  arm64: dts: qcom: ipq9574: Enable USB

 .../bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml    |   1 +
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |   1 +
 arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts       |   4 +
 arch/arm64/boot/dts/qcom/ipq9574.dtsi              |  92 +++++++++++++++
 drivers/clk/qcom/gcc-ipq9574.c                     |  35 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 130 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qusb2.c              |   3 +
 drivers/usb/dwc3/core.c                            |  27 +++++
 include/dt-bindings/clock/qcom,ipq9574-gcc.h       |   2 +
 9 files changed, 295 insertions(+)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
