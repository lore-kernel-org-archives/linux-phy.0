Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F10CCD184
	for <linux-phy@archiver.kernel.org>; Sat, 18 Oct 2025 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBdlcB8zr7aOa5Pzo+zPsJVn+4JVsCOZLBSjZAkKxOA=; b=lf0Z2DOluy9eNH
	+i+MpGVMMk9wnaDPPDxZePFqMpqL9gB7VULOmxg2VoKclajn9zyzhQtQUTILT465/6Y84fLCw9Gh8
	oxEVSFRn0HZ8IjTq9hqFBUpY6JltJwgU/baAaOzx/woeM5LaB7/UkfudYsBfsTCMZYPJDj1RE8KOW
	HdfQxVB69yjUKdcQdGNPLc++M7YtkHUCRETyXrjT8TB6D/V8XvI1leMz8WVsNBoJHgXQK2bsOPUEM
	DdOrPDEGwZfAi3QlwkhuWMeJZXAhMlEkIF5bgCnCyh/lqEGDoqJnQ4SAWwI1KUEFpKgvG0ouYyP8V
	mLcENpoi+CT8eeTlJUOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpR-00000009KFx-0OYa;
	Sat, 18 Oct 2025 01:33:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9vpO-00000009KE7-1j2V
	for linux-phy@lists.infradead.org;
	Sat, 18 Oct 2025 01:33:51 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HJGTl7017007
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yL7Iw1H1yxY1RKY9O3NOo5NRWkBTocM3EwLCw3QQ0Xg=; b=jsMNkZE1AyDKc34D
	7f9nENu6iufATV1LGrWEQhTnNa9FIDfrd9wDwnGUJsG6qP2DSVv3gz9kGpm9udkn
	tzNTO1UaW2P9JjTJTkvsbZsVUkZyo+YiCcoXjenXcCqdgYhsFonSQImAsKqhN596
	NQlJrMqTplXEFbjM5ga+Z9K2wYeyQw1N1LJ/sW2B6CFiaPcIuVGAeRj3SqSt0t4u
	rsMzxDWlH0YPh+BM1DCi91T0QirrlqAULlEHNIWKmiP7kZEjym1+2YQmBNAZ8yOd
	+1T+JlwHxu7kqViaFTrfihKfUqzyG2aveaY1ri7kdlzpCTwVRw74fKtdPi8Le/M2
	WI37Vw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfdkp5gr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 18 Oct 2025 01:33:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-290c07feb72so16267175ad.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 18:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760751227; x=1761356027;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yL7Iw1H1yxY1RKY9O3NOo5NRWkBTocM3EwLCw3QQ0Xg=;
        b=d5ANya0F5MNSM0wzdQOo/J/9TdGdWhBBKXCDiBkAGThny6hLTV7Nj3xusTIyD1fdoB
         jehPxYrnkuPKH5U20hz5syhe8IxaTMHc48OwBPuUdHUDSY/Tk6QcvqQayTxG1k+sUO9F
         A8rPI1jKKbIAoacXI7L88GMH7LnMxTlZ9zLzitW7NMruyWIlY6JjlaNXgspWaPb2sk5i
         anINH6jQEzez6oGzm2rFCBgwTpe6DiReGX3ffqIL+LW8Oq0HcFgdcHS9p3EgWfXk76xG
         54ncqF1BKfG5K/WPkziMba9Oz9MIf9gS7tcX8hik0yYaF7a6f5zPV+VFGsYw1oGRlhXP
         Xn/w==
X-Forwarded-Encrypted: i=1; AJvYcCXfEE+HdPadkTX26CmtShUu7Q1qy5LI1DjS7NIxT4w+ilyX6jDWgVGrddtbnDskly/hxgzR8DludIo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzQRBEFSTPyAQNPjFeveWrpxGjmDvI3KQZ4gfVDXgctoW0ER10w
	jJrn+WVkcBeD5oVkZcHGwM6fqkkRKmZgECIi7y892m13CEZLGwTqWDC13V1R+Uum+Jncwz92nKM
	ziKYwJy+1MwIcuBPAwS+cQ1p7G+xv+bAk9iD6vf7N1RDjJJXqQgaCuSdrDbf82pLLnHr3kEt/8M
	VLQBIjmA==
