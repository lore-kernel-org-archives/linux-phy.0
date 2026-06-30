Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FC19C43458
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jun 2026 19:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kq+cLjCj55I9yZXk4rH6nHuHLEQQ7x3j6DJQ/ang8Ts=; b=oM4hJ7MdncCvm+
	JeUJjAg+KLPMqGenOqL8e0CB6Sko5TiiCl1jBCg6p5Gnu0ytK6kdtpEXtG0kf06FVr5jLeBwIo5E0
	TFDLMg6IWjBY7ta2AZlxoCqLC9T8AftMFj22Kpyr0grNZo6C/Z+28QTrK4RBum+PWPRUKG7r1L/JC
	By9J1v5ldh3d+2xii67tTmADoL4ltYjma++Kr23bNVruzIZKUSQhDtODeD5PPvxAZDiyBIOCd9GCE
	z37uZmseyTXuONu9Qc498klOKGzI/jqFY0R/OU2Fb6SkbAVtUjdbY2gw2n1hUXtfp7SwaOZH2rRwu
	j+0MEPBQ/vLMF162MhfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkk-000000005LK-1j33;
	Tue, 30 Jun 2026 19:04:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wedkh-000000005KP-0ucw
	for linux-phy@lists.infradead.org;
	Tue, 30 Jun 2026 19:04:13 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65UHkhgZ2733939
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:04:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	inDMt4BB+yC6qDtrqFEdv5l0i8CEnUCXJaD4ATQQ6os=; b=VAPeCEuZ0DgCgCB1
	oN1lwiiTSxCbDKQFWRJ/WKu1qPmhwogCN2gcXw2jfsmgIe4oybqlMNp/zhz+IUn3
	O3niKUhme/m9MDLOpOqDy1DJKgxYkP3juNG0gzHSL4z1RYrtPUG98pxgQlUjK+Qt
	3l9X2xDMWwSdlauu46MB7uBuLaMeSkc4XdpRznbZ1wL9VslpmcUkfe6RCefJsNIy
	iP2yp4ClV2HeXPlKb1VtGmoGBHbLKJA8m+13EtDajVi+n7T+NSZXA2eDIaSZcbEA
	HaA80zubri5+8ip3m6FGcvt+n7v+J6njS0WWGrNkJt1akawRsltppFVxcT5QZWV+
	gXNC7g==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f4h0ary5a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 19:04:10 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30ca3374c6aso202463eec.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Jun 2026 12:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782846249; x=1783451049; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=inDMt4BB+yC6qDtrqFEdv5l0i8CEnUCXJaD4ATQQ6os=;
        b=Umc5QA3qzC2eu5FMes44VgbWiL5IwsRTR0eZK8hDdl5Zjpv6NcyiCMBkOLQSiJ8eXW
         qJSH+AoL1R5IQz+fgWiUzH5wJt05Ugr8iJxAjsLv4goi1SvrH1NitTOPV22vIMt7nJXk
         /CK1d9lrX1lFiAd9qHvzXs1Z+sfApz3ao1tooBYmO19aH730He24B8cAMnEPVjA+pu4o
         XHL2jfFoQqxyvx+hCQVX4GGVuWkhrU390sGL0n0msmEL0PB7qV8IMs249l92PdSgU2s8
         0zRP9vATXblHhxHT/Ov2Vn8zGrbxhG47UGkl306aEDOKd9MCr9v39yZdvcUE+MIZK8In
         MmcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782846249; x=1783451049;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=inDMt4BB+yC6qDtrqFEdv5l0i8CEnUCXJaD4ATQQ6os=;
        b=ix3eWjiQN12G8xAlINUgNcexg7IaU5PysaYgPo1A+1xynZ7NM5Axr8Mut+t8q3KLSz
         9csmkxAmB6pH/4R1pOAZkILgEAVlK+4XOWhVs5BQUiC2I65BRrRRlS1myhFWfWGfPbcN
         I/1tn6okliJiRj94TSyJpc8vPrIJG5mU4V26rXeN9SzQxVFszR3zRN9xo8RhbMWTifuZ
         4MDjCoSSze8h+hoa0Mn0fORmFnb2eccPOPsp60i/bYal19wQEBlYXt/lqujWv7G0FRdj
         8Y+upz69uy5dkQNpt7kVYqmJ4UtJr27IjHOL0Drq4M+YwLPiiHsyGXprWlIl64Sp6r6f
         +bkw==
