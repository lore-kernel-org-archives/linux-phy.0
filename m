Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C817AC98310
	for <linux-phy@archiver.kernel.org>; Thu, 24 Sep 2026 06:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0httsMXpk3LeEAtbt0jk17EBOc/3OF3QMCr2qeqpbk=; b=svaXWtYL2iLkrg
	P8kDxvlX8MYKRR8/rQOtehjFy0Ely18ur1brvfG8nfklSNSyC36CTpMRYHW6PsZnmyK4+/9KHtbGU
	4AcRRrygoLRg4B6P0IhYAj/KgZmtrZ/DtjzoXGcqGISVAIsNACeMyILhgPzZHTxhBNdLviAdWSbsv
	+3fXWd/xH8Dh0ZoiDvTHuiYN249nqg1YVI9Bre4Q4140HtmpC8w91uLmRbvXqLpqapoOq1LPXemkE
	Wntb0ZNfeYLMSvz/NeVIE+1DaM/KRvCTtRGttjY1B6t36DbZ9WdUj+pOYi7dl/h8wzOq0l4yguInT
	hXCJxv3EIGjdHsUcCzDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cf6-0000000A7f5-20Be;
	Thu, 24 Sep 2026 06:10:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9cf2-0000000A7by-067M
	for linux-phy@lists.infradead.org;
	Thu, 24 Sep 2026 06:10:26 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68O5ePu11148088
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=; b=S0NbT0FZIxcuhKot
	HDtBPzTEh4ryyTu4nJ6JZRXC2cku5E3yg4ow69g55l5WYr/a4l7p5szRhVfOrnPT
	L4GIJwkx18Ubf2ALsDP5oCF/hvgfAtuWGnW4u1NZueL78mzJBbf2DZ/9NiDNrjMf
	6ZttFXCUYyNbCfal57g/13A8PVBVpaDY6jNxmyZRrHT5kGR/CIIEXX0cf145cqv3
	9UF3vzp55UkcjYqaGseD122LfGqGX2o27/9mrVnCR4LtR+EwEA8wz0GoUcv/C+lg
	zAO0r0ErFftHetMlYJWY5mOs9sNMKBZmev3JwFDjxMX+N+gdYLWpzUJ1jysWcu81
	DU/5Ew==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gvmrra00b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 06:10:22 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-1416f32fe11so2379036c88.0
        for <linux-phy@lists.infradead.org>; Wed, 23 Sep 2026 23:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790230222; x=1790835022; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=SenKvxte0WezO2oisC/LxN/ugsFQbuqpM/p9XsM9lJneez3dLLRMlbj04fp/YWShXp
         wBL6NJSfyA26MP1W2meGANNRQkMTcgJvBUJm6HDfB2DkMgns0KqaHqhBtbp0Z4LsAZTU
         a9QeQSOEsKYCLGMx+zBBFw4YuYzzqwAkqCqmnK/K/VsBPE33KfJ+/Kr5F/q5Bdq22Flt
         XBMWX9k0B/NE0E+hUwObN9COqK04W4cCq0keiw2q7TdJog3xlbUnp3P500AiobuIAA85
         lnGndvIEWXO5P5fTK0FhqKJNKsGAqwfDqwoeXK9jTlVbd48xk+tTC5EAe3NE9cknAH6w
         09sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790230222; x=1790835022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=uUv6lHIWgiGmTGxILq8DgP/oUK6Vfczr+Wvzk7tY5pNEFmeDHLoCyO79cZDeBH7N14
         HpzXpdbGEZ9ziruJ2ocRJwgPquXc/NBbeei6y27cIHI7Xfz1db874EcN8IXdqEewjM+4
         4ZrFpUKPoAEt7IGBext1pJ8D+cAbc7BBvo1Man5tyHFPgmi3VrcOGrzUDWrkjcABKWhb
         R7Oux0bDYtbFrwIFvIPk5Nr34v+UrUAJEYjTNAtyKj/MWSZiovqwyc6J4cxvEow1CA4l
         LRBPW2Cmr7oPOzewNYi0GCMQVkl+h/NkBCLNnHHdihI7Can5ugckFcYrQkvU3Z5fHl0W
         WCjg==
X-Forwarded-Encrypted: i=1; AKwUvBxU5Z04vHBHisre9YLeRQyQuKGZCLkt9UMRfeTOQxx3BiiBb5zFD14xgLhEVv3jlH59HYBbgU4wE5c=@lists.infradead.org
X-Gm-Message-State: AFuF++meQjI09dtJdMZcyI0DlIPw+wSWegM1NilS8Yq31DOmDYoOQzX9
	pTUK/icgjGgYh9CK9evC8dDMD6bXeK+gtST4Zk7hnYnxon15Bvuofy+/8ggFiyhU44jgPcTSVdM
	Lw218aaZaDPQ7VyXtKI6L7nqJmHhrO0ftzOR50ttblGnPTwwMGJVBFCz+vWEO0sxzMwnobC3HmI
	z6
