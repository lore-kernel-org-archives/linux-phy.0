Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A932C07E8E
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gzQYA7+smtGKpssEx8OA/aZxGFcbgzm9lTB9j0KJRmw=; b=u99Z7mAP4IQinn
	IClbvgDcLZXuFDnM+HRqjDdZr+0VtED+xKFNmj9o5ArBwLUXWW9z881vykDMaETui4DxXnAaTRDS9
	sCUU2rilmK9CM3EfE6MrgOZhl8h53jKG21accvc+rzLFUHcj93efuvG89zeC/fRLJe/xfFwslytWM
	64My6CCo7DWYDhmObK5r4N35EayYp7unLB16JGol5ZAwIyPrr9fJGx/EIG4KAaRM8JyIIY9TFmbAh
	xLMEyj4XPSXcWB4hO1NKaTTBYsosp1afsxQpaJ22HJAOErlIbVVRLbUdqer9uWS3WfVykcPvMJEzJ
	ERG2p6eTBwSNC5lurXOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC9-00HB8d-02;
	Mon, 07 Aug 2023 12:18:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzC5-00HB5X-0b
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:18:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377BkF1G009734;
	Mon, 7 Aug 2023 12:18:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=uDiSjzQNMIihFZv/QwLP4mPl+WoenfpMmrIRH2Of8TY=;
 b=OKvuzHx+gE7DreSxckrGTvYaTq/7di+yLOXfhKo/PLQnEtK2AKgETAADZgRPa6MgQR2p
 0uqYnnFeFzff5ZsnVIJRztXI8UKwVhuncgXjTo5l8pxEprL0csHo0RIcDlMq7PBDI2eh
 B3p9SyWITgSmd3Ge2EBHy10ew26h1x2DDcl18+4/JAlNJu4Qg30f6qDagZRq2gzBW48T
 S4Fe9apIvT/XawwDW4+ixjGbnpTLrSZORlGC3rzH6DBbgeXXOZpf/1njmzuNiu6S8hn2
 IGaqyycqiTZ85rq4mEkD58z6Jz4K9SvLvo6kklF7VVT60hhRwLCIddolmEf3wwdTVtqF 0A== 
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s9dcybfkx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:18:30 +0000
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CIRu3027939;
	Mon, 7 Aug 2023 12:18:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3s9fgk7kjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:18:27 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CIQnN027927;
	Mon, 7 Aug 2023 12:18:26 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 377CIQbY027925;
	Mon, 07 Aug 2023 12:18:26 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id CCDE31B5B; Mon,  7 Aug 2023 17:48:25 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 0/9] Add pmics supported in Qualcomm's SDX75 platform
Date: Mon,  7 Aug 2023 17:48:09 +0530
Message-Id: <1691410698-25180-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: sr5imBSf5M4NAIgrnu49_qjwhLkpC7TX
X-Proofpoint-GUID: sr5imBSf5M4NAIgrnu49_qjwhLkpC7TX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_11,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 impostorscore=0 mlxlogscore=713 suspectscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308070112
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_051841_236479_724F4E82 
X-CRM114-Status: GOOD (  17.75  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

Changes in v2:
 - Added compatible for pm7550ba for eusb2 repeater and used it in DT.
 - Addressed some minor comments from Konrad to add fixes tag, labels
   and update the labels

This series add support of pmics that are found in SDX75 platform and
add the corresponding regulators in the IDP platform as well.
It also parallely updates the pmic found in SDX65 to PM7250b and add pinctrl
support for the same pmic chip.
This series is based on the new header inclusion[1] and movement of the
regulators level from rpmpd to rpmhpd[2].
This series can be picked after successfully picking [2] and [3] as [1] has
already been applied.

[1] https://lore.kernel.org/all/1689744162-9421-1-git-send-email-quic_rohiagar@quicinc.com/
[2] https://lore.kernel.org/all/1690781104-2290-1-git-send-email-quic_rohiagar@quicinc.com/
[3] https://lore.kernel.org/all/1690461813-22564-1-git-send-email-quic_rohiagar@quicinc.com/

Thanks,
Rohit.


Rohit Agarwal (9):
  dt-bindings: phy: qcom,snps-eusb2-repeater: Add compatible for
    PM7550BA
  arm64: dts: qcom: sdx75: Add spmi node
  arm64: dts: qcom: Add pinctrl gpio support for pm7250b
  arm64: dts: qcom: Add pm7550ba PMIC dtsi
  arm64: dts: qcom: Add pmx75 PMIC dtsi
  ARM: dts: qcom: sdx65-mtp: Update the pmic used in sdx65
  arm64: dts: qcom: sdx75-idp: Add pmics supported in SDX75
  arm64: dts: qcom: sdx75: Add rpmhpd node
  arm64: dts: qcom: sdx75-idp: Add regulator nodes

 .../bindings/phy/qcom,snps-eusb2-repeater.yaml     |   7 +-
 arch/arm/boot/dts/qcom/qcom-sdx65-mtp.dts          |   2 +-
 arch/arm64/boot/dts/qcom/pm7250b.dtsi              |  10 +
 arch/arm64/boot/dts/qcom/pm7550ba.dtsi             |  70 +++++++
 arch/arm64/boot/dts/qcom/pmx75.dtsi                |  64 ++++++
 arch/arm64/boot/dts/qcom/sdx75-idp.dts             | 230 +++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdx75.dtsi                |  74 +++++++
 7 files changed, 455 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/pm7550ba.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/pmx75.dtsi

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
