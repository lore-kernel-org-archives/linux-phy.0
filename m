Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD117C982CF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 12:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6QayRdQ/HwqlxHebWaCwQXhmaqUY+E/odJGJhJF7GQ=; b=rVzxVta9v8Vpg5
	4myfq+zFGByEfB3OGxI83JFixl4fXp+PijXAcQom4oqEypds4R3J3zcUmFN88GVxLcXxc3/bl3U2p
	IA0MM0JeRYd4kiDMjIBBc4o/jQyAC0veWPi7w20H8hLyyGPCxle9eeA9CqXFfvc0FO713oCRndCRl
	Cm7lUiLReIj9gUYFxDR70Y3Q/CJZni8u2HcClmyuL0EYOPepMwW5di0VmBtjhtSmFJe1HZHSn8u/8
	BIcf4kqeUCvlCOUABD5FsdYWctHOX4GkiKqCvRRi57GXJHW2arxuvbvgqyFmM6WHc8qAGwFYGpONb
	yWMUUzZnEJoV5s7PgX3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AsX-0000000BFdy-1Wok;
	Thu, 17 Sep 2026 12:06:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7AsV-0000000BFde-2BWy
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 12:06:12 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68H9Zrlu2211011
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:06:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J+2CKQh1ieZxmCezKjIHSnKR/jjJZkVnb8TyUl2XKDY=; b=ng89QN6f8vO7faXr
	CLwpoc1lcaxIQZTGZCqV/sfMnnell5Hc2zLZ4kUCxdBDYY/eiZQy4zx3HqHIs+Le
	RS/Dudq6aAQGhLi6K+U1p+9NxfGRA0awaHA5GBf3oKMbH8IH75K00Ze8QOJXAAri
	jaE3BY3MGH/9TOX6c+6YNOm+9Pykb2qIo0Zg595tx1zsOFh5XVKoTuvYoTeHUHvp
	5Q8Tl1YuBIf0zt8oLyCP2Rm2r3F7+dBhZklPO0bRwTzDN2GNFF0V0v7jMj7ywsEv
	uGH8SBNAr4u4k14GMfLG76IK8DBcQftxtRXRLd+J2IBarFDjE1iAhHahmCCbp6cD
	YP3Upw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gr79m26ae-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 12:06:10 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39e3c10ac70so1494973a91.2
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 05:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789646770; x=1790251570; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J+2CKQh1ieZxmCezKjIHSnKR/jjJZkVnb8TyUl2XKDY=;
        b=kojSRrtpozdpet6eIG16OUtwlB3fJy60UabGzkflJefwMi1/BL/pycXc73ef10tG0r
         h3paAzv4Zq8DT+THruklyeZpQ7C4uTdT+EpCf4DQ7schUMGXrRjBXMsdQHXKNRlI43PW
         bcdaVS6ls/noon6hye4Otp/invf2gRH6gEh1gI7e8YxzJladHO1gXwdYI0NUhj25/j8a
         5UToIp5xG3P19emwZWjbIsLbX1g0RpJ1jspaWs7ATij/sGTR3tFgBkCML0aATFpjzZR7
         fS7YndFGb0IgqTqf6jnm9NXYg2F6wwc6YdKI5DxBZ921ppWWwngFsZ62+8/v10sBtepI
         fyng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789646770; x=1790251570;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J+2CKQh1ieZxmCezKjIHSnKR/jjJZkVnb8TyUl2XKDY=;
        b=smgXNloBg+9r8caW1qtWfsNvK9YqeQTd1ib90uWUjJqFiRBxYFbXGn1jUlifxLjZF7
         b0pwTVkJxw+H/ffzi26e9QS2Wt14A+WEcpy3ZgSpCe0VdhvkMiGfdZ50ckBT33rtrFDK
         OmUmQMnMQkUxuZ1SfQGP4l6Xp9vt4VcUjyi0P38H1T7r3LFSYT7p0o8b4e7duSfWFjts
         /XvUAllghiME7mkxz+1UNc+8jTM+UDvSO9arWLFLQtFoXwlfqa4jKQLeakt0GvV7rkyv
         kabe/4dzicuFY58PG17/IUPI5mqMYO2EaRuSPsRl5HXvWKafOb+y7iXspL+P65wOrfJd
         6bPg==
