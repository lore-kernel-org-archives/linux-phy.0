Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CECE3D10F37
	for <linux-phy@archiver.kernel.org>; Mon, 18 Nov 2024 05:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=28UgOkn1AcWgl3W6R3gIkHg/P8LIaJKZ/Anz5dZio9g=; b=ZK9Q8wMZaFTxZD
	koL7f3NESJ1RPikM2QTPRktdIa8LLlH8Js5ExbqgLWtBNB8JUiD5ct+y/VJka9LEAYGvsUpml85LF
	MrUft9kdb0ivZ/idAadtafe6SNyPBlbuGFW+kE2fkauZRUyhO+JynxzHwxDu4ejKePM7j7iy0+YW+
	tMz4A4P0UUVxaWaanagwTCLl9kyX7m7VgGQVkaexnjg1zN4KCBXHXOGo/9RKM0myS3Pw+BNYKkySJ
	Wlf5U1jJ7KuWCI7em1lpDSNGGF2rx3LvMtyDpjzFykmwaScHQZMvSFb/qCsS01yhTB/Ew5P1ikYMJ
	tUDAXigzqH+Lu7Rk4iaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCuJw-00000008Ou6-04J2;
	Mon, 18 Nov 2024 05:29:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCuJt-00000008OtU-0oBQ
	for linux-phy@lists.infradead.org;
	Mon, 18 Nov 2024 05:29:06 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AI5RdYR020043;
	Mon, 18 Nov 2024 05:28:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=pwZBh2RtGY9XMlaWBuSL6g
	ry5U44OKq8gOb0pkJc/zQ=; b=ou9PHM6GG8GhJGVl1F1KRWsR1rrd2MVHWLQ784
	4iRSH2KcXW9tUB0V7AkkK+5L76O1PhNqbHz+7pc/0LZQUYa6kNv8TZ0Mxl+oZUH1
	Dhduwtcniip2tTAlRAYYQrdcNGnGbYplGiTzNbcohzsS0oHrmUuPFDi/7YtGv1KC
	IZqQr/9AzGGFb6LEEtlAkg3BruG2nPCVvnZrv/Y6VpFFZpxmJDvYFjZAsvsrzsCM
	wrzQEKkRqstsZW/hDj1hfpkVFThWZIiBTlqmXwzjwKZFBNa06rtVHrUPDQqTfvME
	Iv2rclw+QzbuYfe+7yZ2UquX3AtQGu5gRY2TuwbCIXi5OLxQ==
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42xksqkfux-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 05:28:58 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4AI5SvKK004184
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Nov 2024 05:28:57 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 17 Nov 2024 21:28:51 -0800
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <andersson@kernel.org>,
        <konradybcio@kernel.org>, <dmitry.baryshkov@linaro.org>,
        <mantas@8devices.com>, <manivannan.sadhasivam@linaro.org>,
        <abel.vesa@linaro.org>, <quic_kriskura@quicinc.com>,
        <quic_rohiagar@quicinc.com>, <quic_kbajaj@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v4 0/6] Enable IPQ5424 USB support
Date: Mon, 18 Nov 2024 10:58:33 +0530
Message-ID: <20241118052839.382431-1-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: jKxq4ZRDHj_iPZeYKlei5NIlD3r3-bZg
X-Proofpoint-ORIG-GUID: jKxq4ZRDHj_iPZeYKlei5NIlD3r3-bZg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=700 impostorscore=0 adultscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411180046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_212905_371487_DB732EB8 
X-CRM114-Status: UNSURE (   9.52  )
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

v4: Fix regulator names to match with other Qualcomm DT files

v3: Added reviewed-by to one of the patches
    dts: regulator node names changed

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
 arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts   |  66 ++++++++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi         | 159 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |   3 +
 drivers/phy/qualcomm/phy-qcom-qusb2.c         |  28 +++
 7 files changed, 260 insertions(+)


base-commit: 744cf71b8bdfcdd77aaf58395e068b7457634b2c
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
