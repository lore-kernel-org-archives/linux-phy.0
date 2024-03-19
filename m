Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33D53C54E60
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 09:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UqOL33qCX56njOQR4MBzJupaexcIqxTYbzemPUtX5hs=; b=hgVUCpC2fuJv3z
	oCV7BxKD5WfSIjLCe9UYnfCF6H52WCv6u18C3Enmtz4X7NqnbkYQDxhlWkjMHUZPJ9tdGJUTQnZeG
	KRzkoYIOAiqwDx96gx450RbFixDg1oIPv1OZ64rCQGEJgb5gef1FjKzlcYzEmz6P1uc5cRgl3FjVy
	edUJYHuI8Pj/4ana0Q9C3w9xjmz7ij1Zkr9yFeyn44FSIDGcS5s22shqgrjdqgcEldM9JyLxx7TaE
	GKbCdupW/PdukcLvX3AMKZtIRNrv0XlpqKrW8wpYsTTjQEGIZWh0CcXF3yLpDRjJF94hadGe2ALki
	Mrcb+SmoYHn+1pW2wQrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVS2-0000000C2TG-2es1;
	Tue, 19 Mar 2024 09:08:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmVS0-0000000C2S0-0tJJ
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 09:08:06 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42J4Q8YM029011;
	Tue, 19 Mar 2024 09:07:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=qcppdkim1; bh=wwYFukg
	eyuIky5uAAKxxD46KLlDXv5v6ZWiYYzTNLzw=; b=kGWFmmCO8DHqJ07PnHE1nwI
	Grq9EeuzuGUdy+SbgqZYp/CTHsDh64GR7DxzDZosR++IVx1tm6aq+hrVSYYhJ83g
	dUCQOvmwyaZDjVyrpp1rF21OdiDXVGEJ/0Oa7p6LU+4cVqhvYKWY6Ai+2Kv7zlYJ
	E3ANOHI15vfgmPwriGFn5j/z2oVOcuBTtPhCsUFZF3OnxUh/mMUAVGsxBH/Eao5m
	u1mkMHfSXNAt0L5tfFtFwE3VPPeB7Jxi4E5yQHoF7S1PRWTLip0K4DBFlcH1uhqN
	zSrJTaYvjaLvJGd86Gj8LEBOUWIacxOjDzXE/QE1ayobjuUf1Ig5wGconDXkXvQ=
	=
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wy2cjrnue-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Mar 2024 09:07:55 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 42J97sUA027195
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Mar 2024 09:07:54 GMT
Received: from hu-kbajaj-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Tue, 19 Mar 2024 02:07:49 -0700
From: Komal Bajaj <quic_kbajaj@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, Komal Bajaj <quic_kbajaj@quicinc.com>
Subject: [PATCH 0/4] Add USB Support on Qualcomm's QDU/QRU1000 Platform
Date: Tue, 19 Mar 2024 14:37:24 +0530
Message-ID: <20240319090729.14674-1-quic_kbajaj@quicinc.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: BbcRD6RuQmQNMSU6OMuTTVs-P-h3R06-
X-Proofpoint-GUID: BbcRD6RuQmQNMSU6OMuTTVs-P-h3R06-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-18_12,2024-03-18_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 mlxlogscore=561 suspectscore=0
 mlxscore=0 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2403140001 definitions=main-2403190068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_020804_490932_ACA68236 
X-CRM114-Status: UNSURE (   9.28  )
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

This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.

---------
Changes in v2:
* Dropped extra lines
* Sorted the tables alphabetically
* Link to v1: https://lore.kernel.org/linux-arm-msm/20240311120215.16845-1-quic_kbajaj@quicinc.com/

Komal Bajaj (4):
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
  dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
  dt-bindings: usb: dwc3: Add QDU1000 compatible
  phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |  1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  3 ++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 49 +++++++++++++++++++
 4 files changed, 55 insertions(+)

--
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
