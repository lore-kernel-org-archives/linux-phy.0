Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABCD8CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 02:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnLqtx0Y+TC148WEJKm3nWccBg5AqB3uLuPB9f7+pwI=; b=PyUT7pUzLo9Zop
	FWkQJXkYG1/jhbc2k1Yp5T5uFM5Wih/xvK37riKHdWZZ5QFkF/3vIz7yMO1z/h6qFAZMpzStarmNI
	JBUT93vAtXBE3IsnGQ6qwcmUxRuMU8dQSaQ3QthSRn8vFl330xK51EvGuIvnKa1Vb4L/B2PHYbspV
	CeurI41QwSNaZRGvHPpOpQmR604F0ifJEvr4jnZVg2hgMgm2MlchbI/+gZc6OrJLNYQGH+cEmP2j7
	BDGlndO2vSJmiaZGOHTPWjZa9Tbd/279DKutA0BMTqJWBYA17gGWWespUKrwcKcLCPaVnr1PDgipp
	B0XhjGNA3eZ9EKSsi+Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bjJ-00000005IrP-1hgI;
	Thu, 25 Sep 2025 02:29:09 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1bj7-00000005IjE-3qYc
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 02:28:59 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0dRWa002118
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Xn4sEHzNAa+
	rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=; b=NU3C+jqNPZacV30BvLQjAJXyLUa
	Ha9UuAi21OPzL78F4peQ7R2+UpVCyq8q/RqMUrFUVZrlPTuRWRHSmou8CP/JoRlo
	GvyhSdpbulTjrwiyie7YNASuENxa73PmvIMylnmH9qetR3PBZzlovik4X+jupowx
	NNKIiODvep37KvZ1BzKIqGhrftqbvZSsb1y6aadu8LXLOoVlbdAUrQl/OF2B3CdC
	xdv3CPEUxs/aUseEejWTRyW9VOLVlCfch+i1aWoSxMStywL8JbiVIYygW64AjGa+
	/j/IpptsWSvMGYsPllwhsX6abcjP3I8wdstjVb1MAB0B+u1rNpKUycI/Z6g==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98pep2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 02:28:56 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb864fe90so648106a91.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 19:28:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767336; x=1759372136;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xn4sEHzNAa+rFACXl1zYTLnQ9MM2kFlvsIN0wm59uEQ=;
        b=PCiNl+mez3T9NoqX1tTAWDj2nnCnSJHVfB2vFZxMohCA10NHysfKAgw6tpAEcPlrkw
         jnrouEeXAUWOhuGHkp1GOhYsl32KgwgXNm3QZVAX1Y66Xu7r1tRWyCRaHXwU3EhlKVRE
         HkAZl8snGes1SJeRHGwQEzUhGcga7QLYnMlyIqVRv+XAoPOTkMgCw0yCs/UY9k/BOQQL
         qZsl0EO1/WIteeKdUUdHzI2Nu8HgBucXgR3DyJQWwqrRYboHC/xmP3nkjvbLG0ElJpD+
         Vur3kirsKvDCAwzazU1rlk+ZMnrAvFHhdyD2duouV64c/KVcexvtCCRVgtCAQ8h/laWj
         qTNg==
X-Forwarded-Encrypted: i=1; AJvYcCUi0w2NR9nlwSBk0wESMyg02bXsbgg1F14jBSTNpRCiiVua4wVQijzQnTj6QO448NigWyjsVSzfIDI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yye6v+alyPIfRKe/XsmQbIsF/JtjpQQHG0P0Q4yQ55XslFUW5Ku
	kpESwN511kVA2na/aUK4WmJK7wXhyYBoFZUXj9m1/ONCNvzLpiWeL2NLK9FcS1ia2QclF1Gq2Gv
	+dpWgisdlazGt2LPrR3oDPIXmFAp6Jm9CN+qqJNOQ7Jck+4zUf7UuAHRbrsaAex4mZBpA
X-Gm-Gg: ASbGnctPRJngxTWPxCBr0hdMu9QhXhKV1Gs+rW5+V76PeEqEN9JSyrb419HyDipIOrW
	Yi6NVvEgdD7MwnSCIn/dT/MA4VfvAfml4iLV54HTtqRaJEPCI3E7FmSjamfOvh6JrXcAjh3cBVE
	8nLTjYLFaiWM7Y4Y9QNMmJ51T4As0dFZjsstsDEUgh0iYt5/2nH9iyvkUntHh1Fq+F+RWTeHlO5
	GO5sgYo/vRD2j8uzvJeTiAqDpRFpWp6xEy66DDD5IGjbokotnJJIhkguHL2YC1ZP3PmUVaiR6oi
	e4Pz+m7jJhSE09cnrUCJCoHuKd5PmWZeESnTvRKFyODEsNBqYG+7tNjd9aGhfUAVFJBRYQIBjPM
	z75QGiRCJZ/kulVTO
X-Received: by 2002:a17:90b:4c86:b0:32b:623d:ee91 with SMTP id 98e67ed59e1d1-3342a79339cmr1495551a91.27.1758767335538;
        Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgXeMBQTVJUw09Ed16G9vpiBcqbEqjObxvR8uAyaAS4aBdffTCSPvxaIOoG4hdBmWBMeZxSQ==
X-Received: by 2002:a17:90b:4c86:b0:32b:623d:ee91 with SMTP id 98e67ed59e1d1-3342a79339cmr1495526a91.27.1758767335040;
        Wed, 24 Sep 2025 19:28:55 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:28:54 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Wed, 24 Sep 2025 19:28:41 -0700
Message-Id: <20250925022850.4133013-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: dpTS3Yy_ZcjNF_2P_DxePCpa1RoDvOLk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfXx/m0RORTo8GG
 l5tKw9JwsvZg5I5dYpAqEfbP2Fk5vhUV/QT0UtXjVMhKDZQ2gTdb/9JK/hWCzvxZ14BD8bMNJdy
 ANN5bTFoqNQXrObRg6JhmbjXvhLZ03wNpdhehBdDcZ06oGvojzIUAy5/2t/t2TolG+djOAK8Hah
 A2YzJEXlfPHbWQ7nBVFAKaObrkMYmM25R6cu13ciqpbuXMECh6EaOvOJv7/6SWLRONywuMmr5/M
 7uxyMEQ8GOQEa+0ZelVBG2Lp3YB6ZWrph0zDU84vXrZ3ZqK7FbIPTWjm54k3oM9zrDDAeQcK0TH
 FyVpJ6oOBCGdmv4/CrRKSMBkiSDvkaFlS6/3gFoyIEACVhZvFuED4zfOUQGaHQIKsMjn6jCoHjL
 1gT3xEjy
X-Proofpoint-ORIG-GUID: dpTS3Yy_ZcjNF_2P_DxePCpa1RoDvOLk
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4a8e8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=tYbxrAoMRz_Rh0uxvwoA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_192858_095271_B603CF14 
X-CRM114-Status: GOOD (  11.91  )
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

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..2f1f41b64bbd 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -46,7 +47,7 @@ properties:
       - const: ref
       - const: com_aux
       - const: usb3_pipe
-      - const: cfg_ahb
+      - enum: [cfg_ahb, clkref]
 
   power-domains:
     maxItems: 1
@@ -63,6 +64,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -109,6 +112,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sc7180-qmp-usb3-dp-phy
             - qcom,sdm845-qmp-usb3-dp-phy
     then:
@@ -128,6 +132,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +147,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
