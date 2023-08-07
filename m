Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1246CC001B0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Aug 2023 12:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gzQYA7+smtGKpssEx8OA/aZxGFcbgzm9lTB9j0KJRmw=; b=qrmwva7u6t4suP
	pKMf1PP5YHsKYRAFafJnfcYg27eyTF8gw5WOV7KJ+na2LNbCDw5dtjxKLftoauPn7rllkTiUTBAUb
	zrEPfxKrMJzs6nKgwt2BTpoTZYKu2yamLOL3foZ2cu5+e05r7hnzJdUVg0jwGThTGH4erVgQIudc8
	rBLrZ0aLta3Hl1OvwFMXnSY4pVJMZj9a6kJMT8Dk6GtBgn9xTv2r0ZkhqnN8b8/m0xxvdR3pLRIJu
	7MiHiL0CxXsLU3AglUa0Dn31oz39pHV6DNylVEbgEzTLnLOc1E7u8RM68bLvAHw4zmT2kREr7rL+N
	I1PtsS1uayRaLDl0I/gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzMZ-00HD3F-2e;
	Mon, 07 Aug 2023 12:29:31 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSzMW-00HD2g-2c
	for linux-phy@lists.infradead.org;
	Mon, 07 Aug 2023 12:29:30 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 377BrNL1023112;
	Mon, 7 Aug 2023 12:29:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id; s=qcppdkim1;
 bh=uDiSjzQNMIihFZv/QwLP4mPl+WoenfpMmrIRH2Of8TY=;
 b=eajSVeFzxPlDomdyrrQ/BmF2MWIKsYxQd6xwrnHigxvbTiQj7STzgBb8U+cbbzS1+D+j
 ndXWkPvAZ9lpGx5CUCCDbjCmmzVrvmWLjF7HKtxhaSG0Le7dw0DN9qiwPAaF7Z8D7s+m
 2Zpi8GJUcIPabGgcNV3Ekbc8by0+OVwiIigeotWHIKlmjmlWyC5tI500Hr3v09wmLjU+
 nD/RJhtpJkjp30WznN0/xXSe+yyHQdXdF2eBZGwayr39eI4bPBz9G6ib+aHK2Hd0/dfB
 liZNkCPQUzuqOZ7avmrhpiwcPpnBqL7Xos07ZrJ+nIvO9oKoUZ9AqLMh+wrdgQ6+zrnU 6w== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3s9dcybg2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Aug 2023 12:29:23 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 377CStjA032412;
	Mon, 7 Aug 2023 12:28:55 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3s9fgkntvs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 07 Aug 2023 12:28:55 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 377CSt39032395;
	Mon, 7 Aug 2023 12:28:55 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 377CStkf032393;
	Mon, 07 Aug 2023 12:28:55 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 950451B5B; Mon,  7 Aug 2023 17:58:54 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        abel.vesa@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        quic_pkondeti@quicinc.com, Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v2 0/9] Add pmics supported in Qualcomm's SDX75 platform
Date: Mon,  7 Aug 2023 17:58:44 +0530
Message-Id: <1691411333-1556-1-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: OKTsjdWWE7jXSSaALeZi6ltKuY3evIRq
X-Proofpoint-GUID: OKTsjdWWE7jXSSaALeZi6ltKuY3evIRq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-07_12,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 impostorscore=0 mlxlogscore=713 suspectscore=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308070116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_052928_851245_C8F0FD15 
X-CRM114-Status: GOOD (  17.65  )
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
