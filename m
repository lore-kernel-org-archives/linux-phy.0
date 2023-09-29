Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52082E743F9
	for <linux-phy@archiver.kernel.org>; Fri, 29 Sep 2023 08:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksBu5Od1szJJYGuTZQacd+CQzcvy5iOO8Rk00C/vkrA=; b=Dbp8HymwSFrUzI
	+h/igG5w+ftJbdrrhsmf6MJ3JbqOMPcNSzqYSMM4V5YwExACoc3CSV3wplCRqXmedyNalQ54aR0vx
	rwxo888UrJrSpXZ8MpnXKB8C2jRPmIP9wHTJzwHcf2W3AY9hrPkbA9/vSHTW5sN4jRGw9/rZBxvL5
	U6681keX1g4Q8LlANsdRuxm2pZhJIo5xTo/+8+DIVOvaQjenzraeEKDNIhxFbFqzwJhc+JNKXiIzf
	+22Se4yLrsTlLO/b2zc3uxebrhyndHtGbf9LBOoesfhmyzbupCx4q7vdAlQzm5b+RhQMwZGBRIjoS
	alY1XlZTPm/AfedOIemA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm96T-007Onf-05;
	Fri, 29 Sep 2023 08:44:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm96P-007OlO-2R;
	Fri, 29 Sep 2023 08:44:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38T8NZrX028301;
	Fri, 29 Sep 2023 08:43:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=BZXIAXF1GcsWzT88JgZL9KOqUY3nkaOKwAT8v03JQEE=;
 b=Lz0+TTrAKaAzLMMtZmiPAZ320CD4+VcRzqjnbEAuBcrrZUT4qJadZ7CFf5gXMzb9+1Cs
 2yHxY0sXCnfwZQZUVn1EC/WHRU52o16Z7zcUPmirh6yA3bCGZk4hickbge/4ZF3ww1hy
 SdaaSp1w8L/qcCzTvjt3Pv0FSi7GGKuNJMgfJhv8WweJgfuK7YqkazqxESwD//D6vMDN
 kUsD5aVdJNxZm/t4yyH7l0FDLpdGmpCqAm7Y/F72IlC+XWp9kJyDgkHhZgRZcDoUJvoH
 5YkpLmAvqwLm8/BVnOVzjW5M7/5F7D9B+fjI1OSSrN3UbJfqtxYaFfVyGg5QS9FUCdE3 VQ== 
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tcvg9bjaa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:43:51 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38T8hoiO022760
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 29 Sep 2023 08:43:50 GMT
Received: from hu-ipkumar-blr.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.30; Fri, 29 Sep 2023 01:43:40 -0700
From: Praveenkumar I <quic_ipkumar@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <gregkh@linuxfoundation.org>, <catalin.marinas@arm.com>,
        <will@kernel.org>, <p.zabel@pengutronix.de>, <geert+renesas@glider.be>,
        <arnd@arndb.de>, <neil.armstrong@linaro.org>,
        <nfraprado@collabora.com>, <u-kumar1@ti.com>, <peng.fan@nxp.com>,
        <quic_wcheng@quicinc.com>, <quic_varada@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-usb@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
CC: <quic_kathirav@quicinc.com>, <quic_nsekar@quicinc.com>,
        <quic_srichara@quicinc.com>
Subject: [PATCH 8/8] arm64: defconfig: Enable qcom USB UNIPHY driver
Date: Fri, 29 Sep 2023 14:12:09 +0530
Message-ID: <20230929084209.3033093-9-quic_ipkumar@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
References: <20230929084209.3033093-1-quic_ipkumar@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: GTdaUXR8mrpY3IfGTg2dweKkPatieDU5
X-Proofpoint-GUID: GTdaUXR8mrpY3IfGTg2dweKkPatieDU5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-29_07,2023-09-28_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=319 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309290074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230929_014401_926078_5BFC7984 
X-CRM114-Status: GOOD (  13.21  )
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

Enable USB UNIPHY driver present in Qualcomm IPQ5332.

Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 758bb96bd184..155a862e907d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1424,6 +1424,7 @@ CONFIG_PHY_QCOM_PCIE2=m
 CONFIG_PHY_QCOM_QMP=m
 CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_SNPS_EUSB2=m
+CONFIG_PHY_QCOM_UNIPHY_USB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
