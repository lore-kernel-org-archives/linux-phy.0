Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8DD7C001DB
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 08:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDMyMn/ynlLSGiEkjmn8Eq4yd04RBQLka1sQjcLnIU4=; b=VtgOFoM+Pm4WSw
	a4LOG3lj1qrwJC4Xg+aK4JzPXFvzvIPJKIfwI+7a9IC4ZEl5QEiTbw6sznpzhK4Jr+j3/gJvkY3ul
	XNkKSTdx9kAdXQHpD5vPsR/rPPPUFedl1HxUNOJtyh+UdJJwqLCS33wswL6nY+y36wEsM2I3hg0Lv
	uLEeCSfI5QbMbaEReZSTWbCp6tkHCZpn1zUUqDIzt54kbdCs/Fkdo+HnWU1kQAswvvDO3TAof7Koc
	1mMT8W1Vxfca/ejVB2fncy8YdHvyBC2eM2PcHP3AG++iOILmaZIR643mcIvOk8Qx4XueVK7CzWHAP
	Azw2p4/C8jNim9YC/YdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVSdO-00GSBU-1K;
	Mon, 14 Aug 2023 08:09:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVSdG-00GS7W-06;
	Mon, 14 Aug 2023 08:08:59 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37E4hZF2029227;
	Mon, 14 Aug 2023 08:08:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=i62uhHykeo0dVzCMO8QhNLNMVqEDeRoKE1YJQDPMeQk=;
 b=FkhD/N5JPpakiEd2dHzPgNwrjnt8C6cuMa3Dmv/GC5qx6VXPCPSxag9zScPvjEqqD1uP
 U8spUrhsdLZ1Z2eQIvLwt6CzT8Xu+Z3hxTYIatp8zzuuLgM7VARKh4U7yi3qDsNqcXuZ
 Hv0U+f7iu5R8PJvUA+AEPXW4kF9rPcdPKzUwxW6xJJ3qTIvJftJbvTUZLw9DQwRBWMCQ
 JUMkz40C8bBCCtSzCQSmhliFO1wbJzuE7lz3fx5kgiJaG85FihnWizgVIoV7AArq1keU
 HrJGTbUI3RgtIHdxZj6/iKcYQ1JZXPHp4ZtZLs0l4RK8OH3G5CdEV6q7WluZqJDoqgAL HA== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3se3hsu8n2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Aug 2023 08:08:44 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37E88ht3007630
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 14 Aug 2023 08:08:43 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Mon, 14 Aug 2023 01:08:37 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <catalin.marinas@arm.com>, <will@kernel.org>, <p.zabel@pengutronix.de>,
        <arnd@arndb.de>, <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v8 5/5] arm64: defconfig: Enable M31 USB phy driver
Date: Mon, 14 Aug 2023 13:36:05 +0530
Message-ID: <1a44fe9f325db7fce71eba204555048c13881043.1691999761.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1691999761.git.quic_varada@quicinc.com>
References: <cover.1691999761.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: fmLH_Eogjoe_M32I5ad_N1Jh2Wr-kAzy
X-Proofpoint-ORIG-GUID: fmLH_Eogjoe_M32I5ad_N1Jh2Wr-kAzy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-14_03,2023-08-10_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 mlxlogscore=565 clxscore=1015
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2306200000 definitions=main-2308140074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_010858_078687_72DB2E48 
X-CRM114-Status: GOOD (  12.83  )
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

Enable M31 USB phy driver present in IPQ5332.

Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v2:
	Add full stop to commit log.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index bf13d5c..04daaac 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1416,6 +1416,7 @@ CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m
 CONFIG_PHY_QCOM_USB_SS=m
 CONFIG_PHY_QCOM_SGMII_ETH=m
+CONFIG_PHY_QCOM_M31_USB=m
 CONFIG_PHY_R8A779F0_ETHERNET_SERDES=y
 CONFIG_PHY_RCAR_GEN3_PCIE=y
 CONFIG_PHY_RCAR_GEN3_USB2=y
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
