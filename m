Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA22EC02184
	for <linux-phy@archiver.kernel.org>; Mon, 13 Jan 2025 21:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:CC:To:In-Reply-To:References:Message-ID
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4GFCGGXFgzDkRukR28S4XebtGeycD3Qq5H6M5fo0kM=; b=B96NxvDRstrJl+
	TIeotj3HI7VmKA3mxULE84Xl0wmCAVyaDNcp5VJ2cOogcL0XI6HT/atnd0lWhYAZnMxlP5oRBHPAu
	NN0loiaf1yOMQhzBDKmJLfysZjMUiMZ7XuohkhYgzv7Xxi78UMU6HbcdR2HW7t4yCJWoEZ2GH09ZI
	1tz4sIyNuk3VVhT99A4cvDAO8JATKEZA06pz1aqYjKn3PAez2D8THfClnMMnItQakEC8/d82fpEDt
	xeO8hIigK/XOrkC+YsonwhwSURj6RenvodqWC9cDVaDqUxmDEids00gZ0xP0UlO6/VVdJy5FmAJak
	GJWfxINHOGl+pFN9uFIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXSHa-00000006iqP-23Y3;
	Mon, 13 Jan 2025 21:47:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXSGp-00000006ifV-1YJx
	for linux-phy@lists.infradead.org;
	Mon, 13 Jan 2025 21:46:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50DEHYCh010554;
	Mon, 13 Jan 2025 21:46:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eLZZDCWeTLEUzotOcsJ4353D09+yJj+Oq2OmeWFQC/8=; b=FdaOH2X/XnLRHdHU
	iSH0ClPJghuuEbsfME5BSYlzjKW6Waq2HA1d7owd0ENHBdBH7/eKSnXtDxbvCYnq
	yJSOWE+T7BJExOFjJ1hSmxy8b4+18GKH463Jv7eKNFHqMobM/XH0BomUjV8aJHxX
	isF8wLtHa9j7HvljaJut++Qy1vZh13joFCkZ+2uoWgEiM2GlGE60KqNfTO5iAAgn
	Z+NS2wM/TNicTbGDPTKYwvuh/36u+9cgQ4Olm4OGJxIqVHy+SUygwBE+0th2vg/r
	enmddydh9QkDFfadswPvDbATUwNv3UN3XOJzjHEyJDxSYrfqo+rn1TIfHsEcPArw
	Amr7gQ==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4454fe10v0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 21:46:34 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 50DLkXjE003105
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 13 Jan 2025 21:46:33 GMT
Received: from hu-molvera-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 13 Jan 2025 13:46:32 -0800
From: Melody Olvera <quic_molvera@quicinc.com>
Date: Mon, 13 Jan 2025 13:46:24 -0800
Subject: [PATCH 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document
 the SM8750 QMP UFS PHY
MIME-Version: 1.0
Message-ID: <20250113-sm8750_ufs_master-v1-1-b3774120eb8c@quicinc.com>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
In-Reply-To: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
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
        <linux-scsi@vger.kernel.org>, Melody Olvera <quic_molvera@quicinc.com>,
        "Nitin Rawat" <quic_nitirawa@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736804792; l=1161;
 i=quic_molvera@quicinc.com; s=20241204; h=from:subject:message-id;
 bh=gOzQv4+eRC9P7wjxsfUOOhaebVaU3cc+/5NZOCDv/Ow=;
 b=fKPjl4SXOqZoumOqTqbvWh8U2kqwQjUpfliG/BKyNjH4V8iEfGODyGvzTn9vJ+RDt3qfIkKeE
 i/Y9jEf0QcwAdsV6y5mJN2aolGkw8NR7rS66y3YCcniKkaf5aK3fZDN
X-Developer-Key: i=quic_molvera@quicinc.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: CyhQPvNKUowv0mfdumMvnGUnLnKjFvsz
X-Proofpoint-GUID: CyhQPvNKUowv0mfdumMvnGUnLnKjFvsz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxlogscore=897 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501130171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_134651_417797_859D93B3 
X-CRM114-Status: UNSURE (   9.13  )
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

Document the QMP UFS PHY on the SM8750 Platform.

Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 72bed2933b034ff61a29fafebfa176383086e440..a58370a6a5d389cd0118e7b4650c6ff960bf86fa 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -44,6 +44,7 @@ properties:
           - qcom,sm8475-qmp-ufs-phy
           - qcom,sm8550-qmp-ufs-phy
           - qcom,sm8650-qmp-ufs-phy
+          - qcom,sm8750-qmp-ufs-phy
 
   reg:
     maxItems: 1
@@ -111,6 +112,7 @@ allOf:
               - qcom,sm8475-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
               - qcom,sm8650-qmp-ufs-phy
+              - qcom,sm8750-qmp-ufs-phy
     then:
       properties:
         clocks:

-- 
2.46.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
