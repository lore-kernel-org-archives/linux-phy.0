Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C75F0C7EE45
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRJIT8/IevmwXDesqqNte24pmwQOTWWxV0APhoVvLBs=; b=Tpim+ZcGxn1i4K
	2QXmvTIYMgWXq4aMbMaIEvhOzmlTXEUsS8y4WKK3xCQFq+IHGsI0oLID16RrEjtBo4kRhp88oqCr6
	4RLRLVUQ8gAm7EZivkWt4lR5WNBh3z4kTDfMP8e5Crk3U5vXmMSuv6sTBhKYa+mubnTcXqVEtR+VA
	mEaNzcRbsHR5kMAeUAOQCmpExLVaAEVIsP3iYA4gEOc62rYCjKpIR3PzXbgdXsQdt57Y7hVbnyiOy
	pDEJQ8sl3ZaZhe6QnsI2KuYy2GV2JuBihOsNYZEfvME77U0cJ/tFtb4uq3N5CEicHwYQR4+QajPG0
	/BIWpjTrw9H5H2M7yV9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnn-003HY9-1I;
	Mon, 12 Jun 2023 09:25:31 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8dnI-003HCO-1x
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:25:01 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4f629ccb8ebso4672007e87.1
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561899; x=1689153899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GgOU29bwSmA1xmnYvgN48ffEdaMQtMdjrdVTUnvg0aY=;
        b=vyX9Q+kD9G1p5rZ6oHppIAZRDTqqLuaLmmx8ER/1w9clbWGVKsqSzOZIssSGm8lUKA
         dlBs3V+g8fkc6+a3VNSEJc5CAKqMBwCpBJobp58ZPlkjDf4gYm8MeEiyGt0H3nYapjdU
         rLNaG8AWbRv39nWwT4gHrrsq2bGBt/mjyDGKhCQVoeiOFWfkZWRsJ8TQOz31yUf3AvL5
         nw3BwJ8ocxS+TzBLzPUgr5JBsXuA1EbH4qK8yPDA2P/kQJF+Z+Aujhld1mA4LMr+t/W/
         D+y18SR7STIM5gSDK9/lewz4exGG34D7uUb6LQAITMMCYN23tDt0IYL700rjOgmkyHSJ
         iMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561899; x=1689153899;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GgOU29bwSmA1xmnYvgN48ffEdaMQtMdjrdVTUnvg0aY=;
        b=X93wihF4E38UBQCOgPfs0r/TpEzKrp4DTm9VsVvAuh0IJXT7qNTNKD40o3mSiewVIT
         FOtco+mysc3i3V4B9F42zVKtqoe5UIdYJwhx6eNuZdltkExWKO2CHx/xUOc0f/+8rTZQ
         A3hVUhUoNNHESPUWXgbShrOgLX/A+tdH10z1VsGtD89t8XYfdqo5IMJG9P1lvZWS2eqX
         hMnW3QBk/W8VNYRVjKTVqNJuWsrXEQODm/AgMhNoHnuuubepGN2bIa0Ejas4dWegcg1S
         fXRlzlzeluHbaeNuiHkpdIBpG88Ib97JgCNJJ2q41Mj1pf0/JmYIwEAYK8vkaXy3XzAg
         Lj/w==
X-Gm-Message-State: AC+VfDwOwBUThO0m/vHAl9fNNddI5ahGqLDV5UNu4Pv4m+q4S/KqzvM9
	Fo3B0Tsyat+IkBbQUT1wjPE7yg==
X-Google-Smtp-Source: ACHHUZ4zEjuyJv27H7TYosddbPT1hcVmJ0AeF5dGbiGkRiAcC5SK9xkn5i3NEKXynfbxTRLbQZV0aQ==
X-Received: by 2002:a19:6550:0:b0:4f4:b218:e85f with SMTP id c16-20020a196550000000b004f4b218e85fmr2780825lfj.31.1686561899243;
        Mon, 12 Jun 2023 02:24:59 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:58 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Vinod Koul <vkoul@kernel.org>,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 23/26] arm64: dts: qcom: sa8775p: add the first 1Gb ethernet interface
Date: Mon, 12 Jun 2023 11:23:52 +0200
Message-Id: <20230612092355.87937-24-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_022500_644629_8D68C6B7 
X-CRM114-Status: UNSURE (   8.53  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the node for the first ethernet interface on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 30 +++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 0e59000a0c82..f43a2a5d1d11 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2315,6 +2315,36 @@ cpufreq_hw: cpufreq@18591000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		ethernet0: ethernet@23040000 {
+			compatible = "qcom,sa8775p-ethqos";
+			reg = <0x0 0x23040000 0x0 0x10000>,
+			      <0x0 0x23056000 0x0 0x100>;
+			reg-names = "stmmaceth", "rgmii";
+
+			clocks = <&gcc GCC_EMAC0_AXI_CLK>,
+				 <&gcc GCC_EMAC0_SLV_AHB_CLK>,
+				 <&gcc GCC_EMAC0_PTP_CLK>,
+				 <&gcc GCC_EMAC0_PHY_AUX_CLK>;
+			clock-names = "stmmaceth", "pclk", "ptp_ref", "phyaux";
+
+			power-domains = <&gcc EMAC0_GDSC>;
+
+			interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			phys = <&serdes_phy>;
+			phy-names = "serdes";
+
+			iommus = <&apps_smmu 0x120 0xf>;
+
+			snps,tso;
+			snps,pbl = <32>;
+			rx-fifo-depth = <16384>;
+			tx-fifo-depth = <16384>;
+
+			status = "disabled";
+		};
 	};
 
 	arch_timer: timer {
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
