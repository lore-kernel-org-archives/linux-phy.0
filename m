Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6776CC35FF3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Mar 2025 21:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpH2fLiG4fUJObpMTOPOMf2Vr06b8COc9WK8e0AOrr8=; b=uqFc49DvqFYoBU
	camOXgKMm8RTuvH8kp/KoG6FTMLMVaOvBA+DLH9zf8m5TB60Xmg4x19rb66D05S+1YwVNQu8FSpt1
	mqqYwqP9+S85udJyTTWRo27fHy9CUzZRlLNdBByH3HVDm9KlHZNREEe3wuUS25O9Sd50Ne7mJiduE
	TZohicoXqVDYvcN2OZr6G4F8f3BadfU0q+Xk6D0BI0aFsVFQDa5Xn22gzVKUdRq44wC34isy+2YRv
	sZSNUAv/GsWx9UE6fey3vWZjgb0FWR9aJpIjZEIkSYHx/PLwU6BjOinLkWrYL6nSYsVD7izNXviSJ
	uVUVEVSTEeYWuP1xjvrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trkUM-00000003zhn-0K58;
	Mon, 10 Mar 2025 21:16:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trkQv-00000003yrC-0zBs
	for linux-phy@lists.infradead.org;
	Mon, 10 Mar 2025 21:13:10 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52AL12Al031435;
	Mon, 10 Mar 2025 21:12:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OfpNpZLvIGiAm8u29rn2am3Pmpw+8fOJbddSkv4rNLQ=; b=h4iZK4WVKc2AFH5z
	j9/A3golj1buY87B2sAoLhVfvTGpNdD4HYrrH4M4sy4n/5n9gT+2r+g554kg9CSE
	VAY9Gjg8878hf1rEx2J9eNBIJMDKR+OW2ecy5CyPSJUlXMcGTsijX1oohaoybRVa
	RiBfCTM4+3RY03E34UG/chuz5IzJAuXhhjVrn+yRlALTOu8g5M9er03UrjNsLP4N
	muOh5DAZcRQGJa7V4UvpnJQBQ848RIth1FwLBXf0BjTD5L2e216Fp/Da6PkYjUxJ
	IIXEq0UHPyfndXpzyTRU6cAqsLcNcFlhmttQ4/cjSTO09Xot30wcteESrqAegZJb
	fxWClQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0px4y5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 21:12:50 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52ALCheu001370
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 21:12:43 GMT
Received: from hu-molvera-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 14:12:42 -0700
From: Melody Olvera <quic_molvera@quicinc.com>
Date: Mon, 10 Mar 2025 14:12:31 -0700
Subject: [PATCH v2 3/6] dt-bindings: ufs: qcom: Document the SM8750 UFS
 Controller
MIME-Version: 1.0
Message-ID: <20250310-sm8750_ufs_master-v2-3-0dfdd6823161@quicinc.com>
References: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
In-Reply-To: <20250310-sm8750_ufs_master-v2-0-0dfdd6823161@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam
	<manivannan.sadhasivam@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Satya Durga Srinivasu Prabhala
	<quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-scsi@vger.kernel.org>, Nitin Rawat <quic_nitirawa@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741641161; l=1058;
 i=quic_molvera@quicinc.com; s=20241204; h=from:subject:message-id;
 bh=DUEH42A48gdtdBr4cr2mhYc1Ml2OgfICtAOxDh0w7kc=;
 b=fhNUs2Mg/M5hnNt3+HxR13Hz448ocMT8PCe483lGWiynEwgtoYRI1mpq9zwptW8mKQ8FNmLBF
 StGsnnGhNYYBEupKEMJXdLSyBV+jQypmKvW0HjrxoVtw9GRlWvpDDRQ
X-Developer-Key: i=quic_molvera@quicinc.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: AzkzpPvxcahHom6hVSeoZn-nQ2vw3gPo
X-Authority-Analysis: v=2.4 cv=KK2gDEFo c=1 sm=1 tr=0 ts=67cf55d2 cx=c_pps a=JYp8KDb2vCoCEuGobkYCKw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17 a=3H110R4YSZwA:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=u0-Bzi-a7h-vFBLzmccA:9
 a=QEXdDO2ut3YA:10 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: AzkzpPvxcahHom6hVSeoZn-nQ2vw3gPo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_08,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=987
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_141309_397164_58E36978 
X-CRM114-Status: UNSURE (   9.17  )
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

From: Nitin Rawat <quic_nitirawa@quicinc.com>

Document the UFS Controller on the SM8750 Platform.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index a03fff5df5ef2c70659371bf302c59b5940be984..6c6043d9809e1d6bf489153ab0aea5186d3563cc 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -43,6 +43,7 @@ properties:
           - qcom,sm8450-ufshc
           - qcom,sm8550-ufshc
           - qcom,sm8650-ufshc
+          - qcom,sm8750-ufshc
       - const: qcom,ufshc
       - const: jedec,ufs-2.0
 
@@ -158,6 +159,7 @@ allOf:
               - qcom,sm8450-ufshc
               - qcom,sm8550-ufshc
               - qcom,sm8650-ufshc
+              - qcom,sm8750-ufshc
     then:
       properties:
         clocks:

-- 
2.46.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
