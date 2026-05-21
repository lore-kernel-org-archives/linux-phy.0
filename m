Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B66D9CD5BB1
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 14:05:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tp3CaAPjXL8ck5aUGk+1LvCIDjwhWrfN9ixmcxZ10IM=; b=D0jAFlS1pIs8hs
	QuU42NstqqOvQuJxNsVhk0YIoTj7u6nnYu14RajbsDpY6Z1h3CiZx31L31ZkM9/9CwOj7EPTUhwSh
	mOf7t3Ffmy/PwdqcVZ/iJHRl0v4ogSFIPV+7r9c4rGYd9T7ZSyl+AIP7jSsu/qn6Igr0p8v9uz+45
	IqeM+4Gr1G/u9DKq4GEONVlKCf/p9dndI/pmJCN4gn9qPoIldXmfrmArnw+IEAAQk/Vf2/9NGn/CJ
	aBhjcEroqF3crrX3io/xf6+r1O3WHGbOzzV9KPSp7C3fvT+R4HMMrUYH6FFBUsCOcrt7Pik/4U/Cg
	bDIft5IAgN11sW3Wnsqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ424-00000007zMK-1Z53;
	Thu, 21 May 2026 14:05:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ421-00000007zL7-2Vpc
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 14:05:50 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64LDnvTQ3129509
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1KOeBbeA4B2MtF8LF/kTfTdB+LXRgfy08AkH+2O9Qho=; b=Ah4AhSUo19nCEPdF
	dApV6Obv/ew9zjZD8p9IZRno2o26Am842Gz5NM4LoZePeV/Eo6z/t5JMF73DETBs
	SOQA4EAq2DeEBrgmtCy49JWKBIW8zydZavWtv6QDy92fT+yjeUn0QVSIfC64dYBT
	XxMq6Sw1yjIlDHhyQWi0C6B65Z/mqSq7TchqBa/EIcVJ/TdqRFoYXpVfrKyJBCxA
	NKkHXRjtoQcZ97sRIKOHlOXO+cRlfqAimiiba9EbFiFhjuUOiJniCQQQNiwpAz8G
	9nCZ7UjX3m2fOZO/8FIl44teOlumc7beK4CNED18WugE2zNQYgErIPJfUwD2fQms
	EYSkjA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ea39gr2ed-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 14:05:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2b458add85aso65588335ad.2
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 07:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779372348; x=1779977148; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1KOeBbeA4B2MtF8LF/kTfTdB+LXRgfy08AkH+2O9Qho=;
        b=M01hY5p+6RKgp+xwMX4/JXA8P7nlkoQgLy7cKcGOaupRXDy5aqHCs9L9FdSpRsX9wu
         OJabdE8X6ufuTNxc5zBVnvij9m62cOgYOMqi7Go5IOthKVev/UF0UEyER2XKaqOoXxAl
         ED185MCI6G2uhGHQpwmb9fhD6hzPuojuCiCxoAb8MLWLIszHoFE68t5dk+tVa+KEXSP6
         G/Zb0RXC8Aw5JaeNM0rQSbJ6fpJ9bb8nfb5i2FrLJkej79FCJgG5sBszMAGH4gf/jBev
         Ub8WVr6mkuqevZMW0nY7fPn6zOASDgm7qI0Z1HYMrWDOvvkgUXS7+dT8qOC3FmeoS+i7
         ae9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779372348; x=1779977148;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1KOeBbeA4B2MtF8LF/kTfTdB+LXRgfy08AkH+2O9Qho=;
        b=YJPzA7KFipbDf0zNmODUPPFXHkENmdIxwpVPFrjKgqgcX17KV5XZT6RSteuJNry7T9
         YnFE/Ng4dhQkAy9DTTeMc783FEJQzVqof8KmHUkWn4ULHBNWARt7wf/T+dlmbL7QGLgU
         65/pOL2dHcFAKfev8APx0h+DiF4grDo/tJTIoRARBWGDLaUKAB7weHzJrt/lQO1YgGgz
         /7vM5EZQ1Z/TOEjY6giEYcs69HwhTjpTdPTcqwfoCWL7ddogBHB1DxnKEi7+Ice3fVSH
         eO4DOA+MP12X5zgSRzjOfWAzCPD069rRgnInSqXX1ATgaBtAdl1pFLS2uYNHQ7iya/+g
         xZEQ==
