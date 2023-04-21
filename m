Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00DFAC77B75
	for <linux-phy@archiver.kernel.org>; Fri, 21 Apr 2023 13:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AAtO1oIP+p/yCXLV6PQtTGh9k0bLhUc/Iejqp9d7MOo=; b=YKNORc264Bhjns
	FaomLzsXk/PGjdsLLXQ8p+FmwgA1wZAZ/QKtgWAuFp3fWtH+mbmHRU4uv5TD/bFHKuXnhT6JkZ8Os
	vD8bCakjyyBnavFpz1vWVuCozqvimuSlnCyjXgAqDYz11O7EyJKzCMOuQhB3mcuQq+vpX4dDxRlZ6
	UqX4QcdZAbgC0/chtcvUDphsmfDniLuuCifRQctrj/WGaaYhKzyS/ggwdsUcKCFmGuXgnEgGg8qED
	CH6eBHD7V9/taoFPCfTLbHRxF9AstVNIp32uAPVQTgBO7d1tP3y9wSCCmsJkBssk09T2HjV5PeybB
	k3rnDgl0UVzcp9hi9ojg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppqzh-00B0sf-1n;
	Fri, 21 Apr 2023 13:40:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppqze-00B0s7-21
	for linux-phy@lists.infradead.org;
	Fri, 21 Apr 2023 13:40:08 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33LDOD52011770;
	Fri, 21 Apr 2023 13:39:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=SrlQ1fyqBwMZibIEE/0X0Lc9HUti+9A1aysZf3UlwIw=;
 b=RjYS+FOT3bbeoKUw2mzlinIDqnGWstPkTJQKMVTHgKbmgutUCb3OE3Bt3G4UnK9DPXTa
 3d140FYU3gJ0+XRfAAOI7ayl40kgQWaDIG/cq1pQ4V90wFatrjfhMsyECRnSLGTMCN96
 uIs2nS7Di8CGJBlLCjLfEWlVrXVfF+xgqYZI4zonzwoqDQ7UQbVa0S38a6XKP48sx2UO
 fAxIL1sMQY37GAkqeJ6DMJD4m+DS13ERjEy+GHQraCzWNcIGaISDU2SjwirsFS7+IJoO
 oZ1dc0VWhuyigIDzv3FVmIwRYnpCudeUxDZ3AQpr4JfjYcNxVYX+P8nb59Vx5Vnavq3Y 0Q== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q3cpysrc3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 13:39:59 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33LDdwjZ014488
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Apr 2023 13:39:58 GMT
Received: from hu-shazhuss-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 21 Apr 2023 06:39:53 -0700
From: Shazad Hussain <quic_shazhuss@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: Shazad Hussain <quic_shazhuss@quicinc.com>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        "Kishon Vijay
 Abraham I" <kishon@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v1 0/6] arm64: qcom: sa8775p: add support for USB
Date: Fri, 21 Apr 2023 19:09:15 +0530
Message-ID: <20230421133922.8520-1-quic_shazhuss@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: M3Q8bBj0U0ys_L5OBIVQR4AQVnnEYVzi
X-Proofpoint-ORIG-GUID: M3Q8bBj0U0ys_L5OBIVQR4AQVnnEYVzi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-21_05,2023-04-21_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 mlxlogscore=577 spamscore=0 mlxscore=0
 lowpriorityscore=0 clxscore=1011 impostorscore=0 adultscore=0 phishscore=0
 bulkscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304210119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_064006_809139_AD6608D2 
X-CRM114-Status: GOOD (  12.68  )
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

Update relavent DT bindings for USB, add new config to the phy driver,
add USB and PHY nodes to the .dtsi and enable them in the board .dts
for the sa8775p-ride platform.

Shazad Hussain (6):
  dt-bindings: usb: qcom,dwc3: Add bindings for SA8775P
  dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for SA8775P
  dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add SA8775P USB PHY
    binding
  phy: qcom-qmp: Add SA8775P USB3 UNI phy
  arm64: dts: qcom: sa8775p: add USB nodes
  arm64: dts: qcom: sa8775p-ride: enable USB nodes

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   1 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml  |   1 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |   5 +
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
 6 files changed, 381 insertions(+), 2 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
