Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CD08C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZI4enuTcj5Dov/V425gSOfEqCPWazDgJ6db6R1sL89k=; b=UYTS33s9NfBqh4
	nb50tSuYRl4xBRnZ23/7tLZRV5/T8O47wfYg3psh3mDnv8hmpWaziWwAq0D9FLRRaA4x0Q+s61t8R
	ST4tHa0b4DKMsujRvgNSuZ9880JoBaVEkSgAsVAA9g98C2F+jQOaM050sdx0jP962pV2wAIa12XrV
	UGD5BfFAZ9BebTOf2zFOTP3Grlx8lMgWyONtBdMp6jV5UCqTvuEQtfDdjSiSJOX8bLt50FPwOvLAN
	m8MLpisUOp+jzFP5GHCnjPro2Y+H6sSOCj0uvXaF1u6XN/IWdSTp5JOx03nCbDdBcNPAEUlB0pkPT
	/vBtGupTJTf2EznX3tPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedk7-000000005EI-3yDL;
	Tue, 30 Jun 2026 19:03:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedk4-000000005DU-0va4
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:03:34 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHksjr2632153
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DjqeAhRBoZ9HG0dHOxqJQXUNIr5LEtmFHVvdOPVc0eY=; b=hzjq5bAzigzpr6Xa
	zMLKCfhMBdWAm2j7rL2skPLwdtXyPYN9f5aMnXlka17HXXfBTepCdO/Af9cA0zig
	Dw37VCUrW3QbYzx/hGZfVz8sGDqkrMmDR5qjqq2/Qjb0w1qFdgJ+vNC2zs5g3r+y
	vya2NMWPg/l3+iWjAuO72b+SpydTCF/VR+zqyswFczP5thr5OxBngnqyOvDp3gvx
	V3Kri9263hQbnMy5o3RINfZ/k1YRP3tBTou1xf3ZX9dZ6kWABsTo0P04DDHJdgpp
	JPIfSdBfM2xSdRqvPQ+5TdRVUHHBFvMko7pknb30BMGsAFPrN8NhyHIENMehbVOJ
	ScKGFQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4hbd0te8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:03:31 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-30ed664e368so857194eec.1
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846211; x=1783451011; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DjqeAhRBoZ9HG0dHOxqJQXUNIr5LEtmFHVvdOPVc0eY=;
        b=L1S240ruP9fVyIcRil6kzSVa78Kn6BjdAgXC5NeLe79XsqKv+Z8hz63Tl52gYdeQ3o
         3Yry1bA+zj1ZfNMDKycsPri3kFzjQ/bolTwy5zOMwU15n5ItglEXzvei78MGR+BqYThd
         Rs1hk+AIQ4U7S3rpgL8Uv6mmvLed9QPobff8a8Gbef9NujKSzeqtigZ5LSX0KumFYdeH
         TzCLRBbl8yqTMoiS3GEBX9EhXH8HRF0uPqXMPXhHnv7hHVd9JEnnFoawFje5eNHOZKi3
         sVr1E6OdcbE0Pd31+fFzYtMyvHKM5/u+cQbe6Q7lEv2i2zCVEJPVCL/gDodBepEWb+jM
         AleQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846211; x=1783451011;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DjqeAhRBoZ9HG0dHOxqJQXUNIr5LEtmFHVvdOPVc0eY=;
        b=ZH/sGTIGulS33F12n0DgS6/A5D6w3NYsgGl4lchEZZkkGgMzM/Vpc3VDFwLX1DpjxP
         OhT723kb7sTdPqgbBIC1gYaQwIZY6bKH5l9cyXR38Fc3KmoxxzEEu5sokIaN+c7jZa8+
         mRMFitHQGRjFC572N8SjBo/gl0+9uIIY7mwGzMNAYH7P+elAXetDiAC50nOLB6J/CBY2
         SebP1tjE9Spi4GWPUgvTerCzSnYYbq7pXL9w0GGKjtaP50B2RNu0S8l7cPq8fqxtnXp5
         LXIjGScg/tunCUkLpIo9Q5xJgFuQm112rY0PYN5VtNb9n3gZBdmI9tB0A3E0CxFVoknl
         VDfQ==
X-Forwarded-Encrypted: i=1; AHgh+RpR0upiQGi2g0mrO/kp1B2MH43M7kz9ozwdWwgMnTbh4zVgSlqqXkvfd6aIZKvvxtHhle26tbxy8lI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwKs0FWzBLHQsPlxbpE4qNKJTqZz38NAlOcK09wvag0Z+Zyh4Fn
	bGY2wEefmXuX4u5Hm+vE1VD6Ve7RwgaRhX6ufeUOK/CznY9Wvn8wCpCRylNoBM3eP/3kybCDUbT
	SuzW+X1fRLJWaNKUqQ3gD9bXELq2UAu/HRiVRza9xfip2RR6yHVFZaFH+UdHw+LR31E6u
