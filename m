Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 093D8C71133
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 09:36:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R0bqboN8eZBplEaVFcq4OSTaA/TRZR/yfkmSh3OvNQw=; b=xZMiChDWYZWWGb
	E2hQusUNpLE/d0ehHqaI4tXRq5IIgIqiZ8vs09/p0WRv93ilU24mVNyhJwh1TRAd5vMyKbIKohj+L
	xzxzQKg4ZUmjpGfVZ1EvxbNVCdlISaBa2OOqmHXWCUdTmJzxp+Uuk2GmlX9XQ1wjigiKeG0DMgMig
	oVLfVKSeq7K2tLKEXDa8etTOMi231sP6TDEvwlAGzufRh3mRLv2YmFtJYi8Ind+uBfhhG8NlrQdF7
	i1ZobdRGH8v1TbHaMDSx/Yxnlt98/emXa6pE6hFAAje3EXPQbduz3MK/wp0Wr11dcpNYu5QdU69AS
	dFQH+JdELLOvMZC9TK4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTEj-004kRv-29;
	Fri, 25 Aug 2023 09:36:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZTEg-004kRb-32
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 09:36:12 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37P5nXB8007988;
	Fri, 25 Aug 2023 09:35:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=nT86no/d9+8D4gWYVInaOyKap/Q6m4xCcwXiZPiBIm4=;
 b=ny2rcvtY6lOzi0e4oglvT0R7dsS2AbYBS/Rvd34gwMH4NpmhWKIeZ0MIvEf1BFyLdjFC
 K5UJZOlfm3RcIZTzf6ajwR/IEL2DKxGrmDbX0ayNNZB3JMsOZXE5s6AhWxlccHNGp8Q9
 v9SKAmnoxjXs/EHhOryh18dek7MmXoZtMXj6KSpM7/dhlIUQY+L9KMudfVltdh5X+Wzx
 Atot40gWeceMX+mnsUnrncNpJL4fL/IFbGZ4PifhJFNT9WmopMx81AVcj/4kDk87Ufd1
 V/Am2wFoQjdZBZjKwcjUbaqqoW7OKGE+Ze1ohbAy16f6Bo8wrPjCM/K5YBcMv75SbTyj yg== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3spmpv0k3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 09:35:59 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37P9Zvlx019689
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 25 Aug 2023 09:35:57 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Fri, 25 Aug 2023 02:35:52 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
CC: Nitheesh Sekar <quic_nsekar@quicinc.com>
Subject: [PATCH 0/5] Enable IPQ5018 USB2 support
Date: Fri, 25 Aug 2023 15:05:26 +0530
Message-ID: <20230825093531.7399-1-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ZUS4u44MiVWJcJzA4qHwEcuZU33pZjvb
X-Proofpoint-ORIG-GUID: ZUS4u44MiVWJcJzA4qHwEcuZU33pZjvb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-25_07,2023-08-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 adultscore=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 suspectscore=0 mlxscore=0 mlxlogscore=459 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2308250081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_023611_100314_608382DF 
X-CRM114-Status: GOOD (  15.50  )
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
DT configurations for enabling USB2 host mode support
on IPQ5018.

Tested with a USB Mass storage device.

Nitheesh Sekar (5):
  dt-bindings: phy: qcom,m31: Add IPQ5018 compatible
  dt-bindings: usb: dwc3: Add IPQ5018 compatible
  phy: qcom-m31: Add compatible, phy init sequence for IPQ5018
  arm64: dts: qcom: ipq5018: Add USB related nodes
  arm64: dts: qcom: ipq5018: Enable USB

 .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml  |  4 +-
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 +
 .../arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi         | 54 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-m31.c           | 60 +++++++++++++++++++
 5 files changed, 132 insertions(+), 1 deletion(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
