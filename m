Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89DEBCCD1BF
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 06:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d04Z7fvOcn5FfPsJRrfMXBvoCnTb5U0pT84N8/dZK/0=; b=kaVMTXLCIZ5nHZ
	OOICKe76muxqxG5SkQgb7jhcIbiJ0DmnQwQ6TALgrgElqRtVqZmlWhNtKHHjumnhl3hD8fnC/yrFk
	cqPN1/JQFBDVws3jrpq4LOLDdeSy09dpD0l3CUKRyILeNmN87/bilTtKlroos7XcFt8DlATBxaroI
	AJqTRBLZ+9evbI2bPub7pyIulinfHjWYp6chqbnXChQjVqATi3Xb24w9bjI9/Q29rRBsDmakJTrzo
	jeVicxNrYPIK3LulOEtzukQ0QOlLSoH+BTsHHfDuQaZyxhTt4xBi8iuMOcvDBDVIm1QDvGshkuwpD
	CotvDIax1AMjHbzwIC3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSgB-00000001iu8-1AdO;
	Wed, 22 Oct 2025 06:50:39 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSg6-00000001irm-4Bnr
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 06:50:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M1avsR020237
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s9mJDCjcSwaN3f8D9wmyTS2crTbn+Fud3WxhiyTqBBw=; b=g87rnSleme87DTFb
	geVCR+lQP/mNH88MTyd/aBd4uMbk5j2naRA7/AHcN/gFhYj8CvUeWPNxIj+UJaYG
	qJN4Wk9OP7DQxlpI+PCr6DYvhwDqTUgaYLERpwpdAEQe3z7PXiphytKvM7FtkG3f
	jZIZshFoT3pmAb2NiaLkTJVs3ttaFqSYT1FWH2LYiiM1pvZCstqL9WrJY8DCNu33
	LTJVmIlNvFNQx/zoJeMeLhxqe6oRLSTTFWf8H8h22wVFNtyFlMVBNHnrSQwriVyC
	6d/eNvNKwSAzKouFAQVDViZyqJBwuy6SL0edPnGArLgYoqa44cj9KP25WTltt1Ea
	s2m/RA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3443jf5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 22 Oct 2025 06:50:34 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33bdd0479a9so5377055a91.2
        for <linux-phy@lists.infradead.org>; Tue, 21 Oct 2025 23:50:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761115833; x=1761720633;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s9mJDCjcSwaN3f8D9wmyTS2crTbn+Fud3WxhiyTqBBw=;
        b=sSR/7H5KPsfhvfRcH3S7h8r2TySDWjD9SOqMquZW9dki1lKOweTBbIlQa8THe7teKu
         97CZ6rOi5S2MxcecjY05ErJNifPQm2F0r/CCbKIryUtg52QYfMqfkIeF47GN8ARnJUq1
         JlLSy+RuXcZ4nZ4rgiMR0h2ezTk88u8Gg/uDFfZ3z0e1IXTPTnoQ09qHo8L0MAkyz390
         ZUjXNdXO1RvmP5zlfspPLuUj2jh58BSwFssxb0upyQDYSDRCOSkrjAu1UUCh/+DaZE9i
         LDkTD9w5w375y/6Zhzo9Csk6HqlV8q0EybEBSppZhuHmbxSidgNmDlxVfMBapjtCFdtA
         ORPw==
X-Forwarded-Encrypted: i=1; AJvYcCXb4W3z7d/rlmdiUUpGx2qT8kr5ID69FLw+3ZjMalMUsoD0Wa2TPTFReQ1IU0HywYqwwHYE9V9Nakg=@lists.infradead.org
X-Gm-Message-State: AOJu0YysB3wQW9a6rDiYA9igOdcFrnchSddgwPaQaGGjLfWMqrR2cnCn
	Y8jKhrUXv6Tifk6jgY0lugQetOKzg71TDLZc1B/9V4Qe7kdFxnzhoemtT4IVxGYkR4p3Ea0nMVV
	TBFfVdha5l0G2yvLCsPaeWS/Q7MB81e91jokQNOmBxub/fPkBB/SeSuwxU5kg59YNELk7Vt2PJi
	YgvPw=
