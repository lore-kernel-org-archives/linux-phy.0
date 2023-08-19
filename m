Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D2A4EE49AC
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 11:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/HefcfinLfY0Y01ynWoJn5W6seSTK7xRTD/PnE2htQ=; b=x8C4rj4cmisCaL
	p2VC6EWOT/t8GoswOKnz0E91C1DONCNSIum6g0iP2NxRBRF+Mh6+UH9SKefJ0BOEKkiwkbozhE1fv
	Q8scalcHX/E5K9Snu0FpZ0wS6DqeCfCjvTRytLu8uZmAuqlVrRxzGcojFjbI5G1j4bVngsbYsEzAa
	hPcU/DJcL04gZVVKh2f9EEOLWaiLdFMAQT+TWxSuDFWVuc8iKsEKVn7aAeUdQewd3iViBNW1Quxf8
	MTLjMqlU5mJGvaQocuL2mauW7yOeXbBaNhG6A2ughSXJTQzGVIMyGjLdZGBFlhGhb8lHR8XRhhfPx
	C8DFQoxbNyy3uX7aVIxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXKVT-00AsFR-0I;
	Sat, 19 Aug 2023 11:52:39 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXKVP-00AsDP-1p
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 11:52:37 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37JBiNu5014363;
	Sat, 19 Aug 2023 11:52:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=3H2oQtHBtC/er0yBSPAHO63FTlgW2GqfAUwz9PeB8Hk=;
 b=AiF/LETocnPmchVwQ/iwcCrfZlZZzDUii92NcCGP+4t89wfKRD4NTGgKo6YQ+o2sNbcv
 H0tGRldLzjnNKp3Sh63OgE0Q8wUfJwoU2zrrSLqD5DhdTypdGhTSXO4sBBwNr6tmxd48
 kEHMKqITfGufH2wzaziVLQYyKf8/AUm7uAWIJ4U09PS2eEvIpa7bFP4iPlXB5SqRmXRE
 4Ma+sRqD83FmoUyIqSyu8/Xwqlmjhwve5CTrKI9dD41aGsCQIbVrfUwAHypwOT2ouEcp
 xtjpzdeh6SedY3u0oVPAKaip6ILCNz+k9NtRANzxliremhVaWLyIL+h1SIdmtpFdJNAX 2Q== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3sjnu10hbh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Aug 2023 11:52:30 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 37JBqRM6014064;
	Sat, 19 Aug 2023 11:52:27 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3sjptk9pw4-1;
	Sat, 19 Aug 2023 11:52:27 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 37JBqQ16014057;
	Sat, 19 Aug 2023 11:52:26 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-nitirawa-hyd.qualcomm.com [10.213.109.152])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 37JBqQUl014052;
	Sat, 19 Aug 2023 11:52:26 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 2342877)
	id 0BBB9601035; Sat, 19 Aug 2023 17:22:26 +0530 (+0530)
From: Nitin Rawat <quic_nitirawa@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: [PATCH V2 1/2] dt-bindings: phy: Add QMP UFS PHY comptible for SC7280
Date: Sat, 19 Aug 2023 17:22:22 +0530
Message-Id: <20230819115223.9479-2-quic_nitirawa@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230819115223.9479-1-quic_nitirawa@quicinc.com>
References: <20230819115223.9479-1-quic_nitirawa@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Y8IRw8RhtY-7RS9yF9bNdzz4F1NVELsg
X-Proofpoint-GUID: Y8IRw8RhtY-7RS9yF9bNdzz4F1NVELsg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-19_12,2023-08-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 impostorscore=0 clxscore=1015 mlxlogscore=990 suspectscore=0
 malwarescore=0 bulkscore=0 mlxscore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2306200000 definitions=main-2308190113
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_045235_721201_B47257EA 
X-CRM114-Status: GOOD (  11.37  )
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
index d981d77e82e4..19140ee1f889 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -19,6 +19,7 @@ properties:
       - qcom,msm8996-qmp-ufs-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,sa8775p-qmp-ufs-phy
+      - qcom,sc7280-qmp-ufs-phy
       - qcom,sc8180x-qmp-ufs-phy
       - qcom,sc8280xp-qmp-ufs-phy
       - qcom,sdm845-qmp-ufs-phy
@@ -99,6 +100,7 @@ allOf:
           contains:
             enum:
               - qcom,msm8998-qmp-ufs-phy
+              - qcom,sc7280-qmp-ufs-phy
               - qcom,sc8180x-qmp-ufs-phy
               - qcom,sc8280xp-qmp-ufs-phy
               - qcom,sdm845-qmp-ufs-phy
--
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
