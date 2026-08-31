Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B824C61DD3
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 07:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooOCtLhh7+hTCh5NxAzdo3Tp4TeTTELqog/fs1NITxE=; b=ksyKxj7l5saMwi
	jIkCTposMQN9tCUam/NXK8BC4R65KZhxRPN4ZPgU+yypspXzshK/HJ4gtEut/7DunuwotXvqDuVE8
	kDYQOHjuTW//B2wPrTMYscSDsG5pci5EwHMPIpn49lzsq/kskz5GWWdxdL9CRvXklh89WaDWwkH4h
	+85bkx+EFlB5sav/HLoQvQnaB8EM7y+4kbi5TLWTZfCxL5YEBDmGiYFEYbiqTN3CcYwfim9vQgDuF
	mxmXJhLW+YEQhdUJqp9BUOvQnyA6O81w+jBBVpaQ3Kh+YyQzT0/03JmjJBCQHwsMtSkZbZOQlMlVR
	60Ii1wDPlV4H+uCfuieQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPT-00000008ixY-3snO;
	Mon, 31 Aug 2026 07:26:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0wPR-00000008ix6-16uH
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 07:26:26 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67V52IX31933542
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rOiupcclxla78tZiKkuSNISl5an4+Id+Wf1YJmJcvsM=; b=lIq1OakHPKH0hTPg
	uk4XqROltV9UoB8RUIiihIxyE3oppv8jno1LNbEYfMHOb8ZKN6a52Prw6x0sprgC
	ZLoYIqibo98G7nnniLjQcs5rD/3czGtdQzf+Li/gIqvXDSR9NKyMMw2h5aWaKogp
	8QNttkZV+S5pX7FFR/CSGFxOWQiMwegYAFAE68+JI+oilkndhinDNb/GneBSAGfz
	BrtCNPNDwmeYuRRnOkx8um7x5sdaQ0hv8XCQNOxA62bliWkfBXiyEEZiufN7zvTj
	VtPx4PdTojwqLIXC7i01ZkaNqUz6Q25xEECMm7uv+TCiL4HcrPizgR0P7TTDeKxp
	0CFq/g==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gbrq850ac-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 07:26:24 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2d52734fc41so68234305ad.1
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 00:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788161184; x=1788765984; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rOiupcclxla78tZiKkuSNISl5an4+Id+Wf1YJmJcvsM=;
        b=b8O93dz2LLs8cAFnNoPvlLyz6AvifVSrUGVHDEEZOzWWCLcht5SQPZ8SsZsje3pxv8
         aI2r7AmheYkze2NOZxia7JL7Sx62EYUodsUnYqaFdaa+bbm33ZnUZRFHSCGRl0HCyjG3
         iibksRjxHTNOYGswVwAipJ6IS1uSnHrzS5QsOCpuThqFtDgIYNTkypwi7pecxYGl/2q+
         R92gEKZPfEMG8ZvcyMADn/DLsoNwpRLLddDRska9tWZiaXL/VJ2fMiQRg/H6I3N4S14Y
         D2V5DMPVRpGWj9tcySvjDc/rm3FuUnpq2HCObmJuHoskhqyH57f8LzFKZSM5PpSi3Snw
         Jzlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788161184; x=1788765984;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rOiupcclxla78tZiKkuSNISl5an4+Id+Wf1YJmJcvsM=;
        b=kt5OFRZ+t7gfgAyAt1jVDvoIcbgLLIa0XWuAFP+wl22JkCQG+UDStPGER/sUtSzdmP
         NzK56JfVmQD5v3igBDt8T090RRtVgV+PJTdJ2fQP9eDNEqwfSdC8KKdSX2mE+Kfj6l4O
         IGzvsojq9g0fjXnwuqsbrUm5j6FGZJp5v3jFiJhI3Nxht2q+7ieiEyo7LXpVCOSh4Bwm
         pNnXkaPPA3iNZDqXE+oBNI6jsu5lNOz2MRCfXOKQEz3n8Ki37Cq5fGlIr1C2sAWd/G8e
         j+D1UJDUL9VW3+XaEnAdFYMKn17fXVAC8g5TJQnSMcBDGuPRPlvGk3REF64waFrQxm1G
         1tTA==
