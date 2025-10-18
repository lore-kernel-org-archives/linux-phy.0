Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F8B7CCD199
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9j+mig+Vk25vFjCvFyKaiUJD9QQEATOKvnX3BdWfDc=; b=dqyUiP2DkOxkXV
	DGz3bc+Q/gd/ipoOjO4FGEbBv7p0hvToUtvHh4hF6Wz4S+YCkhCe1kF5UBqnrkzlkbTYD1Bu9tl+J
	6eOqhLzfLT+IW7uWrMQGx5LZEkmKeiWQljCCRjlsUdw1dVeOkzfwBRFHeTsBoPbfdIMlxDXoXOpcf
	re72WOvNkNbab44PKU/kuRjp2AGZPJm98eRmgUCSslBPpKZB8xgDh2toVNKGKeTiJsn6TZ/oNjkKn
	iOoCuucYyPL0coqVRSCxDxx3/FxA3KHLcCvMvuydRmBL2eNxelGKUc8XRS0Hb07+jHOj8YeoVykUf
	6uaH4g4YSwNwMe5pbncw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpM-00000009KDm-46fN;
	Sat, 18 Oct 2025 01:33:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpK-00000009KCo-11Pj
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:47 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJG5PT016110
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nyHt6+e//Wm27OxUhgiz4v3Hh8EOKz906PnWuB/Ipos=; b=WZFkYHsT1Yal2fvx
	D1iFhNbGt0819LtqmCDw2K0E/LG0hlK/4iL/pDtyOLcd+3gGNN0V0XOQ/DvuM3fD
	AMmV4m8kd3PJwmma8iVl/b9bWPiOk3Czxf6q+y/LDrZj+l6CbruIkR4gCgQt21le
	ecTpR4CGjc6ga2x49j40NR9eRyCOJWQEUJ9b2XLqe7oSneE2Gw4atkm0SzrODhkA
	82Dpl7BBtSKOyD1nRRBz4S2i6rLaJrsLisrECY3q5ubTQaHxvydolPkKVp9gsYx+
	oTGsvUfvKjex4s+iRBC+/tzSPPNhCEeJG6uBO2OR3Qhknajy5fXSqPBkDIYudodn
	FDleeA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49uqun9kaf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:45 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ec69d22b2so2349135a91.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751225; x=1761356025;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nyHt6+e//Wm27OxUhgiz4v3Hh8EOKz906PnWuB/Ipos=;
        b=IDqdgDm3OlF0Q2C5BVZfohKnlXy2H+O8yQtvgIFM304VaRkPCUiOSVzozUo5YiVdSC
         Y4E5nqxu9kLhUjMSPLgN8JeEtXBg+tp7d1jS5IKnXbXdXYAgLmtgGNEAR7SCR7hW7OtM
         5LKF3jtSXRntbcLuDpR/4NLAE96bztEXUQfjdRPNEXkatWP4MLVwey5vjQ+3yODQGL6q
         hVguPGvHhtihLsfBAM5oLpy6Cuaoyn+dtfmfPow5dHWXglW0P9+yQXOjQE1lqXvbucy7
         OiZFvZyqAi/ezwQNAyajeIQFQvMPG7eGYdLqlV0ZPpSjS2KeeEdH4Yk6Jdzi8aSYsvkF
         aPiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUb4OofnyyIuSH79e/vGEM6DuT8THigDggiZ8fwQV3/tP134xlWzEjTHq9uiMrN8amFZ7SjcfWyQb8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwFTd/pnpj2WoIv/Hc0jeKhNZvDT1IqV+U9KN4EPyb4A6BEqFBv
	BU9/Bdi3yrq+sEdxSUklUC44dxYNKUt7V7ZQi0EHjWzNJZhSXVsJsOe7qfck9cByyJvdGRQtCDE
	q2jkCm6RpAQ1lWkwAJHRPEPKyCWLFgh8DG4H8Qd6RQdjZXiUypDWTcadr1jqR3lzlRKIM/LlSe7
	oBLMrVNQ==