X-Gm-Gg: AfdE7ckjDQVizr9mCG5oaOzQCSAyGNZSFUz9FikdCJZb2/hvMZ7vWrRF8K5AbSlkVe8
	xTpmFmcEqMFmg/saDzADHc05V78/bffRA7iBi6eaCpOWuG5L/Jv9EglEzJ5pt8StYDd6q3EmTZQ
	TMnhYjo8jA9tjnoH0jiEl3EzPVLoVIVZ95zxi6Xi3rm2R0/GlNNeYdMJ4FOiO+QS75vzAkdNUyp
	63i84caBLkrhvCyDyGbNx7e04pzHjBIXkALzWxWiogQCO4+5kICeq9CbSzIDKctIt6+eQj6ryp6
	9DGdgDlZWwnP71AhpdBrAxcQ1z+B097fsM9yZDqA1FWfg997qh8SzNJdepZhD8dyK1XbVywgcjb
	IzUKPu1n7bTK5BKwrCw/ljSk5SqqF73gcGCnPCCmCl4+mZFM=
X-Received: by 2002:a05:7300:fd04:b0:30e:d8ae:3080 with SMTP id 5a478bee46e88-30ee9fe6456mr2192514eec.9.1782846210616;
        Tue, 30 Jun 2026 12:03:30 -0700 (PDT)
X-Received: by 2002:a05:7300:fd04:b0:30e:d8ae:3080 with SMTP id 5a478bee46e88-30ee9fe6456mr2192475eec.9.1782846209983;
        Tue, 30 Jun 2026 12:03:29 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.03.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:03:29 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:44 +0530
Subject: [PATCH 2/9] dt-bindings: PCI: qcom: Document the Shikra PCIe
 Controller
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
In-Reply-To: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=7567;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=geHLVr+nILiCC557oY7YgLUcDXfcErycdPqITDrz7hM=;
 b=QxDfiE8kq6tR17FWr4nwRroqas/N8p1A0hWqY9tO0J/ZhVsjY/WkH37Un7BLmJxNhKmqtXrUR
 MHYgl7A3n/ZCeS9FGipb3XCUfU3Y1QXqpcPV/7s53HnL1DRfZsLbljd
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX9nXrfllsU/lY
 Odcf7RlwaPsj+y1hcKBUMw8ltWt5VVwgUehFHI/8eTsQwrh26nCGno5bu9mlbNDcK1GkR1xgoAJ
 3chllhMoRb3e+CYbmMXzS1icF9d/7uU=
X-Authority-Analysis: v=2.4 cv=MpJiLWae c=1 sm=1 tr=0 ts=6a441303 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=qzLpS6MJIjkm2LRF5K8A:9 a=QEXdDO2ut3YA:10 a=bBxd6f-gb0O0v-kibOvt:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: yqivq3e6PfLSs0PMKfwRBTQrfROferjf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfXwqknvoWOlv6d
 ZuVyDhlWxLKy/+o4Ey8miyuefxVnV8tk6Me+PFx3jCmNWmIeCR6goAs1rDMuxf6OyePs1BHnp2d
 3kK44C2EmvWuq1+MURAI2XPB1sEoqVTuHbfa1aAFaK2nW4A9uKYZRWzCCvCKR/LTOBNpxeoOsJJ
 dF1iiy0dll9dlmHJsDdDJT9zR08hlnfeDsnMI2y2IWtRZdUIBsOwue013i3p/Dem57zJCci9Yau
 A0PRcqSXYQzDQNn/Cj3VpgSF1Oun2qIxLm28jXh89uqrdRtJ7G//cCBIPBqQv9Y5zkmseG6kXCP
 3lWPUgkwy1DL3pFuZVLFlzRw7wmZ8bzp6gEYHh/rsgAl8TfCZi2PkIHGUh47pwzg5lTRQhgwpQ9
 g7X5ErKqUlNFA+vzdGDshVqR5xZDpEckiayHaf8/PkS1O33vfKabQB0nhnPOpUeGDA686LSBr+t
 RW/hO7bXeKXoYnF1Stg==
X-Proofpoint-GUID: yqivq3e6PfLSs0PMKfwRBTQrfROferjf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120332_518774_7271EA3B 
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

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 211 +++++++++++++++++++++
 1 file changed, 211 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml
new file mode 100644
index 000000000000..f9d1dba9dd2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,shikra-pcie.yaml
@@ -0,0 +1,211 @@
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
+  Qualcomm Shikra SoC (and compatible) PCIe root complex controller is based on
+  the Synopsys DesignWare PCIe IP.
+
+properties:
+  compatible:
+    const: qcom,shikra-pcie
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
+    minItems: 7
+    maxItems: 9
+
+  clock-names:
+    minItems: 7
+    items:
+      - const: aux # Auxiliary clock
+      - const: cfg # Configuration clock
+      - const: bus_master # Master AXI clock
+      - const: bus_slave # Slave AXI clock
+      - const: slave_q2a # Slave Q2A clock
+      - const: ddrss_memnoc_pcie # PCIe SF MEMNOC clock
+      - const: tile # PCIe tile SYS NoC clock
+      - const: qmip_pcie_ahb # QMIP PCIe AHB clock
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
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
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
+    #include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
+    #include <dt-bindings/clock/qcom,qcm2290-gpucc.h>
+    #include <dt-bindings/clock/qcom,rpmcc.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@45e8000 {
+          device_type = "pci";
+          compatible = "qcom,shikra-pcie";
+          reg = <0x0 0x045e8000 0x0 0x3000>,
+                <0x0 0x60000000 0x0 0xf1d>,
+                <0x0 0x60000f20 0x0 0xa8>,
+                <0x0 0x60001000 0x0 0x1000>,
+                <0x0 0x60100000 0x0 0x100000>,
+                <0x0 0x045eb000 0x0 0x1000>;
+          reg-names = "parf",
+                      "dbi",
+                      "elbi",
+                      "atu",
+                      "config",
+                      "mhi";
+          #address-cells = <3>;
+          #size-cells = <2>;
+          ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+                   <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>,
+                   <0x03000000 0x4 0x00000000 0x4 0x00000000 0x3 0x0000000>;
+          bus-range = <0x00 0xff>;
+
+          linux,pci-domain = <0>;
+          num-lanes = <1>;
+
+          interrupts = <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH 0>,
+                       <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH 0>;
+          interrupt-names = "msi0",
+                            "msi1",
+                            "msi2",
+                            "msi3",
+                            "msi4",
+                            "msi5",
+                            "msi6",
+                            "msi7",
+                            "global";
+
+          interrupt-map = <0 0 0 1 &intc 0 0 0 499 IRQ_TYPE_LEVEL_HIGH>,
+                          <0 0 0 2 &intc 0 0 0 500 IRQ_TYPE_LEVEL_HIGH>,
+                          <0 0 0 3 &intc 0 0 0 501 IRQ_TYPE_LEVEL_HIGH>,
+                          <0 0 0 4 &intc 0 0 0 502 IRQ_TYPE_LEVEL_HIGH>;
+          interrupt-map-mask = <0 0 0 0x7>;
+          #interrupt-cells = <1>;
+
+          clocks = <&gcc GCC_PCIE_AUX_CLK>,
+                   <&gcc GCC_PCIE_CFG_AHB_CLK>,
+                   <&gcc GCC_PCIE_MSTR_AXI_CLK>,
+                   <&gcc GCC_PCIE_SLV_AXI_CLK>,
+                   <&gcc GCC_PCIE_SLV_Q2A_AXI_CLK>,
+                   <&gcc GCC_DDRSS_MEMNOC_PCIE_SF_CLK>,
+                   <&gcc GCC_PCIE_TILE_AXI_SYS_NOC_CLK>,
+                   <&gcc GCC_QMIP_PCIE_CFG_AHB_CLK>;
+          clock-names = "aux",
+                        "cfg",
+                        "bus_master",
+                        "bus_slave",
+                        "slave_q2a",
+                        "ddrss_memnoc_pcie",
+                        "tile",
+                        "qmip_pcie_ahb";
+
+          assigned-clocks = <&gcc GCC_PCIE_AUX_CLK>;
+          assigned-clock-rates = <19200000>;
+
+          interconnects = <&system_noc MASTER_PCIE2_0 RPM_ALWAYS_TAG
+                          &mc_virt SLAVE_EBI_CH0 RPM_ALWAYS_TAG>,
+                          <&mem_noc MASTER_AMPSS_M0 RPM_ACTIVE_TAG
+                          &config_noc SLAVE_PCIE2_0 RPM_ACTIVE_TAG>;
+
+          interconnect-names = "pcie-mem",
+                               "cpu-pcie";
+
+          iommu-map = <0x0 &apps_smmu 0x800 0x1>,
+                      <0x100 &apps_smmu 0x801 0x1>;
+
+          resets = <&gcc GCC_PCIE_BCR>;
+          reset-names = "pci";
+
+          power-domains = <&gcc GCC_PCIE_GDSC>;
+
+          max-link-speed = <2>;
+
+          operating-points-v2 = <&pcie_opp_table>;
+
+          status = "disabled";
+
+          pcie_opp_table: opp-table {
+                  compatible = "operating-points-v2";
+
+                  /* GEN 1 x1 */
+                  opp-2500000 {
+                          opp-hz = /bits/ 64 <2500000>;
+                          required-opps = <&rpmpd_opp_nom>;
+                          opp-peak-kBps = <250000 1>;
+                          opp-level = <1>;
+                  };
+
+                  /* GEN 2 x1 */
+                  opp-5000000 {
+                          opp-hz = /bits/ 64 <5000000>;
+                          required-opps = <&rpmpd_opp_nom>;
+                          opp-peak-kBps = <500000 1>;
+                          opp-level = <2>;
+                  };
+          };
+        };
+    };

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