X-Forwarded-Encrypted: i=1; AHgh+RqyKhKVK/jbNURFhNyGGzb9Y/Eu5jckohkhxPh7ACSyOJrC9HcetA3P8i83BPU35vqBPg8NiLEBuGY=@lists.infradead.org
X-Gm-Message-State: AFuF++kHmy/5lrMe3n3KfnTKUrEZZB/HmGaY4Q6GUYwvWpbtdeM7c6gk
	eEzyGc79PsJ11gnvClAz9CkJ8g2mlBaQYIl+zBnbdimdEyxWrpBHTPBJhDasTnegv1oFonLMsga
	a0iF5mBD2mvt1XEhRiWbvNhXI15ruWPYaekpZZ6xHxTe66iXwgGT5tjh0ig1avgvPnNegNixxGZ
	OL
X-Gm-Gg: AR+sD12N/OfpfjyAw0SSrFewV02IJHW03gG8s1T/A7lCqEgk4K21dUYY4ZsO2B+t4su
	cQPycCKoIyZPPFwMDOpBiMp3XwlrjTjPn8Y7I87rVKjhR5306YbSlYaZwBqkYDwpnKSGp+zb8gG
	z2UC8mucZBBQuwLEbNSTPapVEVkXaJOlHEk781swmWsHfp3fQE+fNKwudbWOlgVToXO8Q90nu5Z
	t5jbgeVHCazCbM2/0hPAp2bty7WQTAVkIz65EiQY2v0wLPP530vlV9qQoyM2gSo0CyCdCXxOZQp
	YoDFE7CUcLdtrETOpzx//v46iKZuuRrcLOWlbkDSwlVEa1JHY8zHiZncrJ+MN35o4QB/uGPAAud
	YmW8nXCgcmcGQtLOu8VnUMba5z4cXs4aI/rFJ
X-Received: by 2002:a05:6a21:6e88:b0:3c4:46ca:334b with SMTP id adf61e73a8af0-3d267b60e7emr42451766637.9.1788161184137;
        Mon, 31 Aug 2026 00:26:24 -0700 (PDT)
X-Received: by 2002:a05:6a21:6e88:b0:3c4:46ca:334b with SMTP id adf61e73a8af0-3d267b60e7emr42451711637.9.1788161183669;
        Mon, 31 Aug 2026 00:26:23 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f9595bbsm31327059eec.14.2026.08.31.00.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 00:26:23 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Mon, 31 Aug 2026 12:56:02 +0530
Subject: [PATCH v2 2/5] dt-bindings: PCI: qcom,shikra-pcie: Document the
 Shikra PCIe Controller