X-Gm-Gg: ASbGncuKzF+4AyNOYH+bUchhDtAuAKb8o3Xo9TEfmXyoV7ZNdulDDyYItuLQNM7Tpni
	K0U+gL/zExnu/Ju/V/2gukM68HfMWae8g9ZFC5RbXzhd5zOEOAjceR89t+kFWDMxHklg8PrBiMu
	ljAmdmvGSgsek6HTPj3RiFgcB6r36U3/dABNHJZhKt7C9loA+6eQwq0/sVRqQLGgi6e7fEdATDp
	5t3QZe7FgaZL0oExpy54zRTnW1j1CoaTRqJixeMKm9E1UbzfK8twSVzywmfcEKmGyzzpXYapvrK
	5kN5jEDNWgbJTQHobHK3vABRKqwKG3ucY+m50xeKCs0z46Xg7Z3gMWKLxZNhofwTT/dajpOis1+
	IRSS06S0kOJLlEhv4R8U3doMSt6xSGVFs0wavcEZ/oKfgWQ==
X-Received: by 2002:a17:902:f78b:b0:290:ab61:6a4f with SMTP id d9443c01a7336-290c9cb367fmr58341775ad.15.1760751227369;
        Fri, 17 Oct 2025 18:33:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE9hDmHjEaPzyblYMvIXbWGcSrq2rVVNWtCtuBRPfBhjjoQkGpW+JgacHko1My72hwjOFIDGg==
X-Received: by 2002:a17:902:f78b:b0:290:ab61:6a4f with SMTP id d9443c01a7336-290c9cb367fmr58341445ad.15.1760751226941;
        Fri, 17 Oct 2025 18:33:46 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33d5ddf16bcsm791695a91.4.2025.10.17.18.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 18:33:46 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 18:33:40 -0700
Subject: [PATCH v5 3/6] dt-bindings: PCI: qcom: Document the Glymur PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20251017-glymur_pcie-v5-3-82d0c4bd402b@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760751221; l=1272;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=HOWusfNTWzHipvZF7Qt0wgwXwhNMDSpIrgzW11n9LBY=;
 b=8pimNyDGXNzEl9GUpN7Z7wb3o2a3g+9Fung2WFtYQIGnL7Kk5LNNsPZGGf4IeLUil+4UCHuX9
 65P3erQLPnkAJHXTPIo3PfSQ08IYzKF9rHQm7V7C/JPhAyowoiw8Kki
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: htmWzSIM1HD7ME3Qc7st6YLQEuDGblpQ
X-Authority-Analysis: v=2.4 cv=MrNfKmae c=1 sm=1 tr=0 ts=68f2ee7d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=eBPcRD9z0Nary0_f1DAA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: htmWzSIM1HD7ME3Qc7st6YLQEuDGblpQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfX0wIKdYFlBNHH
 +bO7T5FSVUFFXI/rLbK0u4tPMxGNjvZcpuR06UsS6xg/rQtmGbioODwG1CibYBDiGeIVVu0OqbH
 Ym3FCE2Ri/7HQ8E7Wc9czX6rn5Q6T8a57l22GFvUG7eCk896mK5XpK/DfF0PkPDnfIjghVAyXld
 FzPFJ38viIq3Lma2dgmDslaA6H+zS2FefyhVVAPPaWHcvS7rFtc1WpeRdFmUraw0szW3vyxlU5e
 XVfJgoPP0LMC4gtDRFoY/cKlMhLjBVYH0dOwBoWKtf+I2gJyIa5Pl0zKfffeeL+Lq2Vt+R/WEoA
 ap9tbAsER70MKQ8ACO3iCG9MTTb2KOtFRIWb0BYDCMp9uS6uYK+xmYXLQd4eTDTdBSTrZUI4SMi
 McQQR5nFguJ5Y4I3Zqi35Fdl2ZN4Ww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-18_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0 phishscore=0
 impostorscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_183350_587163_AD6B57FC 
X-CRM114-Status: GOOD (  11.14  )
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

On the Qualcomm Glymur platform the PCIe host is compatible with the DWC
controller present on the X1E80100 platform. So document the PCIe
controllers found on Glymur and use the X1E80100 compatible string as a
fallback in the schema.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
index 61581ffbfb2481959344490e54daea001aaa4ca3..59be6c66b39b5e78418194ea4d8686956303c8f1 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-x1e80100.yaml
@@ -16,7 +16,12 @@ description:
 
 properties:
   compatible:
-    const: qcom,pcie-x1e80100
+    oneOf:
+      - const: qcom,pcie-x1e80100
+      - items:
+          - enum:
+              - qcom,glymur-pcie
+          - const: qcom,pcie-x1e80100
 
   reg:
     minItems: 6

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