X-Gm-Gg: AYBFou2CBtsXvvC0MdZoqNHhLi54j7+4CsDnhAbwUNiLQ88qnoAhjgO4I3P+CoyLpzi
	5pOfw6tvNnt/i3bER96gn9NjA2wl4y2fc7xgczE2C6LJOLcg9vZBU7vGeU9nefv3PIMM9JeoP6M
	JMQw4R112OEXHrKEfIp0D3hw4J1fv7UEp3nKf7B+60bPeRVr8vINQrFTY7NRCQVQpuSHNhSgp/w
	2+GpQygmhsBAb2or/18q8JSq++TG6TLSksaEyUj9O6O6+kKMNOaNO5fO1PbgdUjWLgpBX+KR6IC
	aiP2wOuh5/ulVTuHBNtpxN3nRHzLtWW9ZFBQwndCsmRMjQo0WYUF6jp/YRALtn3cFvEqVOhdCoP
	HhROW9bD72mKQB7twoSKLUUlGPQsdtxn2e7dhpTU/ZaPWLvn8NeXMV7YZdKVjHBJm4lf/dws/02
	q1fqnwJtLVzhq/fQ4TYcC8lE7UStSz
X-Received: by 2002:a05:7022:3c86:b0:143:31ea:ebc2 with SMTP id a92af1059eb24-14503fc189bmr1068092c88.6.1790230221788;
        Wed, 23 Sep 2026 23:10:21 -0700 (PDT)
X-Received: by 2002:a05:7022:3c86:b0:143:31ea:ebc2 with SMTP id a92af1059eb24-14503fc189bmr1068063c88.6.1790230221207;
        Wed, 23 Sep 2026 23:10:21 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f9895c1asm10197680c88.12.2026.09.23.23.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 23:10:20 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Thu, 24 Sep 2026 11:40:02 +0530
Subject: [PATCH v3 1/5] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3
 PHY
MIME-Version: 1.0
Message-Id: <20260924-phy-v3-1-088e7be0cfaa@oss.qualcomm.com>
References: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
In-Reply-To: <20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX+2yArgHh26CZ
 Pjhnimr4V4kkSp7fLN+TdQnhTHrfyfEm2Hy9cklYobktvY6OHpc/+mZU/bQMC8P/qIMJnhm616P
 8HAK8XVeAT6Zg92334CD9UUNx0A10XaddYXI2i7ew3jvBMGhK/4YNNh2qFMM3SfDgnWt6SCAMzw
 fDJp4Alx+lyLYB/w99syWoMwBgZfjtpRVn2/FT/H4i9SagZiSDxwTfXL1ghuxyWkSFCZ6uM2meB
 RMAa4dO2yuAEBxpFELbTalN+LgKY+oxlypK7WGt2VZ8efJ8ngbOJzgXKWS+gLm0JzAvc2ma78Xf
 AI1jtjZ7MBjqQFkj0whhorlnJVtWzfJglUnmYRVaQo3olGXZ2XnsXc1OgMPFySk3p7sR8g43PIF
 JK/6rmw2xfPYrPbcZg9AQnIfjO1t9EeDvFO82wMy8QG24IikWaOOq8fJ8VD3HnturTs6PfuZGHI
 ISntpn6RFw4MrGgU9Nw==
X-Authority-Analysis: v=2.4 cv=TYwDJhQh c=1 sm=1 tr=0 ts=6ab4bece cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=CyeWGLuohibXKJY0YOUA:9 a=QEXdDO2ut3YA:10
 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI0MDAyNiBTYWx0ZWRfX5setsQFLvL6+
 goPF1+mdTSwu9CC5XTPFqIF5KD2ezqlac9Q8pGyzY0lSJUhWSLrvLFr8j5rXxKVdzDRmzfeJ3+i
 U1fq0PKxfgt7nGuUT0Q5wsAt8c9+ELI=
X-Proofpoint-GUID: Yzt2OVgjuWj4DvK8HLq8MuDktAnUODVQ
X-Proofpoint-ORIG-GUID: Yzt2OVgjuWj4DvK8HLq8MuDktAnUODVQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-24_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 adultscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609240026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_231025_460567_90F5EB56 
X-CRM114-Status: GOOD (  12.61  )
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

Document the Qualcomm IPQ9650 USB3 QMP PHY compatible.

Use a standalone compatible because the IPQ9650 PHY has register
configuration data that differs from the currently supported SoCs and
should not fall back to an existing definition.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 01342823e57f..746c5a331f48 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
@@ -102,6 +103,7 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
