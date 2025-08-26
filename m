Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BC5ECA0EFA
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 06:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+gJiB7md2S84swLe4fizjkvL+R7gFnwU3cZtHYHK6Ps=; b=cP5GovbBdSGLWA
	oUBLbLxiWy7/jdDvS5M0p3/55rVFzjIaXBMgD9tw9mzQrouxwgbpXtytE+lhJOMVdr4SRBIMie4TJ
	m+9gtUUlh/jY9cL4+IxC8X8lW8pBaCVimx/Zq1HwOyK9Iq/9ExMWzaF6RlAB+s20KPu5yf5NWzueF
	pk+Jb7WCUsrcMCA2xsu4bKk28uRYcQxKrIYiK6VfRJ7CPMsVBErMoJPZS1qoFGIpWp3WBlhpPoy6O
	q4SA5c4euo+NFZGrEhrPUNYEyDryXTmS1gtLkXt1LH/3ydDfaXQmszFiWJZ8NyMMirepH8bCBSCls
	MocgHO4XSUvkIBXw9k8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmlz-0000000AdcT-3uaR;
	Tue, 26 Aug 2025 06:03:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqmlx-0000000AdbU-0qve
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 06:03:10 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57Q3wGSO006172
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c7vY6EzZz6OX3dW8SAYR/iSAmvLfxB0jaIKM7TBpzz0=; b=AF71+VjFxN7xHoaz
	Lz2GeGUquY7+D1RICUB/r8FvWNlKFs50iPVcTTXCnwYK2272zd2dWYgvKlhvlkje
	gIcZg629Kuj3qw1CMYuwjnsCj1865MDeAVqadSV6vpKgE7BeqHMv6OSsTtJYcI/w
	yG8keS4q7YGQ7D+fWnZp2ZmG2gX/1J8OJ2hkcjTqAerUFilP/vo1xTcl3UEUEN9Q
	9QaqAmoKUhnEMcQqyMvdRrrJV0wYiITOIpD6cayecKeAIvPI7bpaOmQox0h892qo
	u+jjuRX/BrJ9lHsxh9kt0eebdXgRlrqOpchnBupz4Pi8rPNMQg4lqAU2ufOargNL
	TQ/j6g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q6thyne2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 Aug 2025 06:03:08 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24636484391so41514765ad.3
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 23:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756188188; x=1756792988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7vY6EzZz6OX3dW8SAYR/iSAmvLfxB0jaIKM7TBpzz0=;
        b=ZTbICWYNHF+thQLzUKdrxZkdP5VbTGD4jxWtm7yYG8+Mz8pPy/0gETyrmiOIBNv+MX
         OkoOnvMD8synblpwYaP/hyjtr+lj8FVU9ZV+IgJ4jh1QsRYhaxidGZyRLZ7qeDFn1iQJ
         opppNB/hGAhQKFO5ZAuh4CCjGkt0mSBLqk+XP+l+kcyU9AsDFHhY0A6kIrKWBapzNqZ1
         cCrnYuqTBjmbOEIY1I2h6fKw843ZzocCTCL1JWmLmdKsVODqn9QbQABlYKPryneOEE4Q
         8a2UZLVvvv40q5EpNGBLQtSdcxeLNPvO4ppKr+taew8xl2ecC3vwC6K18eehMyaI224Z
         Ky9g==
X-Forwarded-Encrypted: i=1; AJvYcCXmllMa4MQHzKdSM3ON6qw9wIkqyeaKUrSJc3Tto08LZziMonL22E11hhM3wXgVQ8LaZ+pewy245LI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQfFRA1eLCm81koKq/h3udLOsylkdAZYMVYdGkcLm49AE0cQCX
	9g6bCsOC3lEc+ME/0/5m8xA2ua6eY+vjTCgwbU3by3/WCxKpoVLEgYVx5YA8qLrY8SNlBgvILJn
	9YHhwJtvMwifdD181VVV9RuacJHp+NkTdTesQOLelZN70HymwzoHj95X999qXp4weYjBe
