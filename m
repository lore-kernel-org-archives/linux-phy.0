Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F63C83F14
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 08:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0MlwKUWjIkpglpP45GlxLWQrdVjPg0L9OUKLY9hoXs=; b=MRtBabZF+pYDGH
	Qw/fVux/749cJfRZT5KwuVzeUdtgfU96Ub3nB6PFM8UKdhMdbcrzafcHlZaXl8M0jEaUaiTZlJR4B
	EJTogGcbPxpPLp4CFC96wkBTSfw7mAUIFhGg6IeNwvkNHC9jGloD3Y1f+5WhFoMnVdesMkLDI1cj0
	U+HoSmdza2fgU+6oojO6EtVN5cbejIIeGdBu4n4xmxSnD02mftvt144eyzlbt2RlxbrFKcwkXzsbA
	VaInBru2Ddrh6nyh4oetsa4a3FSr+o/Z2p3vAXPUOvh50IurF1skNAzCxRp2l1HxQwBmnsb+k8lz7
	rEDPIxieck3+/ys5eHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qauF0-00B39L-1b;
	Tue, 29 Aug 2023 08:38:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qauEm-00B35W-31;
	Tue, 29 Aug 2023 08:38:14 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37T604lW025468;
	Tue, 29 Aug 2023 08:37:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=qTlEoXnnHYNqDm1VU3fN0Bupb7BcKSQ1LaSO+OWm68w=;
 b=YaNzuEfT0Ujq7V4UXb+JmnaigP/wY3OGiohViNogemUKeBACK48zfq6tB75LeoSrCy0K
 xS38Q2E3ff39Ea3MW5sR7rnVdekr5tEMVfA8KV5zYu3twiswmNgWdD75mtFv8K6QtHgf
 /X5m5wnNI5uyvp5S3XbwKmCIy7Dz1jDz5ufOqQhauNa2cIcUU9+Yek9EaAk1Uj3XIjlC
 8cwrxoD2KMsvSmtdaEJCT+3RET4XGv+vzZT0xWacFSMk4xa/Qta/G1MpqnKG7fwhQgXG
 gUnxjNdT8765jFr23JgKmpRSivZIOuywymx7CAkIFsCt6KStG+iVmrwbLpUYnPLCSYJa Gw== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ss2xb98dk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 08:37:47 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 37T8bkTd011786
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 29 Aug 2023 08:37:46 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Tue, 29 Aug 2023 01:37:41 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <catalin.marinas@arm.com>, <will@kernel.org>,
        <vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
        <geert+renesas@glider.be>, <nfraprado@collabora.com>,
        <rafal@milecki.pl>, <peng.fan@nxp.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-phy@lists.infradead.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v10 4/4] arm64: defconfig: Enable M31 USB phy driver
Date: Tue, 29 Aug 2023 14:07:10 +0530
Message-ID: <c4d877136f26a48ce13d48be85d818a7f22a5afb.1693296360.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1693296360.git.quic_varada@quicinc.com>
References: <cover.1693296360.git.quic_varada@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: -0PzIB244jSMcl1l864IvbkhBXELGq2s
X-Proofpoint-GUID: -0PzIB244jSMcl1l864IvbkhBXELGq2s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_05,2023-08-28_04,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 mlxscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 mlxlogscore=602 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2308100000
 definitions=main-2308290073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_013812_992768_26C981A7 
X-CRM114-Status: GOOD (  13.36  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v2:
	Add full stop to commit log.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5315789..c1e2372 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1422,6 +1422,7 @@ CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
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