X-Forwarded-Encrypted: i=1; AHgh+Rq2imUA9fm1EfBoUB36s+NSlZeVJOW5YGxkFRkLWFC/CnoPPVU+Hp0wdIAgKhJZ5z+/oCTkr4tJbec=@lists.infradead.org
X-Gm-Message-State: AOJu0YzSfzjR7Z509VFoLy8q2eT9OKwurFwdyfpZ3spBb1fS7Sb6fmT6
	7z8wqZDQ5dUD0sKjSJ/1G3gfVzT7AhHQXEDz8ZHYCtMDv4X8yzIU3HOuPDou8JpGr7ZGj7u3x4w
	1WXxx0AKVE5MUwjmIxgaZUHEoiEQhrTVGRDn/kMgDb5OrVVaKrBzOE2ypOpvEMoM6zkuK
X-Gm-Gg: AfdE7clEvjm4mOLVammLG8YjrJ1ujM24Nq2L/Jw/owGCs427lNVa88vLACXdV64KAGM
	lX4kFOl7N8ic4f3M5EGJJZHvoKiiQicR9HAx5tqU3887RlKukc/WUYpjApOesF4BSqQetOJCCrm
	DYDceUXRJsdxUnrlqmpl6Ohhv/zWMLL9XOag+hGaR3tE9jdxRI7oKixFgh/qQGJwVbFIgaWpSUC
	s8wvGxdVyecs8xhRoJ48cHFFFckhqrWi09izrXMds29UGcI2QZ8KPydg2TweKF55klO4EdUBLLU
	LW5FIcEfiLqyHsc2Dl2gMFcp8bQRHwqb6Dxk83FwDTez2bz/zRvlfNpVMsqVNWegQXgl8gXNOMM
	cJBDspFezT9oQVH0FUNDAezwE2Mx6FYYtqjaGrO5S3Cn5QrA=
X-Received: by 2002:a05:7300:2325:b0:30e:d236:57b5 with SMTP id 5a478bee46e88-30ee128cd0fmr4071301eec.16.1782846248959;
        Tue, 30 Jun 2026 12:04:08 -0700 (PDT)
X-Received: by 2002:a05:7300:2325:b0:30e:d236:57b5 with SMTP id 5a478bee46e88-30ee128cd0fmr4071262eec.16.1782846248249;
        Tue, 30 Jun 2026 12:04:08 -0700 (PDT)
Received: from hu-sushruts-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm14963815eec.15.2026.06.30.12.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 12:04:07 -0700 (PDT)
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Date: Wed, 01 Jul 2026 00:32:50 +0530
Subject: [PATCH 8/9] arm64: dts: qcom: shikra-evk: Add TC9563 PCIe switch
 node for PCIe
MIME-Version: 1.0
Message-Id: <20260701-shikra-upstream-v1-8-e1a721eb8943@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782846191; l=4426;
 i=sushrut.trivedi@oss.qualcomm.com; s=20251127; h=from:subject:message-id;
 bh=rfLV9qzeyVEE+pk1IMc0Mp1Nf/yReQZxa7tuJDB2tSY=;
 b=oUob7v7F28cUABDjOIOLA72w6G9oYBt8/wFYAIKsm4HoxHeUpYSDtkdHE8WaX7HJnWbUSkZYJ
 BDLhUPg4TBMCh7vNBRyUe8nK6MzscrovApSt9l4cyqO68PE/k3GKCzj
X-Developer-Key: i=sushrut.trivedi@oss.qualcomm.com; a=ed25519;
 pk=OrUHTxBaSg1oY3CtCictJ5A4bDMNLRZS1S+QfD9pdjw=
X-Authority-Analysis: v=2.4 cv=OuF/DS/t c=1 sm=1 tr=0 ts=6a44132a cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=RBLAtJqH_bkH6XPhXP4A:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: OXorBYjxRkomZ-7wB00cZzaq_GNzEAQF
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfX8zSTwr1L4TJT
 V6s48n5orfFQR/9NVWZVQMsgt7p/4DJbbcEAUBGBKtaH76nvrdt+gF+rohoOM04xzBbFrXeRNko
 OE6V/QeOgnCGbsDlwBhNkdxQMjTn9RE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjMwMDE4MiBTYWx0ZWRfXywJKVBJgEI0S
 z1QelNWFWWrw4mqAt4LYpuXpiagVA3/eiTKh2wQ9lxBKoYwbq4G0HR7y6IGe7Ce1DxiKPZumYg+
 vYDSSyqv9GTvUqoKr+JAysl3MyHxr2ne1LSpS+T8deQ6tZ/GVvZDGIrrjEnCc0yZ3IrZkw9RLkC
 iuY7DTRqEA0AF9qUH1g6sYrbR+pwPtrPX9nLCl41G3z6NV1WZx47lYVsYWfPHlFP+1RjV0sF5w/
 rd6gVDUttAlXDGSb4l4wAXAR3z+oYb+VDAHqVooA0+FeAWqybV2l+cRPbcFDB7K7d1JL/cm253e
 Tl1XCGN15TpgpYcJDKNHW6ki6D9bn2en94FccClH0/r2kXpQUzd8/TTBv4jAzkWaeqgqv5g29w7
 rsjUqelQrUNL3O6tcMyPeog2BRcwu5ZbWsX0I7SyIKsgRRF0IA8T2GIC/iOOihUk8YgUSOGBqmT
 7aAbLQt+MrQgoBNNrKA==
