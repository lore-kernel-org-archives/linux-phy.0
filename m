Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5290C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yg52AsTytXDe23rpwuZGXIzUFXwz4fnzONp2RTR5y9Y=; b=CaAc85rCDkIHy+
	w8x9TYEjm21CaTKRk/730jlJjUCJ2rMEO+S3XLSZrmSni1H8WCDphMqibHGEFoYQfMtKqn6OkIEpO
	6H/29dOqt5BIZIMBymZPsisHAhIolqoMe/9FaQTwxFXC8Z+6j5vcBbCAjL0Vpq4s/Ac7Muje54Gya
	NqHkVtBKr3XlIRba48n6mgY10XO/OMWNd4tK3JhWJzfbzQRQL4wdcU3PrHyVeg9ihdxzK9/uRvkpu
	YH2hsVg/qSZulWjsay1Gj4X7hdYbKla/eT1yBLjLMxelKulRoPEx5KJeysZuu0i2s8k6Ri1BBZ8dB
	Zx3ameTzCk4RSgCn3kzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpQ-001sYk-1M;
	Wed, 24 Jan 2024 07:37:44 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpN-001sYB-2I
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:42 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1d6ff29293dso34332205ad.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081861; x=1706686661; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKf4wr/PhU8C8jJcjTd70SR5SaHAZ16yhIfEOdFxtCU=;
        b=GYyhKhNDV+tye+kWnsC2tMOBh+TOp40ETfeb911LKzwEZzEjBfrNQceIL+8ELEliuw
         mivwUCfLOmO6k6Hypz3Jh7Y/qnGXk6f+j29OVQsnRKl1O+NYpoVjxFNCF5m3LFBNkJL/
         9anldNPxAUbnGJwx+FUXdjWLQOi5prUYqFKuJa5bGzyW+x3T6V3BA5zwRlQsa05Yoqiw
         KeXPGBlgPF+xAbu1RYPQMSEx5ny+r5kAGGWNKoKRUbU/F2CnveGu8aLgkN1Jsobc+RbH
         RpjOZdtyg6+uf9OKTcTzj6XSd6cUP1EanWxKl4dUEh9248sM5lnu2t31aUx9GsOyRjq5
         ow2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081861; x=1706686661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKf4wr/PhU8C8jJcjTd70SR5SaHAZ16yhIfEOdFxtCU=;
        b=CuPcmy8JaKcAMW1DYMdF7LDFMsa9JqPEWWuZ3Lsl+B2icWZ5p6Xwo5kg574fQKxZa7
         Hh/e8wRIlJstWuxU42QRwat4jy8/ISgP9a9IHavzs5mRhGuJkxKSeW3cLrsDk+bcB0ek
         Kv0n0A61TMljuVfSOmsxgPTnN00lAk0LZvA+70lu6rxyukxv3VYG16Vz9+E+L/A59OwB
         owTBnEbKBOvcPASe1DR3EUr3k1pApSfvkWhaoHtYq6QJsK96G2HfJv3UGu7QyMY98sZW
         DOvyKxj/xxFJNzVczGUke0DIDOCpiU55Fwr3Xu8d8JlRADD9Ak9Gtj+wc2mryxM2St/W
         rCCA==
X-Gm-Message-State: AOJu0YzH7Ztsx+jlOPVmKYX2U422OMrSP+7jEAzHxQuvngBiv4UkPkmA
	OJBpveWK/iWYL4aUNcgnr4b16sZSl7P5Pvjo9tzp0d2md+2mCUUZojkCLCDGXw==
X-Google-Smtp-Source: AGHT+IFzkjDdfXVH1eFhiSZ/tTh3VQLR3Zc4fY3VVxilv+uGwzMM7MRyx1ANpgPtt9PStovNzoxI6A==
X-Received: by 2002:a17:902:d34c:b0:1d7:17ce:cc5b with SMTP id l12-20020a170902d34c00b001d717cecc5bmr300844plk.133.1706081861253;
        Tue, 23 Jan 2024 23:37:41 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:40 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:39 +0530
Subject: [PATCH 11/14] arm64: dts: qcom: sm8450: Drop PCIE_AUX_CLK from
 pcie_phy node
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-11-d8a4852b6ba6@linaro.org>
References: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
In-Reply-To: <20240124-pcie-aux-clk-fix-v1-0-d8a4852b6ba6@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1078;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=q4REQuD/EeSNLvb14a6jAbCKy8un8bWTNayXDrd2sPM=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4FuIFWugJBxWD5/8i6mcSozobTq0w7ntmVL
 VXJIpEnfTKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9QAsB/9WNzb2oQg0/MVu/Ww+cCD6j6lVrfmW+ehkb9jNlHHSOJbLRlu3JI1T39wTq26klASZlbZ
 +7h2sNu4y+h4T1zNFyxE+sqhAXkOkO4E0wiLMcFaDg2Hh2YOnAC2wMe5ieylobU/Oy33OuJCMTE
 GqSttxJ8dfRJjr8Ks9tH8r02I5kPEGjwHaOg8d3YzlddoOyM8ywBOFiTMHNcqNj6nk+J8FylhvB
 lY96HKZx28DIjqFR8z1vQ2ft8VlwJgjXfK/u2ckDV7GYilXZM9PCSY6Jn2b1tpeVsr8HJR1RGuH
 uCMB1vw4LnwteK6iPQABiiocCqFgYw6wNNC9cZ0mPbTgubXw
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233741_755063_729149FA 
X-CRM114-Status: UNSURE (   8.88  )
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 01e4dfc4babd..1e0091dabaf1 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -1830,13 +1830,11 @@ pcie0_phy: phy@1c06000 {
 			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
 			reg = <0 0x01c06000 0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
-				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_0_CLKREF_EN>,
 				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_0_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "ref",
 				      "rchng",
 				      "pipe";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
