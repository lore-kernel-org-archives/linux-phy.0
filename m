Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33351CAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1u2tYBN+xunhrYl7etwQ8Xe1H7lpXSFM+YZRaHTpY3w=; b=P1KYEoh/NrKRgh
	v6uzBCFNaxPPSDIbQkhg8QEmIqDp1vNBgYCwnjC3DKr43Go1EEgzUmD/LqOSPbvgZBg4L86Ez1r99
	BGZ+CVrKwVpFlrAahAF/W9gPFEx+9CFNxU88g64/Li0kFXEUNhDV4Vl16nayd0Mh679uFndQCw85N
	6pw501cCp+vQ/8t+Rh+YVyeaPyop4O7//gu9KgA5k+twWvxnra2fIUOLlS0tT9OJbiLHYVBCjeg+A
	4G0RbJ4cvTZgRsJR83ZAoCP1MUhKrAdq07zf8tbWyMa5tzuyjSSnV6VNK/63Px5i8jX+zPam26238
	gVWSzMXQmnzh6iSKG33g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzM-00000004icA-442N;
	Wed, 24 Sep 2025 23:33:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1YzJ-00000004iYs-0Gpf
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:33:30 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCj0lH018025
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gZ7mTakONhQ5MdNM3TgNyHD/Jxj33wLx1vuBQG2ozxs=; b=bRfSLRFd8+s0STCy
	GHxlzxIuhN5Hogkfl/ff5dz9WBUwp3sv5lJ0isd72tyWT4nNOQ0Fog+0H4MZ+pyf
	AZA8foW55TGdkucu4CmYwpK6O4mAxIhX0H7IHz9x/hbsLqJXPslkUl1p412efYz6
	2z7y7Xjb5y9y0gzXZ7eqIspdri23Q5RELHJKT3FIPq31cHJ+xEyEMeRB7DGfktGo
	FEjD6PgmrJadc78QQ6wTkmjFFy36c4dUf3xPTCNuwUbWETUPNOCZZ1NtyoSFPy2V
	0ZoSmgFU848OReIA1TIHon6dBaPtpdevWLnTT0PCNSaFd7Wy74JRmK6Zmu9Uw4Qr
	asaKLg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3kka0f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:33:28 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b552f91033cso445788a12.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:33:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756807; x=1759361607;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gZ7mTakONhQ5MdNM3TgNyHD/Jxj33wLx1vuBQG2ozxs=;
        b=BX7QYEqp8j9Oywkel/y1hGB4i6kTGbbbzldU7JECEAHVrl6EvK+mNMEujtsEOJZbh8
         h5xpxbrPaaLlPRdGsi+Q4STck7+vp/AAypEtywylJ4TVoDtxeglEqUWN7MXYciiUrk7H
         /zv+ZP1r9GzpGviVasEbJ9ZV1p/N2Xv0Ax66uw5ISBksOP7yvz8nOxzbiZlPPCbZ+FXm
         x38fcLjdmVQ3rTlVxX6S/rOGxmSc2/K9jYhlU4Anh+3zXBNt05gHyjNf2pBWcSZdoYWv
         mS+95EirRL3ds8aI2KJtDwz0rEpU1KJcMWTnE2iyI9FqOPFJeDYf4ji02rUQ7wpJ4FBj
         PZwA==
X-Forwarded-Encrypted: i=1; AJvYcCWSZJ+pN5y6ux+uGsqT2+UqlwNLPyr/9Q9AQuaVJykTJzqRuE8we4fKLsXcAjmI+MfeOrV/RXYFgwY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwodxkAJTduFxWv6+wI75VBm5jguchvTcjsH6Met71wwFwbdvH2
	/emHewyR53/K7ylmTm38LLAuivpUqBTWpiLT+2HRGhR53fj2zjdVAAlcSaMO+bzATy4lmgzf5qJ
	Zl21TyyfQUBEkxgJVbZpoGcKKECJGJXjcBxeYLVS3JqGUSv7EjpXz/tiut255TJ7l17XH
