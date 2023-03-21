Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F08E3C74A5B
	for <linux-phy@archiver.kernel.org>; Tue, 21 Mar 2023 11:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bl/3WQHsVGTp/0KrM2ln1vEhSUVOPF9qyJVwx3mxdGU=; b=aWctugAX0IOP7/
	9qHq57S0cIk4ZWel3pVe10tFim4KP3fqF8b1Bjn7kXc8ULImHIsVtzwwwLWg83hzZDXXqy52kt4MJ
	BcMnZXgP7IMTy5QyxhESasFUAzYdv62BfMdKEC/wKaBms+WprMMeZjjL++AJ+NXLZckxTtCnmJghC
	DoVetA0WWeIRm1hEe1Ccz/WyHptvNj6lXFSuvEOr8KGKu1GNGAztscgp8ouhtGpwqVgFsvhVbygXB
	NJXfdrqbzZ1qdJTyBdK3cZ462ELRN7kBzTJ7P90IbYI+vdjETRUJ19ie0KlmzPcjM2c70RS+FuFqQ
	tcwN/QpU9qZGo6+d/dbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pea5s-00CByL-1X;
	Tue, 21 Mar 2023 11:23:56 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pea5o-00CBwF-1v
	for linux-phy@lists.infradead.org;
	Tue, 21 Mar 2023 11:23:54 +0000
Received: by mail-lj1-x236.google.com with SMTP id q14so751143ljm.11
        for <linux-phy@lists.infradead.org>; Tue, 21 Mar 2023 04:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679397829;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ER78GHh5meRUHq/j4G9iD3cSNrSOw2jr5A6Yqe49ido=;
        b=j0c1dNmNOiKvzn+MKcBDmz8oC7QduFqCJEGBELhkG3uwT8+MZWZT17Y9FN4BILwBIH
         e63eHVnmnphbJ1I38xl0RJW9U0SVjXbOR5Cp4j+6pb5z6yNSoG6in6y9QR15u28P0W36
         sSLFa0oSyUvfO3IFgYsqh0W8gjiXNKux4ozqYNhawqWTGKuPzplzosd3+vKTRqt418tc
         wrlliFQ6fErIuyAGgeVid3AEQwDpH6nE0xTc3OiaxPs2wXzHK11mj/dHk4NRef5BBjZV
         Cxcz8TsPP8HWRszymXdecLPajgRwLdVvFRU99tE4/VSCHiOR5tk9TE/1ciWHoTc1Pp4r
         7zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679397829;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:to:from:date:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ER78GHh5meRUHq/j4G9iD3cSNrSOw2jr5A6Yqe49ido=;
        b=L9zJh4Mfg1uuXoebN/tzrnYh9eoBhlzRcIXzt4aZz6qXZ1oQ+HoEmDWpFmXsZTxbHt
         iCAA/CrIo6or41W0a7TDo+er/E1WcO/t0an871YI+VAKjr7prntWbdVLQ1gj8WOeCCJy
         0LHGxwzTTltXPrL7CKusaa7DsTDAisRlNHS3VI8xJr0eST+Eqp1YWJ4lL65KB6rgOjdX
         0vfqVi7MtSlf85dmZmhWxuNM3SCLHanlA1AAOEzWgvjgr9hJxKSXOVFIIWPmDn8nnLlR
         wTtkQ9RyQzCTrCJvClJv2tnqEvdMHjNbHOMP6rlHyPDYbBjVpKU5uciwfNae1tXFrG8H
         ZLNQ==
X-Gm-Message-State: AO0yUKW3BOK7R3xOC5OjExiZ5Eir9V0BP5gmfKQn0xMQGibOvnD8ps4o
	+skO86cIacHVMz0xEjcCJuWbyQ==
X-Google-Smtp-Source: AK7set/mVbvLGeipIKw4ztCPoVgboNoFh6FukbmES88Qkm4XRAa6hcn/LLLdwYaDQ78cYiiZzuI9LA==
X-Received: by 2002:a2e:7c10:0:b0:298:592e:113a with SMTP id x16-20020a2e7c10000000b00298592e113amr768230ljc.6.1679397829545;
        Tue, 21 Mar 2023 04:23:49 -0700 (PDT)
Received: from [127.0.0.1] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m10-20020ac2428a000000b004b6f00832cesm2113222lfh.166.2023.03.21.04.23.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2023 04:23:49 -0700 (PDT)
Date: Tue, 21 Mar 2023 14:23:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: ipq9574: Add USB related nodes
User-Agent: K-9 Mail for Android
In-Reply-To: <644b4b0f17f72e109445a7b31f3e0d2e75dcc361.1679388632.git.quic_varada@quicinc.com>
References: <cover.1677749625.git.quic_varada@quicinc.com> <cover.1679388632.git.quic_varada@quicinc.com> <644b4b0f17f72e109445a7b31f3e0d2e75dcc361.1679388632.git.quic_varada@quicinc.com>
Message-ID: <122A5E4F-2794-43AE-8DAC-CC2D51279AC6@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_042352_709165_D58AEF7E 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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



