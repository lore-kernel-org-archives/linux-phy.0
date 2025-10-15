Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7013CCCD18E
	for <linux-phy@archiver.kernel.org>; Wed, 15 Oct 2025 10:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0oWZZu+tD3Z4AvWaBrcpK/kwSrqSbxKczUuzW4low0=; b=qZHcPfs0vHyiTj
	xX19HcY/e9Ulu2WoE9A29ZoF9Lc6L1rU3qxSpahVbbpozPANwsgIBWFinE61w9QkSsIdNtD6q98Rc
	KDK5uO/qA6csZLpf+ksAu6xqpHk23IdSO+KIncqptGOvVggpT9MxzUVitIrQxuBKhtlTJR4niod47
	cNm54mcAR1Sfh0sLQGxvGjjSDdpyE/3S5/NoREMGyGeuzqHaaOiUKWVGT9m1wxstu4jSVH41p7Ith
	+DXppxI9OAu1DlUxjzAY43yjCOP/nBgkfuDtxDugVFnQir7JOm63QVYEPcuX6uaLIjPB3hf5QfH/C
	0ruhXgUKoYRmQhRIlu/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjY-00000001Gwh-0qor;
	Wed, 15 Oct 2025 10:27:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8yjU-00000001GuG-44l9
	for linux-phy@lists.infradead.org;
	Wed, 15 Oct 2025 10:27:50 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FARHQ8005331
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XzlpRyA3eGYUHs3zByL6o8kdScATL/4OhlJTdAgnfN0=; b=PiiM9jbA9KBX2e1z
	pQjb5fyBUQm7mFH2ofRTViRGCvHOln4y6S0ZP5LvF4fGfR7RNgjCH8KAGRP/xLAb
	IauAvx4Bl8PPwTUSBQ66igrFNFDD9t0/ebzt2H9rHXduYcGxCNEcvyVcmm9mvETZ
	awssP2WVKoVPW4RVk1xUggVRgjsm63/TcbACBaSPJgELzwQzASRBksbxspAjtZkh
	g9QXyNCECfGEW32iqcq4fUjOyIqhnEdjIwm2Ml9vBym3OThUjB+5YlgXqK762NlI
	KQJ58pScXOI37AESBNd217/TV7gqyj0WXyQV87eyOWZ368FZB719hKimMn/EuGnd
	a0Ud5w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1agbrq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 10:27:48 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eb2b284e4so16795070a91.1
        for <linux-phy@lists.infradead.org>; Wed, 15 Oct 2025 03:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524068; x=1761128868;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XzlpRyA3eGYUHs3zByL6o8kdScATL/4OhlJTdAgnfN0=;
        b=jZC9EJTLUAefBvCKViEqzeI2cRXFwiyk9qBqDJly+x6Ss4raBK6P4zUf1XWUIn+vQ7
         9xPSDWDVvgvSgUddRNefOt+QbpfL1624BmaLM6c73oTGhY/eaxtE97GBxjlKyMKA71jM
         CJ/gGadPCFYW4A6AE+c5NohQrbjDrYPKLWDaSKLVmMjSr5T0Pn5TkJ+t3OUnzeVECnsz
         xomXxKG4bOod1WyH3/cuflOgqN7ZQARMh73mjZ5r30SNbs+mQPQigOMSHzsIOaVSMbql
         oYQh5i8AtEHQ9nDlzv/WZ8JYkoNWpJbNMUfIzPnHvPknZ4jSMh+99ThdzlzvSpuWCTXq
         JOWg==
X-Forwarded-Encrypted: i=1; AJvYcCWiuogwBTGiWPmhjYdC+58ntU62wprOSLPqWEnlbs96oQktPyBUF5TbtTC/NkMX7cOioQ8pqai9ruw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywgdih+qh29ObKEonZ6nLFt/JbluHKI6dnr5iNjKThsktr1Fc5h
	8QsYtO+lZ6Wpgp8Hozzvik8Tic6sHhMBSMtUKwztbANwecQhBnGU/t4WQJLsa7k7zrufA/tLdnv
	pCRW0F/uXpSn5AHTJTSFuHrqtbDcxkZp5eJF+18DvgbUZ7axjMZeSDWhZ2j4aBSXaSHRbLPU4Lo
	S0NShgJQ==
