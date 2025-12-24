Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59813E75448
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 11:11:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNtemXUqkrUsZaVdQ+wWxaTT9MfRLyVuqaDZFQ3fD70=; b=j9b9cU7US/6S9I
	gInIHGzcJkbOZrFqCS8HGmi13LkdAp+v8e1Pv5CIKBBFSIilzUNhvEr/Iut5bLLAGwmk2oZj3HW/h
	ek6y8WvWc8qOghssdsJBm3L3gAEVgdLBp3we6DpmG/WwbYxmJ8xLbOy+zUpRIoe4jRv5OwMx627vR
	6aG7uGIEwHnV29z5DzHypWd+wZNRXrldXjJas6nCVyjG+RuJLW7o7dm2kAaEXAu+ZVyTaMZlR20Kd
	96lPm0bZIo/lJYGtuhAbCjzoILkHh5OygBcRjtGuSyctaFti4PJgTXKhg5HqmmQYo68THN3Df5XxY
	vxVSqPFXPv9NdeRwPJdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlm-0000000Giun-2n1p;
	Wed, 24 Dec 2025 11:11:06 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlk-0000000Gitw-35Oy
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 11:11:05 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO7BG8h1056165
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=; b=Y8yfyBHE3JQTP3Pd
	x/EHpMWJmriwTxDXUAnSJIMHmObGVNFvQWtzPffwA+1BOMJAgXDQ+X37XxjZrIAa
	NNEys71qt909bq8wXYU7DJwoau3mBrSxs65qowA8dVlT2x6eHFtSK+iBSv4KmIZq
	TJh9UJ9Wly+uDD1O391CGzrIJ/kLzuyCWakpgZ8gYzZW1HvdXPuu3qhAnWpiTMof
	+UeBQ+IZIp2xjVIDOvj+IYpqoTMJ9uKJm8Q1a9YnEOZ5hO/7T/HVeHnRci9s42fb
	rzHe9PPHzFcqzjvYDQjC3x56wr5ySbmpYqdSinbG53fNw1sljbnnw3icgIpp73aB
	gbmD0A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b811v28ry-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:04 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f183e4cc7bso104433841cf.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 03:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574663; x=1767179463; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=IcNHenkMRUz4cn3Xsgi+PITIBWpqEvhzhwygBrjAVOwce+1pjPSOEPVz9ffPJdciVX
         jIfbkTGU1J//oyTO0mHRWanpGCi8c2yHQcdZ/B9zzncoa7KQoLJl2kDPVP4B9hzNQJ3C
         yDV4WZGSVuvjJOBsrvDHYTWfTBigyf6nTLPTa8dmYF+U4SCtFnRoMCwTj0ujIKYoWW9A
         HVuY9osJYbGFhcreGOiEK3D6xGCJe3YgfzfFCuSSq7uQ+VCB35zV1Vu33Qf1sk3gahM2
         TTFaHPzaLVGdBrUT78VWOKDe9fAuyww7yio+s42h0HSvgq+kJmAIRZlFTj1GnETzqTn9
         /CYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574663; x=1767179463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S1DTJQec/NgKiKVFzzWxTq2KpPf2b+8dzldrl/QCfts=;
        b=ohSU921T4M+l3VwExtlsGfsV0HrvpInUtITxkmq0zrOMmATwbTuXBoyElv9GFs4vH1
         gDhG7Zp6F3HGk4vT10UXUDyAbY5GoJTpz7niKpBHgrqZZDlaD5J/DJMTQle4jTId43/m
         b8e0Bba2QIF9MeUeHi6C0KnAS7yF7HCRhtWLHT+JAZriyuipgIBZxrhI5fjk0FbiJLoe
         aD+seXGKjGrF+xupH7f6qYgIqi8URTs5LfA3FtmNZpZPjGcUCIxSfcSDPQ9wRBpgQ8Z+
         cK4aDaiVA2cNRpYBEm0iUBRPuR/dZJ+VZsiPOfIoJW+xJd6ZW6I8/KBvB+VRwEa20ioZ
         nM7A==
X-Forwarded-Encrypted: i=1; AJvYcCW2M2Xc7tzAFgovuasWbFgX70VqFDzlXB24qAK/pBHwJh+pVoEGOJIm1/cpe9AOlMRzsgMqv0yz650=@lists.infradead.org
X-Gm-Message-State: AOJu0YyqWW4lDYhWign7S6qDJqDfm/mu8f5F4U4odwQcTtIM6tHpS9S3
	3VWgeCMh5R7w0lxBc1C0dlGxVEuZBQsBmEqS7Lak0G415l7Nfq8K0hreR8QI0d34E/jXdhINWqB
	anO7B8x8YQDQ38qOfvULW5vBJvfRScIlMvujW0LEDcK6+a7lHM42KIwGCtMJ8WTbCamfMxR5Crb
	Xy
X-Gm-Gg: AY/fxX4SR3LpjiLmtQZcQXuOmeRojlFD+Jetkkz6udTlGMTP6preFo6AzTTo0hv2Uqe
	foHnQX7Rj8ngBDEON9nsU/W12d6J7mZy+km13UMwow7vWBPRY6PrFrnv09czhyXAYTpfiRNwHsj
	OzpGIfWcLLtMMliTePdLcbDQBqFnWW76PaHduD2WCKHXuQi1iZdfLPi3Pu9/ulLLdNl9FdMrLw1
	EFeWsGJ+ymce6K8xXHxLbPU3Hwp/d+fDdrow9vLO2ZaYN21ZxNb0lDJyBf5HKe4oBraG6GRS6ee
	+3jl4EEYfsw4nrYhf+uNL7vB+xMOqm8A6hxoc2inKns/RHk1F7QQA3jeFjuMJ3QUFfW8uG9AGQ/
	qTDUXqrqJlBpN4t0=
