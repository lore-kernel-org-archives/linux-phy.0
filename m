Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C153C88E7F
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 18:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz457izGG1BIUzYe8CfDIlUQ12W5ZClxX+yYuqGDlrw=; b=e1+F8XyiQg+FHH
	D0JgKzuajy6EftfhJJwEynOeCiJw3+aKvT+1odVxeG5uNu13cMlbLoWca4symqypvHozDDZ4TCnkQ
	MzbmluJdEKPvdx29yagD0lHO8WhangijvUp+boOJKSTuCmNDtUNK9fVaLFVXv6YNCIOqEIJHO7Xyd
	hPGcQ9Bci54Mn4DO3opQgzQ7NodRAlapUzXjy029gMrQQTMUzy7JHmDHtpvdrRDQW9ywF+XpZle5m
	2rWVfgp9xTlinTAgFjoKIm/u7qsSUXAx6we71hANI6p2XPZXhmGE7GdFVJ8r80Yj4kq3jBWuVmpNv
	vFdObiezMRwWqnS5yPJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPc-00000009xUL-2oXz;
	Wed, 16 Sep 2026 18:31:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPa-00000009xTc-1SJj
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 18:31:15 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GG5L2C3597322
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TDs6IBDJvRRkHcrVDwCPA7La3o0tBeHJ4+WVchOitCc=; b=UE4W7/hy8WJQV2X0
	FYw470OcvcvABuEZ7QpQEaKHNnVl5NF5AC6f5xRdozc6HIbwLWqBgC7q0vhYs8VS
	H4SBsIHJ9Y7mggkOqOSxafnwWpJR5alRurWvSo+U2rp63FtzWWuycCioKvtQ/xdJ
	c9hHIVxRav9SKNqXghm2IkWuJsF2K6OxKtJD0o1Og/jnmXar9M/Bb86zEAbve66h
	9E5P1GlAqrlCv1KGTVkozewhLbJDDRiLvYHST73xBSeO83kZLKhYW7T6sKPEDU7o
	bD5msNdKbfMbYYQH2bdorYKgKWjcNwk77EDoErTZa3DtdYW2EIe6RfcL/cDF70ae
	/+D/zw==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqxay8pr8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:13 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5c82fe2ba8aso6481446e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 11:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789583473; x=1790188273; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TDs6IBDJvRRkHcrVDwCPA7La3o0tBeHJ4+WVchOitCc=;
        b=IepFWj9D7dE2bw4lZYBVQh0ZUxmzEYc0CmS75ww9wVUw+05SxZ33U1KaqLOwv1VkGq
         GCV4PqlBgk5gQ/hvUmUQI/+YpTszxLPxZlEEOCFFX3xUvJ02jjZitMcPOMnfCiXCih76
         FMdaOr0tZdPJaWu0m0LnPPdWQwUtsDATFraDecGYHfHskaXLcUpH9G2SkvuWoCs9oL37
         OUMFZu9kmUfBkpmTdpaWG5RfEA3+8jCibQxQ+E9s9oGQrfoExO8dSPRVAuYj/UdvqzlU
         PkCHIk4/MNfUcikrlZ/Jgwv+h8EXK7jJf7o7UeBB9byVwv6QvcT/6oKsfwiAhI44uNZs
         kwqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789583473; x=1790188273;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TDs6IBDJvRRkHcrVDwCPA7La3o0tBeHJ4+WVchOitCc=;
        b=MGIviRAwC73ZNRCXXPCXcg/IDoO6OStb4KZCJbKOVsZ9eDbjijXIlARei+KaNdkZB9
         1qzX5FU7Ecu6IkG/ZlKLP7dvvh1yXfanRuyHW2I+RkNl9i1aY4B4PcO9FJ6UZZbc+J6w
         apUAJ5pJQ/zBB50wLtRyKmN3zLNZXwQ5TecK6IZtEun5yRDrEO/NozBkvl+b9hKkA9mw
         74JK8x9aGISv5Hg13LKRwMSmX6AlnS0lKanxPUVhgzJSH9CcBUTRKsVK90MMVBa4FCgW
         geuDPqBHHOO8S4h6WVOswq6yFJHnzNahyDh1YJgTQFGeQNhY1MSotdcuYn60uNsYJXJz
         UjYg==
