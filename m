Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126F6C54E5D
	for <linux-phy@archiver.kernel.org>; Tue, 19 Mar 2024 10:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAV0vIiveuj/KYUCyg44NAR5Xm7/+s7vU3ommmnu2pI=; b=lcmqiQZaqXyZu6
	kXeY6+RXrnKuY7mHTcyESrrn067gHVLGoJchINPuL2fTZ6GySD/wvCT+ix7tqlAt+2lfKCqWQ0tQN
	8ssUlUZ3w2sWmf5YEtfCj6JDUjH/yq55GVE45rhxp9k59CRtrYNA+SnE9g3N1DsIzzXZbGhI/wM3R
	gv4Xcklw91m9tS9OAujWDqe0bHLOcqVq9bQmjVFx/MmtgYCERGtj8bAzgVvm/nME1ZWp68vXM8+AW
	E/hANhXPE98NqC1SPRBveJU6jeJ9+v/8Qz8Yi3TPCBa1R/NamhUuiyg0RwFnAz7VmY14r+gzoNQzR
	meYb510tO/y7+tGEViPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxu-0000000CLOb-26jM;
	Tue, 19 Mar 2024 10:45:06 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWxl-0000000CLGh-16GQ
	for linux-phy@lists.infradead.org;
	Tue, 19 Mar 2024 10:45:01 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-414689ba80eso482305e9.2
        for <linux-phy@lists.infradead.org>; Tue, 19 Mar 2024 03:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710845086; x=1711449886; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KcCFlDSNEFtoMH4ZYLS7c8L9gm9nhZvpG39nlVIAzsM=;
        b=yEv5FAOpDwGHTDr2lUw9QtzJZSDCS++oduiqv+8f1rsCmx77TRxbhNrahA/Mbmpoc4
         K0vDjLV43PzgMPfvcw96CbKYEBemnAlaYmh3cNI0f6aVGC+l4DXVi5YPsue8xfaEIRQ6
         MYdwtlRVj/UyprOpeQ3WPT4uYqlD3afAWv5T6AFVqXjkGxxRJ3DvJvel3YdOxLyubGdG
         k8qKiYGindsNbLfC8RSxrFcRq+85dx4cJRsgzuXMSaRLWIiy+HKQo2wDEGdUAftdH4w+
         AhnTtoCNGN++JgbKwZSjCkWF5p/7NmesPENEsll0QqviLXmLDUntkphSScl4iwoQr2jd
         9RkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710845086; x=1711449886;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KcCFlDSNEFtoMH4ZYLS7c8L9gm9nhZvpG39nlVIAzsM=;
        b=RnTDTq7i77yseSVvgVjYB2eyN212TbhVAizgJ18837GFRfXF7i9M6+WCEpyzw+TtoV
         Z/yLKjHezIs13zQZ0c65O9+Su8eRkxs7zCzrBwMZ7qSxea956YyyfEAl1dj1x32Ranxc
         Hn+HBEHN70DztcrWoqNvT/ZUcB3I/l3vzfjDfOaZLwc1kWNQPmY7y7t69rHIunNHlUs7
         RWzZb1GILPMlf4FocNzwBM6SpKFo6kSz6vLCtNQ10l24i3RHtPuc8HmhU01/YArZofuh
         3NOznYkQB5Oz0+BBQKDJap5lAYqsPrKy8I1aaYRceJYeCcbsBS01DuMalUqnrGWXTwl1
         7jjQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5EuXRgLaQLgSHCYJZ1se6A6kklN4TGqWJCEtoYdmNgxrlfMf4ejlU74uqRqAjj6zK5KolIMfN0gY1tcDVQvxbDX5SOgpFPcg8Bw0tsw==
X-Gm-Message-State: AOJu0Yy06ZQpcHqrDjQiS+i/TXW/xjwGqozZ442wQvg+mgvhX4x3nc9i
	6CmACdxtfyKsw/A7vr7DkuYhA9EmEY2D7E2ja49uoaLcATaBhElWa2l+aJd9iwU=
X-Google-Smtp-Source: AGHT+IGgC3joZ9SNi4vPETCkXKlOcafq5dmogQJtOOsU88NpKN/dbbbiashGUrT444nIasUFcRj9aw==
X-Received: by 2002:a05:600c:4e93:b0:414:22b5:c32c with SMTP id f19-20020a05600c4e9300b0041422b5c32cmr1509952wmq.37.1710845086023;
        Tue, 19 Mar 2024 03:44:46 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4d45000000b0033e03a6b1ecsm12029459wru.18.2024.03.19.03.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 03:44:45 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 19 Mar 2024 11:44:32 +0100
Subject: [PATCH 6/7] arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
MIME-Version: 1.0
Message-Id: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-6-926d7a4ccd80@linaro.org>
References: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
In-Reply-To: <20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3132;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=tPydKqk2YSla66EnZFuqclyzKir7dE9KK2iKURNVrUY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl+WyWIIf6eAULGJi+KYMNFWeRDbZQecFnv0jc1Bih
 YiqNcQiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZflslgAKCRB33NvayMhJ0UKIEA
 CREHuVTxqFBzS8w1qctN3Q/TWUi+O2WvULNAIc8TrdkVKqYE1zi/eslMXMTM+vyA3GmXSwKoj+JAbf
 1PivkwHl6csnRWJg32j+EhYkNTxnvJvett9F88fOBTOadAKJSz9jc00GAVTSpeacugGoqNiSZuAG4j
 gG9+DZuBquLDamG4+EV1t5RI9snBRluKJMXOg9VWtUVmiNB8zfecdlNVctAkKpO/nm1rqo44C7A+vM
 cz9AAiIooCYmJDe8DJYGj+SYNnrdw+EFmlQk6tViRJdfChs11bQQEPsv7ePfCOz9uABN+DIkaIL4ks
 vOP8lPHakyl+3RxOGFKs6znQKGB03qnqvpvHZwXAz/3J01GEKyK6mX/ajlqYqRl7i31Fsm0sfW5XLw
 ulQ09aTXg7lP3IA7PGY18/9aW5p9y2FRPKuVP/QNIQkoa1+NYmWcn7C0gZRp1iVrurbnfXfLmBubxN
 s/vN51Y5QYVDu40QgS6wmLHanpQSvVqq+A7i3u/Rj1ClpNKM9WVgC1PcKT2MB1Bs0TYrjT1aM95WCv
 w2VTCUGpaA7zjwi0XdCBaTwZb9CyK3Y6UX9H9t97qZgUSqlN5ww1cOcIdVVnz7qYxraXsCvglFSZEH
 3Jqc8o2shaZ7eZ2wlDqHWqWvSWIXEVSRFUl8+UX04hJ893SqiLyAJApiPIng==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_034457_436351_4571C59A 
X-CRM114-Status: GOOD (  11.10  )
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

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  8 --------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 4 files changed, 4 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 12d60a0ee095..ccff744dcd14 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -979,10 +979,6 @@ &pcie1_phy {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pm8550_gpios {
 	sdc2_card_det_n: sdc2-card-det-state {
 		pins = "gpio12";
diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 3d4ad5aac70f..1fa7c4492057 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -739,10 +739,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 92f015017418..da3cfa697969 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -810,10 +810,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	status = "disabled";
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
@@ -907,10 +903,6 @@ &pon_resin {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 3904348075f6..c74455dfd354 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -58,11 +58,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
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
@@ -776,8 +771,8 @@ gcc: clock-controller@100000 {
 			#power-domain-cells = <1>;
 			clocks = <&bi_tcxo_div2>, <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1906,8 +1901,8 @@ pcie1_phy: phy@1c0e000 {
 
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
