Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D4B1C47422
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jan 2024 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4jAGHF8zlXMKgPN16JCgMEJhUaRopjJ26V0glxAEIM=; b=JKITQPORkWy0xt
	7iXrtr4YvWD5B9gUVNi35KFzrb/8eTUrfw97jWlv2TmZ7hcfNI7zymkqh9vaK26zXmS+o8FUH6B5Y
	0RbpauOXR9xmPY41xGIi5zv5sBUmCJdggHBvzlYEuateW9LhjXKDz6XyoeKGZ34jOxbHrMmNXB5RH
	UYTyEAY1LhK0o6bC+1XCnMpKCpzmSGH+tWOdWOCI8H1pyVK8uXtDN01EP9Pd7725YUCZUux9HYShG
	voIKpihBn3RfKdP57BFKR6B+QD4QUHU4SJoqsqLoxfJBs+DojIzTKSkCfvjv369fo/xWhCg1kuAs4
	3YI1rdpJ1fMtCDw//auA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpJ-001sWw-2C;
	Wed, 24 Jan 2024 07:37:37 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSXpH-001sUy-1b
	for linux-phy@lists.infradead.org;
	Wed, 24 Jan 2024 07:37:36 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d74dce86f7so24707725ad.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 23:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706081850; x=1706686650; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7tKk/gUA2vZt4YWRFyEnjgkAtVvTsiFIxZN8q5DEuUk=;
        b=GasEa2YYE68hGMQwjdZLd26vWDP/6vA2EYLYK5nfLNqrjwDZTWdjrNnJqUdiQGV/Ui
         T7ZnjtyiZ2xNGlVBBqOCNsq+tDb9eMNkvvK5cs8JRLlGX5pB7fyD4VHBFQ8yFHuMI9Qf
         IgYThHMG9OjJLNx5cZSz0Z8WeWmCXBoPb12OiqJ8UJOZqGxIF/Qj8b/pMtZVPvATivV1
         KQ9uGIa6L9cJBZQgIQtSW1aY8Mxpu7Xb77T7NMtxscAHuVs5Mcl1qVs4m6RYPiAKLbnH
         3r1o+DlXu9LBer5BuQg4yB57yK0Jq4xUY3haPYFenxaaV+enllFwQiLD2BmpETS/ku2G
         uEjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706081850; x=1706686650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7tKk/gUA2vZt4YWRFyEnjgkAtVvTsiFIxZN8q5DEuUk=;
        b=FM82tGjy7JS2wsJUaTKDfjVKXaMuRGMoBGyAYBpVSQ1pAcBHNyvb6g6+le1Q76SSRr
         LZ89BO1HPeaXlpmJYXfnYPCRCh28ZaiEC6/r0at0sllFM+/mUnaUA5lICgl2iMdcMaR5
         +cFGIgfpvMklMQL6gY9iDnvemInFSEFxVvhM7CFbDbV6Z+hXEFQMk/CoFXnRQkps4Taq
         5RsrxLPu5inLJeaJilRVdvChuoKyUOoxkEoN8lVPf/PRU0IBVdsyV+f/DaOBnvlea9Sz
         f+0HY4iVRudD0w6aEj7Uj71VaBLkIy4WsE/dGEHHxKkJGXZyxRRwV+OqocURAjYme4Hc
         VWJQ==
X-Gm-Message-State: AOJu0YxLjxUavOmFFSPmtf+y8YtqHemUXjtZxg5qiCZUXmAEvLN8hbkE
	j0Wrjzqk6OuxJYnF1TvwWv3HgTaUj70xeg5T1G4vQNEv51BL+Wmdtf4zBLHocw==
X-Google-Smtp-Source: AGHT+IE5gSR9S1hNumT5Gs9vRn/HrJ2yq2svOakpJLMn1E1SeeC1nBHi/YQbyiTo51gPSYVY5Nv8ug==
X-Received: by 2002:a17:903:492:b0:1d3:d27f:77c9 with SMTP id jj18-20020a170903049200b001d3d27f77c9mr390645plb.14.1706081850722;
        Tue, 23 Jan 2024 23:37:30 -0800 (PST)
Received: from [127.0.1.1] ([117.217.189.109])
        by smtp.gmail.com with ESMTPSA id t3-20020a170902b20300b001d726d9f591sm7386982plr.196.2024.01.23.23.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:37:30 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 24 Jan 2024 13:06:37 +0530
Subject: [PATCH 09/14] arm64: dts: qcom: sc8280xp: Drop PCIE_AUX_CLK from
 pcie_phy nodes