X-Gm-Gg: ASbGncvhZx0Av5p6dVPSISR88oFdGmEroVlrHtwikDYx1pmtdoK4S5jeUx36jUaHQeD
	XoqN7bfvkDMiPCjAgYxpPdU0zlfoJ0YEIPqGEERNFqwbOvyum3SBp40/vKok8u4A73h8YnDVO3P
	eQVIlxryjnbpq/blZz2BqyIFKnm1qCa260lYBOiY7dIYAbB3TDkWDK9lDoL2OEtMOSLcJgWO26f
	GeGche/BeaiFpe3KV2fA1cA+jtkAO5pHDh2R9a85brmaplWl3sJw9c5QonVXgz5Lib2E03GiANe
	zHDUnNVg4WceMM+yADImbjURWcyYb1wNp+n0Pbc/i4y3noSMS6x5uC5SdU+m5WKDaP6aML1gVBV
	ThE7uDnT0Plbuph8=
X-Received: by 2002:a17:903:1af0:b0:242:460f:e4a2 with SMTP id d9443c01a7336-2462ee54a58mr173688305ad.23.1756188187836;
        Mon, 25 Aug 2025 23:03:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHm4pbzLBk/0e4mduEsQN/9isTON0Dv+q5J0zKrA/VOOs5zXfa7ktJR6RMVvs1bvXxEGMj10A==
X-Received: by 2002:a17:903:1af0:b0:242:460f:e4a2 with SMTP id d9443c01a7336-2462ee54a58mr173687795ad.23.1756188187330;
        Mon, 25 Aug 2025 23:03:07 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668864431sm84989705ad.93.2025.08.25.23.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 23:03:06 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 23:01:47 -0700
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the Glymur QMP PCIe PHY
MIME-Version: 1.0
Message-Id: <20250825-glymur_pcie5-v3-1-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756188184; l=1643;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=oxNK7rpfuxJFlxeq6m4yP+Aq+2bgn1813OA7/GzY/5Q=;
 b=MZ8ddF79PBfDlVHSJattDrGGBwdp99PB0M+w5COnVmkky0eJV2DGL/c2eFVLP5DdTGOrbvOOY
 8oF5DsRhWCFA7Plr5/q1FeyT9puSqYtWLsZ6O9oWeFKcFVYFh5a14aj
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDA0MyBTYWx0ZWRfXzZsPUpYkG0lY
 hsoaO+eodsTeF6ff0/WSZz9S9R/mytj8jTbDeOO0Hno1Rps5fHZ0msn4I8l2RkQy9gvsSRW46Cw
 CBEB1XUoUIRApg+DAWchdeWNhq3WrMaa8aNEW8N6gWpRXDRKIF5K2AKNc45oU/rxApoDBbqrQ0t
 fJu7TUQihr4bLXfaBQ3Ry0+lDUSFJUP0khmkCdSXnyBco7YMPrAFkeS154KLq3Y3dBTindqt1KA
 +0vbHiLaOw+/1O83oQiMpS4NRnHioSEh5PeVkfYcSHFJha5cMBaRevGBcWs1fGqouEpLuBZumKb
 LpXk/BL5tJL4QkmpKNJrMHwK/RWHyDjk7hNrAjKEAUh5EcRpx1DzOvvMJ1Zt/efoUktu3B0L47i
 h0ZwV7f4
X-Proofpoint-ORIG-GUID: q7e-KNSCH7igvYVD5ozrbfRYYC67fpLk
X-Proofpoint-GUID: q7e-KNSCH7igvYVD5ozrbfRYYC67fpLk
X-Authority-Analysis: v=2.4 cv=W544VQWk c=1 sm=1 tr=0 ts=68ad4e1c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=prgL3jgsdPShhDvlN2UA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_01,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 suspectscore=0 phishscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_230309_273502_90B319F3 
X-CRM114-Status: GOOD (  10.54  )
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
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index b6f140bf5b3b2f79b5c96e591ec0edb76cd45fa5..61e0e2f7ec7f9cb08447e4cd9503698c0a2d383a 100644
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
@@ -176,6 +177,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-gen5x4-pcie-phy
               - qcom,sa8775p-qmp-gen4x2-pcie-phy
               - qcom,sa8775p-qmp-gen4x4-pcie-phy
               - qcom,sc8280xp-qmp-gen3x1-pcie-phy
@@ -211,6 +213,7 @@ allOf:
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