X-Forwarded-Encrypted: i=1; AKwUvByTXmKfW6nQNKxJpzOIT1TZ7yjNy7m3lsWqy50OhJSM7bNEnbw8MYGPeY3MtLLGx3STAYBr4N52oCY=@lists.infradead.org
X-Gm-Message-State: AFuF++lCd1VI3vYHRZLFkB5bKWgIt1lLn8ztBsPMR66jDdMyqrtHUQOo
	t5slda05BmXdxoUH+sy8ICTqDLOb5mKpJROyPZNXeZ5248/lh0mqr/qsZa5Xt5xP7hLcLJSSI43
	RxXSOJIYid8XY1looLuhAh+oCBQ2F61RzJqYIpOWiOJL13PAXvz23ZJrDj30lgT1VTWzf
X-Gm-Gg: AYBFou0ex5BhkP30h6DBPsy4K0pZF1KoGHeCbjVuj5fO2Bhxv2eJAGPChbsy/c7EVSQ
	Ppb0g0Y+43xLlUenP1UPyLrDzwmON2eC7lcnZYV/xyd6VzM80vXIircEo0oJPN7O+bZJVhrCD2I
	Fvgc4g9NSSgYNcB+Cwihd9od0Lr+BC8dn/lXKkXcej9JbYCT0OlU8eec07MnjI6WW3TzM//2ZdH
	4hs5ireu2BAy9f18Y1qvI8yk7sQWOCuQxcnO1rD16p0uhCw1FWt06digDyaOWbsHVeuWNB60OEA
	fUD+SszMRKf4UYsIFLMGJOHJGYUckSpuBAjEzY1u5p+pOLQQ3CB3yNZn/hH0ao5Ht46aOQ4SKTu
	nPJe/I0zemhE66Dlh/D4LofvFSZs=
X-Received: by 2002:a05:6122:4201:b0:5c9:a60b:e59e with SMTP id 71dfb90a1353d-5c9a60be837mr456802e0c.9.1789583472815;
        Wed, 16 Sep 2026 11:31:12 -0700 (PDT)
X-Received: by 2002:a05:6122:4201:b0:5c9:a60b:e59e with SMTP id 71dfb90a1353d-5c9a60be837mr456738e0c.9.1789583472427;
        Wed, 16 Sep 2026 11:31:12 -0700 (PDT)