MIME-Version: 1.0
Message-Id: <20240124-pcie-aux-clk-fix-v1-9-d8a4852b6ba6@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3664;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=5NPwNoYz985HYek6uHJDI/5wY+uuiyXnKa4opvBCJj8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBlsL4EVGO3TtV6DQzvJ/PExud2tothVXBlk9nJc
 KgeDCk+AGuJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZbC+BAAKCRBVnxHm/pHO
 9ae/B/45By/VPGVbVxv8n0z7xSGfU/JGiMFrTjUS69Gmsob8PF7fxftlTWwZCLkrUgIuJRBzdkb
 ZkHzrSGbdR0j2Foxfp/j51A4pVzGBC45wverE1WOVAm7SXjE1RiAe+KFpN70Jnciy0gDs0voIsC
 I8h+my8LE3a9yTp9A2F0se8GWbdtNlTIXQLB3l5n1QNEohi+6AaJMXKXo2RAZ0T91aPbtOmcn9z
 tkxrffCFt8jriWYRyJB7Nw1aHfs7LoWB70dND9G+MqYRK9dMhufB9K7BXZgQniBJZ9xkoe29Tzt
 jJRaUqkSIdQFvvfxsXfrJN5i+O0TgUj8StTbu76AE2zXoRtv
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_233735_533712_DFB3A6B5 
X-CRM114-Status: UNSURE (   8.11  )
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

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index febf28356ff8..cc33ef47d5a7 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1785,13 +1785,12 @@ pcie4_phy: phy@1c06000 {
 			compatible = "qcom,sc8280xp-qmp-gen3x1-pcie-phy";
 			reg = <0x0 0x01c06000 0x0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_4_AUX_CLK>,
-				 <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_4_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_4_CLKREF_CLK>,
 				 <&gcc GCC_PCIE4_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_4_PIPE_CLK>,
 				 <&gcc GCC_PCIE_4_PIPEDIV2_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+			clock-names = "cfg_ahb", "ref", "rchng",
 				      "pipe", "pipediv2";
 
 			assigned-clocks = <&gcc GCC_PCIE4_PHY_RCHNG_CLK>;
@@ -1883,13 +1882,12 @@ pcie3b_phy: phy@1c0e000 {
 			compatible = "qcom,sc8280xp-qmp-gen3x2-pcie-phy";
 			reg = <0x0 0x01c0e000 0x0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_3B_AUX_CLK>,
-				 <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_3B_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_3A3B_CLKREF_CLK>,
 				 <&gcc GCC_PCIE3B_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_3B_PIPE_CLK>,
 				 <&gcc GCC_PCIE_3B_PIPEDIV2_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+			clock-names = "cfg_ahb", "ref", "rchng",
 				      "pipe", "pipediv2";
 
 			assigned-clocks = <&gcc GCC_PCIE3B_PHY_RCHNG_CLK>;
@@ -1982,13 +1980,12 @@ pcie3a_phy: phy@1c14000 {
 			reg = <0x0 0x01c14000 0x0 0x2000>,
 			      <0x0 0x01c16000 0x0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_3A_AUX_CLK>,
-				 <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_3A_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_3A3B_CLKREF_CLK>,
 				 <&gcc GCC_PCIE3A_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_3A_PIPE_CLK>,
 				 <&gcc GCC_PCIE_3A_PIPEDIV2_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+			clock-names = "cfg_ahb", "ref", "rchng",
 				      "pipe", "pipediv2";
 
 			assigned-clocks = <&gcc GCC_PCIE3A_PHY_RCHNG_CLK>;
@@ -2082,13 +2079,12 @@ pcie2b_phy: phy@1c1e000 {
 			compatible = "qcom,sc8280xp-qmp-gen3x2-pcie-phy";
 			reg = <0x0 0x01c1e000 0x0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_2B_AUX_CLK>,
-				 <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_2B_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
 				 <&gcc GCC_PCIE2B_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_2B_PIPE_CLK>,
 				 <&gcc GCC_PCIE_2B_PIPEDIV2_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+			clock-names = "cfg_ahb", "ref", "rchng",
 				      "pipe", "pipediv2";
 
 			assigned-clocks = <&gcc GCC_PCIE2B_PHY_RCHNG_CLK>;
@@ -2181,13 +2177,12 @@ pcie2a_phy: phy@1c24000 {
 			reg = <0x0 0x01c24000 0x0 0x2000>,
 			      <0x0 0x01c26000 0x0 0x2000>;
 
-			clocks = <&gcc GCC_PCIE_2A_AUX_CLK>,
-				 <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
+			clocks = <&gcc GCC_PCIE_2A_CFG_AHB_CLK>,
 				 <&gcc GCC_PCIE_2A2B_CLKREF_CLK>,
 				 <&gcc GCC_PCIE2A_PHY_RCHNG_CLK>,
 				 <&gcc GCC_PCIE_2A_PIPE_CLK>,
 				 <&gcc GCC_PCIE_2A_PIPEDIV2_CLK>;
-			clock-names = "aux", "cfg_ahb", "ref", "rchng",
+			clock-names = "cfg_ahb", "ref", "rchng",
 				      "pipe", "pipediv2";
 
 			assigned-clocks = <&gcc GCC_PCIE2A_PHY_RCHNG_CLK>;

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