X-Gm-Gg: ASbGncv66zxv5jEdrkSGZUVtf4UQy3Di3jzz6OIIGRXaGHWBfCOJuH9pfWX34xTNwU6
	xj5dTrB4T9QZlsL28IALMd4B3Duiyak5g6LzTLt/v0tDLsduq7a25pFklas9gKddD+AV6jWxAhq
	AzD9YIfnRwaTm4HN+tpaSHlRtjyvwhtxP6vrqTTGiAFpf1ZF/fx2t/CsCWAetA0odPsthADaX9Q
	RDbjArkF89hSlzf3VutWoADLgsvGRWxRWDpIVOxj4hYaaBuW7dnSEM2G6j5Y5b9s4/8L/anj3K2
	zzE40MEfbkJv2liX2FtzhZ0mXhkMol7a+mSW9ayk4cz5oYJfv8WwdqCRu1I3g8Buas2Oa7Q5IB6
	+rhhsVR+Iejk=
X-Received: by 2002:a17:90b:388e:b0:33b:6c1f:4d25 with SMTP id 98e67ed59e1d1-33b6c1f5256mr22073727a91.16.1760524067592;
        Wed, 15 Oct 2025 03:27:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+D1rBOUBrT97sPb6p/Z4zWKTgshtRDcFAgDXfnHqIFIHXjIFB0HEIzDtAHWj2QuWYcTW2ag==
X-Received: by 2002:a17:90b:388e:b0:33b:6c1f:4d25 with SMTP id 98e67ed59e1d1-33b6c1f5256mr22073663a91.16.1760524067015;
        Wed, 15 Oct 2025 03:27:47 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787a1a7sm1993574a91.18.2025.10.15.03.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:27:46 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 03:27:32 -0700
Subject: [PATCH v2 2/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20251015-kaanapali-pcie-upstream-v2-2-84fa7ea638a1@oss.qualcomm.com>
References: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
In-Reply-To: <20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760524063; l=1557;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=VPVFV+qu0aJDwF/BGABycXVuxxH/BpzJrdbWSDyC0FI=;
 b=Otezu43DwHlgJ/x1TVecF/6XNvXp8kqdlVGHqsZ5IEoyYH56lqF5M21nlBT3cDfjJrHraJ3M7
 1VHEDq74JZNASXBjQZORo5giYEtOD9vEXrQ0ob9Q7miQN5VioCl4BO2
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68ef7724 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=A6CI9_SKnrlR1hncxxMA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: IZW54MXVJjTuDTmj_9xXIm6YOHpF5Def
X-Proofpoint-ORIG-GUID: IZW54MXVJjTuDTmj_9xXIm6YOHpF5Def
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfXzAGeUe3Oa/PO
 ySgDUML/PWOglQBUUgnrbn2FE/uqqLA1VyrvcOYLtdWTP8+XyCyr2dpoaf2FzKDLp0Hoz+GmlB8
 GkP5QdcK5bGEH5HGiKtwUiEQQaEZYcrUOq4CpD+xY8I5X/a7+1sBSrtEeBHC6yA8gctdO8gs6cm
 hOtFZcgrnb6YRqXbTwi/lOOZizb3vVD5WEUiUsgAgb5MsBNyvHlmVkVKnnwu6xXp3XN6qCC93ZQ
 1BkQJ2FmmVhwRnzIar6rAoPC9DRfs+UirIzokyF3d1FLJ2st+LoRniTgVyFc9CmHV3qrVKWGcJl
 aU3k1vwJFBpSribb/7GZyKIUlTJdsRjAd8kKRA6eLc8R7eiDLaw3AJdRRphg1ckamMR/Ko501TE
 /IGyxErrMg2RqUF7KW0KtKKUQKqdbA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_032749_015137_4EEEBA33 
X-CRM114-Status: UNSURE (   9.77  )
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

Document compatible for the QMP PCIe PHY on Kaanapali platform.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 119b4ff36dbd66fe59d91c377449d27d2f69e080..9f7a276a84ad1e4ec0101c4cedc25230f509fa82 100644
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
