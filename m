Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1896EC9830D
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 05:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3PpuzzkBQUpoCZtbSeOKWU8pFpojzt1nAJ7mqY//2c=; b=dd03Ll1bL4OzPe
	RUFR18mBQrxPNq/wcndcUgwWG8ifdSDaJiTM2IK5ixEv04HndpoENSIl39wX73s4yXNUXEsKp5wBZ
	5tCwu+uwDl+Gx3OshHD+9AAO9f5WFhdJmYhMfrmZQn1FC2DZy9mprpgcPy4U5R2acT3m5HBdSrOxO
	9QRBG+Lw44iIpnnRNB5bYaQKpkgFJyHHDMA9G9W14aYwGJR1Htrf27QsdRkwr3kAT5ox4Tsb5Anm5
	f7KOHftFazjF9oE/R/2roWuD11EFwLVVOWYGeV+0m0rhMVxnCnW50jQJEOUtk7MY+OHmWtDUg/PQI
	3k96/nV2EsjJl4ZYYaaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yoA-0000000Cin9-2bFs;
	Fri, 25 Sep 2026 05:49:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9yo7-0000000CimE-49cN
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 05:49:17 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68P4Z4vf4103238
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Jsmb2+8ETECDlV8vJZlWo0+dCOk3HY+XqMB0gSs45YQ=; b=RqUNXEWctVqm3eWV
	AhgbfJEfVovLuMp91ee5tSZqJSsY5gXnjN020kuITpbGQen6qniN3ckE+2Y0tlR3
	SeH1G6jcK2WNA5/WtaiftXtq+4RTug0aTXzzwKVdF15Sep9deVFSUsB0Ri5IsYIx
	s2hlHcXRtTFGPtusQKth2L3yTpIYr0YjfmkqJDsyvwTbNlqvn7gDsUNDIyg5PPRf
	JV09oaeYHZJMQ6cilQyHiDQpTdgJAqFMDHxBMOpKoRho103Y+T2uVH+RIcTbK5ya
	2FNU/S7ZNrCYYruih57hMk/RtZc1Y2lh5a3L63kKNYdvSptPa5V+UJIHGTCJebmq
	BIPy/Q==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gw5q8u1db-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 25 Sep 2026 05:49:14 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-3286d2bac04so710346eec.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Sep 2026 22:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790315354; x=1790920154; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Jsmb2+8ETECDlV8vJZlWo0+dCOk3HY+XqMB0gSs45YQ=;
        b=QSOsiu+8/ak650jgDoKVuv6KtzLZnZjvZNG6u9t3h58hU2mx399xoJAixbmF8M2Klf
         iXpIvUR4TUzOeIdazAVDj25niPrSE2U5+Rn7Ca6n+2b5nmciliU9Qqr/zG5O7wtrO5W8
         yk14e56qhZ/OePbqbHauWIcjApE/5v1kFdOGcSYAYJ+de8GG92mumGX/0DDgz/QB/Vo8
         sOyeMr1j2/xSG/vHKoAHPPJokv2jofYHCexvZ36O6C9Qf1feH/ER/yKDWdGnIOVKL8mV
         /IVI8Sn7S6VqPgQMZhvB1Mx1VwhlZFF5U8Q3t69sLzOGw/YD59tyL4GhoKPDpLAGfR0Y
         /msg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790315354; x=1790920154;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Jsmb2+8ETECDlV8vJZlWo0+dCOk3HY+XqMB0gSs45YQ=;
        b=Xvfgr62NgbcoqMmbghThuqnftbO1Fdc8XE4OzEqD232aBnj+CksC7lSK50q5En0hf1
         cghoV3lYFEZiSMn5t7xcXsXsDPoddMSSEoBMiIMxwTAw0eABkjoYrPgjf5o609sBglQz
         ASXKR/bZrfSFIse9u+blF1p/18QA92ywTyX1uM87cUG1fSiF9kJgtyJfdTZZDFSJMaS/
         ClPNX2iAeVU2MAhsf14eoHY1Uz44NuKprAOxq9yxrXJPSXalFfBLLUIDLHuXrKABZa40
         Sn1w4A7bllS/HkfhYSzq41IZIf5iJj8RmlVTLAbauo7tWBQSqHzMuKxPW1zu0NeXSIgH
         15lA==
X-Forwarded-Encrypted: i=1; AKwUvBz2sVWM3ZGlUWz8dM23qdgR542gO3SoAHjvlbjLGXo3S1UHKE1ytvR6veLA3YwufcG7NayiOF5tMRU=@lists.infradead.org
X-Gm-Message-State: AFuF++nQJuxoFjyx6/pCb+XtkZ1GYVTIXiFWuLKA/GLEjuB/ZKzvItJe
	UHuSevxBE3pwwt1S3YUVVxz6nlLouDMl3BLjuYNWvoQgyzH105Ss3v9wcjxAtH/IAoqAZMC0wJd
	/6g4Fg4x8Tp7IHMzVVmRv/ODdS+MOc/3m6GMt+xTG/3kKBUX8AHgVJOC4eZtj2WQE7Pxc
