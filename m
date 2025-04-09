Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C5FC369A4
	for <linux-phy@archiver.kernel.org>; Wed,  9 Apr 2025 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/0fbOzisjrfnaIpvasnyAk4EkCBH3xJTyghE/jEOq8=; b=3KFDZdsNmzjJoG
	rQGIZY4PfsJwoo1j6D6/XkamSBkh3KVtadcJaWIp8Y82MfazmeWIxx5na2TahJMIJJk/5kNo00l46
	sisgNGpKqo7ADoKEsD7YcGKkmWREnfW5cD8MEP9eAx2k6yzo0wPLUrSyJg3RfW/p8dBreeQEqg5lm
	nxLpnLeek/apGmzIRAEepsQMJWVy+iFzUTVHclvZ4rvc7OMKXiHpLoF14ZA4guz1RFwy5BoU8h92H
	nqvod3Fw4iRFyf7x7d9ZAlWARd+2xA1qmZE10IyvzjWktsaK9cPRACQ4oIXdtJVgQ2GddGPCn1OL7
	PkR6RC/2WeTTFmb0e0vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Zaq-000000085m9-08mK;
	Wed, 09 Apr 2025 17:52:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ZXJ-0000000850N-3bEO
	for linux-phy@lists.infradead.org;
	Wed, 09 Apr 2025 17:48:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HJN8v023047
	for <linux-phy@lists.infradead.org>; Wed, 9 Apr 2025 17:48:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=; b=NHnxggZ3HAyg23tX
	XexEu/d4b4xHNZpkZ+FJyFtExBOWgu662MfBiO8ZQunB+D3A6X0K9s3HAcUgCNJG
	Ug402U/C5zkYbyCqagEaz2pRlOSJnLbs0OJbtBaCHBUjUyftvpI2R8ntLowUEhM2
	slRDlDiuZiKQSQTbze8L8btwepDLMtOY/0Ce45s9E3SpoKO6MHznm/HHMYmi7iLy
	Win3sHeaCLquKFIUPb8nvsOxBYTBw40gMDA+n9yDONuw7GyAkBFl6nxB7prMHLa1
	NaIG883o+xMztiAmvSqleD3xB96wSTQFLybNNBwQuS6J3xcC1wW+5EdxbLYYUte4
	y85X8Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twfkm551-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 17:48:28 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-224364f2492so60961645ad.3
        for <linux-phy@lists.infradead.org>; Wed, 09 Apr 2025 10:48:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220907; x=1744825707;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=63TelnMaZLywwjt0ZE9rQRxentiOmbDDz3cY3YJGWYQ=;
        b=O6ROCiPeWASQlvSyn+RDIvZZ2eLiuXCHGyM0SVChe3xeDVxoa5pLJilZWndCSM3hBq
         b4du/hwPF+Njv50C3EKDq/t2kK210EHcko19IHkPkdrxpMLIrh8uTRNzXOwNVGflR20c
         Hwce15DvsuGGNNmaDMeuXqw78Rh35itt9cgTw7NZwzBEFSEwk2P6ZcMTbnJ8Nvrw6PK3
         lZQxwCqv//cpDtGCaeS+ZkOKeOimu0FY+PV2f/lxfq6eHV4e6eFMuzV3Wnl5hGndxmnQ
         3HzEhowM+M0YM1TZAWnrjfDVs/xOBh0skoa3zucNVXg0UeGEMPQ1Tn6Kp0psglrBgz9W
         ZSdg==
X-Forwarded-Encrypted: i=1; AJvYcCXLK8IuClQqf5MAc4aJbP6oNIEQZbeUVcf7w4z8lkmPfyNN4HttREp6wO0gmyNQLYyv5XYe/1dxbb0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc6884/GQfcLyaL1C5RvMD5JRdPAAgJixzvYQg2B1P0LjBqqhI
	pQoWMHTQYL4G7z2gbROoW4YGho5q7ZkEXzToXcvqRwCHxfWyRx7W+96IMbao7uEJ/ge1nYbuOI8
	IveAjKOxq8tzgM7vvtDNq7HsPpi4Ev1FceDUlirf7hp7w2rrZtoNo3FHFaz4CcDNp
