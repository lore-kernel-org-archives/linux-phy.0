Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB21C64EC4
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yyxfDbknkiiA/HI1L6MBNhUXi+7ZBpdh6WEAtu4CbeY=; b=pzIz4vBdKqAyUq
	5XzAlIgb0Zb2NQgWPGtaZB47U4Heyk/XuydF0ZGdpNzmVcutRIoiGCoCxnF3rkFmmS8Etr81Ad3Rc
	xkG86cuKg3m+aiMtz4F10N7oHB+Ykk5eKznLZAIBwCQHHDqEH6APZHToclORPzyHP8Z40D+spgXJf
	9WHR32zKwH/j5j+IIpW4N4X6U7ekYyYTi/YXw7K+sWYJvgHEd5cgSlOQzLHzWjK5aDGe3yQcxdiJX
	3KrryJ5Cs3HSOw6meeKgpb6kyb7EhDZ87pwlKuacue6igldnLPDxU2gHVZtCe6V8eLW8T1qpe2A6H
	YjAh91KehG1XKIpb7Iqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7v-00Csfl-0k; Wed, 22 Feb 2023 15:33:51 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7s-00CsdH-8v
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:50 +0000
Received: by mail-pj1-x102a.google.com with SMTP id x34so5921363pjj.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+9Sxg1sb41EUH4zAEeTtmCUVlAMIKcvxnijBOORmOY=;
        b=jlL9hkETSqXMCQvndvSYrxt2mtvIg+fQFVKMaFTHa4SB7e13POZ94FVzUYgK4CkUPc
         q/gXBN1CU4Pr4YfbVlwNfBnbSL7DcwyrdEy8OiAkbntBoeJqAlLuOWwP+5/6LqxvSVpU
         cQvUjKbI1/fXQzZZaDT4QttRFik1azUSoDVKVz3unFqI/Dh/yFP9l7Gc6pLiZlo55Ikq
         SgOALd1loK34qUMP788zXbxc9Abe/YCN8R1Lu3YVcxpg6WQl9JiZDq/pbBYf2OWd4CjV
         56Cazi3+t8EC15m9MsKHmFHJ42lEgh+pwhXLewFl54ri0vwFagXTlVKsYfxTET2Z+9sI
         YaSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2+9Sxg1sb41EUH4zAEeTtmCUVlAMIKcvxnijBOORmOY=;
        b=Mu8J8RIlbAmVHium0+hZwBmLUwXgoooXTj3mtu2OzymW3adub+iz4UDU9HhaBzMGFa
         hU+0bJ48Em2Ox8LDBtP9ZoUEw1D5W8fjLEh760w6/sJmkhpakSkaS1pbAUt+MEDYcnN2
         T707DqaRrRjFTXWK2c50GMLOrjU4qwcTYK5fqc7Q9IrQVvLNxfvGPyqxyIu13bnsyTlV
         XUhp9F3IYzTwu2SSp7btAmejrYSyQXReJ1TR7Lh4XbIRRxqrmq0Qr/6v4CMyiATxf1Y1
         8F0IPdg28a9WdWf3xx9+GmUmM+oMx5o+06mmSnaCTqASBTb/2hG/TmPzWuPgLGqET6hf
         FLpA==
X-Gm-Message-State: AO0yUKXfbUjonWmgQsWRNvtKctHoUYGrboph+MlSfT7/q719jsNZIwJm
	j5t86gDQj/PUBSNwnRMIQch6
X-Google-Smtp-Source: AK7set+4JXdFNp466/OKLnsE3IvPEtUAHyclH/pPDs/H4vtCDnL2xEkVW/4LZOiSybtPhrEqOCUYGQ==
X-Received: by 2002:a05:6a20:430e:b0:bf:d67e:5517 with SMTP id h14-20020a056a20430e00b000bfd67e5517mr9458405pzk.42.1677080025381;
        Wed, 22 Feb 2023 07:33:45 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:44 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 08/11] ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
Date: Wed, 22 Feb 2023 21:02:48 +0530
Message-Id: <20230222153251.254492-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
References: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073348_331713_5C5C186C 
X-CRM114-Status: UNSURE (   8.41  )
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

Enable PCIe RC support on Thundercomm T55 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-t55.dts | 42 ++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55-t55.dts b/arch/arm/boot/dts/qcom-sdx55-t55.dts
index 7ed8feb99afb..fb5b9264077c 100644
--- a/arch/arm/boot/dts/qcom-sdx55-t55.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-t55.dts
@@ -242,6 +242,23 @@ &ipa {
 	memory-region = <&ipa_fw_mem>;
 };
 
+&pcie_phy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
+	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
+};
+
+&pcie_rc {
+	status = "okay";
+
+	perst-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 53 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_default>;
+};
+
 &qpic_bam {
 	status = "ok";
 };
@@ -265,6 +282,31 @@ &remoteproc_mpss {
 	memory-region = <&mpss_adsp_mem>;
 };
 
+&tlmm {
+	pcie_default: pcie-default-state {
+		clkreq-pins {
+			pins = "gpio56";
+			function = "pcie_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio57";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-down;
+		};
+
+		wake-pins {
+		       pins = "gpio53";
+		       function = "gpio";
+		       drive-strength = <2>;
+		       bias-pull-up;
+	       };
+	};
+};
+
 &usb_hsphy {
 	status = "okay";
 	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
