Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0677BCCF2DF
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 09:26:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ex5J0/trbdTtuCXf9zC8bl4imqibL432+9drZxHyeIE=; b=x7XEISdzvV6YoA
	DIQEpXSRGo73aBzq9YKneCRWGigUirBr0mlyuzmCqJvf/gOUXeURppeUQ4HDblaIrGcG7vIWkfNKn
	MTq6PtAlXhdgxFqYXIZwhairGBDOLZit1j4AV6Yv/Y1frWYw/C5BmiHLGe0ye8DoOh7olctmEuwKC
	23+DPaxQqMvUn6EwGEd7wgAt9eWiQ7NKXFHOWpst596Zad1vL9MGb+3JukP5hf3H2k6oQYhEEbdtQ
	WM4l50RdnbuZfesp2oFi9ZSfR/g/eC4QXSG4TrjXMpEshz8KU9T10Y9H5XuZHHdVdsWKwIhEUgqc/
	xZAq8JCeQbUgLTT1Qb+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjdC-00000006zs0-2oKR;
	Mon, 19 Oct 2026 09:26:10 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjd4-00000006zpc-30zH
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 09:26:07 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69J8P7hM2236099
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yneraFtfNzmUal/3Wx1LaAn1j7QA6EjbSSPtCDfhHdY=; b=VfNpL+SqHCFLgkZU
	/nmhS3Kb8XV0caCFlh2txOAWseHatOGnSrL5nsmmh2qSnyybsDytTlit/Y+CNxdm
	Q26Yj1yKbOphmNzi5mTCh/kk6542yOctWKu71fynKGtVfosdU/lhYGyA32aKDqnJ
	x4OgEd/lmQaUb5o2MwgTz/8fuD5CLHchB42DybbHbQm9YkEpQtrTroDey7sYoNuT
	xY0MFh1hpCN5q6SVygbMOm7q9gvQzIUdkECB6l3xp6256cvxcJ+l79CrrmnFRxAZ
	+ZID16IFc7B765Nu0yftEj3Ab6ZZ4Gzin7+9vJOG53InxC1nuXAZkbqjGfG/9nb4
	ajJuwg==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hdf3x8cx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 09:26:02 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-3552883bd19so5135633eec.1
        for <linux-phy@lists.infradead.org>; Mon, 19 Oct 2026 02:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792401961; x=1793006761; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yneraFtfNzmUal/3Wx1LaAn1j7QA6EjbSSPtCDfhHdY=;
        b=UQpZXDAc/5VkB007jhJlT+wBKLC0+P4F0ddc7k/Ij3vdUo5AwsmzM5LvD+uPw8ibKk
         vjA3LY+kvXNgWmIUxr05kfmnAr1IN1QZc1o5gp+ngJMLSs/3ByCctExivzmAiMEj7c8f
         yp3JOJQ3gBgZBV9C7H0gah8Q3nu0Jxn3kVJp3NOLlCbb4lyDQ7/7zElp7zK/PqbyDwKP
         W7AhV8OQkRZNkOEOavyjYTrl46pGblezGJNUqxi9DSY77hoinbfJvJjubTPigqpSkyd5
         CMVVqFopPLyIuUBIRqNVZgXJijbJfz8UrH/xd+l9AUzQL/jAeGfECwYMfX2k+0M6jD5z
         /HUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792401961; x=1793006761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yneraFtfNzmUal/3Wx1LaAn1j7QA6EjbSSPtCDfhHdY=;
        b=XqbCN5vvdHvIZUz+4BiztKr57LYhlTRfeux0SO6g4XhH7jw4EudvRcYO3AOwx0lTiA
         0WaFyIcX5+m+IPrzMToE5rlo8tn2IVijZu8iQcyTVBBqb70EqoqTF3oRWwJhIIzRWJ5a
         YvQE3rLXmYtIbu7r/8XI95LobIQNgB+RFcicTsEGrxEzF/TWqgOV5yfGpb+ch+WmaGKC
         z5Ubi8Q9BB+9t4zMTCaH0Y0hMOu5bJBCeNw6XPajzCsVr6VgouydTBUOT3m1xJqLQAdd
         poPwmEwg1rwwEMo+m4WlrRzaNPMn+FhYZb4Bbzl4IoifX/yNgiOXD4V0gMo/6XruKJsg
         cyag==
X-Forwarded-Encrypted: i=1; AKwUvBz8WRBCzvY3e3OENDkcwDz+86OTVl8ou4cTzdVwzMGKjeikWslyjiFXtlP1AA63PyVySQORsCL/J7A=@lists.infradead.org
X-Gm-Message-State: AFq9FYIJ9IeND0yU4DxhklOX7JeKDWPb7q4UW4JdZvsK/je6E+vdMza8
	68ALv3cqfwQRqKRLsDSxIPZiTcMBsoSCmQ650O8Vc9qYkmElRCuFNduWmqqaKUd4qyTuQquGUj4
	ic+lsBj4qxht5Jlj5e88ilHRejdmJCpJ7oNpg0vfloL2OqkMXW4KgoxXL8pbILwn16NIL