X-Forwarded-Encrypted: i=1; AFNElJ+mZI+5X9XlUilnBov43VLnB8MxgseboVujwozii0rcBsEFuMs/u0YVurKDhNXcLCDuZsXwjI0D5SA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzB2PNh4/dJxawRtFwnL593nlBcnZVnsfUY8rSNGqlqqlywje0B
	ST2r9hLR2RpGNBq8NOcdPmQQBK99Rx7jc/B5BNeC7PHDu0NASndsuZIDPo/dEiiRyHqBlkAf1cO
	0TqJ8x57fKLHfTsTQeVPiPSY7te0FM5cDqeANAonl6jH3w6eVnWexQb2CA390viMBJkVp
X-Gm-Gg: Acq92OGgs2N+rivcUeBzDrr1Asz6wdDbVLOPndmRBFQX50VeSRRlylNR4iApPy4FfJh
	9Q8W5PPePGW3XsTk1ZIi6i52z/JlDuz3Eop+ah877BMHgEqlrnIa+/2WRe4uOa64lCP8Qct3B8/
	KDiBv57yY6C7GGNiDhDZ9+c0mzmyfc9SHDMqsnhT8jZd7NGwDeL7Lx43n3eWZnzQ1sKd7cx3eK2
	3rUAYzCGoHlxWaOKy/L50XlrKaZYfpd6q+/9TYty91PVRQ2/ypEihLdzlqHR27544q1ANpCHHJZ
	P4zQ5LSMiA2V1v3FM2GmiwVS2C2+0jqVpNurAd8sWFPN3TJKbawtvcH95FDUnTdEwAfVTxQT0H8
	aljB/fmNlk/+Z819M4k0RYCsDEmwYKekZ5G0NUEJPrCFAHkUAv3md0h7q
X-Received: by 2002:a17:903:19ef:b0:2ae:826f:2c50 with SMTP id d9443c01a7336-2bea2fc6c78mr35802525ad.12.1779372348131;
        Thu, 21 May 2026 07:05:48 -0700 (PDT)
X-Received: by 2002:a17:903:19ef:b0:2ae:826f:2c50 with SMTP id d9443c01a7336-2bea2fc6c78mr35801745ad.12.1779372347586;
        Thu, 21 May 2026 07:05:47 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bea9287997sm13189765ad.24.2026.05.21.07.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2026 07:05:47 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Thu, 21 May 2026 19:35:30 +0530
Subject: [PATCH 2/4] dt-bindings: PCI: qcom: Document the Eliza PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20260521-eliza-v1-2-97cdbe88389d@oss.qualcomm.com>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
In-Reply-To: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
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
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779372332; l=6265;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=KbvKWc2i7M6oa2rYkaVuWth3gGp5j7Zm102Iol4S09U=;
 b=EHEF78AeTAdflrWS3C6DJ/VS3Ta/HGE5MWxFwKYrbQlpz+2UFhKNPyaAaa1EFXs78y5nBL+Q/
 wSqtgyuupppBgALURG2Lq/SktPWiApNasz4ghtg1N3Aj18amp05zgV/
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=Yr8/gYYX c=1 sm=1 tr=0 ts=6a0f113c cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=IDOmrVdmHV3nBiBHXysA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: wK74auvZdmRh7X2DYMqh8RbS6S9sQvJM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTIxMDE0MSBTYWx0ZWRfX1+kcExS+xFKB
 8Kaa3QJJTUWZ+SV9UzEFA4rB4+lmNwBggfqFc/M1O/BXXoyUsQl+FYTDYwO+/a801SCtgMvdRkp
 xU3P4l5k0dOXqKDNU3XCPmSPWBvertY1CNjw8Cg7h0lJeMP1vMLO9zO6tXvB3qV/Ftf1xXfs6/u
 n4WN9IzUBl9oygB4E8OIwQXB3AFdOk+QNrIAh/hJw1tapAS3/UVRrsNMJNSz4XSB9IYFIeqcAIA
 2mjN5NeUJUxqvLXuhS4EMF11QAqZlHUfNunk9WTdA24RIXZai0X6NUy3iHQ4BFtbX0nV54cbetg
 PEeO/1naoTywonWoqXXkMHZPDAXpANZtsTDLQ9VMs+VOVu426qWYhfrHms4spiG1KyVBuNmhoNV
 k33aHEhFLjakhgHfpAzRxKqu9gp3tNLwwQ9hOfaXm5/5hB0uuUgJROS8HQGgn8zFpcWh7FWmzDJ
 ncWD2EM2cRQc6MxRx+Q==
X-Proofpoint-GUID: wK74auvZdmRh7X2DYMqh8RbS6S9sQvJM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-21_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 clxscore=1015
 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605210141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_070549_650930_85C58A76 
X-CRM114-Status: GOOD (  13.49  )
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

