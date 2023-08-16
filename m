Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F3EC04A6A
	for <linux-phy@archiver.kernel.org>; Wed, 16 Aug 2023 15:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGmv9VnfS262SGdAObqFUZHDnvbWT1NU0jfF6/e2i4M=; b=U7JIbTqfznNA1q
	Cno21vGsLkQHLlF1+W5J3/OrYopFB1nyVnUdJS8gTurjL0miNo6d3u5qehS/9j0ISYvBKDPbpwdWz
	8g7RVKfqqZ+jPthssFAKAMv4RIrXyv3YlwWuIsgsOdhcXd2GMUrghUKoVTc3C0Yw5RK3ZORhBt8VJ
	mS55r62Du1FGHJmgtfgLRl7wWVRdGcT8oRwQxVzTfLyp0nJAJBLV7GRM9dQnl13OY7gd69BwbNNb2
	gKZHBzOYfppuk6IQyDs4/gDTCyk+KWi5KOEVY0jA3W0BcOBJOeYLg24rCrFgjh/lSmgmypKagGQ+u
	RBRp7Abm9PHv1oMQd4bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWIlY-004XDf-1s;
	Wed, 16 Aug 2023 15:49:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWIlV-004XC4-3B
	for linux-phy@lists.infradead.org;
	Wed, 16 Aug 2023 15:48:59 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37GCc0SB029978;
	Wed, 16 Aug 2023 15:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=zwjRuLoJZh6RkpKuXDFIdUdFY5T5RLAzUpZUsAORSj0=;
 b=DziMLkKiV3FleJjLCYfuDuGI7O5Wec6g/P4+We+pWWY+fwsdWSypWkqpnR/RdTo1Tt0K
 EDVm1WtAtrYCyfc2/CC+Mbd1O+ljCOKJHj3WfuL+jthf7atecFU5umoS+JvbrfzSxOgf
 CNb9qD6WBspFJ0flt1hdPhhDKCPkoe+QtpDHM4gDfeZiiZqch7F6Id8bvOtCbISi/eTk
 L9ywsV1Z3+00R1pNfE3oAdZ+O1chxNwjSjXMvwD2Rns431c/UEV8AAOs08PZgaX1pNpY
 1j59K7HSABt8TalUZgUBQwT0qP/27ECCHV0npjJBCfblzmVnGsyQW+i3o5dY/r6sPIwp 7Q== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sg83rb52g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Aug 2023 15:48:48 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 37GFmjFY002217;
	Wed, 16 Aug 2023 15:48:45 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3se35maye8-1;
	Wed, 16 Aug 2023 15:48:45 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 37GFmjqM002211;
	Wed, 16 Aug 2023 15:48:45 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 37GFmihw002208;
	Wed, 16 Aug 2023 15:48:45 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 4FAC35000A9; Wed, 16 Aug 2023 21:18:44 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
        agross@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V1 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
Date: Wed, 16 Aug 2023 21:18:40 +0530
Message-Id: <20230816154841.2183-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
References: <20230816154841.2183-1-quic_nitirawa@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: ioS7NbA6T-pbzsv0kUOQLcAjveP_nlGT
X-Proofpoint-ORIG-GUID: ioS7NbA6T-pbzsv0kUOQLcAjveP_nlGT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-16_15,2023-08-15_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=895
 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 mlxscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2306200000
 definitions=main-2308160137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_084858_034000_3A7C61C0 
X-CRM114-Status: GOOD (  11.35  )
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

Document the QMP UFS PHY compatible for SC7280.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index d981d77e82e4..ad78da9c2c1a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -31,6 +31,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
+      - qcom,sc7280-qmp-ufs-phy

   reg:
     maxItems: 1
@@ -110,6 +111,7 @@ allOf:
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
+              - qcom,sc7280-qmp-ufs-phy
     then:
       properties:
         clocks:
--
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
