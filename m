Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47496C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 20:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIgmmWHD4vUjW75FrYd8AEvzGV3bVw757iq6z1fl3R0=; b=NDAXHk13SmHNqI
	U7if4X8nVbrzYwshWFz+tVfrYz/vAyP29qoUwkI/NuPt7Mn1ubT5+VluN10NIUzHEZuVJSVGm7pfh
	OdiExFVq/qTexyG/V0FEoUSp6xHq63Yy2QpGj4E7jcyGAcV9XbpYALqspBjwS/OiI09DncXYwkabd
	UbRX3Ll3FFxC4yNZIcoOr6fYBST24omKonVzm0A+L0Y0FEFluHRt+t3FZLu5MaE6ajC7wJQE2JBlo
	MC75NaAD2FNEj3WRmF9FlW/HGTolpcfE/oct8ynEe7dTaPrJduWB4Olc3wogsZoyRyG24oMWa03lg
	GERh8fYjHWhgz5whXKBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN6f-00000001TCP-3nkC;
	Tue, 23 Apr 2024 20:51:13 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzN5r-00000001Sgv-2BEr
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 20:50:25 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-41adf155cffso4805515e9.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 13:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713905421; x=1714510221; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oQFFeizie+WDtAymx9A6IFxdpuXrJrETM1fm6NIco7s=;
        b=uW6Lrp/jKltyKYXA5+oACY1z6AKPm0peFZVjmtOnYl06CLjWcUFuia1l0D2uVZqCOw
         aBN/2dDzGv764Ut99/7H3dnPKtmkR0m2bV4G+mTwd3HtXUpH9gSAMOvIfGHI8jnEqbRV
         WOWzpAHGq3PPCmNuzfsP1l0A8DE9fQ5cfpra4cVSp7FBg8UJwrVIJNCNnjH2WfbxlTaN
         kDpgwEz+B5Eh0k6afYFO/LAykjOva3ZHuGUWg9+K7sfGYV9mf+w8NGb1AHn6kELZs7rN
         0jt5nUuW7sQONTnXEhoU3eM6nLWbMDucF2D0o/5cJCIVOa7aZu4Oc7zyx1G1ofn1QeSV
         V1MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713905421; x=1714510221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQFFeizie+WDtAymx9A6IFxdpuXrJrETM1fm6NIco7s=;
        b=KXy8aaA7MAU311DkQV6xzrHTV09W1AUDzQooWlfn7KnzQLWuY60gfhXu3p4c9O3hUl
         0SRPBtJcMxj8h6Ialyq2LJzyl38znmkJUZAv9s2VFk8hqkwknJaojwK+2xZ9fx1eV974
         FCa7WWLdMfYM3+qnEPgCJyHUBMyXchI2SC108aLNATfz4Hkddw5FAg4enmI2BJ1FT2DP
         Ygn9u89V9QB8s0QmxlGoxXqG7SUf9jWQGmSaI7E0u+O8t3y9/FUntQKaGqgH4fRJLvVi
         A9UjyM54+W2I0S2E76iJq7JiFBphCk5/Chn2LItQJ18gb2wEvVFEK0Ya9kN3WK4sgBHD
         i3GA==
X-Forwarded-Encrypted: i=1; AJvYcCU4FIMY4MXYEMn4cpB2j6egvatfY1gN9BhvJ+ROjYND2Bn0iyGt40wxdvGjFpT/8j9Tthp5twL0fjXUjK7WgpGu1q8IuxrSXQzZzvhpqg==
X-Gm-Message-State: AOJu0Yya5ZmU92t1+JVZxAkEnRc1KtdPbq305AsQWfj2y1WUrFiIgTGp
	H5AYBWKgn38ZbD72+QHC5KGEhj3Fnu+W2aAXXNn1pNkxYRGcsS9cfdOINxyuiL0=
X-Google-Smtp-Source: AGHT+IEoN9BL+beMqGZgZJ7I01F7imeAY0oItPApC+eGoxgDcTY3kaq69qarTURQu5n1FxjQvFK/vw==
X-Received: by 2002:a05:600c:4586:b0:415:6bd7:9681 with SMTP id r6-20020a05600c458600b004156bd79681mr219733wmo.35.1713905421546;
        Tue, 23 Apr 2024 13:50:21 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:4269:2542:5a09:9ca1])
        by smtp.gmail.com with ESMTPSA id bg5-20020a05600c3c8500b00419f419236fsm13065443wmb.41.2024.04.23.13.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 13:50:21 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	s.nawrocki@samsung.com,
	cw00.choi@samsung.com,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com,
	James.Bottomley@HansenPartnership.com,
	ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v2 05/14] arm64: dts: exynos: gs101: Add the hsi2 sysreg node
Date: Tue, 23 Apr 2024 21:49:57 +0100
Message-ID: <20240423205006.1785138-6-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240423205006.1785138-1-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_135023_616802_72E0915A 
X-CRM114-Status: UNSURE (   7.24  )
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

This has some configuration bits such as sharability that
are required by UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 38ac4fb1397e..09044deede63 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1265,6 +1265,12 @@ cmu_hsi2: clock-controller@14400000 {
 			clock-names = "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
 		};
 
+		sysreg_hsi2: syscon@14420000 {
+			compatible = "google,gs101-hsi2-sysreg", "syscon";
+			reg = <0x14420000 0x10000>;
+			clocks = <&cmu_hsi2 CLK_GOUT_HSI2_SYSREG_HSI2_PCLK>;
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;
-- 
2.44.0.769.g3c40516874-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
