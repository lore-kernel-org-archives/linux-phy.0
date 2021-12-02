Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96E7BC2BA4C
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeLJICHD18pYQoew6ijbvDQ4l1vqFZLrpYC7f5bNpvQ=; b=YHLm5lp/Xfjz1h
	PtvbOQRjfJL7QCl9aqmudcpNbSjB1NxaJNmiPxQzFGmRLTeNhrVHauZqi6UDLQeadHB9ht/+/RLBc
	woTMOBzpr7/0eU5Qn2L6w3TOT8Yoy1/WWLYGEHWu7DmgXkTYJhfXWT4hFOdZvNH488rRxqYY4G7Fv
	ZMPRj4YBR8aPgyDCilnv1Xh8AlrS1/9CY9FADRWbqonhnsRA2UNAcDpW4nQ9iGklNvO2GK3rDtiTW
	PH8d0pBAp8GkzQNTCY0oQmaz8cldL9LZOvPNXvesUsBDB+PhU8mn3dBOzpLGYD6tZlcZ9FQ1V59wY
	6V6P9xWmhirhqdLonAzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuU-00CWwS-Kg; Thu, 02 Dec 2021 14:18:06 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu4-00CWiE-9I
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:41 +0000
Received: by mail-lf1-x136.google.com with SMTP id m27so71780385lfj.12
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6/zIL8YkV/d4nljUzUQ3EO3Yb/Px31H+9eOQZUkZows=;
 b=yFe3VIuDiF2HeloldqKDVzEA4IYkyMvccBtnEUiRlVCBG+YvE05TW4M2c20kJbDm+s
 8Sj18A/VD1MiiETWVrxjxSyxttfnozdB6IGJnds1W5Cn/O9WXv8rxwfriZbwimetLoDr
 yZwiO2W4P6C2pHGJP1gdhk4Hfg8OTMwDvgKC6sxee3s0T3L6aXxZG/2kgrFLWxK6UvWi
 PCrby6iTedngcnfU4RpLf1A+eyx2eXeGFOzmPBA3PCR4qnoZ9yLP07LorD5gVz1B3L04
 NvqHvQNn5dto5rbxz3Hrb9sepTZxbNBA6Myik8umQV9ubPqKrCuiHGTdATBBwUWRP/Ps
 clug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6/zIL8YkV/d4nljUzUQ3EO3Yb/Px31H+9eOQZUkZows=;
 b=H/Rj4nbWGoiBPRK70NxHUPFzRMoXftf+7ENN2ebMEzfAdIsCG3rVzqM0eksMvo33oO
 cBR+1r5XcQoz4lA5ZTHR5JqCa/KBhogYFMVEMYl0mTevYdVgkhTGDhdkPi+L+xjkLtVz
 ygA3oy+1sPnbgqdNPnsOIsSoRCdifJqOqqAiwjy5hr4thn0VcHTTdk0NnhQrmmtRx3O0
 BLs76ISn9QtY3+p5temHdrJSMGs3aily1gbuL/+p4oNw04oHpRLijv5rEVSTfKxYTuV3
 8KFaWoUPB67Djhp9dHxvt3IR9KcgoNaGseeQ/lPRqtTUGrzViKiulxDuoANUB6d13+Xk
 a+hw==
X-Gm-Message-State: AOAM530ALvfGYvM1aDLoKDOpItF8DikPsdw4mPITOhxfHIsgwwE2CJmq
 tiLTB9Jm605EgNrekld1eK0SbQ==
X-Google-Smtp-Source: ABdhPJzvu6wYr/1+YToSts0ncZnkplVB8E/G7vfYGcl3krUyERz6LIyDpd3Ry/OriVXwMgIMXaa6Rg==
X-Received: by 2002:a05:6512:a95:: with SMTP id
 m21mr12552889lfu.574.1638454658759; 
 Thu, 02 Dec 2021 06:17:38 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:38 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 07/10] arm64: dts: qcom: sm8450: add PCIe0 PHY node
Date: Thu,  2 Dec 2021 17:17:23 +0300
Message-Id: <20211202141726.1796793-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061740_385212_F65BBDFB 
X-CRM114-Status: UNSURE (   9.78  )
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

Add device tree node for the first PCIe PHY device found on the Qualcomm
SM8450 platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 42 ++++++++++++++++++++++++++--
 1 file changed, 40 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 3e1279f5114e..4e825291839a 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -550,8 +550,12 @@ gcc: clock-controller@100000 {
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-			clock-names = "bi_tcxo", "sleep_clk";
-			clocks = <&rpmhcc RPMH_CXO_CLK>, <&sleep_clk>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&pcie0_lane>,
+				 <&sleep_clk>;
+			clock-names = "bi_tcxo",
+				      "pcie_0_pipe_clk",
+				      "sleep_clk";
 		};
 
 		qupv3_id_0: geniqup@9c0000 {
@@ -579,6 +583,40 @@ uart7: serial@99c000 {
 			};
 		};
 
+		pcie0_phy: phy@1c06000 {
+			compatible = "qcom,sm8450-qmp-gen3x1-pcie-phy";
+			reg = <0 0x01c06000 0 0x200>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
+				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+				 <&gcc GCC_PCIE_0_CLKREF_EN>,
+				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			clock-names = "aux", "cfg_ahb", "ref", "refgen";
+
+			resets = <&gcc GCC_PCIE_0_PHY_BCR>;
+			reset-names = "phy";
+
+			assigned-clocks = <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>;
+			assigned-clock-rates = <100000000>;
+
+			status = "disabled";
+
+			pcie0_lane: lanes@1c06200 {
+				reg = <0 0x1c06e00 0 0x200>, /* tx */
+				      <0 0x1c07000 0 0x200>, /* rx */
+				      <0 0x1c06200 0 0x200>, /* pcs */
+				      <0 0x1c06600 0 0x200>; /* pcs_pcie */
+				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
+				clock-names = "pipe0";
+
+				#clock-cells = <0>;
+				#phy-cells = <0>;
+				clock-output-names = "pcie_0_pipe_clk";
+			};
+		};
+
 		config_noc: interconnect@1500000 {
 			compatible = "qcom,sm8450-config-noc";
 			reg = <0 0x01500000 0 0x1c000>;
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
