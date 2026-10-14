Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243B7CC6B1F
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 10:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQRRUHHD3ukGROLxf5OhFY3rvekODNKmRM6Rj6/V6zQ=; b=iORGW+pK7uXaA0
	f40a01C5u9SiXvF0qZE69FwBCu38YE3iW9f3f/G5M3CGl0WniXTbTPYtD0lQBacJB4GizhZou9A6f
	NABWuzqro80PVShx0kPG7J/OjJGYmE8cbcasVbB8ep6Erb5vE18QLJSU8WvfyJA8Yex0tVQCF8B+k
	so939Fi4rJzuZJ5sYsi59+m4pUOa59xpD1VrRd7lxtNoENrWXEl1edgIbVvnubQUerptQZjWrx4zz
	kd66f8z4NhlC2L7Z6p91zE8gboL2ZY7LJpDVCyTR6dSVXsK4dOi7N0PeCydVWvUhc4YyHJsvJwpPW
	dLAz6FpOuJizXcShKQPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvo5-0000000F9ZR-3MoE;
	Wed, 14 Oct 2026 10:01:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvo4-0000000F9XX-3OvN
	for linux-phy@bombadil.infradead.org;
	Wed, 14 Oct 2026 10:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=; b=Pbtt/J7rXjUnS//Jm266TzznB1
	cjAlHzl5c5H4aokxMDC11KDS1JCgyzoLcjdMKTGz8JgwenbyLlOodsqtHL6jKqB4sj3ENLRdQjdvm
	nXCwrnfEU8GX5Y3S/JI5ShUbrlCxU5gqZal3tcFvclb8Ij3OppbpmmwCm2KU5FpFKqiNLmTvTsHaC
	unmdxp8GvIURc+0e/F8Qmq9G2eoH6ggaIQ9mo7oy3vMLHAs6LZRyPHF9NuGMOOk47XDrKS1DfE4qq
	Jns/zzG691A58ajpWEIfiInG+eBtCOs3nXPY8KymbBDOLeQEQTPAF/bNSifgx2UFG1Dlf4QOQ9lmm
	t0hJ1o0g==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGvo1-0000000Gbx2-1LFv
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 10:01:55 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E93R4h3000880
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 10:01:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=; b=HnIfoncMqut518Pp
	KF99unefWyv6KwxN/qzfWnOjeXIfZtPbW6wZWzwN3xcnMoKP/5TDHC+sMHSpkI4d
	sHFAUqH94BRe/rnyGUvoeagY1zaxel0sNwDWaphzw3rNlP13YQ7OxRyn4xX8BRNq
	bMrjdWRFUJl5KkdaQe0RUMJlrfrfSAaxa0o+Q0UHzt5mOcD/RDPyoSBeE8xKbrKr
	QBUXHphKyNRSk8a6uRe60QOY4KtsoXEf/dK8Q6G+sVdAXPMuo+s23EKs7JSitPUM
	ZBl5YGry0XJx7NzyW+sI1TeM1IecJvdmbW9bX4bSAjnT+S2dxKVwYdqafM5BhWQq
	ZkiR0w==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h9sbeucux-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 10:01:51 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-988d5a1080eso111439241.0
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 03:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791972110; x=1792576910; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=MhyBrIlrFRJEhSLYNfb1z8M6aVJU0wEKgv4Buwx1fasFzXymXuTBqxeKkZ92pLlt1D
         yxkgunKz0MiGd68/9p7ADiO4IouVUqs4MjgiuUWn4r4+zvpIZxjRCF2tHUsCfz9QbDmh
         0yuDsdARzOd8o6oZa1FCpHUJeds9c+BllbHmkWJn7Xn1Uw4DqrAaNVbQ/9s3YueqNrCG
         fXizdYY7NHPRg5bQJdAIaib/jBWQfeMMuYPp4YploB43rRZDwZxK0SlIktEgswjLw0fu
         reP7s5XNQC21fSdhnZS0cQB9NswrAQVgnUTuRIrfxV6Z6sfjJ+8cmTAg1pey2z83Qt/p
         y86g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791972110; x=1792576910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EswjIYLr1e96wvciUd6ySjqcZdj8RdoKtvkdKwUdjN0=;
        b=h+wxU1PsIuhnJIhW4R5B+WbwZLYkZ+ZOVkD5O/6qXWZ3Vy0rlcbKHw0em+0bVjdF4H
         vTHu3FDlgQ7TZi5KanM3od0rv+NQ63nf0NYP5cZIFkQVrs89uk59Rn+EgMFL/jdT5E2R
         gCqI1UwK3BlSGtFccu73lxy2XM/tDc86FE1NNnKuz4iSgTjS6g0agPqh2DB4W4EzSJuD
         e5D1Ngtm2BgOyHgz/3c1b2dJ8oE7VceeiLGDkG2mlo6Qg5m3SwcPMscN4tin4GrnDl5R
         wcxZmBvB1hQCY6zi0+LXSW4O6Vf4iEoi7gbquL4NMcXH5eM0DwKyqCelhAW/QTwpeLEq
         FJRg==