Received: from brgl-qcom.local ([90.161.207.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bf2797csm8625416f8f.16.2026.09.16.11.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 11:31:11 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 20:30:51 +0200
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-phy: Document the
 Nord eUSB2 PHY
MIME-Version: 1.0
Message-Id: <20260916-nord-usb-phy-v2-1-2c8461bb30e6@oss.qualcomm.com>
References: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
In-Reply-To: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1481;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZPjbr0I+9Nvr8YjqDeKEPybP28k7tZ/cuW8owMAJ7nE=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqquBnwLg6NaOObkC5dpQgPcjuUaEH4gm0K9Oxb
 0/DClb2n9+JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqrgZwAKCRAFnS7L/zaE
 w9u6D/9GNqNarY9ZEWJ0HcoJ13vYAmZFCdeWXnp7jyxHfUEW2xNItuyhZLgiijBpF6vds0Iejtl
 14x8sqOBsz0Va8Pf2X9YffqceCVZncXBkrsRNAbX6sQptgKuHm24Wea9dniFHqcVJocut2+ovzC
 KZN8ROPMyn1QcZGP0ZSHR9MHUlEZI0TVendzvAGgrU569t3LoWwzcsJ+qa1Z4AngVzJ82PXSaqd
 3cRttAJ2AwML/GxQYIZTvIA8H/8C/CrSCB/S7XdY7TDCHt9RCRUBNlfhlUjJ7NvAOLKhwda/Hwc
 d4vt9oA5DMG3lhHuw9FZDkAuRAJZ0ic/qL1t4I2nsRcOpaT+lrv/mykEYbFq2HuqTXmU/+iUrN0
 txqlpqfJpPZyi9rRQzRiwhNSc4uk34F0VIdq2CWZnEdI5ImFMhPn7YTGwBsGkOR7u6+nzrz7uIq
 vbuKE9A6E/kJmFyxH2tmGBo8JyStNdpzZ8U90ZgpyYvwZkwSbIf8HJQngLyK0gzVl1dBfG0WxzH
 sVwv4Fq8GonneDONOtgBPjol2KJA7BQ/QGyap5CqVP7t7AtpOW34kDChhtO/KTzSIbFTqf68n6b
 KfKejuAu2EcACD5gShft0Bc8StdjQn00ysxsFeNfmB2BixmcH3o0cJwFqGsIRFhgttqBy5si+zi
 580QN4Jxk/1WohQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX0+7D7i/YziTR
 UcqK7yswI4KVRTxpKRagcu/BJ44OIFvkJLmom16ZAJZAD8FIfzCXyUwPG+mRb0LDPrVokdtKpqc
 yGOCFIO0r12uueoMV6vN2km360eeLYetquRWsHXbfHuL/Tshi6yBDx3bsfkauKZgujk5QlDGp/e
 vavbbLGJLPRNi4eM4vv130xry9nX4d6zKbnCntfoVLH5zOGrO7W2rzhllCevbfRuDHH2dqNPQa0
 q3gxNUyqATPFJsmSjHdHgTp9pv1FuvJIC4LRzeYJ7LSt4eel/7Pwt5YDw+ecX+ZkW0rHcGVTicP
 NIrsIWqcZ+okdym7ooeTR5AzVEjcmiKC4Yi3KjS+fxRrYvOF9nWjx/SkK6otnIqICqTVtoUE1rz
 6mV6QSD3jw53t8FXLaOLgEesLu9dpjZBBNqwqJNaIjK34wLGQLwD56SZi2YWhWQFoQOs/KVdzH6
 zaJBhy6DP7E1i1aVoZg==
X-Proofpoint-GUID: cSehUTBLAWCB2hrYqhMgXDOcZEAc1vyC
X-Authority-Analysis: v=2.4 cv=EoJHPicA c=1 sm=1 tr=0 ts=6aaae071 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=BQ2oiuy6hHN+kKmom1QVvA==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=M4M-QYXtbn0wZdemrtAA:9 a=QEXdDO2ut3YA:10
 a=vmgOmaN-Xu0dpDh8OwbV:22
X-Proofpoint-ORIG-GUID: cSehUTBLAWCB2hrYqhMgXDOcZEAc1vyC
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX6q+I2J+hlZE/
 5UhCLcW/u7xoAXkceKizaOpavMwQMAOJABzH6iz96ExijJ/U38XRvXkriB7g0ln1Ngw1mL9/Kd6
 JDcUFABf2k/f9WdWdWbJcAbpPTpWN4E=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 clxscore=1011 lowpriorityscore=0 priorityscore=1501
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609160255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_113114_504360_ADFDA058 
X-CRM114-Status: GOOD (  14.05  )
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

Add a compatible for the eUSB2 PHY found on the Qualcomm Nord SoC.
It is compatible with the sm8550 eUSB2 PHY.

While at it: On Nord SoC there are three eUSB2 PHYs but only two QUSB2PHY
block resets: the HS-only USB20 tile has no dedicated PHY reset and is
instead reset as a whole through the controller's own USB20_PRIM_BCR.

Make the 'resets' property optional.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 096f6b546632ef8cb83321961c7e5ff261db2b1d..7fe8c82db38d876a9230697103dd9467c49f6c84 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,eliza-snps-eusb2-phy
               - qcom,milos-snps-eusb2-phy
+              - qcom,nord-snps-eusb2-phy
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
@@ -64,7 +65,6 @@ required:
   - clock-names
   - vdd-supply
   - vdda12-supply
-  - resets
 
 additionalProperties: false
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