X-Received: by 2002:ac8:6f06:0:b0:4ee:ccd:722f with SMTP id d75a77b69052e-4f4abbc439fmr228550431cf.0.1766574662994;
        Wed, 24 Dec 2025 03:11:02 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFp6T0cq0IwXg65lmLse6KWTr5gLnTsngg0jk3QiZdkZ2HJDZGO3aC7R7s+OTrW6dGzXVqefA==
X-Received: by 2002:ac8:6f06:0:b0:4ee:ccd:722f with SMTP id d75a77b69052e-4f4abbc439fmr228550071cf.0.1766574662490;
        Wed, 24 Dec 2025 03:11:02 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:11:01 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:10:44 +0200
Subject: [PATCH RESEND v6 1/4] dt-bindings: phy: Add DP PHY compatible for
 Glymur
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-1-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1166;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UjT3XNaICZQxaI2rtQkKLAQyo6ogQ8qaT0RvJnH3+s4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8o7PORmYzF/km5uvscLA0AvVKwfdAGnmiBT+
 eEQkafS/3WJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKOwAKCRAbX0TJAJUV
 VjhzD/92UbVaCUYdY4NkedGwfjPbWPB09EV8FLIG9aU3SUpLwVj1yA2DWlnDSqr4XfUjmGR+346
 p6LcqlIGLMp6iMfsSEv9BH5OBRf/+WkWt3DSuwxBErjr3kIv+xv3mzDTd890i7WB5iiqlQb9jkQ
 Uu43Ooh+/RK7RAv6MTFgiBLG9oho3NRzaAMqHf7rQ8TJbzwsz10jLhV4W9fQztY2II42BhxwGfl
 r8vuyC3VQprO5b3DBpvBb3mwBx6JHFLBUlw530LpcGKK3xpTroEsGzg5Bq5JPWhgSnqkEugvl8b
 nwalR1sT1sTsuB3JJqWuix45qNsx7xlXn6dDAD6s6mUH83NRc/gLnxfUzEFkGjgciG0VpG/NIPm
 i3QUG7F/q3ffsZvVPOifacYhe41+rulE4rD8o10b82JTOxRcxn944+MCd+CHJRgX8aTVe5Qnx7W
 fpTLI5tMLcYrZ+rlAMN6dDACc8lrBgrT1488/HeStVFyIEq1ihUMLM7BWzuWn1xbFB9x8x+khVA
 mq7oOZayTf+pQ89Zl6fS9A+8hYnKJs/PTLhTMSYhEe1UgeBK97SqAkRgz9VwU6oAAwfb0ZaUhYu
 JDbHi0Ejf9v53An7ELP7LO3TProq/xiKixCuZwS0cfvHVStdyeCP5kZDp0QcQRRDHhHsOzAHQde
 6wZ/UIPA6EY5f4A==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX/ed1DQK8nqgQ
 Wd9qGKQ0YY0USO2iIQyQrOJCePwlqF7OdjhX/k5b57v//b73wjX2PHpMp3ioafvBiK7LDMM34oM
 U3jFHUBlPU/RyWpHG/rEc1hMmOcKyHK1q5dsua9Ke1VQ0MGhAa7UHeuW/IsfDpsTCYSzH3kheEt
 FsjOMg6yhL9/cpaHRxnYh0t24T6PDxaeBASGGnouvn0e9ux8oaM2dL7B2rpZ7VUSfGgP1CBOdmN
 9go27hK2Jwjx8P10jBrQiu+S0nlu1MKcu5rQJF+c1LjiaWA02ya5PjATwQZMUvL6wZsE6PygZtq
 a0t1ba7O2XfNyNXNKnvmpqXnH485nEx1c82sNB++13Nt+L0mEAhpd8H4pv7bDf4iK0bBgZNQcO5
 OoADU1pAOWxG3tOWNA7V7tmzrZiMhh1aoKVThXliGQdwp2dUM2FZW72xbYtn5yLuVkgaTXA7q6u
 xcaQ+ArllGveIlDYwgw==
X-Proofpoint-ORIG-GUID: 4_B6QfbJyaOWp9mIZ8AMbC6wHQYIQGEv
X-Authority-Analysis: v=2.4 cv=WegBqkhX c=1 sm=1 tr=0 ts=694bca48 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=adPXzabyy6ZLveKXoAMA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 4_B6QfbJyaOWp9mIZ8AMbC6wHQYIQGEv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_031104_782948_046DB92A 
X-CRM114-Status: GOOD (  10.94  )
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

From: Abel Vesa <abel.vesa@linaro.org>

The Glymur platform is the first one to use the eDP PHY version 8.
This makes it incompatible with any of the earlier platforms and therefore
requires a dedicated compatible. So document it.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
index bfc4d75f50ff..4a1daae3d8d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,glymur-dp-phy
           - qcom,sa8775p-edp-phy
           - qcom,sc7280-edp-phy
           - qcom,sc8180x-edp-phy
@@ -72,6 +73,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,glymur-dp-phy
             - qcom,x1e80100-dp-phy
     then:
       properties:

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