X-Forwarded-Encrypted: i=1; AKwUvBxMwtV4ZclYKgwbUqRWQsQZoPjYwj5X/og5k6SJa/cZC+BewvHUbxJbY94tqUNfBkP9hai7Vx6Ru6E=@lists.infradead.org
X-Gm-Message-State: AFq9FYKeu75M0ZxYP8YtpyZ4XhSTJ2tpg39HiSSjkGiGsfgvuqCYKTMl
	O6xUMA7ezOTt3RSi3eDWMMha8BfFb3mb6/MI4EmGHeU9Lr+1nqOB3VEaCh+evPeWvh1KuQdfZOf
	i1O4mspAAWnNesooVtjjEU3/wC4Hy2qSUSMDLtpIXT8pI/e6tZTmOkLWGdjOEJ36UbJIB55z9Eq
	pH
X-Gm-Gg: AYBFou0ktUqOtce1UE7IQlqUoTl4cQGWEnSnArJXpnFzInZqqaVs3CAUIFjXGWgiOhk
	VRINAA5a30UJhIVA7eckCsqxhzvcIQji5MQwI+vcH04sJMww/o7+4CmAtXUuz4kzIJ+6z9kDaJT
	xNvf5O/3Im5rSSenVAlqvfA82ObsIABVLG0e1rvM95q+t9c5S9NrNUUuUBi342SPdsb2PlHjjmY
	uVGfE2HBp2F0nICBjikbKl8G0rfSj8VU4oV2C2/VRi/7CEm3aKdmDNwy8dXoqjsZJFHM68/ZEk6
	C4XmZZIiPNAXfMYvM2g18jAVevHqaO4HRRtPzW0nmq902OwPQPyUr+39Y9HMB0pQeNUoKVDHdB7
	NdxdIrOhGRWsRKokUsqexHERNEN8e
X-Received: by 2002:a67:e713:0:b0:7c3:c0b9:8d50 with SMTP id ada2fe7eead31-7cb37311326mr4327367137.21.1791972109994;
        Wed, 14 Oct 2026 03:01:49 -0700 (PDT)
X-Received: by 2002:a67:e713:0:b0:7c3:c0b9:8d50 with SMTP id ada2fe7eead31-7cb37311326mr4327351137.21.1791972109436;
        Wed, 14 Oct 2026 03:01:49 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de0bc85b1sm10382169f8f.54.2026.10.14.03.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 03:01:48 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 14 Oct 2026 12:01:34 +0200
Subject: [PATCH v16 1/2] dt-bindings: phy: document the serdes PHY on
 sa8255p