X-Gm-Gg: AYBFou1APXQHwHfFUi8O2qCIR7abEEhnRMRGvCmbbvo7DcKucld//0kn0nsMzGBnEES
	i2LqVAa2PXfjDzJj27pj1fx8r0o+3wh0moeurVZ6M4rl2m+3PiysCAWKkzZkg72lTfj0Y5Cn48W
	cm//kvto+YF7Zew6O42ZZr4ZniIuDU7nFOZouUHJSlvckkMi3Hq6RgAYsKk70hlz4KCPApBWT+r
	SmXdGNDenRAlwAoytLGNdHaUqNLPXJD6EpIfGTCGX1S1T3wH6b4KEVSG598JZHgU4529dI78HBV
	ATWYIM2ihoT8upBG3mpl6tRK04cmMhUrf7aLFZ71NS+x84Ez/lGEhEcOemQnjpbQsM/yhaO5Gtc
	NK5TEAHTWVLB86ItrQ3UfQI6AfNcTD6zsLg==
X-Received: by 2002:a05:701b:4559:20b0:185:1640:5536 with SMTP id a92af1059eb24-18516405571mr10494519c88.19.1792401961044;
        Mon, 19 Oct 2026 02:26:01 -0700 (PDT)
X-Received: by 2002:a05:701b:4559:20b0:185:1640:5536 with SMTP id a92af1059eb24-18516405571mr10494480c88.19.1792401960341;
        Mon, 19 Oct 2026 02:26:00 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1831c4d4675sm26682584c88.21.2026.10.19.02.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2026 02:26:00 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 19 Oct 2026 14:55:14 +0530
Subject: [PATCH v2 6/6] arm64: qcom: monaco: Add PCIe Endpoint nodes
MIME-Version: 1.0
Message-Id: <20261019-monaco_ep-v2-6-852cb9f5d012@oss.qualcomm.com>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
In-Reply-To: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792401919; l=6008;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=QQjgZjODuP7hhVx8o8nUzoend12S7wxNrmIDVLN6/EI=;
 b=z7m+XMbkt21+9eCzUZdH8SNmIbKm1ID5BOSHcoGEu4MtxC8Uj1JLiy6MSJOugr0gHZZu0Svve
 tNU62Bi80yeD9PQ2GbM7QoiThZ211AYgC6UNdnsX6GVqfvwMPvo3GJ6
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: fza7XtL_ojAF2dl0SEsXDvlQDp4uB9R2
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfX/6rXGllJTbib
 cvodNQzz6WOC/s3yEvqU1eNgcn/ZN5WsDvM2O3IZSbbdRds8qdiAROUQbD9VDdfAoDmuUTsUk6O
 RlrMX1FBlTO7UzL7SewW25qVMQLe9ik=
X-Authority-Analysis: v=2.4 cv=XPOl2ghE c=1 sm=1 tr=0 ts=6ad5e22a cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=hNZP5i6h11z2s_4BSHIA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: fza7XtL_ojAF2dl0SEsXDvlQDp4uB9R2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE5MDAzNyBTYWx0ZWRfXzNgRhIHpf/Kl
 ePrl7COsBT0sybx2fACSe1e4yRRqrRHBSpyzzmao0UsUteRO5pJLM33iANVjXdNf2A/p4DsSfTo
 4W8v1sripDn/xHl5r+tYVy/tUcUH6U+bqNMXYFbHRQ6avE4PZDnBIj6U9H8UHSNEoc002NarRMF
 akBuONAlXsThXwCuVXJqiuUmfG25ZImOTCvMBYCszJ7pDYbGcIfx4J7p4tC048bDm56xjGyBvVb
 /dRfH/Cng3zXJEV4di9LsouonJyBb9yhufotgMcFQOZ2RA/BVCLeMA+108yNBOyUi7qhFvAZvSd
 cAYt2d2jmaPMIxzXEOeH2obtghPjeOAg1G4iudVyOqySL4joPiEImj/NZzrOFPROBlZ+lc4dS0F
 Bn0g/f6npRiHOrnI0qzgTnSr+GQB131EDfeysBE1nfaXZl1QrqE/UwF3uBN7sp8XQFx9ykZ0dhM
 cpNuvPBnpUVAEuEfk0g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-19_03,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 phishscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610190037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022602_765055_1C544260 
X-CRM114-Status: GOOD (  11.11  )
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

