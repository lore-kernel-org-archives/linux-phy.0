Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D44BCFD31D
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 10:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UjsHoRU2hN7CbBnq5T5coTb/zjwuO0omQo7hN3dJVBM=; b=0+G0LgpxZP6WvM
	GxUEd8BQ8kUGNyCSuNs/bj5Q5ly9g9OJV1dObkwkIpZ0LUPd25cgk6HTFh8ACWW1+R0F6lcLsIAK3
	2aYJ9AdZcDQEilFybzec+haWQU5Yl6yDDglDEE3bDpaGb5R+Dk/A60XWV3oiguCRHl/6RlSRbfriG
	1Uz6G8ER0nhVkPnEzbUWRRN2gqTptI+Ej06iZjIpiB3kpom9Ynus6FxA1oZyoaFfuPdq7iSNIw4lr
	G5LVKvGZxErQrR0f827c7OP55KXxc7IwW2FN199MDe27pENLZZYTfUsW/lidfLVFWk9hFJKOFrGZ8
	6iVnOXU0NZo8a0MEAZ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szD8B-0000000G2Wl-1RxN;
	Fri, 11 Oct 2024 10:44:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szD60-0000000G1DZ-2uPr
	for linux-phy@bombadil.infradead.org;
	Fri, 11 Oct 2024 10:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=tg0J9ccnL6uj5iAaDwZmMgn5wbjzylItqqJz3yBGceI=; b=Z+H5lu6sMX2zwOtMbvwOFi9Vvy
	FLNmUwgN8/RfWyFlnx6o/phl+jPVF/soGGjiWTwDfyKu2obTjKwT9BxqrnfkWI7TKaZou5boWD8Zg
	aV5/QBC08CgICLgQVSEue9Xu2NA6f3e7tz0gUKspIikvry6Khw/VVi6wmzYYUo3btAjibAxepifBz
	EQvifZjrFxgu5A/MMolXRXLoRVhb1NuPHtRUsyFp7fYiB+eBLLGGoCOkOhV1xKzkmcBsJW4lOUexz
	NXE4QVlh/zJyNeeUxNFAodesSgKcN5wEzXKCWhkTRAgDFAlOhmwAuTqOXji7nsvCsRiX5UEZC1U0x
	ppChICgQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szD5s-00000005rH0-2Umm
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 10:42:07 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49B5fK2T029483;
	Fri, 11 Oct 2024 10:41:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=tg0J9ccnL6u
	j5iAaDwZmMgn5wbjzylItqqJz3yBGceI=; b=Y4kKqNzF2mhUIaet5h1Cvn/R1CW
	VwHRzp0D3FwAe2i6y6mMBaS5dB0Cg8atFAr5gBTIj/AJVhU6dopkAD6zCLfaNszk
	EYX6JKHMO6n1XoCmyk+tZ/LwJJRsStX8iZN7VmDWdfeCxhNMwXCt6uykK+83PkmD
	nma0zdakLXx5qT8TKMlh22HgTRkDaKkCZ7yvHy9oG9R3BNZI8G60FThHEaSCejMx
	3Wc/aywE+Dph9DmBKPDitWcBC5TGA3YSMpJwnPCg26nOPB5ce53VtYoo8ICjiEJL
	j+2D1utNbX95FVXm37yR8EVOfhs3JRn/ZAQnESY5BkM9GxhNEz6RodHwgFw==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 426g6navda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:49 +0000 (GMT)
Received: from pps.filterd (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 49BAfnVw026324;
	Fri, 11 Oct 2024 10:41:49 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 426wp7ac3r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:49 +0000
Received: from NALASPPMTA05.qualcomm.com (NALASPPMTA05.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 49BAfmwQ026315;
	Fri, 11 Oct 2024 10:41:48 GMT
Received: from hu-devc-lv-u22-c.qualcomm.com (hu-qianyu-lv.qualcomm.com [10.81.25.114])
	by NALASPPMTA05.qualcomm.com (PPS) with ESMTPS id 49BAfmW6026309
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Oct 2024 10:41:48 +0000
Received: by hu-devc-lv-u22-c.qualcomm.com (Postfix, from userid 4098150)
	id 61752651; Fri, 11 Oct 2024 03:41:48 -0700 (PDT)
From: Qiang Yu <quic_qianyu@quicinc.com>
To: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
        quic_devipriy@quicinc.com
Cc: dmitry.baryshkov@linaro.org, kw@linux.com, lpieralisi@kernel.org,
        neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: [PATCH v6 7/8] PCI: qcom: Fix the cfg for X1E80100 SoC
Date: Fri, 11 Oct 2024 03:41:41 -0700
Message-Id: <20241011104142.1181773-8-quic_qianyu@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: ChDB1w3jpjF5fjdcmROAJAU0jfysigV5
X-Proofpoint-GUID: ChDB1w3jpjF5fjdcmROAJAU0jfysigV5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 phishscore=0 malwarescore=0
 clxscore=1015 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2410110073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_114201_114788_C5E1DD78 
X-CRM114-Status: GOOD (  12.13  )
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

Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
callback in its ops and doesn't disable ASPM L0s. However, as same as
SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3 and it is
recommended to disable ASPM L0s. Hence reuse cfg_sc8280xp for X1E80100.

Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 468bd4242e61..c533e6024ba2 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1847,7 +1847,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-sm8450-pcie0", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8450-pcie1", .data = &cfg_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8550", .data = &cfg_1_9_0 },
-	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_1_9_0 },
+	{ .compatible = "qcom,pcie-x1e80100", .data = &cfg_sc8280xp },
 	{ }
 };
 
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
