Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B694C77B6F
	for <linux-phy@archiver.kernel.org>; Mon, 10 Apr 2023 17:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRqExt74bHkjesPjkPJ5cLR1Ta2sMPPc506jJn2mYWs=; b=BKrUyT7gzu3EyL
	wHVEpbjE6fPZBboA6WGHe5Rgy059yrmSuj/lDMJPKFs1NTh7udWMsIrLYg6hQSq5pGB+5KiNoz3ZL
	IKALlMYPuzl1VI50Ce5BEv0AtrlZjP5eav7Jg65aLoq8kHlUm/79yVYMbAMgD0MuzVEFJ4I9LSo0K
	R2243zH3dVnFXGIgG6kbx7WYtphdFn8T0P4Fh71JBK0Y3nHzqFd+YLO6dnlXjx98YxaKua9J7iohb
	4q2KTAzK3+bU7Oxyb1lyu5rvGSfz3xlokI88vjREwwagb640yFbAWxjiuPygLzwLEuW69PonDP3/O
	OJCdyQ4xrJF2XvVfSvQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1plv2J-00FcRH-34;
	Mon, 10 Apr 2023 17:10:35 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1plv2F-00FcPg-0v
	for linux-phy@lists.infradead.org;
	Mon, 10 Apr 2023 17:10:33 +0000
Received: by mail-pl1-x631.google.com with SMTP id o2so5180397plg.4
        for <linux-phy@lists.infradead.org>; Mon, 10 Apr 2023 10:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681146629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pNoQs5qOgvjqSthHiZStB/bBkE2Kj3/X8lWJDBkoV6Y=;
        b=jfTLQRUATkVI4UyXndhSZTFq4zka6G64hOkBEPE+GI1vSBNS5Us/TQ2tHz5QvQu4mx
         Ty/CfI2LgqkSLgX6K1DJO4/KZLljzu7fa6xy7GOC4+se1ipi0QqDN+0FS15p30NmmZz9
         KpIgt6CsdtUli9qTwpp68fj2nZCf0yPurZZ6JceW2q5MzYbicYHXeIUxMHLGkKnxF1vN
         JmqOp9P4FKwM8WZA09dqNPaaUSf5sEXXCEk30D7nju+0grg7rEL9e/vOa0xFun9dYNYN
         ZJpJys8sNs3h3IoTwxp1offubQ/ly9LHrGk8Jpy5qUUYWjfyZl6fLptT6smU3XPcUi2E
         sUHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681146629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pNoQs5qOgvjqSthHiZStB/bBkE2Kj3/X8lWJDBkoV6Y=;
        b=YPeOYlUttmcGzoyXLjIfdcPYr61ClFy6hWr1l/bioydoyX9NN820kzqpANXX/k+/n3
         Nm/Av6oGeLVjuuGbJZp1xJLt1upOWJhQqbRQJjQl+Bn0tnT5fTlNlfmOFVPvfCTnk8De
         FOYtxPpJORCBeB7ZnvWXZPMbWzBzV1U34YZ/rLUe6PmDx8Um251D1T2wQVAvEc7rEOw+
         VK+/4+g+koJjcrhS5DUF79OY6TECSQwQPI9EsHU9y3xkVxRE/v7tpb6cWWkxxrghrzIK
         35mQ9JBGOmFmUgd1YnvfP2SwE3o4hqTJhxQUjztGulCjmf5pixyO/k66qzxqQz34vakB
         TCjw==
X-Gm-Message-State: AAQBX9fpquR/2dKN5BK3vspE4k8b/92aES7ukqk1xuQJbFID3r8zSlzU
	bjbN8j7KBcd8K04+bUIf7V0DEg==
X-Google-Smtp-Source: AKy350Z+Yv1n0ctaOMR7TjVcAmZKU+AeThDZl/VfKw0+mm/6qA758RJtMnSRdxl6YXfQyLf7oyWN6Q==
X-Received: by 2002:a05:6a20:1452:b0:bf:58d1:ce94 with SMTP id a18-20020a056a20145200b000bf58d1ce94mr17024279pzi.19.1681146629454;
        Mon, 10 Apr 2023 10:10:29 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id q11-20020a63cc4b000000b0050bc4ca9024sm7187818pgi.65.2023.04.10.10.10.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Apr 2023 10:10:29 -0700 (PDT)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org
Cc: agross@kernel.org,
	linux-kernel@vger.kernel.org,
	andersson@kernel.org,
	bhupesh.sharma@linaro.org,
	bhupesh.linux@gmail.com,
	krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org,
	konrad.dybcio@linaro.org,
	kishon@kernel.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: [PATCH v8 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
Date: Mon, 10 Apr 2023 22:40:10 +0530
Message-Id: <20230410171010.2561393-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
References: <20230410171010.2561393-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230410_101031_323503_54262BF7 
X-CRM114-Status: GOOD (  10.37  )
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

Add USB superspeed qmp phy node to dtsi.

Make sure that the various board dts files (which include sm4250.dtsi file)
continue to work as intended.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi          | 29 +++++++++++++++++--
 .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
index a1f0622db5a0..75951fd439df 100644
--- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
+++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
@@ -242,6 +242,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 2505c815c65a..b2ea8f13e827 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -651,6 +651,31 @@ usb_hsphy: phy@1613000 {
 			status = "disabled";
 		};
 
+		usb_qmpphy: phy@1615000 {
+			compatible = "qcom,sm6115-qmp-usb3-phy";
+			reg = <0x0 0x01615000 0x0 0x200>;
+
+			clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
+				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "cfg_ahb",
+				      "ref",
+				      "com_aux",
+				      "pipe";
+
+			resets = <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>,
+				 <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>;
+			reset-names = "phy", "phy_phy";
+
+			#clock-cells = <0>;
+			clock-output-names = "usb3_phy_pipe_clk_src";
+
+			#phy-cells = <0>;
+
+			status = "disabled";
+		};
+
 		qfprom@1b40000 {
 			compatible = "qcom,sm6115-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b40000 0x0 0x7000>;
@@ -1101,8 +1126,8 @@ usb_dwc3: usb@4e00000 {
 				compatible = "snps,dwc3";
 				reg = <0x0 0x04e00000 0x0 0xcd00>;
 				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
-				phys = <&usb_hsphy>;
-				phy-names = "usb2-phy";
+				phys = <&usb_hsphy>, <&usb_ssphy>;
+				phy-names = "usb2-phy", "usb3-phy";
 				iommus = <&apps_smmu 0x120 0x0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
diff --git a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
index 10c9d338446c..d60cc024749b 100644
--- a/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
+++ b/arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts
@@ -280,6 +280,9 @@ &usb {
 &usb_dwc3 {
 	maximum-speed = "high-speed";
 	dr_mode = "peripheral";
+
+	phys = <&usb_hsphy>;
+	phy-names = "usb2-phy";
 };
 
 &usb_hsphy {
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