X-Gm-Gg: ASbGncvDIMkHYF0SZEOylO288WFhyuqY29+drJbGt2jxLpKtMThRtgZrFqDCGzj9J7w
	gNcu1fvOyBKZ88hdNTcxZ8vUZY6fH1KZOz/IcJfYy4NR/CEYj/qPrnlUMHbQd5/BOcruMJtMbkN
	8783tL8IGRYfjwaWL4uQGo7i45GflFwVkZ/2vIEVAy4d5ufWBndWpIpUcJ/VDr2dD9m/A4j1Xbz
	SxoYRv3qQbIX+QoTHRS4WnDUOSGsYUn0gj13J+RbyB1Z3ywF8Q3XMRVGR2fvCeOxVdDoMjCehtA
	+3/aj+kvc1YGFcXg+aTbW7+71ObJPUFhHL6hVD8khdPcR23WJZvfyxlgU56i2WwyP6S0/+tXzN3
	zqLNISNafkmfK3CY1O9+D7e3/XkJOk9OdpfOsDOitX5jYhCypUQ==
X-Received: by 2002:a17:90b:17cb:b0:335:2823:3689 with SMTP id 98e67ed59e1d1-33bcf85ac3dmr26314857a91.4.1761115833553;
        Tue, 21 Oct 2025 23:50:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDVc9txyy/LodTPX6Zl2bPT4KMUb2rb4Djs4TPJs7eGzSz76XX2iUq94kalMFF9cqfDmnbwA==
X-Received: by 2002:a17:90b:17cb:b0:335:2823:3689 with SMTP id 98e67ed59e1d1-33bcf85ac3dmr26314829a91.4.1761115833124;
        Tue, 21 Oct 2025 23:50:33 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223e334fsm1560285a91.8.2025.10.21.23.50.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 23:50:32 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 21 Oct 2025 23:50:28 -0700
Subject: [PATCH v2 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
MIME-Version: 1.0
Message-Id: <20251021-knp-usb-v2-2-a2809fffcfab@oss.qualcomm.com>
References: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
In-Reply-To: <20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761115829; l=1105;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=C2z1zpD5/k7zrrU1kiIxZnHAMyo8I2Wxj97A71MaKoE=;
 b=5R7Gn1k7ZEznAPlNPCPEnEY/Fe8DQaxDCQiOfn18V0Fa1yb9LsL9ao3QQcpKdWqRNYLa6+zJ3
 wsCMPTFtscwBx0YY5AvrZzEOyAmExpV3sXTe7M0fV2akCXWU3vhE5hT
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: AnbJHmbiMSiSM8vSvOVThTYK-s_S7vP4
X-Proofpoint-ORIG-GUID: AnbJHmbiMSiSM8vSvOVThTYK-s_S7vP4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfX9W4yX5A35oH2
 mhDRWuNfZmQB3BSRwssjRFRQP1qczUBiW6ssjXTHY68JbypDGql0p6qnWy9bEmXujr/RGLgxd+/
 djW3S2/7gG9rhuJKdJREB7jy8XoZ3Z/SGcDBC6qHXe70M7B+YAqarsnIH3tLUa96c8K1alBDK0W
 qcoFCHVLcttxI8npuJt9miAs/faxyNrXAAO2ORIOwTbVdswvUc+ysDWRkWXdkcAmqzDyebUqLSw
 EdnWY7tKQ/Qq/wC+ewDnH5zztocQH7EIFuSEMybnUwPDTRrdslDhy/61Rbbwmy3WZ4vE1mddBS0
 gpYe7O/5bcjC2a2eM5h9oVH42KLeMmwW8O5ZPhkQhnI/mXmXUERn6OeBWUiqy9B88r/GNEd/JJE
 EEJu025XBdkldfACPOPiuxSyIpppnQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f87eba cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=JlprKJ-Wy1uuo2cOBb8A:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_235035_108533_1C5F7E2B 
X-CRM114-Status: GOOD (  12.04  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
fallback to indicate the compatibility of the M31 eUSB2 PHY on the
Kaanapali with that on the SM8750.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
index c84c62d0e8cb..ab1cdedac05c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
@@ -15,7 +15,11 @@ description:
 
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-m31-eusb2-phy
+          - const: qcom,sm8750-m31-eusb2-phy
       - enum:
           - qcom,sm8750-m31-eusb2-phy
 

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
