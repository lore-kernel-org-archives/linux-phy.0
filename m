Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C47DAC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 30 Apr 2024 16:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDc9Xsj6zkUes3NFOWINdujWgwAKYRDqwm0y6mLgjhY=; b=CNPAKwYDXe63ub
	Bje8/Jc+VHWIby3oBu+vFfg8hdivT2zhNPbrwRnAod5SSRtx4ISWMLM9zl54BjLl/UXqKgwkkRHJU
	CPN1KVjfBW8pj2Y6nT0VA2sI3CVoUTirgbyiBmYcJAldOoevgcHuXgZaKXoDaPUiVXt2z5BT+0tF2
	gs4Auw+P0a3N9T9qWIOnXrdOBX1hxiif2lGUA5TDtX5Xt82sh9CQlqVCKj7G6G2zGlJr/dNUkFt1/
	ZNAvC3aIS7mbzMCl1pzF+5W+OF9imD8Sb2X4XXS5Azcg9OhLP0WVkHCdie1+TsTohjWzRaJx9UOy0
	oND5EVrurH6R9RKe6nnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qEo-00000007CKr-1VjL;
	Tue, 30 Apr 2024 16:21:50 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1qEl-00000007CI4-1Zv6
	for linux-phy@lists.infradead.org;
	Tue, 30 Apr 2024 16:21:49 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43UAop7N022524;
	Tue, 30 Apr 2024 16:21:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references; s=
	qcppdkim1; bh=92woIn/dhpu7seX9GL4UPtCHaY23s9Hwlzx46BvLuKk=; b=Vc
	zB2EbF97HoWUo7A/ManhCFZU2z0jDSdl7MFiVEdcNDqwqQdZiUjJ4tiBxMQYxB7+
	VloZMnHMkBAK+aW5HeexQuwqt5sZQr97bcRSfM6mw8xsCB+8FvXQP5nazU4PBpec
	88sv3f5TohhMF4SzcgVpIVLCX+oScPfOixpl3sKVgi7aNYbWYL/9nefXsbe8ot/r
	o9WfK3+4wXVXc61e6k+fPhoACaoSWlsishTPv8thiC5oaxebWBFDDECvliY31bKm
	lwi27il+h1Fu9XUUeejCYXwghNr5f/VbGn8jw+kXCkD1krsnSwmN8JkwBMrd5Yvm
	btZiPeMRguFK8M5rG9ow==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xtsnm9s3m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Apr 2024 16:21:44 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 43UGLeMK025558;
	Tue, 30 Apr 2024 16:21:40 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3xrtem1dr6-1;
	Tue, 30 Apr 2024 16:21:40 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 43UGLeCa025550;
	Tue, 30 Apr 2024 16:21:40 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-msarkar-hyd.qualcomm.com [10.213.111.194])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 43UGLecG025549;
	Tue, 30 Apr 2024 16:21:40 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3891782)
	id 075282287; Tue, 30 Apr 2024 21:51:38 +0530 (+0530)
From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
To: andersson@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, konrad.dybcio@linaro.org,
        manivannan.sadhasivam@linaro.org
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
        quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        quic_schintav@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Qiang Yu <quic_qianyu@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Add ep pcie1 controller node
Date: Tue, 30 Apr 2024 21:51:27 +0530
Message-Id: <1714494089-7917-3-git-send-email-quic_msarkar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
References: <1714494089-7917-1-git-send-email-quic_msarkar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: D7fvpw_NL2ap6PNG--Mrv6i_TzhklmNP
X-Proofpoint-ORIG-GUID: D7fvpw_NL2ap6PNG--Mrv6i_TzhklmNP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-30_09,2024-04-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxscore=0
 suspectscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 mlxlogscore=999 phishscore=0 bulkscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404300117
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_092147_530518_5EE6ABE3 
X-CRM114-Status: GOOD (  10.56  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add ep pcie dtsi node for pcie1 controller found on sa8775p platform.
It supports gen4 and x4 link width. Limiting the speed to Gen3 due to
stability issue with Gen4.

Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 47 +++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 4084e77..9065645 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -3845,6 +3845,53 @@
 		};
 	};
 
+	pcie1_ep: pcie-ep@1c10000 {
+		compatible = "qcom,sa8775p-pcie-ep";
+		reg = <0x0 0x01c10000 0x0 0x3000>,
+		      <0x0 0x60000000 0x0 0xf20>,
+		      <0x0 0x60000f20 0x0 0xa8>,
+		      <0x0 0x60001000 0x0 0x4000>,
+		      <0x0 0x60200000 0x0 0x100000>,
+		      <0x0 0x01c13000 0x0 0x1000>,
+		      <0x0 0x60005000 0x0 0x2000>;
+		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
+			    "mmio", "dma";
+
+		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+			 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
+			 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
+			 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>;
+
+		clock-names = "aux",
+			      "cfg",
+			      "bus_master",
+			      "bus_slave",
+			      "slave_q2a";
+
+		interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+
+		interrupt-names = "global", "doorbell", "dma";
+
+		interconnects = <&pcie_anoc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
+				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_1 0>;
+		interconnect-names = "pcie-mem", "cpu-pcie";
+
+		dma-coherent;
+		iommus = <&pcie_smmu 0x80 0x7f>;
+		resets = <&gcc GCC_PCIE_1_BCR>;
+		reset-names = "core";
+		power-domains = <&gcc PCIE_1_GDSC>;
+		phys = <&pcie1_phy>;
+		phy-names = "pciephy";
+		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */
+		num-lanes = <4>;
+
+		status = "disabled";
+	};
+
 	pcie1_phy: phy@1c14000 {
 		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 		reg = <0x0 0x1c14000 0x0 0x4000>;
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