MIME-Version: 1.0
Message-Id: <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
In-Reply-To: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788161164; l=8118;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=Iinqn3CFgHeyIBdcRbNUR2dz9SWr2cQBVBMh0hJXQuU=;
 b=BIZRWB9SV+cDNC20B4KDEAlZCNU5Avqum/H818pohP+gcdQ5vOaC+vg1CGBYUlmfvlmU8M3u/
 sj7UHjGjZzDCtIs87dBfa1OQVursNKPu759UztpyNybh45oRo+kUe2i
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-GUID: sRJLrdBxrnmaktj6WEFQrPBrifq715af
X-Proofpoint-Spam-Info: AW1haW4tMjYwODMxMDA2MyBTYWx0ZWRfXwcZb8RNi08Pw
 hGwUvvuct0m8tB1P3+IGJ4mdOvM8/RvjbXGYVknHcyZb9wZfFvw+bLOKxu5RRv4kTPEjpg7/9PJ
 pFM4Nl7ZttwsXG2tAY7vQ/nr7sYMf/E=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODMxMDA2MyBTYWx0ZWRfXxvqiObNyGpin
 naRmh+j9Fti1crlUJX4ublSfrv2Gv4ARfljS6bmIpRIHh740loUSWuZagGUm3bJnx/CUTxNCQnC
 RK6ZxpxE+Abs1Jbao109k/LbGMLnVSCPjkrg6qv7kQuMWS6hCDdOPp5kroLzqPBPC8Gxp38IiX3
 RjbVxHViHrt7CVtg3HVW/Q4xV2AmIO2OlKrc2729SvYItglLawLqgkWgQXQMAE77eSDoYqzc+PQ
 legt39ehNQL2FUpe6NCu1bVGMR5kuqEuRgfn4axIP1CEVS8bsILIRDZTHHrXSn/237gCUCJhB/u
 BfMWy+Jee1txd5X2zalKCbAjx0B7hYKoaXxY/rrSbPqj/dDQvdsJEkKy8XmI0Jjkpq8SjLJSH3y
 FuTgITzNlBkYrt73zg2N14NdJIJY6X8FCwbmlKGxHqAdM8reugYgLzUuvKPiuXAbdzo1IEiuXdC
 R6kCxgDIHz+CcBj0z/g==
X-Authority-Analysis: v=2.4 cv=ZOPnX37b c=1 sm=1 tr=0 ts=6a952ca0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=y3igNv8VU7KrM5vZpNgA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: sRJLrdBxrnmaktj6WEFQrPBrifq715af
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-31_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608310063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_002625_319853_2AFAD445 
X-CRM114-Status: GOOD (  14.49  )
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

Add a dedicated schema for the PCIe controller found on the Shikra
platform.

Shikra controller supports upto PCIe Gen3 but the PHY is
only capable of Gen2, hence the max link speed  is limited
to Gen2 to avoid link-up failures.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 218 +++++++++++++++++++++
 1 file changed, 218 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml
new file mode 100644
index 000000000000..73b8ec722f2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml
@@ -0,0 +1,218 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,shikra-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Shikra PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+
+description:
+  Qualcomm Shikra SoC PCIe Root Complex is based on
+  the Synopsys DesignWare PCIe IP.
+
+properties:
+  compatible:
+    const: qcom,shikra-pcie
+
+  reg:
+    items:
+      - description: Qualcomm specific registers
+      - description: DesignWare PCIe registers
+      - description: External local bus interface registers
+      - description: ATU address space
+      - description: PCIe configuration space
+      - description: MHI registers
+
+  reg-names:
+    items:
+      - const: parf
+      - const: dbi
+      - const: elbi
+      - const: atu
+      - const: config
+      - const: mhi
+
+  clocks:
+    items:
+      - description: PCIe Auxiliary clock
+      - description: PCIe Configuration clock
+      - description: PCIe Master AXI clock
+      - description: PCIe Slave AXI clock
+      - description: PCIe Slave Q2A AXI clock
+      - description: PCIe SF TBU clock
+      - description: PCIe Aggre NoC AXI clock
+      - description: PCIe QMIP AHB clock
+
+  clock-names:
+    items:
+      - const: aux
+      - const: cfg
+      - const: bus_master
+      - const: bus_slave
+      - const: slave_q2a
+      - const: ddrss_sf_tbu
+      - const: noc_aggr
+      - const: qmip_pcie_ahb
+
+  interrupts:
+    minItems: 9
+    maxItems: 9
+
+  interrupt-names:
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
+    items:
+      - description: PCIe core reset
+
+  reset-names:
+    items:
+      - const: pci
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
+    #include <dt-bindings/clock/qcom,shikra-gcc.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interconnect/qcom,shikra.h>
+    #include <dt-bindings/interconnect/qcom,rpm-icc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@45e8000 {
+            device_type = "pci";
+            compatible = "qcom,shikra-pcie";
+            reg = <0x0 0x045e8000 0x0 0x3000>,
+                  <0x0 0x60000000 0x0 0xf1d>,
+                  <0x0 0x60000f20 0x0 0xa8>,
+                  <0x0 0x60001000 0x0 0x1000>,
+                  <0x0 0x60100000 0x0 0x100000>,
+                  <0x0 0x045eb000 0x0 0x1000>;
+            reg-names = "parf",
+                        "dbi",
+                        "elbi",
+                        "atu",
+                        "config",
+                        "mhi";
+            #address-cells = <3>;
+            #size-cells = <2>;
+            ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+                     <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>,
+                     <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x0000000>;
+            bus-range = <0x00 0xff>;
+
+            linux,pci-domain = <0>;
+            num-lanes = <1>;
+
+            interrupts = <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH 0>,
+                         <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH 0>;
+            interrupt-names = "msi0",
+                              "msi1",
+                              "msi2",
+                              "msi3",
+                              "msi4",
+                              "msi5",
+                              "msi6",
+                              "msi7",
+                              "global";
+
+            interrupt-map = <0 0 0 1 &intc 0 0 0 499 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 2 &intc 0 0 0 500 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 3 &intc 0 0 0 501 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 4 &intc 0 0 0 502 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-map-mask = <0 0 0 0x7>;
+            #interrupt-cells = <1>;
+
+            clocks = <&gcc GCC_PCIE_AUX_CLK>,
+                     <&gcc GCC_PCIE_CFG_AHB_CLK>,
+                     <&gcc GCC_PCIE_MSTR_AXI_CLK>,
+                     <&gcc GCC_PCIE_SLV_AXI_CLK>,
+                     <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
+                     <&gcc GCC_DDRSS_MEMNOC_PCIE_SF_CLK>,
+                     <&gcc GCC_PCIE_TILE_AXI_SYS_NOC_CLK>,
+                     <&gcc GCC_QMIP_PCIE_CFG_AHB_CLK>;
+            clock-names = "aux",
+                          "cfg",
+                          "bus_master",
+                          "bus_slave",
+                          "slave_q2a",
+                          "ddrss_sf_tbu",
+                          "noc_aggr",
+                          "qmip_pcie_ahb";
+
+            assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
+            assigned-clock-rates = <19200000>;
+
+            interconnects = <&system_noc MASTER_PCIE2_0 RPM_ALWAYS_TAG
+                            &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+                            <&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+                            &config_noc SLAVE_PCIE2_0 RPM_ACTIVE_TAG>;
+
+            interconnect-names = "pcie-mem",
+                                 "cpu-pcie";
+
+            iommu-map = <0x0 &apps_smmu 0x800 0x0 0x1>,
+                        <0x100 &apps_smmu 0x801 0x0 0x1>;
+
+            resets = <&gcc GCC_PCIE_BCR>;
+            reset-names = "pci";
+
+            power-domains = <&gcc GCC_PCIE_GDSC>;
+
+            max-link-speed = <2>;
+
+            operating-points-v2 = <&pcie_opp_table>;
+
+            pcie_opp_table: opp-table {
+                    compatible = "operating-points-v2";
+
+                    /* GEN 1 x1 */
+                    opp-2500000 {
+                            opp-hz = /bits/ 64 <2500000>;
+                            required-opps = <&rpmpd_opp_low_svs>;
+                            opp-peak-kBps = <250000 1>;
+                            opp-level = <1>;
+                    };
+
+                    /* GEN 2 x1 */
+                    opp-5000000 {
+                            opp-hz = /bits/ 64 <5000000>;
+                            required-opps = <&rpmpd_opp_low_svs>;
+                            opp-peak-kBps = <500000 1>;
+                            opp-level = <2>;
+                    };
+            };
+        };
+    };

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
