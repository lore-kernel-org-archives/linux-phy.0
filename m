Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EF14C02187
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jan 2025 09:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RSFhyJ/AENxaimU6Dw/dBPMhu0IsxLAqCIF/JLyK5Xw=; b=21VuoFIsSdiv8S
	YOtEcfCnwm0+I3H8wQMBFE3BdlLx5P0q2iy4lj7LXjcjejAxivpWauhKbZ9A9xwTvAgcOMA5LhWi8
	D87E/eH4IJRvee5qbkGPYUbpbtb83+ZQRM7YIkOrL6woaP2zGLwY0UM38YMlhoSPLklr+5SF1mpHe
	kbgeKY8TMtTbx/8qI1fGL4N0HQJ4SISsUoat18iutKLTUa+MGt16j0a+7u8tdKc2G2R6kb0ySZvL9
	HTW4RT583VdZ78u47gtsLdk2APDgo2oyB2zI/YHZRumRyoUXO1ljUv8M8LSRu/K625+cbNRpje3q/
	Etg2XvmvXQcgWUfj4+fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taAmt-00000007Rnq-2R04;
	Tue, 21 Jan 2025 09:43:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taAma-00000007RmO-15dJ
	for linux-phy@lists.infradead.org;
	Tue, 21 Jan 2025 09:42:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50L8Yl0f013673;
	Tue, 21 Jan 2025 09:42:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=CdNyry426P/yRKRN0ZI7OzNzjFeP8lEV1wy
	BXwHGZ8w=; b=CI7XquUR/pOYoJEcSORrSb6njtF6gtuuR/r/LLBWbZmilrSBTCh
	FO7Y+Z2JRHjDJIeGF3wbXna5qSPQYbyFF0pku/3UDWbOBT3gRQ2FLUCxkBbvjSww
	Np7or8HrKvCYkjdP8Vi5ItyvAHnXrILH4gnyhpDrsMaKVJP8rQT6KlnUTvT75Idz
	Qtk/5XPhG2U3DFPPlC2YhkUEpWAKvk8iCoIqFXMWN8pQNyso7IYLfAvKWiFZVmMk
	2XEoSlryPGEXQpUSmwZJlFyVY6lar4SqUnIU+j12oo3mX00rsrtgdJUN4xsHKox6
	t2Z1+vqT3o8DtAIj7OSPT1vf8Ahnm3JuzZA==
Received: from aptaippmta02.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com [103.229.16.4])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44a75e0gt6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Jan 2025 09:42:47 +0000 (GMT)
Received: from pps.filterd (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 50L9gj2f003213;
	Tue, 21 Jan 2025 09:42:45 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 4485ckpnj6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Jan 2025 09:42:45 +0000
Received: from APTAIPPMTA02.qualcomm.com (APTAIPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 50L9gjC3003206;
	Tue, 21 Jan 2025 09:42:45 GMT
Received: from cbsp-sh-gv.ap.qualcomm.com (CBSP-SH-gv.ap.qualcomm.com [10.231.249.68])
	by APTAIPPMTA02.qualcomm.com (PPS) with ESMTPS id 50L9gikk003204
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Jan 2025 09:42:45 +0000
Received: by cbsp-sh-gv.ap.qualcomm.com (Postfix, from userid 4635958)
	id 9DCD740BBC; Tue, 21 Jan 2025 17:42:43 +0800 (CST)
From: Wenbin Yao <quic_wenbyao@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, p.zabel@pengutronix.de,
        dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
        quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
        manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: quic_wenbyao@quicinc.com
Subject: [PATCH 0/2] phy: qcom: qmp-pcie: Add PCIe PHY no_csr reset support
Date: Tue, 21 Jan 2025 17:41:38 +0800
Message-Id: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: va46TrQU8P5630v08xyn9jcs9A4atPxE
X-Proofpoint-GUID: va46TrQU8P5630v08xyn9jcs9A4atPxE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-21_05,2025-01-21_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 adultscore=0 mlxscore=0 impostorscore=0 mlxlogscore=874
 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501210079
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_014252_418728_5D7158F6 
X-CRM114-Status: UNSURE (   7.59  )
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

The series aims to skip phy register programming and drive PCIe PHY with
register setting programmed in bootloader by simply toggling no_csr reset,
which once togglled, PHY hardware will be reset while PHY registers are
retained.

First, determine whether PHY setting can be skipped by checking
QPHY_START_CTRL register and the existence of nocsr reset. If it is
programmed and no_csr reset is supported, do no_csr reset and skip BCR
reset which will reset entire PHY.

This series also remove has_nocsr_reset flag in qmp_phy_cfg structure and
decide whether the PHY supports nocsr reset by checking the existence of
nocsr reset in device tree.

The series are tested on X1E80100-QCP and HDK8550.

Wenbin Yao (2):
  phy: qcom: pcie: Determine has_nocsr_reset dynamically
  phy: qcom: qmp-pcie: Add PHY register retention support

 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 109 ++++++++++++++---------
 1 file changed, 65 insertions(+), 44 deletions(-)


base-commit: bcf2acd8f64b0a5783deeeb5fd70c6163ec5acd7
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
