Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00CCDEB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2MbZSnfuaJ2t8cmAzX/URY5wLXvv0J5Rhzdmy1W2Ek=; b=akJMmLku1gVqrj
	0BTsLjcGUVht77TXdlNoqSm+X8zTaZKwy3o+B3w96wxTLSeb0oK65LeiQUOlZ0+aTjlXNNXF61klf
	dQRo1dNz4rJIBamxojzTafh1LG2cir0VXvr6Y+s7RM9bdUanZU2Jl8rDgJur2Jy7M96qFROs4LEFo
	WZUHFYG9Snp6xfPpNK3cutvYUmbXBRrK07gTVgyCI9DJ5wlYW2Z8GYBaIBZZvCQmnrMkeVGkRRje1
	FE+UANCHesqWUGBpiBs7Y2J8VHyxZNoXzGFJGxrnILXtoQ4B1wcurj1RcQUC5elKO/i+bKrHYnh6H
	VXcMinztEuujCD4IybLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ltC-00Eprv-1o;
	Thu, 15 Jun 2023 12:15:46 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsT-00EpGX-0N
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:02 +0000
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-30fbf253dc7so559306f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831300; x=1689423300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bnFCRdd8+pW5G4gM6AK4GzwvX/vcLvio6wOvkwBDM+o=;
        b=pEXYtznWL7ccGPcrRA9YVtMLcUzOuzhuhvRghC5+X5GHKr08vJaJd47E4Euths1v2D
         KTaVTtZnaTCR7S6s/c+unUwfYQ6lNAYtixgy4kHOLXrsylvNi6NUr8NzIK4YD45Xu/AP
         1Cfg6B8LAWFaD+ZadqXE0UKhMha/K529jgbyPssIo72SxJQTUohMQbBhTFYX88R4vzH7
         m3yg5bIg/3fmOkgJkdgwWo/nIg5bl4lbU2Y4M1yufcg/lxQ4WfyEIq/ieLEiQEPOtaE2
         ds+N80TvyTQwuSdwkQMmb13qIdUo0/DFPRvXJj+8Pxrnt/IIFbSLjQxNivg987zU212r
         mn1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831300; x=1689423300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bnFCRdd8+pW5G4gM6AK4GzwvX/vcLvio6wOvkwBDM+o=;
        b=YXy1Zyz0RCAIEeB3tXocdXOTAxhKW16KMbR8hP9B8vjeAjT+XSUfJStgtWolOoRTgu
         nMBPpNkHzmzMYqTBfY7jeS7AE0mHa/JLffPgYLTjmseMjRMFWHlrBcGDn9s3w/AWMC0A
         z/Nq/QNhbb/yoaI02iTImWNZkoVzcrT4jQ1jzg28mPb8KQufOB8Ba+RYPMJTa3u2onL9
         ClziM1tT/TXIW3JlMA4w9vKvBqMV+j2KIodzuUISPCdjLtQXKF1gbzMgrZ285EFNKvOB
         qFpygwPhVUS9hpxxd0ajh6NqR/YMJKTQAYQ4RzEzpMbFhfpq0oH+zyaWUUVHgQOwlFNb
         cyfQ==
X-Gm-Message-State: AC+VfDzIBXb09H+WrLAYlPQRooAajsdXhAJa3TsD/n6/um8GAJPNpZUa
	DRDeWadpcYXOdH9frZ3sx3frIQ==
X-Google-Smtp-Source: ACHHUZ4vr4DRSIEmSnhzfPN/LE7Bexsx6P4Fyn0VzIWcKWtl6TOM4tzbL7BJoOM717gdbzuNy8AiGA==
X-Received: by 2002:a5d:6852:0:b0:30f:c622:b983 with SMTP id o18-20020a5d6852000000b0030fc622b983mr4062107wrw.20.1686831299907;
        Thu, 15 Jun 2023 05:14:59 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:59 -0700 (PDT)
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
Subject: [PATCH v2 20/23] arm64: dts: qcom: sa8775p: add the first 1Gb ethernet interface
Date: Thu, 15 Jun 2023 14:14:16 +0200
Message-Id: <20230615121419.175862-21-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051501_156484_23FBC29F 
X-CRM114-Status: UNSURE (   8.42  )
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
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 33 +++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b6d95813c98c..59eedfc9c2cb 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2315,6 +2315,39 @@ cpufreq_hw: cpufreq@18591000 {
 
 			#freq-domain-cells = <1>;
 		};
+
+		ethernet0: ethernet@23040000 {
+			compatible = "qcom,sa8775p-ethqos";
+			reg = <0x0 0x23040000 0x0 0x10000>,
+			      <0x0 0x23056000 0x0 0x100>;
+			reg-names = "stmmaceth", "rgmii";
+
+			interrupts = <GIC_SPI 946 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+
+			clocks = <&gcc GCC_EMAC0_AXI_CLK>,
+				 <&gcc GCC_EMAC0_SLV_AHB_CLK>,
+				 <&gcc GCC_EMAC0_PTP_CLK>,
+				 <&gcc GCC_EMAC0_PHY_AUX_CLK>;
+			clock-names = "stmmaceth",
+				      "pclk",
+				      "ptp_ref",
+				      "phyaux";
+
+			power-domains = <&gcc EMAC0_GDSC>;
+
+			phys = <&serdes0>;
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