On 21 March 2023 11:54:25 GMT+03:00, Varadarajan Narayanan <quic_varada@quicinc.com> wrote:
>Add USB phy and controller related nodes
>
>Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
>
>---
> Changes in v2:
>	- Fixed issues flagged by Krzysztof
>	- Fix issues reported by make dtbs_check
>	- Remove NOC related clocks (to be added with proper
>	  interconnect support)
>---
> arch/arm64/boot/dts/qcom/ipq9574.dtsi | 86 +++++++++++++++++++++++++++++++++++
> 1 file changed, 86 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>index 2bb4053..513da74 100644
>--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>@@ -829,6 +829,92 @@
> 			msi-parent = <&v2m0>;
> 			status = "disabled";
> 		};

The last device node is pci@28000000. Thus you are trying to add all usb nodes at the wrong place. Please move them so that all nodes are still sorted by the address part.


>+
>+		qusb_phy_0: phy@7b000 {
>+			compatible = "qcom,ipq9574-qusb2-phy";
>+			reg = <0x07b000 0x180>;
>+			#phy-cells = <0>;
>+
>+			clocks = <&gcc GCC_USB0_PHY_CFG_AHB_CLK>,
>+				<&xo_board_clk>;
>+			clock-names = "cfg_ahb", "ref";
>+
>+			resets = <&gcc GCC_QUSB2_0_PHY_BCR>;
>+			status = "disabled";
>+		};
>+
>+		ssphy_0: phy@7d000 {
>+			compatible = "qcom,ipq9574-qmp-usb3-phy";
>+			reg = <0x7d000 0x1c4>;
>+			#clock-cells = <1>;
>+			#address-cells = <1>;
>+			#size-cells = <1>;
>+			ranges;
>+
>+			clocks = <&gcc GCC_USB0_AUX_CLK>,
>+				 <&gcc GCC_USB0_PHY_CFG_AHB_CLK>;
>+			clock-names = "aux", "cfg_ahb";
>+
>+			resets =  <&gcc GCC_USB0_PHY_BCR>,
>+				 <&gcc GCC_USB3PHY_0_PHY_BCR>;
>+			reset-names = "phy","common";
>+			status = "disabled";
>+
>+			usb0_ssphy: phy@7d200 {
>+				reg = <0x0007d200 0x130>,	/* tx */
>+				      <0x0007d400 0x200>,	/* rx */
>+				      <0x0007d800 0x1f8>,	/* pcs  */
>+				      <0x0007d600 0x044>;	/* pcs misc */
>+				#phy-cells = <0>;
>+				clocks = <&gcc GCC_USB0_PIPE_CLK>;
>+				clock-names = "pipe0";
>+				clock-output-names = "usb0_pipe_clk";
>+			};
>+		};
>+
>+		usb3: usb3@8a00000 {
>+			compatible = "qcom,ipq9574-dwc3", "qcom,dwc3";
>+			reg = <0x8af8800 0x400>;
>+			#address-cells = <1>;
>+			#size-cells = <1>;
>+			ranges;
>+
>+			clocks = <&gcc GCC_SNOC_USB_CLK>,
>+				 <&gcc GCC_ANOC_USB_AXI_CLK>,
>+				 <&gcc GCC_USB0_MASTER_CLK>,
>+				 <&gcc GCC_USB0_SLEEP_CLK>,
>+				 <&gcc GCC_USB0_MOCK_UTMI_CLK>;
>+
>+			clock-names = "sys_noc_axi",
>+				      "anoc_axi",
>+				      "master",
>+				      "sleep",
>+				      "mock_utmi";
>+
>+			assigned-clocks = <&gcc GCC_USB0_MASTER_CLK>,
>+					  <&gcc GCC_USB0_MOCK_UTMI_CLK>;
>+			assigned-clock-rates = <200000000>,
>+					       <24000000>;
>+
>+			resets = <&gcc GCC_USB_BCR>;
>+			status = "disabled";
>+
>+			dwc_0: usb@8a00000 {
>+				compatible = "snps,dwc3";
>+				reg = <0x8a00000 0xcd00>;
>+				clocks = <&gcc GCC_USB0_MOCK_UTMI_CLK>;
>+				clock-names = "ref";
>+				interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
>+				phys = <&qusb_phy_0>, <&usb0_ssphy>;
>+				phy-names = "usb2-phy", "usb3-phy";
>+				tx-fifo-resize;
>+				snps,is-utmi-l1-suspend;
>+				snps,hird-threshold = /bits/ 8 <0x0>;
>+				snps,dis_u2_susphy_quirk;
>+				snps,dis_u3_susphy_quirk;
>+				dr_mode = "host";
>+			};
>+		};
> 	};
> 
> 	rpm-glink {

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