Monaco has two PCIe controllers that can operate in Endpoint mode.
Describe the Endpoint nodes for both controllers, including their
register regions, clocks, interrupts, interconnects, IOMMU mappings,
resets, power domains, and PHY connections etc.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 147 +++++++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index d7d135e87a8c..12cd7d5f37a3 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/clock/qcom,sa8775p-videocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
@@ -2405,6 +2406,57 @@ pcieport0: pcie@0 {
 			};
 		};
 
+		pcie0_ep: pcie-ep@1c00000 {
+			compatible = "qcom,qcs8300-pcie-ep", "qcom,sa8775p-pcie-ep";
+			reg = <0x0 0x01c00000 0x0 0x3000>,
+			      <0x0 0x40000000 0x0 0xf20>,
+			      <0x0 0x40000f20 0x0 0xa8>,
+			      <0x0 0x40001000 0x0 0x4000>,
+			      <0x0 0x40200000 0x0 0x1fe00000>,
+			      <0x0 0x01c03000 0x0 0x1000>,
+			      <0x0 0x40005000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+
+			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_anoc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			dma-coherent;
+			iommus = <&pcie_smmu 0x0000 0x7f>;
+			resets = <&gcc GCC_PCIE_0_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc GCC_PCIE_0_GDSC>;
+			phys = <&pcie0_phy>;
+			phy-names = "pciephy";
+			reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 0 GPIO_ACTIVE_LOW>;
+			pinctrl-0 = <&pcie0_ep_default_state>;
+			pinctrl-names = "default";
+			num-lanes = <2>;
+			linux,pci-domain = <0>;
+
+			status = "disabled";
+		};
+
 		pcie0_phy: phy@1c04000 {
 			compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy";
 			reg = <0x0 0x01c04000 0x0 0x2000>;
@@ -2596,6 +2648,57 @@ pcieport1: pcie@0 {
 			};
 		};
 
+		pcie1_ep: pcie-ep@1c10000 {
+			compatible = "qcom,qcs8300-pcie-ep", "qcom,sa8775p-pcie-ep";
+			reg = <0x0 0x01c10000 0x0 0x3000>,
+			      <0x0 0x60000000 0x0 0xf20>,
+			      <0x0 0x60000f20 0x0 0xa8>,
+			      <0x0 0x60001000 0x0 0x4000>,
+			      <0x0 0x60200000 0x0 0x1fe00000>,
+			      <0x0 0x01c13000 0x0 0x1000>,
+			      <0x0 0x60005000 0x0 0x2000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+				    "mmio", "dma";
+
+			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
+			clock-names = "aux",
+				      "cfg",
+				      "bus_master",
+				      "bus_slave",
+				      "slave_q2a";
+
+			interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "global", "doorbell", "dma";
+
+			interconnects = <&pcie_anoc MASTER_PCIE_1 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_PCIE_1 QCOM_ICC_TAG_ACTIVE_ONLY>;
+			interconnect-names = "pcie-mem", "cpu-pcie";
+
+			dma-coherent;
+			iommus = <&pcie_smmu 0x0080 0x7f>;
+			resets = <&gcc GCC_PCIE_1_BCR>;
+			reset-names = "core";
+			power-domains = <&gcc GCC_PCIE_1_GDSC>;
+			phys = <&pcie1_phy>;
+			phy-names = "pciephy";
+			reset-gpios = <&tlmm 23 GPIO_ACTIVE_LOW>;
+			wake-gpios = <&tlmm 21 GPIO_ACTIVE_LOW>;
+			pinctrl-0 = <&pcie1_ep_default_state>;
+			pinctrl-names = "default";
+			num-lanes = <4>;
+			linux,pci-domain = <1>;
+
+			status = "disabled";
+		};
+
 		pcie1_phy: phy@1c14000 {
 			compatible = "qcom,qcs8300-qmp-gen4x4-pcie-phy",
 				     "qcom,sa8775p-qmp-gen4x4-pcie-phy";
@@ -6225,6 +6328,50 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			pcie0_ep_default_state: pcie0-ep-default-state {
+				wake-pins {
+					pins = "gpio0";
+					function = "gpio";
+					drive-strength = <2>;
+				};
+
+				clkreq-pins {
+					pins = "gpio1";
+					function = "pcie0_clkreq";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				perst-pins {
+					pins = "gpio2";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+
+			pcie1_ep_default_state: pcie1-ep-default-state {
+				wake-pins {
+					pins = "gpio21";
+					function = "gpio";
+					drive-strength = <2>;
+				};
+
+				clkreq-pins {
+					pins = "gpio22";
+					function = "pcie1_clkreq";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				perst-pins {
+					pins = "gpio23";
+					function = "gpio";
+					input-enable;
+					bias-pull-up;
+				};
+			};
+
 			cam0_default: cam0-default-state {
 				pins = "gpio67";
 				function = "cam_mclk";

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
