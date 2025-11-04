Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50CA7CCFA03
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 03:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/vVcVqSqUXGbO4TiX2IPaC54vAKBen2DMSgcrbObZc=; b=0UgPR/FLG/dKup
	vteVREiP74COlqYYVZysUhQWQ8sT5Zq89Gs1jOKDhVccqZy7TFwDDTeZY4z72UdC8swvbzZtGOYuN
	PyqAkoktBYmtiS2TkPsb5xVExgMng06W3iUq4WMm+3qO+6rM5+9pteKk76FT/Ma7VIKQiROqeepLh
	SaYCtE9JX8PKN6zTl+HS8l11jxNnkJFvIjAiA0yg5viEPjpKKHLshg0yAAUX888mbCASeDxvPMAoK
	okBZCsvhYEI2rfZ8ReRLh+83G7fViX8t5z5DQ8kZ+pnLrTg90SWO9neSw/MU5dOH7pVnBe+PSR9+E
	R5t7utTefIl859KTZ2sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PC-0000000B1fD-0h55;
	Tue, 04 Nov 2025 03:08:23 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7P9-0000000B1eP-3J5d
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 03:08:20 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A437AXR3659501
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 03:08:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZJfQCItFekv7BPewHYz0hztHPj86Mo2BtMuiedOKNZ0=; b=P6QMXVc20cI7wswy
	1p2oyldBmzDR+1tPpmDMniHSar2O0FEZkzAsoXWa2JZG+WUJhYJC+RTXRLsD4IVc
	bQmYE2cUqfa3UjlSZfrhujV7AGOejlbpSPoJULbyPdjpDqcii4mGHRM4WMzHXccr
	8r1Xnr6brfP+vwJcvopJK/GtP/fkVRtVcJxFG4ggIp3KdnHqeLKuTyd83bxnKvHH
	YzTkIln+eMP+XqBLV7k6VBXTdhpheYQVTsz6cNwf2ii88sY477hk4zrLKgbWGthp
	4iQPtP4+cjoi4AqfefBx12LT3KWTSbPBtWy8SUBcGjNXZGtk3tMb+YhF+ErXtCZb
	FK0gFg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70ge9e1j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 03:08:19 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b57cf8dba28so4335487a12.1
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 19:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225699; x=1762830499; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZJfQCItFekv7BPewHYz0hztHPj86Mo2BtMuiedOKNZ0=;
        b=TQPwKXDG7olLS1PZTTq8cQTpvTSnPgap0LrSnyJKt9KOKxElmM/9QMpOHF2Wqw3KqL
         DRSIBjlfAUUr8LmRUXwcEUjHsUYLOJvep4733L/2ilKNdL57x7jSvnkhyQB9S5nqZ7E8
         +fKaxP38TFRlLAmYh/kNnQ1z1K+1Octl/K+VdEqkMvnEij4Ph1pvcSL5SGZz0DMifaRp
         1LTQD3+ilLo3knNju4E+sCqnHP73evQbbA3qFN8SQKIOPDpkKeVuwc8oaFmAERbd8Krg
         enD7ddhamQUQv6DcaED+3h6mChIZXur98tqNcrT7StfDImra496Q9PuumtPwkM+I0spn
         TIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225699; x=1762830499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZJfQCItFekv7BPewHYz0hztHPj86Mo2BtMuiedOKNZ0=;
        b=Ojs+fAk0zy8QrsOnrU2k+APiV8iR1eYqMOkjoDMm77KBcaUIcwz+TE/LTBz4Sdj6F4
         WAZiTmvhPp314PT/RB3hvMAUTeDpyIGrsRufoGiJ95CFkAQeBS1SIxVR4glS/WgzZYc8
         OyP0TXlVTZi/Go0j44TixkHPRV0VNvfObIve6dyhEWEOb/ObqidGZM1ONspNa+Zqbmas
         w6FRm5qaEUozaZ32UR/PXDn6SBXg21ooEojdRbgZYyLcKCZK/UphOkYmg3iy8Xrhvtk4
         UfkY/wXw/QzpGpVSi0pXiBEtbG+3T68mIEaLtLBZCltFjyTq2zv3wEK8byGHobYTKAEL
         e7IQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkf2SL3FQOgBfHNPdbw6VaDGQ+uQclP+RCaPaPmkbM/cAvjwo6P04hSLVNeVVMzRi89Qx5oWvaxxU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuG7fbbpBr1nJ0ucMEpQNIdkBzjlitYIbWgVC8p5cjqHf4eEoz
	zp4+o+JFyk3ckWTA3Bd0VuVyxyOV1EntX7aU1tnttbeKI/CZUfUnVF1WJ9wWTEKVsBKlv+Hiy27
	v5BAH6Mzl79Clmyy96UthfSbLBpTpseK1nosBLbq46i2ukwLHY9ElbAscGNUT8d+A9Lxv
