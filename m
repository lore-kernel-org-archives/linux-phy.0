Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDFDC10F19
	for <linux-phy@archiver.kernel.org>; Mon, 22 Apr 2024 08:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/4xnYjzFs3CMTMKoZiNfh2VkK4Ke5UCRa2+wLLF2Bg=; b=Hny4y7asisZCc/
	yhlsWYCUBipD1ik0WKEXfHUeXdNt5jYipkL0K62cHoKzo9SH811zfz1bYuKGTuU+W9Ucc3yOWkgle
	PNclOg2DQ8ofkVUHMCpzw6lrNjM929Pxz9JqbiFLiM6cSglEn3V/Z6WRksLwdiEhg3oE8UymZVdrW
	YA/O5CBHpVuGfFFLMd5iZxPLuvQ4AgwuuVwU09IpnBabpBRwLYKB5XoFCUmDhmW1c5YFbwgP0yh/q
	qgb3YAoR4gj7TG6cTJbIjb581WDyZpempVIWP+NyDcZ1OE2fmn2C02tVAkLqQLLizVu0U6W6RRDWX
	NKKMj43F4i2uJ45QuXkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp74-0000000CfSJ-4C0O;
	Mon, 22 Apr 2024 08:33:23 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryp71-0000000CfQN-0uES
	for linux-phy@lists.infradead.org;
	Mon, 22 Apr 2024 08:33:20 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4196c62bb4eso17917735e9.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Apr 2024 01:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713774797; x=1714379597; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLRaymjKldV5Ae25ez2pVEwmOtAjv9LTg0zkuha6uuU=;
        b=LGdKmx4skmcj+3rkOlg4AY3hztCastZR/GTUYW+inSETuj3U2ktoTLSZJbcr4rWWIL
         +r+dE7v5byzXix1jNBV8f8cUIGHnUsy4beXnkHHGtM0uOBmBjEqoCm42wfes4wLAo6CH
         k/StjFHUcejHVm8XpSgH+QmiO3hdIQbX2us4o8QfkImrLzGuXwKgthqu92fZrfbQWQJ2
         GdygHKg43EKxDxM2NDYApiQ4NhPOxr/b74iDLjkqyNcjjAKAA7Zjy6sIgIkBkOlAc5DP
         QdhzT7Q4j1TMeMYJvBw0LTowxd+1MBB8ER3OC1gd1Jh87mRUrK3JQMuAySS66+YJpRrR
         F1wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774797; x=1714379597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cLRaymjKldV5Ae25ez2pVEwmOtAjv9LTg0zkuha6uuU=;
        b=AOzjYgOZLFtDdnsTE9Sy9o3EPae12eSTv11X2YxbzqzuKJs0r2g60K/edOIMSsnKg3
         J2/Isp8Zc8VKUHbHG3JrQ/dUY5kALewc2sypq/H+wt4Ga6BDsgq8lGO5AFxBmiREphJf
         OWewFAFkh7VfLVZCCHa3lhH2h+waZhMh+buvu2Zq6lLNYxCf8InpaBPm3vZN0FeO5wiM
         NIYrWA+VfS6TOYFYEnhmGjsOa3Od2Ds1Vfw1OHNftM4WSJvacErOzuGGAWULNdtwziNa
         INXi8dgzi00pn3S/CdkuZ8Tnqayb90/ygWUdK9XKq7euYzfSMFyORFqma2JZhrNyfMni
         c44w==
X-Forwarded-Encrypted: i=1; AJvYcCU8qwrDfh3Ar2Zxc6mWDftQ/6ALrvRGc40GqV8NnKVqoXBVEp4rL/lQvwEAQbY8CYE4gMKmeTcAg2eeqEuJgOcQLp45cfuB2HlXc8wOnw==
X-Gm-Message-State: AOJu0Yzj2dZmzS4oBTh1Aw/vZbymSRQ99LZ8xNyo4U93nBpNlCtXuRYW
	ODR4Oj6B2PthcPkEHN24xKY+p9Do8b4LygWH7wnK4lPq8F/1FYMPBp5e/owU4Gw=
X-Google-Smtp-Source: AGHT+IFHAw4FMhpEGmtTQ4MMTPUbnYOSy9z5mJuHiv3zra6VJEyRQ6AFD+8qUVa54j5166hugk0F9w==
X-Received: by 2002:a05:600c:c1a:b0:41a:68a5:b2c8 with SMTP id fm26-20020a05600c0c1a00b0041a68a5b2c8mr943929wmb.35.1713774797226;
        Mon, 22 Apr 2024 01:33:17 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c1c1300b004161bffa48csm15978786wms.40.2024.04.22.01.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:33:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 10:33:13 +0200
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-3-799475a27cce@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2488;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zQpxV0djrOiwPxhRvSgIUZn7ViHWbqTnSNjH4kOd7u8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJiDJ9xmje0GQO+nI5+7LeLoATi+T2Zb/zhTy4IU2
 sGW6a++JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiYgyQAKCRB33NvayMhJ0X8BD/
 9yQh5mmI6X23M/e5p+c8PjwJeVfqTbT/t6SwpivBvytndYSZ5J4914WV5BC+c3zegKWfNTmpICsrEX
 9p6wC4liG1cUo3Y25/lH8rvUMiKMLSlK01g6dd5gkNds+e54dTsa1Ca8EahAm+pxQF5jOxbssl/VTB
 +JWwgUIA5jdN1RnO+5ZPbaMF+blg+uJVk8lXAb8axKd3TfLiVtZ+ReUQtsHmw641U/ZT/lG6fZXu6A
 34YJmKKD/u+Z18DmTVOCcb0TAkYkylPizUGsY5s1KW7GNtPldbg3vbinHgEe6OgCInkvcxqPrNh2Xx
 G1F3t8JFKIeBjFZWE2VSIMlUXb5kcfmnmpxRvHVfXqn2Y4lta1lV5BvbIRZKvucx6ffqyVB+aKEjMA
 7cQYR7PSFbDyUW7ULg0s5L4IuYoZTIYf7lAohQSRgAlqxBoe+5QmVG/fbHj2YwGpzBcz26241ziaQl
 YABQD/wF8l6xo8maf/Vl/jNhdO3rgukn9R5awTQG788ccmEAMayprgsJbxl0zWNOUOve++wByjlLT4
 wH4V2gdz4yR3nvnzqWTN2Pt+DxpcdEak2cnALMO0c8L4NhlS96AtrmvPcPKD8/LkuHZKWYchp1RgO0
 bGbXVL0LXslZ+uwP48mJaHFOVkQQVIlVNYhmSEpDUxB6TpT1I9sNvCQEShNw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_013319_358341_7EBBF725 
X-CRM114-Status: UNSURE (   9.94  )
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

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index d04ceaa73c2b..ea092f532e5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -641,10 +641,6 @@ &mdss_dsi0_phy {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 4e94f7fe4d2d..bd87aa3aa548 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -835,10 +835,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 8e0c1841f748..658ad2b41c5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -60,11 +60,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -758,8 +753,8 @@ gcc: clock-controller@100000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2467,8 +2462,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
