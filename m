Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A78FDD41C0C
	for <linux-phy@archiver.kernel.org>; Wed, 13 Nov 2024 07:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=86rJLl17J+NR2+/mk9OrmcSQTMzF152hClMKxIzF8Bs=; b=hygpya/KS0WokN
	YA/RhcgAjLn41KPz1kb6BchCIJnNkP7Vh8s0mF7FkS+jdYhZa1SbfopjHWLKjA1yTilOLnAISmFUr
	m2fX0j6kLfebzcY6q6MKtWETOjr+z5j2wrk5zzS3JcroqHbqINoY5suanRWvQ0PjlJbveyu7paCiZ
	OKW3wjlvuESWzHu8qmhs9Ml3uzm2fnNRWDxCmerYh5OGebnoJpM2v1PyA0lTpTF3UhPTDuIHm6S1f
	+jBCXTFe1Hk9jltJunvLdr9ZNo9OuzfC2ZfL4j8ElKQXAwFatO7si9SS71qsXpwPuLTK9OfQhBoor
	cCGG618UkESLuEvAZPPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB7jT-00000005z30-0z0f;
	Wed, 13 Nov 2024 07:24:07 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB7jP-00000005z2g-3teX
	for linux-phy@lists.infradead.org;
	Wed, 13 Nov 2024 07:24:05 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AD70g8l019320;
	Wed, 13 Nov 2024 07:23:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Gy/9ZW9uaLPxNw3DnGiC7s
	2OMa7yvZVhaO+NMH0cXNw=; b=KMbd+Z3ARHA8KtRd44H2CZEMvuvFL2aaBdUUE4
	erTjdy0uTJBKUvfr353SfKVq8r5JqvAlPcXyIvqi0ab3K1wKTqeonWBIwqcyLlxK
	59CSjOrZOciUNKvQwlbRtqs/PDpgKO17UEKfWasEyuCkLQi7kNsjz9QEoTF336cR
	AAFbg76DF1KzfwP24TIVo6RFiZ+eBzawrFrDa1wL1blSLgJuhqSb/fRWSqHFFFsf
	4y0sipV8ReY5RT70Zw9jadMLnnN0DLfD+S9vAHZAp4YRoEmIArB/f98FeJzcaoAX
	Txx9qzzlaMylFKttbqQWsz4VML4mKMtSvzOC9vjDjCtMjuFA==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42vqbm01w7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 07:23:58 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AD7NvOC025923
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Nov 2024 07:23:57 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Tue, 12 Nov 2024 23:23:51 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <mantas@8devices.com>, <quic_rohiagar@quicinc.com>,
        <quic_kriskura@quicinc.com>, <manivannan.sadhasivam@linaro.org>,
        <abel.vesa@linaro.org>, <quic_kbajaj@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v2 0/6] Enable IPQ5424 USB support
Date: Wed, 13 Nov 2024 12:53:10 +0530
Message-ID: <20241113072316.2829050-1-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: U9e5jszlfXxq1V3YKYAePtfypHkunfVN
X-Proofpoint-GUID: U9e5jszlfXxq1V3YKYAePtfypHkunfVN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=647
 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411130064
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_232404_110433_A445CA3C 
X-CRM114-Status: UNSURE (   8.72  )
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

The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
can connect to either of USB2.0 or USB3.0 phy and operate in the
respective mode.

v2: Added acked-by and reviewed-by to few of the patches
    Changed uppercase hex digits to lowercase
    dts: add more interrupts & quirks as suggested in the review

Varadarajan Narayanan (6):
  dt-bindings: phy: qcom,qusb2: Document IPQ5424 compatible
  phy: qcom-qusb2: add QUSB2 support for IPQ5424
  dt-bindings: phy: qcom,qmp-usb: Add IPQ5424 USB3 PHY
  phy: qcom: qmp: Enable IPQ5424 support
  dt-bindings: usb: qcom,dwc3: Add IPQ5424 to USB DWC3 bindings
  arm64: dts: qcom: Add USB controller and phy nodes for IPQ5424

 .../bindings/phy/qcom,qusb2-phy.yaml          |   1 +
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   2 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |   1 +
 arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts   |  67 ++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi         | 159 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |   3 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c         |  28 +++
 7 files changed, 261 insertions(+)


base-commit: 28955f4fa2823e39f1ecfb3a37a364563527afbc
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
