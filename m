Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB5EBC83F01
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 11:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBHz/Y8+KH974oQikjRaogmr8ZUnSpvNMjY6Z22g6WM=; b=UmgLaB/+adsEkR
	gnrcVnL9aulmidYJZdgWf/xOdQpwlj9bHZWTx1/rhetrBk5eqXW0WHkwbQX2soWY5nduM0rod81Ft
	752l0TuagarY1cZUCnNUTK7Tl+5dHuXtNdLACKF6Tjg7iQNYnimaCGPJ54LCMT863SqJufPbMbL4h
	lRsVQDRQCTctFtZxM3zrXnj0e1KEOiEY8XEuSMV7MHeo4vPHaXr0Sv+XpsvVveBcqtgVtLhk/Mda6
	0EdwmKDb63ge4031WzLbHS6uZ8SjuhKDtdlwVMcgRmd+iONwp7lT5k9uXEaEwrF9kmSUw2yrKvqS+
	bdDEtRQYfTn8ddzmK5kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJDI-00DNIt-1Z;
	Wed, 30 Aug 2023 11:18:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbJDG-00DNIM-0F
	for linux-phy@lists.infradead.org;
	Wed, 30 Aug 2023 11:18:19 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37U9uCw1011135;
	Wed, 30 Aug 2023 11:18:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=e7z5YtFaGNibUWif2AGBJC31Qg774tsEpc9J6mO2uiA=;
 b=nIvkcErb6+k8PNSC4Eocsy40/DEXXF1JzOV23wHlrB8cJvZ38WBzXrfL7SB7luUCm7gO
 YotqX4NqC9j70kxr/2kan9RKluaWRxkigndRUdXna/FKXlyZTVbAY1zXeYThaVXM4ekj
 MVDJjGzT3GgrMbL8JRdUnXXiuSuNe/XWEhybX+FMYXLyk2tQ1IheMPSxvP22/uRAUJ2I
 PFeYtndrCNFlxfOP5ylOeTA58aJJIEEWGfv2KYtoUvNvQLInu5tiDuTSwSkIUToRtlLl
 dll5spOytHIxfmwJVrJ0FfKUGX5LEFIiP2lzIy857V1JUW0WQ0nFYZ8Z/aluIc98t5GY 9w== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3st0tare55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:18:11 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37UBI9qL006894
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 30 Aug 2023 11:18:09 GMT
Received: from nsekar-linux.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 30 Aug 2023 04:18:03 -0700
From: Nitheesh Sekar <quic_nsekar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <quic_srichara@quicinc.com>,
        <quic_varada@quicinc.com>, <quic_wcheng@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>
CC: Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Amandeep Singh
	<quic_amansing@quicinc.com>
Subject: [PATCH V2 4/4] arm64: dts: qcom: ipq5018: Enable USB
Date: Wed, 30 Aug 2023 16:47:22 +0530
Message-ID: <20230830111722.19380-5-quic_nsekar@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230830111722.19380-1-quic_nsekar@quicinc.com>
References: <20230830111722.19380-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: JuMAQh-x4OJPlcYYs15NdbZwhq6GBX5H
X-Proofpoint-ORIG-GUID: JuMAQh-x4OJPlcYYs15NdbZwhq6GBX5H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_16,2023-08-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 malwarescore=0 mlxlogscore=538
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2308100000 definitions=main-2308300105
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_041818_117680_CDAABD35 
X-CRM114-Status: GOOD (  14.21  )
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

Enable USB2 in host mode.

Co-developed-by: Amandeep Singh <quic_amansing@quicinc.com>
Signed-off-by: Amandeep Singh <quic_amansing@quicinc.com>
Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
---
V2:
	Sort and reorder USB related nodes.
---
 arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
index e636a1cb9b77..3eb3a98e3e12 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
+++ b/arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts
@@ -67,6 +67,18 @@
 	};
 };
 
+&usbphy0 {
+	status = "okay";
+};
+
+&usb {
+	status = "okay";
+};
+
+&usb2_0_dwc {
+	dr_mode = "host";
+};
+
 &xo_board_clk {
 	clock-frequency = <24000000>;
 };
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
