Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02787C83F01
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 11:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WJOhfbFXZLjpaxNbvWgmBLx4eV1o3ckpBnsnkl2It0w=; b=uv8uVDGpGnOKDN
	NrhH/v5Y93xhlwqTyxIkpaiuQ+8sDQK7Swm4wN6Hsd2P2zu5+3z91HSLAJD1NlqcUY82lERPBUy9h
	I3XpWIuE2j+PD7UTMw5bn/CR7Czxcx85orJPpZ875Ppi7F+zDfE6iUJzAVojEyb1KojUEHpBuD8V6
	LekEIvMm5Am3MQiOZHHTpqaAk0BqRv9eE7s0WSnTgyOCoJwGrj7bUuVMR2gaFjr63DVdpzRTIKXZI
	mBpxrKx7VmPaE9x6gWkCHWtzc/Xz7JxFps5DniW/WZ0v9rCcVmiu7D+fC8ea3ke9NtP181/FewDfA
	dBIem5BFaLrPY6BzGWvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJCu-00DNFP-2M;
	Wed, 30 Aug 2023 11:17:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJCr-00DNEf-14
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 11:17:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U7xKhO014991;
	Wed, 30 Aug 2023 11:17:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=qcppdkim1;
 bh=t/G/cc1YuPp1go3y8mQYmBWFllVU6UBKBbE1Jxcelmg=;
 b=VBIUVSsrtBSdhVEXT8KuaUa+lDIpMCdScvWElOakTWkoFQWhddlthsKQFWjK5SsE/klM
 VK4icD5Q3qFGhqPexdOIs652Xep8QTnk+xf562ioeQJKPu+gM/a2Jr0zdFkMe3KdmaUn
 Zhjba1Q1dNeAWouvCeMjfEwQjf1IEPmK6deUlEqryyQbBjiNbaHDPif74Ua9jruRDwm8
 KEeruGSIx1k934OJc4czDdsf55XlVD5CHkCerCTdI9XSqGh8Y5fzLt2iWa9sSAfTvdqQ
 9Gm9Kp+UkqUl1daInGJwSaJI/WfMe4s5OgI3JNnEnyIkddHBbuyDsoVCmSGgdLrw0XW7 UA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ssmcv9nk4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:17:48 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37UBHlln006306
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:17:47 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 30 Aug 2023 04:17:42 -0700
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
Subject: [PATCH V2 0/4] Enable IPQ5018 USB2 support
Date: Wed, 30 Aug 2023 16:47:18 +0530
Message-ID: <20230830111722.19380-1-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: f4XPbSBmsXM7Sa4blG1Mo4OUp0Bj8yE9
X-Proofpoint-GUID: f4XPbSBmsXM7Sa4blG1Mo4OUp0Bj8yE9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 mlxlogscore=496 spamscore=0 malwarescore=0 mlxscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308300105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_041753_483096_AC468467 
X-CRM114-Status: GOOD (  15.28  )
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

[V2]:
	Incorporated review comments regarding splitting the
	series as per subsytem, device tree naming conventions
	and ordereing of the nodes.

Nitheesh Sekar (4):
  dt-bindings: phy: qcom,m31: Add IPQ5018 compatible
  phy: qcom-m31: Add compatible, phy init sequence for IPQ5018
  arm64: dts: qcom: ipq5018: Add USB related nodes
  arm64: dts: qcom: ipq5018: Enable USB

 .../bindings/phy/qcom,ipq5332-usb-hsphy.yaml  |  4 +-
 .../arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++
 arch/arm64/boot/dts/qcom/ipq5018.dtsi         | 54 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-m31.c           | 60 +++++++++++++++++++
 4 files changed, 129 insertions(+), 1 deletion(-)

-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
