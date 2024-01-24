Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36012C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCbKCaTEPNmScfM11Y9oKyaZb3u715SbiVghiU7xU6U=; b=XWJZqvYEQruTeG
	JEW17hsA5hRbAVMw2WCkRv1xGNl3NgkugLbB212/roqA7h5PSHsO5JaSfvq8A5ClPLEDZ3JSsZwj0
	XsZg13xzvLu14Li2MT1glDb0HW5yFRusA/oDmaKEsFjGbhwS52ZyzlGu36FSpC11cMra+X3dSixhf
	q75LV36vi4n+jR/xuP6zOAgkix02QiM+uJv7Ux4XAqMyo8ZqynlIkMncyqQ70AVS2wL7sX5QPXKno
	cuQQvztZDlfhHy7sQn9mRbpIoosSvi57fveTW/PtGaUoFCJaZu10I2eOwJCm1oUJ4h1iIybWn6iXq
	aH2qKUtIWDvy3Vt5EJDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpg-001sdS-2V;
	Wed, 24 Jan 2024 07:38:00 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpd-001scd-1e
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:58 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1d7232dcb3eso23411245ad.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081877; x=1706686677; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DJs+PMBAGDBvXkVQNcVnd/NTo5VAtnKOcQ/VzO4TVvE=;
        b=eez2ef9GWUDXoM5CjcRJpmZC4IbxbkpK09bkVaGFE+SV8wvtYD8vkXpNjXeijNMOwi
         GCfSk6PhHH007DERwC/H+TtT3p/C6uEqPpbfBiZMkDTn62CRPKvenHo3RjoOeUVEH5f+
         k8s882iWN9f/+WCleEbK4eQ2AZI67cg/gx7m2yNU33mlHFBNhVZXxiA5RPdtQcOnvJno
         bTcRZ3Y6Rg8ulHDh2zU5CvGK5uZQSxst9YXNAMoZyuNpjGtsA6wE2zAu3Lg1vwXtAsEP
         T53lkq5HmzkdPZpgK/fL/at1bNoBw8Qbj6f7l3gjrkZCH2ZmgldSV/EHU3/ugsNRUbpT
         19gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081877; x=1706686677;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DJs+PMBAGDBvXkVQNcVnd/NTo5VAtnKOcQ/VzO4TVvE=;
        b=sY3nQvnJnHQSOHgGn3GhEFb3dJy7GU6uEbPVVidh/7MYdDLYU/4IRzgyIkAzTfM11t
         ehCTlV2BFcDQpUgYdgrkAra3n5xkmWdjaUBeJrc3+/DAhwAevzI8RIwCqir0aT47/Qyp
         2gMf4DMQe/81J6/PKpJpIYp9SvCLj9KgVXVnguu6epQhFXAQ04mThgC6MgjlJ+o78Isk
         RTJFusXLKIDFppr2K+wolMaNfh2fWLgqQwnkzFS62IUPkJ9O638FOJf/LXoaZLFJ0Ayd
         Ed6ipy4rs6IeJ/JjrdAtZQPIHuhLfFE+cEisygDb7cMW1svc/zCnXMTsdtZ5kMgkuEyJ
         eliQ==
X-Gm-Message-State: AOJu0YySSby/9HtPJuOaFMerudN7MOfdegkcu1MQyAmP+xVrSL79n+WO
	2h5WAhVsicvpIK1iPoBkZPoNFwg9ChxnVV07C6sUcHXji8BUtrz7pn3Rui8KbQ==
X-Google-Smtp-Source: AGHT+IEE2l1wj9BXbay2mDG16hgBi9RNBmfBy9y9+PIFIVWJ/aOh9+lHuObbBTLFHE3YbFHRDrktmQ==
X-Received: by 2002:a17:902:728c:b0:1d7:199:cfb3 with SMTP id d12-20020a170902728c00b001d70199cfb3mr292163pll.70.1706081876913;
        Tue, 23 Jan 2024 23:37:56 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:56 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:42 +0530
Subject: [PATCH 14/14] arm64: dts: qcom: sa8775p: Drop PCIE_AUX_CLK from
 pcie_phy nodes
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-14-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2114;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=AV0AQVKEuKDRIth7QZV7qLd22LfBtighoMaozbvkXAg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4Fhhiw+ROelMo4VRCj1+Kx7T9cS2AThYZkc
 DknKia3ul+JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BQAKCRBVnxHm/pHO
 9bthCACRQjvyFRVJy3hTYxwCqypCA959YVl640Spi+/5TQUxSwUS5HOza3ZjI6ZCE6ZAV0awrPp
 Ma31wRRoKSgL0QcvLroRMpG1W5pN5E1/CJq/7joMoTGV0Gytn1w4fGIB6/kSXkiPqOPMbNMCVFF
 Ngelg4E2chxrplR8oOICcl/mKuhw922a3poiiA+oCWhEqfmYWYYtsF2apAswH19tebHdmBaK1SZ
 R6CuqE5X5TaD+C9YLOpC2/R0IwNZhXa5IF44UqN+Z2XWohLPbBrvLIpcPH81pLIQtrGgFaeeM8N
 gbnY/iNcmWsx9j3N5iilOXhEMCW5MWYCIzifzYfgmlKRHqBf
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233757_546755_E8BAB689 
X-CRM114-Status: UNSURE (   9.11  )
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
only required by the PCIe controller. Hence drop it from pcie_phy nodes.

While at it, let's also rename "phy_aux" clock to "aux" clock and move it
to first entry to maintain uniformity with other SoCs.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index a7eaca33d326..b99626c52800 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -3590,16 +3590,15 @@ pcie0_phy: phy@1c04000 {
 		compatible = "qcom,sa8775p-qmp-gen4x2-pcie-phy";
 		reg = <0x0 0x1c04000 0x0 0x2000>;
 
-		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+		clocks = <&gcc GCC_PCIE_0_PHY_AUX_CLK>,
 			 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
 			 <&gcc GCC_PCIE_CLKREF_EN>,
 			 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
 			 <&gcc GCC_PCIE_0_PIPE_CLK>,
-			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>,
-			 <&gcc GCC_PCIE_0_PHY_AUX_CLK>;
+			 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>;
 
 		clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
-			      "pipediv2", "phy_aux";
+			      "pipediv2";
 
 		assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
 		assigned-clock-rates = <100000000>;
@@ -3690,16 +3689,15 @@ pcie1_phy: phy@1c14000 {
 		compatible = "qcom,sa8775p-qmp-gen4x4-pcie-phy";
 		reg = <0x0 0x1c14000 0x0 0x4000>;
 
-		clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
+		clocks = <&gcc GCC_PCIE_1_PHY_AUX_CLK>,
 			 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
 			 <&gcc GCC_PCIE_CLKREF_EN>,
 			 <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>,
 			 <&gcc GCC_PCIE_1_PIPE_CLK>,
-			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>,
-			 <&gcc GCC_PCIE_1_PHY_AUX_CLK>;
+			 <&gcc GCC_PCIE_1_PIPEDIV2_CLK>;
 
 		clock-names = "aux", "cfg_ahb", "ref", "rchng", "pipe",
-			      "pipediv2", "phy_aux";
+			      "pipediv2";
 
 		assigned-clocks = <&gcc GCC_PCIE_1_PHY_RCHNG_CLK>;
 		assigned-clock-rates = <100000000>;

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