X-Forwarded-Encrypted: i=1; AKwUvBx7L8yhVPdIvy4GqO+p7/0+6i2wI7obFmy5C8haJNLa+WWRhW3DKtdwcXJ3YXVjwR2/2BZO9JjkdYE=@lists.infradead.org
X-Gm-Message-State: AFuF++mwf/1nH2NnYvYPVM3sFKjcnnQjMR1XHvrkqHE6od24Of/xhFUp
	ZX92ONpuuFQYkylnDhEfb6NJclCADhN2xsVw7TlrZH6GQRtx42i4AWnuqXm7yYfWHvCDelhHpuK
	WQ6Rgh5Nk+TwhEp1OYJFsoqHWBCkaIacE0DqLBV4m3JI4BFP2vM1q1WmXh6tZuZqP0lNT5vubkv
	/N
X-Gm-Gg: AYBFou3fBHmbnQELBHRSOuPodE+1VKY1ykGxDudidrBHvazYjP+j86zpTC5lX4Jmi+R
	zrv0EI8PMsr7OxEEgd3bJ1ij7ZXTUkpplGzphI5Sl23JO5C2xAaYDUC+L78kby3eY6nJnPXZypI
	0sHGMOfrPsmPQPHlH1HwdX6MoEOzSbBlQ9L6seXGbSw2xw4DGnwj1hMjPeolFxo/nA42ZzkYf1+
	w5OjYWimBRbk+aullhBEs7b6p+nNjel6sQHGNY4RDsJfgdxTGC6NWHXmrJpiDLGoTPONLR3SRdz
	MxtF6Q40YyQthY20JkC4kZ8DCuuZYTsCCBLu1h7rFCZtuReo0QfVmBfZHfpr4UOEw5NFLDQZ38T
	dft0f0+1CH1xmWaMQTWhpLQdJrYdv1g==
X-Received: by 2002:a17:90b:2b4c:b0:39d:f024:c7ec with SMTP id 98e67ed59e1d1-39e1e484b5emr15886329a91.16.1789646769805;
        Thu, 17 Sep 2026 05:06:09 -0700 (PDT)
X-Received: by 2002:a17:90b:2b4c:b0:39d:f024:c7ec with SMTP id 98e67ed59e1d1-39e1e484b5emr15886111a91.16.1789646768098;
        Thu, 17 Sep 2026 05:06:08 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e35d9869csm5007612a91.4.2026.09.17.05.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 05:06:07 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Thu, 17 Sep 2026 17:35:42 +0530
Subject: [PATCH v3 2/3] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
MIME-Version: 1.0
Message-Id: <20260917-glymur_camss-v3-2-1d0e2d47ad2e@oss.qualcomm.com>
References: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
In-Reply-To: <20260917-glymur_camss-v3-0-1d0e2d47ad2e@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789646750; l=10986;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=P+unFlUHEdDd9f+Q10YFMB8qwZfDEHa1ScuwgHEZAMM=;
 b=JXjXpOuqtH9d0kzFWRnnzONpiaIoXt1ijEi5tdOCH6R3TrwiU82rPAZMejcSKRic1lyD6fJFN
 G2iuauN09bFC/BT6EpgE3Z7cc/YzuSLWaH9Zz3Xq5qOAYEcOTJtlPjl
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Authority-Analysis: v=2.4 cv=Qf7zLcbv c=1 sm=1 tr=0 ts=6aabd7b2 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=MTeEhnUUud4OIzaa2fYA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: B_aLoeP_kk1W8e12tx52et8C_EcpdzIe
X-Proofpoint-ORIG-GUID: B_aLoeP_kk1W8e12tx52et8C_EcpdzIe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfX2QwGz89Ttw1I
 7hzMVEMYAUmi7IlR7N8sWY9g3HNLTYvyR4v38GA3e6lm03cmzKLXSKIFz1//pbXR8AJ6hUcoAVu
 NLs/+QTBWdATNB37J2aheeLSrICR7xVsyvo7pK+Hx+RC/Yo2TggnpZ02MIZv6pLldy2g9baM5sj
 0STw6vzbtBREW73tt8vlMZhsta1rW7uyon1V/iP56XNWkjSklErWHCTlZWuYtQg94LXSL3Maqmx
 LENhFn7Arsqi9SuYSQK2R0BHjkOHXGUz2xuVEwATs3+qmH8mr90C+YmU2ToMKn3C7XJ4R+4WtdF
 j1Bw9Fc921D+eZfh+uAnFojGldx624Z9j77ayNe8Z+YTEAHMnt5DkWxpiz0c4lv1VVOuzrqAngk
 IUoBVUYKnnjKaHtkQ4eLCnxpYVsc/KV+UwOOUxK6ZERMdMF1V6qyt0rUPrApzBn3UcschO+tk/k
 WG1rGU2CaZAqxLQBCIg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE3MDE2OSBTYWx0ZWRfX52vxvJ8SPAW1
 AfDAVRatWGWVLnbM8bwyqylOsZEySemiVE2aaDRvJKEb1G8GcxeIpiyEbfi6lf8hk9Ii4gtJAl4
 nh+jovJrIl9Qt8AruYEYBhNGsrGGNKE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-17_02,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609170169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_050611_572529_F0945958 
