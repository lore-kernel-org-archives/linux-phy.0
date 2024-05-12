Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A79C8C25B74
	for <linux-phy@archiver.kernel.org>; Sun, 12 May 2024 08:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UwFj0DQkToawIY4UKS/XNom/VMkqVE1Hbjzi/0b2JrI=; b=YGuuSz3dDPtlfG
	CeplNf/bWNNH8A+LRmRC6t4G2/NJBOk7LoktLQSIJoZqA1ebsgUjpS9oq180x2DL4C8TlwkJWLLN3
	/huaUsFje+b+I0t4LfpaOnpuplqbSGi+2IIswVmsS1c4ql8fBK7P5woJ3Unzd936TcFVJfPCMi/7q
	QHDysCjG09L5dpY43Vu+52uz2+1qMe88tX2Qmppxp7e4vyYMULtFUlir6GQTy6Wzj0N5IsgxScvaJ
	S1V7LssyVHkgyDXsjBssYJjyTx62rYasbpqtFwue2+oZwjEsH4lG9bXR4Ogk3Ednn6lwHwz41H61d
	+pGjrhEyrXWS8o7Kg7sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s64Ww-00000009ZLA-0ww1;
	Sun, 12 May 2024 08:26:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s64Wr-00000009ZJg-2tEQ
	for linux-phy@lists.infradead.org;
	Sun, 12 May 2024 08:25:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44C7Pu5Q000483;
	Sun, 12 May 2024 08:25:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding; s=qcppdkim1; bh=KQBwbQ6FHPb9QLsOTZqr
	JS/yEKzH5E6J0bAhscUnszQ=; b=UR0cbRyXiEMTZQxCSKjEDK5ytu5nuidwSJ0n
	TPgxmCpymV0Nm2x6eJaosM2G34ucx61B/YUhK+c7abt9/2F5qx0SK7I0Sh0xv3yb
	FOOCGwhCW4W79ePzcI3MXmRzcX93Nriys1CO+eU8cZpgRoS0drpcO0k78m07fyjP
	bAp05vXLg26sQgLRcBtw0/1X43l6us4pnx2P0ZYq5KHL+j9XJXEEqPfTaMOzI9ND
	/1hj/fh3fmZ8WQGlrwWDyeVyyhywr7eKNswnKUxGkSZA20kCT68XAB0u8k7B52Ul
	UoR6SEdklR4F+tACN44rWrfd3suF2W7UQv4+zIyv++CuGmmbuA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3y21y7sej5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 12 May 2024 08:25:46 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 44C8Pgpe005088;
	Sun, 12 May 2024 08:25:42 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3y21rkn9uj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 12 May 2024 08:25:42 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44C8Pgbe005072;
	Sun, 12 May 2024 08:25:42 GMT
Received: from hu-devc-blr-u22-a.qualcomm.com (hu-devipriy-blr.qualcomm.com [10.131.37.37])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 44C8PgmY005068
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 12 May 2024 08:25:42 +0000
Received: by hu-devc-blr-u22-a.qualcomm.com (Postfix, from userid 4059087)
	id 5650740FAB; Sun, 12 May 2024 13:55:41 +0530 (+0530)
From: devi priya <quic_devipriy@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, quic_msarkar@quicinc.com,
        quic_qianyu@quicinc.com, abel.vesa@linaro.org, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_devipriy@quicinc.com
Subject: [PATCH V3 0/2] Add support for PCIe PHY in IPQ9574
Date: Sun, 12 May 2024 13:55:39 +0530
Message-Id: <20240512082541.1805335-1-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: kgD1dCnPPJFxMCUv4mWc6HppYf7OQ4Gi
X-Proofpoint-GUID: kgD1dCnPPJFxMCUv4mWc6HppYf7OQ4Gi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-12_05,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1011
 mlxlogscore=884 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405010000 definitions=main-2405120063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240512_012557_820174_A6A91CE5 
X-CRM114-Status: UNSURE (   8.43  )
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

This series adds support for a single-lane and two-lane PCIe PHYs
found on Qualcomm IPQ9574 platform.

[V3]
	Change logs are added to the respective patches.
[V2]
	https://lore.kernel.org/linux-arm-msm/20230519085723.15601-1-quic_devipriy@quicinc.com/
[V1]
	https://lore.kernel.org/linux-arm-msm/20230421124150.21190-1-quic_devipriy@quicinc.com/

devi priya (2):
  dt-bindings: phy: qcom,ipq8074-qmp-pcie: Document the IPQ9574 QMP PCIe
    PHYs
  phy: qcom-qmp-pcie: Add support for IPQ9574 g3x1 and g3x2 PCIEs

 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 309 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5.h   |  14 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-pll.h   |   3 +
 4 files changed, 328 insertions(+)


base-commit: e7b4ef8fffaca247809337bb78daceb406659f2d
prerequisite-patch-id: 513cb089a74b49996b46345595d1aacf60dcda64
prerequisite-patch-id: ce7a8e9bac53fd5f02921bff6bc54149fb92f996
prerequisite-patch-id: c26478e61e583eb879385598f26b42b8271036f5
prerequisite-patch-id: a5c15da6a968e673737dc5aa962f31576903f8aa
prerequisite-patch-id: 353eb53cd192489d5b0c4654a0b922f23e1f7217
prerequisite-patch-id: d282ba7948460ae4d2f541c8c25ff5089ff6507e
prerequisite-patch-id: 5141131d46f7789b50ac806f10b63869d15d709f
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