X-Gm-Gg: ASbGncuIK+8A3LZUNmaoweC3l5qTDw5e7kbeJcbmXD509Y2FudwZXVOJqUlZCEvjNDD
	Hrg/hfJ9+6M6LEpr6NSGyO74971qk+ejKARnGq2NMHmKb9qXgpaOKOU2vl4EakM9il9t50ahq9/
	CRfN/nYYnGvf30n1tTFodcg0k8nCsCMCH0nhhGCPswWyUZmYR6kfoGSQQ9ZQmk6y8RWkmo8WGtk
	aJ5MCuU9+0sawhRxF1LvMBPzkXoWESVGu2zGR9hrKgdMCT90Q326cwNSGqjErJjQiV2pyH+ec54
	F+47hq+zICRq/EGIKTgLodOyK7ua7z40G24y5BFiLwDBRgtfmD+4LVtF1S7jX5vICxU=
X-Received: by 2002:a17:902:ebcb:b0:21f:45d:21fb with SMTP id d9443c01a7336-22ac3f321ccmr48818545ad.3.1744220907100;
        Wed, 09 Apr 2025 10:48:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgKvx8lBdm1FHNuXnyGtbdi5VXYxEdAcXoc4DCrdY78oYm92MjebgYjMMTxhRh0F50+1wKTQ==
X-Received: by 2002:a17:902:ebcb:b0:21f:45d:21fb with SMTP id d9443c01a7336-22ac3f321ccmr48818185ad.3.1744220906692;
        Wed, 09 Apr 2025 10:48:26 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:26 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:12 -0700
Subject: [PATCH v4 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Add SM8750 to QMP PHY
MIME-Version: 1.0
Message-Id: <20250409-sm8750_usb_master-v4-1-6ec621c98be6@oss.qualcomm.com>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=1370;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=8DqyV8lJU3L/SgQ/5n/G4b54XOO0JVKsEdNPv+HKEao=;
 b=77LNm3kHo7uIXLbsObMXwziEYQuHIhUNWEB4Y7oRJvpIb5WlARQPc7NSdgr3i0EeQnCMOqJMj
 APzL7x0yD/FArLp99KEn0e1azIyV9ttlUwnKo12dm6hc1W4QmrwczOQ
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: mRzuA4YEVcirSkM6PRJu2gCUTdYiEy-y
X-Proofpoint-ORIG-GUID: mRzuA4YEVcirSkM6PRJu2gCUTdYiEy-y
X-Authority-Analysis: v=2.4 cv=b7Oy4sGx c=1 sm=1 tr=0 ts=67f6b2ec cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=bbY3M6C_flAL0yJJl3cA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 mlxscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 mlxlogscore=878 bulkscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_104830_006268_4A1ACEEF 
X-CRM114-Status: GOOD (  11.81  )
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

From: Wesley Cheng <quic_wcheng@quicinc.com>

Add an entry to the compatible field for SM8750 for the QMP combo PHY.
This handles the USB3 path for SM8750.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 358a6736a951ca5db7cff7385b3657976a667358..38ce04c35d945d0d8d319191c241920810ee9005 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -29,6 +29,7 @@ properties:
       - qcom,sm8450-qmp-usb3-dp-phy
       - qcom,sm8550-qmp-usb3-dp-phy
       - qcom,sm8650-qmp-usb3-dp-phy
+      - qcom,sm8750-qmp-usb3-dp-phy
       - qcom,x1e80100-qmp-usb3-dp-phy
 
   reg:
@@ -133,6 +134,7 @@ allOf:
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy
             - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,sm8750-qmp-usb3-dp-phy
             - qcom,x1e80100-qmp-usb3-dp-phy
     then:
       required:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