X-Proofpoint-GUID: OXorBYjxRkomZ-7wB00cZzaq_GNzEAQF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-30_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1011 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606300182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_120412_346234_4E5C80C3 
X-CRM114-Status: GOOD (  12.80  )
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

Add a node for the TC9563 PCIe switch connected to PCIe. The switch
has three downstream ports.Two embedded Ethernet devices are present
on one of the downstream ports. All the ports present in the
node represent the downstream ports and embedded endpoints.

Power to the TC9563 is supplied through two LDO regulators, which
are on by default and are added as fixed regulators. TC9563 can be
configured through I2C.

Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/shikra-evk.dtsi | 152 +++++++++++++++++++++++++++++++
 1 file changed, 152 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
index 5411f22426b7..b6d24fe5fb61 100644
--- a/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
+++ b/arch/arm64/boot/dts/qcom/shikra-evk.dtsi
@@ -3,6 +3,136 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
+/ {
+	aliases {
+		i2c3 = &i2c3;
+	};
+
+	vreg_0p9: regulator-0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_0P9";
+
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vreg_1p8: regulator-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "VREG_1P8";
+
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&pcie {
+	wake-gpios = <&tlmm 119 GPIO_ACTIVE_LOW>;
+
+	iommu-map = <0x0 &apps_smmu 0x0800 0x1>,
+		    <0x100 &apps_smmu 0x0801 0x1>,
+		    <0x208 &apps_smmu 0x0802 0x1>,
+		    <0x210 &apps_smmu 0x0803 0x1>,
+		    <0x218 &apps_smmu 0x0804 0x1>,
+		    <0x300 &apps_smmu 0x0805 0x1>,
+		    <0x400 &apps_smmu 0x0806 0x1>,
+		    <0x500 &apps_smmu 0x0807 0x1>,
+		    <0x501 &apps_smmu 0x0808 0x1>;
+
+	pinctrl-0 = <&pcie_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie_port0 {
+
+	tc9563: pcie@0,0 {
+		compatible = "pci1179,0623";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		#gpio-cells = <2>;
+		gpio-controller;
+
+		device_type = "pci";
+		ranges;
+		bus-range = <0x2 0xff>;
+
+		vddc-supply = <&vreg_0p9>;
+		vdd18-supply = <&vreg_1p8>;
+		vdd09-supply = <&vreg_0p9>;
+		vddio1-supply = <&vreg_1p8>;
+		vddio2-supply = <&vreg_1p8>;
+		vddio18-supply = <&vreg_1p8>;
+
+		i2c-parent = <&i2c3 0x77>;
+
+		resx-gpios = <&tlmm 118 GPIO_ACTIVE_LOW>;
+
+		pinctrl-0 = <&tc9563_resx_n>;
+		pinctrl-names = "default";
+
+		pcie@1,0 {
+			reg = <0x20800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x3 0xff>;
+
+			ep-pwr-en-gpios = <&tc9563 2 GPIO_ACTIVE_HIGH>;
+			reset-gpios = <&tc9563 5 GPIO_ACTIVE_LOW>;
+		};
+
+		pcie@2,0 {
+			reg = <0x21000 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+
+			device_type = "pci";
+			ranges;
+			bus-range = <0x4 0xff>;
+
+			ep-pwr-en-gpios = <&tc9563 4 GPIO_ACTIVE_HIGH>;
+			reset-gpios = <&tc9563 3 GPIO_ACTIVE_LOW>;
+		};
+
+		pcie@3,0 {
+			reg = <0x21800 0x0 0x0 0x0 0x0>;
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			ranges;
+			bus-range = <0x5 0xff>;
+
+			pci@0,0 {
+				reg = <0x50000 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+
+			pci@0,1 {
+				reg = <0x50100 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				device_type = "pci";
+				ranges;
+			};
+		};
+	};
+};
+
 &qupv3_0 {
 	firmware-name = "qcom/shikra/qupv3fw.elf";
 
@@ -10,11 +140,33 @@ &qupv3_0 {
 };
 
 &tlmm {
+	pcie_default_state: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio117";
+			function = "pcie0_clk_req_n";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake-pins {
+			pins = "gpio119";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
 	sw_ctrl_default: sw-ctrl-default-state {
 		pins = "gpio88";
 		function = "gpio";
 		bias-pull-down;
 	};
+
+	tc9563_resx_n: tc9563-resx-state {
+		pins = "gpio118";
+		function = "gpio";
+		bias-disable;
+	};
 };
 
 &uart0 {

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