X-Gm-Gg: ASbGnctVgTf4fiDsGjSpqualLtmnadYrj8T1FuI39m5u9zo9YS9vuonKsvkpPSI9kbR
	ZoCIIpT2gC+UecMvQeGfSwAN+58WfpE5tTxsLNzVGtQqcB6z3Uph581CGQfyTrcJLQ3aoeri2rA
	Gp+aehX6hdjtNZwCsQdAF8iNuukm68Lzyhg/S+/IJI3pu7V0joOXqo7dhc9bPdgykG3tK+7vYDJ
	+cKiLQRiBoixvQYXSk3R1v9vN73h4haRlnhCxS4xaU0naJGA51L4TT632+TxRYMEwval70Sv79L
	2cANcoQrEOfDwmcDhvVO8G2b2Sk5HjFvPLd5hRlxfPWhLtEiqEc1aI0ESi9GYVa9qMIy5qvROyE
	oT2YjFm89Lay1JE6I+2/JHCgae4k4T2elO9p+olJdtjqA1A==
X-Received: by 2002:a17:90b:1d09:b0:32d:fcd8:1a9 with SMTP id 98e67ed59e1d1-33bcf9184fbmr6171146a91.32.1760751224671;
        Fri, 17 Oct 2025 18:33:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIKBsbjRuVOEEafzTskcxI+RIZweN4v3yg7SFBNeHWuxqa9Up6EUtbI6hu7qPV7UnkBxYrVg==
X-Received: by 2002:a17:90b:1d09:b0:32d:fcd8:1a9 with SMTP id 98e67ed59e1d1-33bcf9184fbmr6171120a91.32.1760751224239;
        Fri, 17 Oct 2025 18:33:44 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:43 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:38 -0700
Subject: [PATCH v5 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20251017-glymur_pcie-v5-1-82d0c4bd402b@oss.qualcomm.com>
References: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
In-Reply-To: <20251017-glymur_pcie-v5-0-82d0c4bd402b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1696;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=ORqLDn4tPxAJKBqLDSOiTLOmLrdC5p3+AUzGMEo0jrI=;
 b=CX/0QSCszI3KvpDNAdbz5w/KezYYoQGSTW/BMRP/Y/UANFpHNaQ7g3fYwWTse42LYKhiCnKtk
 yMwkgU4A+l0A3wrq190ZEWJwbKdWxzkI3EjKDLU/hS1jJtPSuaOGu6T
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=aM/9aL9m c=1 sm=1 tr=0 ts=68f2ee79 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=prgL3jgsdPShhDvlN2UA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE3MDEwOSBTYWx0ZWRfX518QFmZfSDRq
 WZ3oFqqsJr9fF7+Cfwdnl71ds3DgmiAFilE/F1YGXPcc2rTnmGpBU//u+/9+gsuZPyhvv1SbEKV
 WoZCzHvr+0zjPFV8JNtj3MjcnLIYEL+2cElyVT0zKjXeoqHNdD9wuhA09oE26VvPIvQsyE+YL2H
 tBQsMRiOaBQutMo8efp23GrUIp1xWm/9AP4+prlmZSKDMevmUAqzH9GDnXv3wFIZBpLcB2KBayC
 oJmBYBYbxNbIK4Egh32veKpNUtBuYqlF0tlyDIu15gRErXkhWdue28vX7moFg5SZZCz8YuXQRox
 Xv+ocOfVn4/g00R6vRuMUg8Wq0sg8fdy1eqLWhuywWVrVVtn4Qanr2JsJOJZ/phcXvO7OYNzS64
 Xpvyu064SfOJAeZXETlvGANDpJEnag==
X-Proofpoint-ORIG-GUID: f1_xvgmTTBBjZlfI9B6kSJ7NRPI0IKUx
X-Proofpoint-GUID: f1_xvgmTTBBjZlfI9B6kSJ7NRPI0IKUx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510170109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183346_290011_C7F39033 
X-CRM114-Status: UNSURE (   9.35  )
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

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

The fifth PCIe instance on Glymur has a Gen5 4-lane PHY. Document it as a
separate compatible.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd66fe59d91c377449d27d2f69e080..3adeca46d9aadce103fba8e037582f29ff481357 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-gen5x4-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -178,6 +179,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -213,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
