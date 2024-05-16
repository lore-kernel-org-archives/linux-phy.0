Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99652C25B77
	for <linux-phy@archiver.kernel.org>; Thu, 16 May 2024 03:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbSW51/DP0e0kpDqYHkY6A7TAKsJDbr9Qod5GzTZ4Po=; b=tm3fAs4EXCCX2q
	j0GIqjbRFqFSz5ZaPwIqffg74wnezKQYeq289frTqZoixhBWOxgPev8UUlHPnviqP4zIi1HwcKvKL
	TbjRnoIGcwWFEK7QHJlyk1ajpXmeyb1ucXKDMWEmNme0BW5s6Z/3goZhQCY3GZGrMThEH9WHj3nFy
	xNUYrGfP4jmhNoS6NxvyUU5PP+tm9yAsG8bIqdAEoIJmd7qrTaL3MxyW7AookssCAPhb7NHVZ5qM4
	nwQ5zBZUV0zXxxMQ1WYwKkn3ueAW7YSG7sx35+ZoCyGB1IFfzVt+Ky8z+HDkWCjYiz6Fkc5SAlCOX
	cs/rpF7zX9ASNYgvhxyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Rjj-00000003Z9b-0df3;
	Thu, 16 May 2024 03:24:55 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7Rjf-00000003Z7T-2PIu
	for linux-phy@lists.infradead.org;
	Thu, 16 May 2024 03:24:53 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44G0ssrW006911;
	Thu, 16 May 2024 03:24:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding; s=qcppdkim1; bh=6F29bxT
	wNsCstBONutx5eWXtaUVwSbXLovHf+5bdANA=; b=AbXmAEclfDKpLNqxYsnt+aA
	BniRLk+Wa0ilSkchcv9qUXco3UEDlZqEFMRsaWPZfCu//zP/pTaLAFg4WyhvYCKj
	TalQzG01l9c17IaSGg/M9nQ8dHWlx7Q6QgM68J+SN0Pz8yfdsMCJGzX22ezn1PC1
	fVmDvSwi/OQ44KF+r1nElVwWZQ02tPMg+0kYFeABEuO08OwJWU89thWSmrGPQCzz
	O+37az881qFTwEzj8Ue3sCRa/hz3CnmbwUJtP07zst1B1a1hegBGWLt6E+anefKj
	hW/JXi27MNS1b4s2uDkjFCwG5xOZTRAowxfsKxMjzM7wyJtV0KO6yFlq0CKsk1g=
	=
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3y45vbcmv5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 May 2024 03:24:44 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 44G3Ob2M032169;
	Thu, 16 May 2024 03:24:38 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 3y4quybhju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 May 2024 03:24:38 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 44G3Ob04032145;
	Thu, 16 May 2024 03:24:37 GMT
Received: from hu-devc-blr-u22-a.qualcomm.com (hu-devipriy-blr.qualcomm.com [10.131.37.37])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 44G3Obvs032138
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 May 2024 03:24:37 +0000
Received: by hu-devc-blr-u22-a.qualcomm.com (Postfix, from userid 4059087)
	id 63B674199F; Thu, 16 May 2024 08:54:36 +0530 (+0530)
From: devi priya <quic_devipriy@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, quic_msarkar@quicinc.com,
        quic_qianyu@quicinc.com, abel.vesa@linaro.org, quic_cang@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: quic_devipriy@quicinc.com
Subject: [PATCH V4 2/4] phy: qcom-qmp: Add missing offsets for Qserdes PLL registers.
Date: Thu, 16 May 2024 08:54:34 +0530
Message-Id: <20240516032436.2681828-3-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240516032436.2681828-1-quic_devipriy@quicinc.com>
References: <20240516032436.2681828-1-quic_devipriy@quicinc.com>
MIME-Version: 1.0
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: drXw9aa8IYgUEVFeaKxEWK6LxmoLofEQ
X-Proofpoint-ORIG-GUID: drXw9aa8IYgUEVFeaKxEWK6LxmoLofEQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-16_01,2024-05-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 mlxscore=0 suspectscore=0 spamscore=0 malwarescore=0
 adultscore=0 mlxlogscore=850 phishscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2405010000 definitions=main-2405160022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_202451_766807_75230ED6 
X-CRM114-Status: UNSURE (   8.86  )
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

Add missing register offsets for Qserdes PLL.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: devi priya <quic_devipriy@quicinc.com>
---
 Changes in V4:
	- Picked up the R-b tag

 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h
index ad326e301a3a..231e59364e31 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-pll.h
@@ -8,6 +8,9 @@
 
 /* QMP V2 PHY for PCIE gen3 ports - QSERDES PLL registers */
 #define QSERDES_PLL_BG_TIMER				0x00c
+#define QSERDES_PLL_SSC_EN_CENTER			0x010
+#define QSERDES_PLL_SSC_ADJ_PER1			0x014
+#define QSERDES_PLL_SSC_ADJ_PER2			0x018
 #define QSERDES_PLL_SSC_PER1				0x01c
 #define QSERDES_PLL_SSC_PER2				0x020
 #define QSERDES_PLL_SSC_STEP_SIZE1_MODE0		0x024
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