X-Gm-Gg: ASbGncvxQMATRSq08Xx3Q5Q2pV4NOwP97Rezlzx1O8qnWNj9evI/S0iqqSmRPd7fsa+
	/cJdLCbBQdMiYoAcQnswnylg4WZFusVspWETjNwJbMizleRfzujxHYCt+IOp82WvOH4kQi030tC
	kFLGBU5qrWVG9ZJ8Gop/rPo8Q61bu28eQJu2neDKNWU1VL0j9sqiSDhBOFMEIWQ1cmyRdpLSFcD
	y8CvYEkqBBWz7coHI/V5n48EGSDnmUTSuOwi87JgPGeovdRjdo6qIpIBnSjL6f6lP4jfwYcMSQY
	TpAtZ42BH2xsjJp5jV8vjSiGjbXvY4G+U7ZONHVIhhtTF2PSXPjXzTlEKiAOSPnCYajyd5gHIx0
	hNSKQcj4jpyxu7Eo=
X-Received: by 2002:a05:6a20:244e:b0:24e:84c9:e986 with SMTP id adf61e73a8af0-2e7c79c5ac6mr1705018637.15.1758756806976;
        Wed, 24 Sep 2025 16:33:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEShs+t11pe4EXtyJY7eq7SxJOc0SFTQM620l2aSx6ms55iEGfKttzOhfcvzJfsawotCzSxCw==
X-Received: by 2002:a05:6a20:244e:b0:24e:84c9:e986 with SMTP id adf61e73a8af0-2e7c79c5ac6mr1704997637.15.1758756806571;
        Wed, 24 Sep 2025 16:33:26 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53ca107sm392911a12.13.2025.09.24.16.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:33:26 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:33:18 -0700
Subject: [PATCH 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20250924-knp-pcie-v1-2-5fb59e398b83@oss.qualcomm.com>
References: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
In-Reply-To: <20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756801; l=1501;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=VBW0kDv69D5tBQeRfHdrmnRiouQM+MGW2Y5Yg0f+6nA=;
 b=NL8BNAGHotEw5Z8jTwt29kGlC7TPmvyCyt7uA2v5QZBwSr1NNNbXHgBi0hJ1RrPRJppICeJ6H
 tnVxRt4czLHAAovxAHOk2m22FOAjgZP97+p/XohA8ec3N6cNZtU7gUc
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 2e4xWjmfuV3ryeZUS6Xp4ZbyYWJmDGb0
X-Proofpoint-ORIG-GUID: 2e4xWjmfuV3ryeZUS6Xp4ZbyYWJmDGb0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA4OSBTYWx0ZWRfXwTtIhEGHn5+c
 lZyZPAozq7iOVZJ7nIyAZWTxSLLYtEEyAopH7ksXlzgXYir4XoJPE/ka4i/3A/hnEAZWrDkhY+u
 6oFaf7EcuYSD7rpUq5FylS6vznV9CebLm/9ICmKxiw0lvDIkEXTHsuzUNJjmngf8IU+MRSB81OW
 Pmu8lSRZ1IEn67WB5w0eyeBMTg+4IHKfVog+aR3rbTJPO2b3LOwlW3aaVTNZ4VZ5mwKfeVCpTCK
 UmI8wsmHaWceP9Rf6AuM4KgpKy0hWZCgb6u09f9b/FBfK6aEC/v2oJxcxYnZBsjyyd9e2fvIPpB
 46i0bn8KW/erpZdY+PnIyt1Mg8yS2JBTg436GzEBDssnWETWjMOnBBo2+V3vKkLFSVQ50a0i1Rw
 1TWT6dnP
X-Authority-Analysis: v=2.4 cv=BabY0qt2 c=1 sm=1 tr=0 ts=68d47fc8 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ZHoeG76OixanZ4sGZTsA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1011 phishscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 malwarescore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163329_231304_C540163E 
X-CRM114-Status: GOOD (  11.42  )
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

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Document compatible for the QMP PCIe PHY on Kaanapali platform.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd..9f7a276a84ad 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,kaanapali-qmp-gen3x2-pcie-phy
       - qcom,qcs615-qmp-gen3x1-pcie-phy
       - qcom,qcs8300-qmp-gen4x2-pcie-phy
       - qcom,sa8775p-qmp-gen4x2-pcie-phy
@@ -146,6 +147,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,qcs615-qmp-gen3x1-pcie-phy
               - qcom,sar2130p-qmp-gen3x2-pcie-phy
               - qcom,sc8180x-qmp-pcie-phy
@@ -213,6 +215,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-qmp-gen3x2-pcie-phy
               - qcom,sm8550-qmp-gen4x2-pcie-phy
               - qcom,sm8650-qmp-gen4x2-pcie-phy
               - qcom,x1e80100-qmp-gen4x2-pcie-phy

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
