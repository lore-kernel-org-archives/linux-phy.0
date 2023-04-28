Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7228AC77B60
	for <linux-phy@archiver.kernel.org>; Fri, 28 Apr 2023 13:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BvO9+sNKYGZsNcf1rxaCVx4BmN+vUH9PIjyTjY5WMY4=; b=PvXNu6wyRTm55+
	EUSv0HrEqTloRhYpQkk/AMW1GT/h0wvoQWM0rnLrPaQic3JSMv0789rK6rMAnxBA/q1D0XQtQg2OI
	XQqoxhDmrX6bU0t2SJxWiS72Me4t5jKWP5Wja20zdMlvSH7Djo+amLln2VtJ9rVHegv8lEuJ9rF09
	Gu0n94Z4hMQIIenOD/597iMaHZJ6eK8S+DpcxrijKlyKRcc78ncOJ9XCJNBiZw4C7btxzQaqDTD5v
	8HTzjg9uwflEyua22Y1WVKUSL0ZftU42GyuTMHFEnWKdvBzbGQFR9zg4h/W5v1IYBoMqoUswzUoQj
	9uEtyZA+E4VirwDJoJLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1psNqO-00ADSJ-09;
	Fri, 28 Apr 2023 13:09:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1psNqK-00ADOA-27
	for linux-phy@lists.infradead.org;
	Fri, 28 Apr 2023 13:08:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 33SC7v67005683;
	Fri, 28 Apr 2023 13:08:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=ZL5/JD/Drh/dxAmEDRIWOzwDjmp5D5m1E43a19rtE+0=;
 b=OM42HIdm76iBp3LLT+1xY5SzWUYBqad2oEFugtswbrkmSCFcNT4+tUglmoTU/uEc3Q0B
 V68FOTpaGHGwSdJl4C55PJ/i6zWGZJ2Za09BP72WFjwUlod+qxnxYaakx+jY+ecQ1/hS
 LlBLdOnuZv9/Gva9VaXgSQ81+62ap0bzheXr+aiZ1YBHr3CsE1GO5kQMk/NoJuZ3OTkn
 YnS14hsmBpaSxiQu3yH6KNxT5TVKJ13furcHbSVrAFe78PeA+X7mtQMoPT6dxj9P6qQm
 JHHk1HK75dmUUHtjX+bp37KmVfrUX/D44W4LvAAaRPs0CSt7SYXIdndHiWn4k7T9cyI5 Ow== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3q850csp4g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 13:08:49 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 33SD8m6E003190
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Apr 2023 13:08:48 GMT
Received: from hu-shazhuss-hyd.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Fri, 28 Apr 2023 06:08:43 -0700
From: Shazad Hussain <quic_shazhuss@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>
CC: <dmitry.baryshkov@linaro.org>, <athierry@redhat.com>, <robh@kernel.org>,
        <konrad.dybcio@linaro.org>, Shazad Hussain <quic_shazhuss@quicinc.com>,
        "Vinod Koul" <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
        Wesley Cheng
	<quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
Subject: [PATCH v2 0/6] arm64: qcom: sa8775p: add support for USB
Date: Fri, 28 Apr 2023 18:38:18 +0530
Message-ID: <20230428130824.23803-1-quic_shazhuss@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: a6LqkUgj-DKO6lfB0rvfvIjdwvlTdG9K
X-Proofpoint-GUID: a6LqkUgj-DKO6lfB0rvfvIjdwvlTdG9K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-04-28_04,2023-04-27_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1011
 suspectscore=0 mlxlogscore=583 mlxscore=0 phishscore=0 bulkscore=0
 adultscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304280108
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230428_060856_716459_261869D8 
X-CRM114-Status: GOOD (  12.77  )
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

v1 -> v2:
- correct dwc3 device tree bindings for irq's.
- collect R-b, A-b and T-b tags.

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
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |  21 ++
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts     |  92 +++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 239 +++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       |  45 ++++
 6 files changed, 397 insertions(+), 2 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
