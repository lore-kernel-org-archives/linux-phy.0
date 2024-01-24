Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4694C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlVqtpfDSN7Kk7DJ1GH9lRDK7QGaVvgdXtJFzNzSdiA=; b=B8mMBrDPX9KBHZ
	xttnugxbxXRq9r1sFYkj5edyj18f1VT/F0JwxYMr6eGeCueVg+IpEDNtVIdO+liboL0W0WCiP2Sq3
	cf2ZStkKyEBBGd6gvo1a/U4YwN3Rk6qXra1+XpPsauslpewR5NzDunAkfZMIC5wwrC03UZiMl59BU
	PvuLfKattWi7Arr8KtQAd3wHf2ZEJbkQfzpUctptxikdGq/Lzdda15O/iY4xvRKK5PxWU7/Iu9dDj
	cTPkTk+3zlwgKldZs9Wzl77k2T/rSKciV7e7rOGaXWkWN81kCy5TM3/8mgdH3vK4hu6WE4WAzmGcI
	MRe7LoR0TTJyNGSMZKow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpE-001sVS-0i;
	Wed, 24 Jan 2024 07:37:32 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpB-001sTd-0E
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:30 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d51ba18e1bso46528685ad.0
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081845; x=1706686645; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CXDDfi064rCtRThZJZGkVDjzRTpEFvKlRw59+OoT04Y=;
        b=rgKLLV8ZtastS4Jz1aqMeS1Hr5hu9wa/w9sSbFTNNBMyYlkbdkkorxmTmhIHH9y9sn
         SqarHUZe3c9UXu4YCFzc+m8KC12D/QUvYDvoI0QESY/KmLRYZWe/YNya9qwOn9Aux8TM
         l8VagOLBOLpNweFgosTtl7F+M8WfG1rr9NESw491rBw6PWfxqNUe77n5VQhdLsnNznR+
         ntv7AXMAqlYYUznAdxJdA8BoHpDPCe9ZHQD5FQJ1oEp2oFgSE9a1+oSTiYRO7dGPzN5x
         EwLgDaUDQGQgffOqMZZ4dm6OAVDOQ4qt1v2fSHEb+zRWgVnxeTi4Vapy5WI8nqv1T8fG
         1PTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081845; x=1706686645;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CXDDfi064rCtRThZJZGkVDjzRTpEFvKlRw59+OoT04Y=;
        b=tfP4Ck2cTYcLbXWVpT498itSU24+1kpXoooXeM+k/R6WDCtjUocDzz5b30e9ui9YVt
         ip/abfplnVaePR1jqlvd36kHTIb1dd8hHIizu8PhHtasZjDrep/7r17z+HVCK7w1G9l/
         41ljjtqz8jelFrDy0CJUKhfjLu9aqJb4tazWbXbEv2jhBQxd5hZdzSezP/PzU1kaiQgy
         9Ep6UZEAUJYRGramscR5JD9iYelvyQwhP56PuYxv5uUq7J7Cmz7g/QXQeXXcE9p2e+jv
         oVBNtJaP66b0NYw06gGRBapmDSKhXX7UQuAB0N3h4ECAqsEkk3GjH2sYNkznSjTOybfL
         LD4A==
X-Gm-Message-State: AOJu0YyEp4JwLKbFZvVMeFzHuIUHfLq8iHwIPN+vS5XmiNiF8hlOLUC7
	eizCxnpaZPijG+JOPs8nX7BFCNOllC96fW/i5xE8ZsHrFFzkOXI353vh3s27zg==
X-Google-Smtp-Source: AGHT+IF99KK54fuqFFMfmzqMybtJrANjExFeTmDyL1Qt8Q4Zi7bMzYpz82W5D68CZj4gDoCyRGD5yA==
X-Received: by 2002:a17:903:1206:b0:1d7:5b9a:c121 with SMTP id l6-20020a170903120600b001d75b9ac121mr632265plh.20.1706081845404;
        Tue, 23 Jan 2024 23:37:25 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:25 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:36 +0530
Subject: [PATCH 08/14] arm64: dts: qcom: sc7280: Drop PCIE_AUX_CLK from
 pcie_phy node
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-8-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1245;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=xQGmJ609x5rY5WnQZu2UiuYBmCFSMa/qh9a8EVqrblk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4E35ElitvKxvgn52B7cnJz0JUaxM9PnNc0A
 YZLT3RUs1+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BAAKCRBVnxHm/pHO
 9WzEB/9AWVJHzHB6yiYRzLzH5QMJyCI3Uey/WEyC9zrlInlCFP8ttR0TRYGIqNPMtlsudajr4Gh
 RwpC8CAwS3A4Jf0oosP/6RXE1zNUfu2UjlcdqwOOxHs8AHMNKKM3toEfV0hFTdMklLboKyoEpgW
 sj2l+ax0lyo1k2+nMyO9dzjY/ydeqp96BnCqc+N/TRwcJ3md0oC/ZejQjOYqewn84720yaqyduf
 kstWJuleC/arnJeAq0oQL/W/vG4KnHN0bm+4Do+Ab2t+dKkViydZvkDALc8juNUZ0jUrVUJ5ndh
 KHNGEK7XglGMRE/SqBmQdOXjH9s7XvhAlHttDhKii90je4kW
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233729_111285_D6AB7A55 
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

PCIe PHY hw doesn't require PCIE_AUX_CLK for functioning. This clock is
only required by the PCIe controller. Hence drop it from pcie_phy node.

This also warrants a new compatible as the clocks differ between SC7280 and
SM8250.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 83b5b76ba179..00fa14777417 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2238,15 +2238,13 @@ pcie1: pcie@1c08000 {
 		};
 
 		pcie1_phy: phy@1c0e000 {
-			compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
+			compatible = "qcom,sc7280-qmp-pcie-phy";
 			reg = <0 0x01c0e000 0 0x1000>;
-			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
-				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_CLKREF_EN>,
 				 <&gcc GCC_PCIE1_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_1_PIPE_CLK>;
-			clock-names = "aux",
-				      "cfg_ahb",
+			clock-names = "cfg_ahb",
 				      "ref",
 				      "refgen",
 				      "pipe";

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