MIME-Version: 1.0
Message-Id: <20261014-sa8255p-eth-phy-v16-1-6310fac52e85@oss.qualcomm.com>
References: <20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com>
In-Reply-To: <20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1956;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=BfrbL1Fwh6l+Z6nIdrB6wR8juwiurOHR3kGeK2lY/yQ=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqz1MGPCatuhXBWyqnGPIrQoLYFB1FN4AG0VT/9
 yFM7KKje4WJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCas9TBgAKCRAFnS7L/zaE
 w9KmD/963fQjVivQDEGeX90B9rOqkHBd8uzEGRyI5dKkZ0jgVY4+4y3zhvRzzTASXWM854PVC3/
 CPOT+jUys2jUnmCf09Q0+KFJ9I8Z1xUZI0Oe6raazt6su+HETNI6MOnQ5RaWvKXWO4xP2GoA7+K
 0YVCwhsvmOTr954rElIvsCCo4+3v0jqrHsd1+nbqlh6zCRHdvWEARkTLz/Z4Y+qd/ORuewWLQCe
 6K8K+IaxNfZzafBg7nT5Opv1JsTtclZuBfsPsrHAWVpwmLPIrmCE/I8l5pgM21YvTmN35lKCmzO
 oypRAm1JCM10N5zqYIzQRo8+NcBD/lHqNy+1SmI/3pokUE0szMHhxElXhjqSPdB4xPyjudYHHlp
 wmV6vd4oU6j9skDpdmPx3HkDJCDJUHutFLBk6glRULVIp7tH7cXo14U+kflZc9TOVH54QJMJdsw
 aC0dT5zLny8qi09RuuxgAG+f+qYqW7etVO09PjNtBe08n2oR8VZmGTooBUfJqOHwSGCDjjEc1Dt
 2vOj+UKDNg8vFRwudS9tC8QPMrPEU9yJg6oaI5JG3KoUA2oHd7u6UP0Z+WvGesjYlhhNgbFpJAY
 Dvye+wSjHrwh368r/S7GFXzb4qz0Sy/k+JcvnLx70F6ETwzEMz5ZU2Z2l7krwT5TEN6rGOQnAVS
 fCNk+lCXul4yqyg==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: vBFCS-Ap5URClV6m2zr6sjKbdXcw1fdF
X-Proofpoint-GUID: vBFCS-Ap5URClV6m2zr6sjKbdXcw1fdF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDAzOSBTYWx0ZWRfXwHIbCGDxNOMs
 K8hFYSj8fEB2B69m75tmlFxgXRl9CbtlKOIgZ9NNoxx0Z/Z7woPcoPj8oeDLqz30gSaM3VZTo+B
 xlDpBOtv+wLlIFZ+1RstJElh6UkpYrChDcZqSg+wUbCPqlsB3TU7vU5qqdPOcPMvD1odESu9D0A
 A3gheFKNoVy15hLKXYK7YT7MO2U00+cWitkE0tU7o+0BXOV3m7Gql3eL5Yg7Ir46OBoTim5ghbI
 5nWeltlLRO/jJbvrXRAGF4iugZF78Lx5iZDTIh3LfvkYhe/9Bsy0OyH60+huz1fGxSRh5aTIaNN
 T/UXiSPe8nnFznKaGh1wr+1q+WnJ6+lR4xvMiCj52nY2b1WiYJouCKV7tP9g7nyRmP++o7gAERD
 7ZVRL81I455Zv37rl0nUU1CYsFixtoZe3FMYrkN48f4gtuNIOKOp8IGNvPF/tMjrnSSVqLbeGaV
 xz1RzS+pOkVRwlHiPPA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDAzOSBTYWx0ZWRfXxRpU1+Tf5R6F
 B2EyWV0QcCYeNkUpAHfyDitdxH4689awO5XXjlibpwYOagvEjWtdoKkyh/Rv0YoKqdi3zNtUAVT
 38vmDjQz5czT5LcZpQqhnnX7b9M/lDM=
X-Authority-Analysis: v=2.4 cv=U7AHnuru c=1 sm=1 tr=0 ts=6acf530f cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=gEfo2CItAAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=wENndLYK2PIMvs9AUu4A:9 a=QEXdDO2ut3YA:10
 a=TD8TdBvy0hsOASGTdmB-:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610140039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_110153_851477_73FDC0B9 
X-CRM114-Status: GOOD (  14.30  )
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

Describe the SGMII/SerDes PHY present on the Qualcomm sa8255p platforms.
This is essentially the same hardware as sa8775p rev3 but the PHY is
managed by firmware over SCMI.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml | 50 ++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..9e846e381555514bb32177f884abf0cf2c942948
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SerDes/SGMII ethernet PHY controller (firmware managed)
+
+maintainers:
+  - Bartosz Golaszewski <brgl@kernel.org>
+
+description:
+  The SerDes PHY sits between the MAC and the external PHY and provides
+  separate Rx Tx lines.
+
+properties:
+  compatible:
+    const: qcom,sa8255p-dwmac-sgmii-phy
+
+  reg:
+    items:
+      - description: serdes
+
+  power-domains:
+    maxItems: 1
+
+  power-domain-names:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+  - power-domains
+  - power-domain-names
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@8901000 {
+        compatible = "qcom,sa8255p-dwmac-sgmii-phy";
+        reg = <0x08901000 0xe10>;
+        #phy-cells = <0>;
+        power-domains = <&scmi7_dvfs 0>;
+        power-domain-names = "serdes";
+    };

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