X-Gm-Gg: AYBFou1HmOPd6WImC3THEusIyC781G3pjmFLGfhaIpIpdxPh/8Lk+nLRB9FZB1ZWXKY
	YFbNocPEUWL1bc6cOKAh8cKHL5c+IlqqnNxP+T9MP8ufrmxuO+ZIlQ9UeJxRcaNvLPiG4kt2gEy
	BJytmNeUA1H7qry792/bhn0KEyI3UOWI4k16HVqTNanrQi2ZEskVZaO1BjiiyHkvn0PfBeeYV3b
	HEtwazhqP4jbcTjWojvoAyfJwfQ27PZAcB65cjbguDMeeFCz0hjPvUU9ebDRq/+BLfZQlvHbktO
	v0UX0xeHNW/5HsXWpwtlLroUShp1qV44EJja6xRllwviSRuZvZs74rJ6V0PdesbIhtFig0eImY2
	kWUiLnmwHCyCgRakyI0tDQMFns27i0Fc=
X-Received: by 2002:a05:7300:b1e:b0:33e:3f5b:3ff6 with SMTP id 5a478bee46e88-340036bfe73mr3683087eec.18.1790315352750;
        Thu, 24 Sep 2026 22:49:12 -0700 (PDT)
X-Received: by 2002:a05:7300:b1e:b0:33e:3f5b:3ff6 with SMTP id 5a478bee46e88-340036bfe73mr3683046eec.18.1790315351889;
        Thu, 24 Sep 2026 22:49:11 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-34144757747sm4033640eec.13.2026.09.24.22.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 22:49:11 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Fri, 25 Sep 2026 11:18:46 +0530
Subject: [PATCH v4 2/3] dt-bindings: media: qcom,glymur-camss: Add Glymur
 CAMSS
MIME-Version: 1.0
Message-Id: <20260925-glymur_camss-v4-2-d7c2983d6d7b@oss.qualcomm.com>
References: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
In-Reply-To: <20260925-glymur_camss-v4-0-d7c2983d6d7b@oss.qualcomm.com>
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
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790315331; l=11059;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=NZuNHL1UBfqgNWKtvhtOpBVni0+Wp4WN3hp2/6qRqzo=;
 b=8WNfNBLhLOshrMZ4OpAI2VaZYeqxMofiBY3a331bqncCkF5kTT5ks1M92JniVHr12xBm27abm
 MzNWSBdGIbmCoQo/6dO0Kp2ivgyEvTZ0BzEhJXmNS7pwRDMnpIEc9GF
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfX7kVT9YZEd6LU
 zdEnnEvp9XGy2AagSagnWVy+uDkHgJNSmw+NYLgo02aWG4pKCu6gBHXO6mSoFII2VRXq/RKwzjg
 W/ibFmKTKZD7eAvAoUbP22rgqOMMkBU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI1MDAyMyBTYWx0ZWRfX+rLNXEB6l7K2
 lvV9maG5hM0gIWBwfrWMlvvMd7Q5TwpmRovIJPKOkgET5JsLTwy+LJbl4x59kO7RcFTDzewmArG
 9AH32Z81p2W1Sh5oB4WJJYKZTezmLn6AXThIq86nWetBVIJZCwLNRZCkImXRyOQZpevcDGKmcs6
 Uee0LcumWczYqRZcFOpFgbuO/JeZkE9ST5mqj+IVzwDjKrUYqW02PDWv9a4SsQTj3I4hirbG6iH
 qJJh5A8OvrbEZdzyIg8AUwtzRqgIDUcuPPBvB1G2DiDuXO2NU8YcfdhzQcIUzAOdQcea5nJ/3wR
 6jk3xZ9s0AHjsbkc1ly1XpW2pUuOKa99gRRVoOugqVdYMXdxIaPSTHJ86HEYJejCFtApk0tM6Gi
 jr1j6lZqiIFUVF38gU/mBO9Y5YH3VvHyOCV3vX9UamlzSxpFa8lYvaaW/QQpx5Sl9F+tXElNSqQ
 JJWrZyf4DhCyPIz7hGQ==
X-Authority-Analysis: v=2.4 cv=SYRi5fRu c=1 sm=1 tr=0 ts=6ab60b5a cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=MTeEhnUUud4OIzaa2fYA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: e0GOiG3CZMj_yiyFLMPmOucJJDA9REOX
X-Proofpoint-ORIG-GUID: e0GOiG3CZMj_yiyFLMPmOucJJDA9REOX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-25_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609250023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_224916_164203_1F09A08A 
X-CRM114-Status: GOOD (  12.85  )
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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