Add a dedicated schema for the PCIe root complex controller found on the
Qualcomm Eliza SoC. The controller is based on the Synopsis DesignWare PCIe
IP and requires a platform-specific set of clocks that differ from existing
Qcom PCIe schemas.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-eliza.yaml   | 165 +++++++++++++++++++++
 1 file changed, 165 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-eliza.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-eliza.yaml
new file mode 100644
index 000000000000..826e2adf4fda
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-eliza.yaml
@@ -0,0 +1,165 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-eliza.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Eliza PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+description:
+  Qualcomm ELIZA SoC (and compatible) PCIe root complex controller is based on
+  the Synopsis DesignWare PCIe IP.
+
+properties:
+  compatible:
+    const: qcom,pcie-eliza
+
+  reg:
+    minItems: 5
+    maxItems: 6
+
+  reg-names:
+    minItems: 5
+    items:
+      - const: parf # Qualcomm specific registers
+      - const: dbi # DesignWare PCIe registers
+      - const: elbi # External local bus interface registers
+      - const: atu # ATU address space
+      - const: config # PCIe configuration space
+      - const: mhi # MHI registers
+
+  clocks:
+    maxItems: 7
+
+  clock-names:
+    items:
+      - const: aux # Auxiliary clock
+      - const: cfg # Configuration clock
+      - const: bus_master # Master AXI clock
+      - const: bus_slave # Slave AXI clock
+      - const: slave_q2a # Slave Q2A clock
+      - const: ddrss_sf_tbu # PCIe SF TBU clock
+      - const: cnoc_sf_axi # Config NoC PCIe1 AXI clock
+
+  interrupts:
+    minItems: 8
+    maxItems: 9
+
+  interrupt-names:
+    minItems: 8
+    items:
+      - const: msi0
+      - const: msi1
+      - const: msi2
+      - const: msi3
+      - const: msi4
+      - const: msi5
+      - const: msi6
+      - const: msi7
+      - const: global
+
+  resets:
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: pci # PCIe core reset
+      - const: link_down # PCIe link down reset
+
+required:
+  - power-domains
+  - resets
+  - reset-names
+
+allOf:
+  - $ref: qcom,pcie-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,eliza-gcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interconnect/qcom,eliza-rpmh.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@1c00000 {
+            compatible = "qcom,pcie-eliza";
+            reg = <0 0x01c00000 0 0x3000>,
+                  <0 0x40000000 0 0xf1d>,
+                  <0 0x40000f20 0 0xa8>,
+                  <0 0x40001000 0 0x1000>,
+                  <0 0x40100000 0 0x100000>;
+            reg-names = "parf", "dbi", "elbi", "atu", "config";
+            ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
+                     <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x3d00000>;
+
+            bus-range = <0x00 0xff>;
+            device_type = "pci";
+            linux,pci-domain = <0>;
+            num-lanes = <1>;
+
+            #address-cells = <3>;
+            #size-cells = <2>;
+
+            clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+                     <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+                     <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+                     <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+                     <&gcc GCC_DDRSS_PCIE_SF_QTB_CLK>,
+                     <&gcc GCC_CNOC_PCIE_SF_AXI_CLK>;
+            clock-names = "aux",
+                          "cfg",
+                          "bus_master",
+                          "bus_slave",
+                          "slave_q2a",
+                          "ddrss_sf_tbu",
+                          "cnoc_sf_axi";
+
+            dma-coherent;
+
+            interrupts = <GIC_SPI 376 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 535 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 536 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 537 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 540 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 653 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 370 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "msi0", "msi1", "msi2", "msi3",
+                              "msi4", "msi5", "msi6", "msi7", "global";
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 0x7>;
+            interrupt-map = <0 0 0 1 &intc 0 0 0 564 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+                            <0 0 0 2 &intc 0 0 0 565 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+                            <0 0 0 3 &intc 0 0 0 566 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+                            <0 0 0 4 &intc 0 0 0 567 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+            interconnects = <&pcie_noc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
+                            <&gem_noc MASTER_APPSS_PROC 0 &cnoc_main SLAVE_PCIE_0 0>;
+            interconnect-names = "pcie-mem", "cpu-pcie";
+
+            iommu-map = <0x0 &apps_smmu 0x1480 0x1>,
+                        <0x100 &apps_smmu 0x1481 0x1>;
+
+            pinctrl-0 = <&pcie0_default_state>;
+            pinctrl-names = "default";
+
+            power-domains = <&gcc GCC_PCIE_0_GDSC>;
+
+            resets = <&gcc GCC_PCIE_0_BCR>,
+                     <&gcc GCC_PCIE_0_LINK_DOWN_BCR>;
+            reset-names = "pci",
+                          "link_down";
+
+        };
+    };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
