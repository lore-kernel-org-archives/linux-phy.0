Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC9E4C7EE23
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jun 2023 11:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSbP+Ay8s3tjWOV4Wtz/caty4GYZg23donrhXLtxdeo=; b=T6YD6XQj16RcMT
	w2KU4TRbB9N4a1/MDHY8LQxXeL7BwrcxxY3bENaI448XBiqWPUiniD8gMI+/tqK3BfP3dnpv4fBtg
	OnKAPMAu9xOWVbalBXyr9RdECq15Y//1F536LLtpjbUKMUUu8zuw3JoQn7eN321MMEVhZBEUUE0+2
	JOFZhm22+BCONwluV94tSwaNMcbD44Uj4Tvx0QL0G1aCpAMpNMQ4TYtJWT+3mwUtc31pPjqGQOst2
	R8h+OFdfvERvAzapdv5Ycs0AHZWvozUrsiAls4iIfH3qTnclEh2103RIHVGq8ZM0V86yrcpO4DQnT
	avlN9TWLYCbjDiCGYxMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rga-005h21-16;
	Wed, 07 Jun 2023 11:50:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rgW-005gz3-2b;
	Wed, 07 Jun 2023 11:50:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Date:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ppwtIPRiaridEX22kKaoo8ZqQTqMCoFPO7Tl3CkigXA=; b=Y7YGjZtSkOyWSU2MtyaVP8mlzZ
	9HzJgK5ds+goOavkpN7lUuTpuA2c94IjTyIlOXmYo6E4y1Psrh+fARYJFK8Mvnptzr7LiuZQ5PrRl
	21ZyJJnO4GHzrUNcZcYmCpJze8bmyewt8od8PBlQYwEi6gEtGesytjtdvAJO6UCBunvCA//7VxgyU
	Y79srXnZKQscWXVzwqp13NF8+kTagIm4uIOil6yPxIz7HfDlspoG/fA5mSth62OOB5euOsXyk3QUF
	GAAtJfcLlA11PBka5i6S0FWXKyZWy+uub5B15M7P50ggZNZbUpv1ON/Xar4eciLqc4AMucuaae27U
	jy+Nnp+g==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qqZ-005834-1N;
	Wed, 07 Jun 2023 10:57:04 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 357AfiTl028657;
	Wed, 7 Jun 2023 10:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=ppwtIPRiaridEX22kKaoo8ZqQTqMCoFPO7Tl3CkigXA=;
 b=X3Loy+pNjTdqmzkfQvEFc2HEDoTc45M9Wi2jdsSiQTvu1E/NuwvPo+aKdiIZAt1JmIIJ
 t2d3tis7AverFGA8ULtCRiArM68iCZPtE/7P7VUqrJPIODOdZcmIY+aIRs+gJeM3+clE
 dQmdwvfmxVGJ/zgF4rr7B8er+DclOMU5RGkury9BhxZWTCd3bnWSZCQnVBdRIR7EiPs7
 EESw/3SuxvUIFXW23xp0oNbckeT6TJA9p7yJrL188DFd21wNfAYzgbwSdJVm/HNjUpkG
 JHBIEp+KTX5YrNy5ufNIUastztnhzDtOu6uKzyqji+a0RlP6cRXIQfvrGpAYCEgjXccF KQ== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3r2rbtg0u2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 07 Jun 2023 10:56:30 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 357AuTJg025287
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 7 Jun 2023 10:56:29 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Wed, 7 Jun 2023 03:56:20 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <p.zabel@pengutronix.de>, <arnd@arndb.de>, <geert+renesas@glider.be>,
        <neil.armstrong@linaro.org>, <nfraprado@collabora.com>,
        <broonie@kernel.org>, <rafal@milecki.pl>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.org>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-clk@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH 0/9] Enable IPQ5332 USB2
Date: Wed, 7 Jun 2023 16:26:04 +0530
Message-ID: <cover.1686126439.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 8kHDuKT46JDbNroJKpYJwAP_zCYi0xy3
X-Proofpoint-ORIG-GUID: 8kHDuKT46JDbNroJKpYJwAP_zCYi0xy3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-07_06,2023-06-07_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 adultscore=0 mlxlogscore=272 spamscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 mlxscore=0 clxscore=1011 lowpriorityscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2306070089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_115659_997057_68CB4A45 
X-CRM114-Status: GOOD (  15.63  )
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
configurations for enabling USB2 on IPQ5332

Depends On: https://lore.kernel.org/linux-arm-msm/cover.1686045347.git.quic_varada@quicinc.com/

Varadarajan Narayanan (9):
  dt-bindings: usb: dwc3: Add IPQ5332 compatible
  dt-bindings: phy: qcom,m31: Document qcom,m31 USB phy
  phy: qcom-m31: Introduce qcom,m31 USB phy driver
  clk: qcom: ipq5332: Fix USB related clock defines
  phy: qcom-m31: Introduce qcom,m31 USB phy
  phy: qcom: Add qcom,m31 USB phy driver
  arm64: dts: qcom: ipq5332: Add USB related nodes
  arm64: dts: qcom: ipq5332: Enable USB
  arm64: defconfig: Enable QCOM M31 USB phy driver

 .../devicetree/bindings/phy/qcom,m31.yaml          |  69 ++++
 .../devicetree/bindings/usb/qcom,dwc3.yaml         |   2 +
 arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts        |   8 +
 arch/arm64/boot/dts/qcom/ipq5332.dtsi              |  55 ++++
 arch/arm64/configs/defconfig                       |   1 +
 drivers/clk/qcom/gcc-ipq5332.c                     |  34 +-
 drivers/phy/qualcomm/Kconfig                       |  11 +
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-m31.c                | 360 +++++++++++++++++++++
 9 files changed, 530 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,m31.yaml
 create mode 100644 drivers/phy/qualcomm/phy-qcom-m31.c

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
