Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4278DC001E0
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jul 2023 10:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrFZlQZhaZ0rhOvS1sW6ziHOyVo0dp4g/PQfgk6rM84=; b=pqcqUjH71wMn8p
	ugK8vrhnJpNyUSlazhZXGtFbUt0QXK/Rjfl5GQKemzFojO30ahW1YulewuYZFacXkduu9Zbm0EArD
	vK5eK3F7S+ZHA+9plBVJ5pymSsjLHm7QU2B5RrOxHTCZ3znp+vl8a3RbhDOLcxu6/G06vl5k8KjWI
	h3xTMVnm3cbWZWCSZgwmb4w3MWtFbOf2/rsPVzsaSywYcbq9QMP6wnQIlKNtTFf4Z79Hs8t5k+yjd
	pUdTz17PqCrgFzhfnvL0fJYMfvV9a+9LLugb3f7C/XMdkNHiQ5xYJIbjZ2NYBJ/WdvvN3xxODgeir
	FRtY8fUm/mvuVewUFmmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbL-00FCY7-2z;
	Mon, 31 Jul 2023 10:58:11 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQbH-00FCTu-2v
	for linux-phy@lists.infradead.org;
	Mon, 31 Jul 2023 10:58:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fe1489ced6so6961914e87.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Jul 2023 03:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690801084; x=1691405884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bZRgfSSrzz6I6o+XZ66feGQwXVuILV3m/obdiDjefEo=;
        b=gMpsbXcwYEJ+bPbo29dE1ijcRV5MdPVFiUjBKqZsGNtSj9cgaMOuTMUIVbgneFbgOu
         3V5tqMNX9/fH6TpgBCIBRKNfT6QhMMdJSb2G8do9RkpM3CelnHUmswkRNBJoKoJpIsFp
         tOo0d12ib7Dpm+e5nWv9P72xwRsi0E175EibKvorF5nbpv9uSYcFiD7wpMWCPiBIVJzU
         5604Qw+vlEav0LsUs5Vlj7FgEfZ0OnEnb1YWZWdW0PqzdkSfqMlRO6Pshw2XU60L9FJ6
         YbmlUN4pBotscLAT3dTII6SZak6Q4BNB/k409YjNL/V0/gcfCyLC6TJ8FW7VoF+AeYiI
         /Xvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801084; x=1691405884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bZRgfSSrzz6I6o+XZ66feGQwXVuILV3m/obdiDjefEo=;
        b=GCpcuFc7XKkHjCFJ4KhS0vJmKoGZyKGr/ziKP8Jfv84/aVYKSFTEm15bCnlonE7w3T
         yAFFjRrfSvfImz6Vc/keuwx/JCt8JF3dg4PnC97j/79JqqwgZrKoqJ6W6jSixFZ/xJUV
         UzE+NKncEk1hb6hD1X56NlNaGtNvsDU5f5dQJVGVrdFPEPrxtC7/1BUOzu7p2ciMNnPE
         3j8axoSmb9xTfEfv6Fd5bG5laaOt8npR2A66lNtfbT/PBkbBp23tOApQ4N4glPArXe4V
         qYjqt29Lg9mZW6iyiXBky64HFKeymTrO9OiMhnI76G3l16/Aqthc07gtB3N+BoiUta4o
         OmoA==
X-Gm-Message-State: ABy/qLa7txEhpDRGIAHxXTZ25H9TbtGzSIGUFhUgC5nyJ7sXJbgtCTgi
	XDScYCDudb7u7/dWBcKRVbIFvQ==
X-Google-Smtp-Source: APBJJlFubF3ODBSZOzTpnV1vuPl1dGzRGRTqOy8f56GJW6uquleJL3BTJNQo40mpjDU52HkyGpqfyw==
X-Received: by 2002:a05:6512:618:b0:4fd:bdf8:9326 with SMTP id b24-20020a056512061800b004fdbdf89326mr4870721lfe.67.1690801084116;
        Mon, 31 Jul 2023 03:58:04 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c19-20020ac24153000000b004fb9fe34c27sm2025497lfi.92.2023.07.31.03.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:58:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 04/13] arm64: dts: qcom: ipq6018: switch PCIe QMP PHY to new style of bindings
Date: Mon, 31 Jul 2023 13:57:50 +0300
Message-Id: <20230731105759.3997549-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
References: <20230731105759.3997549-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_035807_946169_83285EA6 
X-CRM114-Status: UNSURE (   9.45  )
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

Change the PCIe QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 32 ++++++++++-----------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 47b8b1d6730a..3c8a2f4e26a3 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -278,33 +278,25 @@ qusb_phy_0: qusb@79000 {
 
 		pcie_phy: phy@84000 {
 			compatible = "qcom,ipq6018-qmp-pcie-phy";
-			reg = <0x0 0x00084000 0x0 0x1bc>; /* Serdes PLL */
+			reg = <0x0 0x00084000 0x0 0x1000>;
 			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
 
 			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
-				<&gcc GCC_PCIE0_AHB_CLK>;
-			clock-names = "aux", "cfg_ahb";
+				<&gcc GCC_PCIE0_AHB_CLK>,
+				<&gcc GCC_PCIE0_PIPE_CLK>;
+			clock-names = "aux",
+				      "cfg_ahb",
+				      "pipe";
+
+			clock-output-names = "gcc_pcie0_pipe_clk_src";
+			#clock-cells = <0>;
+
+			#phy-cells = <0>;
 
 			resets = <&gcc GCC_PCIE0_PHY_BCR>,
 				<&gcc GCC_PCIE0PHY_PHY_BCR>;
 			reset-names = "phy",
 				      "common";
-
-			pcie_phy0: phy@84200 {
-				reg = <0x0 0x00084200 0x0 0x16c>, /* Serdes Tx */
-				      <0x0 0x00084400 0x0 0x200>, /* Serdes Rx */
-				      <0x0 0x00084800 0x0 0x1f0>, /* PCS: Lane0, COM, PCIE */
-				      <0x0 0x00084c00 0x0 0xf4>; /* pcs_misc */
-				#phy-cells = <0>;
-
-				clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "gcc_pcie0_pipe_clk_src";
-				#clock-cells = <0>;
-			};
 		};
 
 		mdio: mdio@90000 {
@@ -756,7 +748,7 @@ pcie0: pci@20000000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			phys = <&pcie_phy0>;
+			phys = <&pcie_phy>;
 			phy-names = "pciephy";
 
 			ranges = <0x81000000 0x0 0x00000000 0x0 0x20200000 0x0 0x10000>,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