X-Gm-Gg: ASbGncuAU8zDvGxx8fkrcN2oZlJvqDZQNSk9L0oGBuUOfAxxByomUL+au045e/f1rPB
	OnW6BcBq2DT23okA/M+sT7k4qRAVh8c9jkFekO8RMN1hj8PtYYD/SmPrCMAzAD8N2K01gelEN5F
	WL4iQ3hJRO91B86mHUYyHQhyJGfOUCmW3QYB1ErjqBPHAbHGWiUcxBu7wH1GHiTtNUMKHVO6rGV
	YDXqfX03/NGkXgdWfiHXyXQ4xbB97ixjrW8Py98MoTwk0qaeuRX0EGJcjD81c69Yvb+vHnFMqA+
	PenGFzrhPwNIdDNHc6QEaD43jRUwjJNohumuca5kItDxM3p8uWL4JgfeUn4SCgNtaTn5J/uv+sr
	45AB/Oz97yLBzIFPTi0R223EDZxvPTQPPHsZ9KoLJZwDQpA==
X-Received: by 2002:a17:903:1d0:b0:295:7804:13b7 with SMTP id d9443c01a7336-295780423bamr102733465ad.10.1762225698627;
        Mon, 03 Nov 2025 19:08:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFc33UcGGj818Nb5860rgoAVQmkdRQZhMR5WsMnCCgiIk8toFOEB9JkcQezjOSGJAdvv5lKiQ==
X-Received: by 2002:a17:903:1d0:b0:295:7804:13b7 with SMTP id d9443c01a7336-295780423bamr102733105ad.10.1762225698122;
        Mon, 03 Nov 2025 19:08:18 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:17 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 19:08:13 -0800
Subject: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 Kaanapali compatible
MIME-Version: 1.0
Message-Id: <20251103-kaanapali-pcie-phy-v3-1-18b0f27c7e96@oss.qualcomm.com>
References: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
In-Reply-To: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=1624;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=bBLHxQuM1GBIsRk5ssQ/N3zpyabEzj2fcdhAh1XrRpo=;
 b=UR0fAkpFpg39EiW6tJyXORWZjgSKosGrazWYHiMcY6NEXRUM58c1S4Zc6LVABbVW7aYgV67Df
 q7bEYhf1qAqCxK1QhxyshVbYhVROzmz6fx2XcfOewJP5RCmokUlplb8
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: tC5ksGdd59O4xumBflgzgX1NnyIvjsnj
X-Authority-Analysis: v=2.4 cv=bqBBxUai c=1 sm=1 tr=0 ts=69096e23 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=A6CI9_SKnrlR1hncxxMA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX4M2IPc+aUBb+
 FHxhrONHAp6uj6Z2kP4mxq9bkT3vDbEKeW24dEexeoDIJk3efDqYQFR9OYyvPKSkNrtOwQU3NQ1
 ZbwqfKRD/5FaLOtu10oPeTKfP8Qwg4H5AvnUIm4NfzYH59BUyI9O8+P2E5G1+UrDT+4NYhBR2d6
 fEmEaljlP1HW53j5xXCROE/sV6GGkA26t2r6fWu/DHMx0E8g+3EUvcD7lnSQdc+J0K0On9DCwFy
 yhUrNGJWLT3fBmArlboh9WfXAIL0c9PqzEMLDmgLQn0tUNi6TKHDQ9+nq3g/3qpjlbTu49fExZj
 uyp79fJD0GEidZYLODbjfZLsb0UWobu8lUOp6VNaZ8g4wkOsU69zPSLmxt4UXMvXGQmXq42heE5
 yC0drWg/D/bozuZmms0GtOJGTLgOlA==
X-Proofpoint-GUID: tC5ksGdd59O4xumBflgzgX1NnyIvjsnj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_190819_832767_4DE1F3DA 
X-CRM114-Status: GOOD (  10.62  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
index 9f5f9af6f6cd8373358ad7ec8303a62f006c1f95..ce06882cfe6020976759225d1febee1b31116052 100644
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
               - qcom,x1e80100-qmp-gen3x2-pcie-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