X-CRM114-Status: GOOD (  12.77  )
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

Glymur uses only the new PHY API via standalone phy@ child nodes,
so per-CSIPHY clocks, interrupts and supplies are absent here.

X1E80100 has four CSIPHY instances while Glymur has three
(CSIPHY0, CSIPHY1, CSIPHY4).

Co-developed-by: Vikram Sharma <vikram.sharma@oss.qualcomm.com>
Signed-off-by: Vikram Sharma <vikram.sharma@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 .../bindings/media/qcom,glymur-camss.yaml          | 300 +++++++++++++++++++++
 1 file changed, 300 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml b/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..a0b77edc212319fad69113f3d55ca24f184d4b23
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,glymur-camss.yaml
@@ -0,0 +1,300 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,glymur-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Glymur Camera Subsystem (CAMSS)
+
+maintainers:
+  - Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,glymur-camss
+
+  reg:
+    maxItems: 13
+
+  reg-names:
+    items:
+      - const: csid_wrapper
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: csitpg0
+      - const: csitpg1
+      - const: csitpg2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  clocks:
+    maxItems: 20
+
+  clock-names:
+    items:
+      - const: camnoc_nrt_axi
+      - const: camnoc_rt_axi
+      - const: core_ahb
+      - const: cpas_ahb
+      - const: cpas_fast_ahb
+      - const: cpas_vfe0
+      - const: cpas_vfe1
+      - const: cpas_vfe_lite
+      - const: csid
+      - const: csid_csiphy_rx
+      - const: gcc_axi_hf
+      - const: gcc_axi_sf
+      - const: vfe0
+      - const: vfe0_fast_ahb
+      - const: vfe1
+      - const: vfe1_fast_ahb
+      - const: vfe_lite
+      - const: vfe_lite_ahb
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+
+  interrupts:
+    maxItems: 9
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid2
+      - const: csid_lite0
+      - const: csid_lite1
+      - const: vfe0
+      - const: vfe1
+      - const: vfe_lite0
+      - const: vfe_lite1
+
+  interconnects:
+    maxItems: 4
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+      - const: sf_mnoc
+      - const: sf_icp_mnoc
+
+  iommus:
+    items:
+      - description: S1 HLOS IFE and IFE_LITE non-protected
+
+  power-domains:
+    items:
+      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: Titan Top GDSC - Titan ISP Block, Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: top
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-3]$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+
+        description:
+          Input port for receiving CSI data.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - interconnects
+  - interconnect-names
+  - iommus
+  - power-domains
+  - power-domain-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,glymur-gcc.h>
+    #include <dt-bindings/clock/qcom,glymur-camcc.h>
+    #include <dt-bindings/interconnect/qcom,glymur-rpmh.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        camss: isp@acb6000 {
+            compatible = "qcom,glymur-camss";
+
+            reg = <0x0 0x0acb6000 0x0 0x1000>,
+                  <0x0 0x0acb7000 0x0 0x2000>,
+                  <0x0 0x0acb9000 0x0 0x2000>,
+                  <0x0 0x0acbb000 0x0 0x2000>,
+                  <0x0 0x0acc6000 0x0 0x1000>,
+                  <0x0 0x0acca000 0x0 0x1000>,
+                  <0x0 0x0acf6000 0x0 0x1000>,
+                  <0x0 0x0acf7000 0x0 0x1000>,
+                  <0x0 0x0acf8000 0x0 0x1000>,
+                  <0x0 0x0ac62000 0x0 0xf000>,
+                  <0x0 0x0ac71000 0x0 0xf000>,
+                  <0x0 0x0acc7000 0x0 0x2000>,
+                  <0x0 0x0accb000 0x0 0x2000>;
+            reg-names = "csid_wrapper",
+                        "csid0",
+                        "csid1",
+                        "csid2",
+                        "csid_lite0",
+                        "csid_lite1",
+                        "csitpg0",
+                        "csitpg1",
+                        "csitpg2",
+                        "vfe0",
+                        "vfe1",
+                        "vfe_lite0",
+                        "vfe_lite1";
+
+            clocks = <&camcc CAM_CC_CAMNOC_AXI_NRT_CLK>,
+                     <&camcc CAM_CC_CAMNOC_AXI_RT_CLK>,
+                     <&camcc CAM_CC_CORE_AHB_CLK>,
+                     <&camcc CAM_CC_CPAS_AHB_CLK>,
+                     <&camcc CAM_CC_CPAS_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_0_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_1_CLK>,
+                     <&camcc CAM_CC_CPAS_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_CSID_CLK>,
+                     <&camcc CAM_CC_CSID_CSIPHY_RX_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
+                     <&gcc GCC_CAMERA_SF_AXI_CLK>,
+                     <&camcc CAM_CC_IFE_0_CLK>,
+                     <&camcc CAM_CC_IFE_0_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_1_CLK>,
+                     <&camcc CAM_CC_IFE_1_FAST_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+            clock-names = "camnoc_nrt_axi",
+                          "camnoc_rt_axi",
+                          "core_ahb",
+                          "cpas_ahb",
+                          "cpas_fast_ahb",
+                          "cpas_vfe0",
+                          "cpas_vfe1",
+                          "cpas_vfe_lite",
+                          "csid",
+                          "csid_csiphy_rx",
+                          "gcc_axi_hf",
+                          "gcc_axi_sf",
+                          "vfe0",
+                          "vfe0_fast_ahb",
+                          "vfe1",
+                          "vfe1_fast_ahb",
+                          "vfe_lite",
+                          "vfe_lite_ahb",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid";
+
+            interrupts = <GIC_SPI 601 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 603 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 431 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 457 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 436 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 271 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 458 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 860 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid2",
+                              "csid_lite0",
+                              "csid_lite1",
+                              "vfe0",
+                              "vfe1",
+                              "vfe_lite0",
+                              "vfe_lite1";
+
+            interconnects = <&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc MASTER_CAMNOC_HF QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                            <&mmss_noc MASTER_CAMNOC_SF QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+                            <&mmss_noc MASTER_CAMNOC_ICP QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc",
+                                 "sf_mnoc",
+                                 "sf_icp_mnoc";
+
+            iommus = <&apps_smmu 0x800 0x20>;
+
+            power-domains = <&camcc CAM_CC_IFE_0_GDSC>,
+                            <&camcc CAM_CC_IFE_1_GDSC>,
+                            <&camcc CAM_CC_TITAN_TOP_GDSC>;
+            power-domain-names = "ife0",
+                                 "ife1",
+                                 "top";
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    camss_csiphy0_ep: endpoint {
+                        data-lanes = <1 2 3 4>;
+                        remote-endpoint = <&csiphy0_out>;
+                    };
+                };
+
+                port@1 {
+                    reg = <1>;
+                    camss_csiphy1_ep: endpoint {
+                        data-lanes = <1 2 3 4>;
+                        remote-endpoint = <&csiphy1_out>;
+                    };
+                };
+
+                port@3 {
+                    reg = <3>;
+                    camss_csiphy4_ep: endpoint {
+                        data-lanes = <1 2 3 4>;
+                        remote-endpoint = <&csiphy4_out>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
