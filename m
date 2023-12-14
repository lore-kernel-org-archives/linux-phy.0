Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BFDEC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BXy4TYRNXf9tYClNc6Bvn6gLp7Y4E8JAQfmj5ZcfQg=; b=k1W0vd651X2MUb
	E7o9AIG9oKzWjaIq0aN8gHjLTGOrf2JpxC1AaYpxHiv8pz/s2Ig0SBl0TY9mHTpaGdSJMWjTYuOri
	Dsm5g/UNIypRF2P9jbfG5c9ma4tXHSfsrRMBcs9N0uovXkwegmylNzxYA/uaxOEkYAQe6zwHwOI66
	4iJZec5ZsMcVbhihfcrna9Hn0Pxwjv6IFeU+fyDH5kd7FZnNd4vBHx3xcQdfa86kWlPgJkhVFAmV+
	SNLTHeSVeZnDai0kXHbeq1GTp497HnCbEEIWi1GeJAuFg508mtyGhMX5rB31t12/3HcsJt9DC6pxp
	8GZmol6m4YQDsg5qnZSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlN-00HJhN-2f;
	Thu, 14 Dec 2023 09:12:13 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlL-00HJgd-1U
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:12 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-77f48aef0a5so278984785a.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545130; x=1703149930; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/R/hqTzd/o8JpkxBFS0sj0AJtadDOIWSQt92Ki/rlFQ=;
        b=t+36pd37vLQjd0XbB5o2tbYvIyhwiv95PAY8Pb24l5NktkeepgC9ABRaq4D8aJVIjn
         YhFTpjuRgdbPwPfljlU9je+IArB2efQ0Qd5irzZxj/Sm8hkqliKVOwh5nh4GYIkuRzpv
         doA2n1RJNarA9/M/ht9Tcd1mAucxHK5PeSKwXLnx9w+h1Z/OwS/O5DkJfU/HgrszoJMI
         O8TC1Fceb7pB/jwUr//yEILXTPXzdYBIixqusx1ZgRe1k7QBeFtt6Iyx6wHRh8MxCRVv
         zaWNF+DuopqgYQIPyoK1wOyG97Xl48B8/Sgg937wh2KpwrZ2+VGa89JauUkiPg4Vo6He
         9dog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545130; x=1703149930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/R/hqTzd/o8JpkxBFS0sj0AJtadDOIWSQt92Ki/rlFQ=;
        b=CW5Mmz62/UD1ttyNQ1TpOaBx+zcSX28oJ+qLh4zLxX+/Mzqrh/KbN+Yp04P9FA2EDW
         OXovA9ml9jGv+e9QA+Y3H1LcV3xko3Ejy8cBLmnC2RuEZvSfZ0mxLOdZyDC39qlK4kUT
         sYCHoTNIepkd+SvCL6q76tAndKUo7Inn3B99rFj1r7130dFBHMI4M4S1chDGSRNbkAG2
         bgcaeCVfAsyAKgXnYghsMqafjHypK69RnNrebUAFRJPwIE8kJRg+/ekUT+Fn8bCDWazT
         IZJAk1fCWiMUGAxF/qOi7x2gHNi/8OxBezKCgLzrMNzvt3pYqSC52uGMoaBHA47bZDeK
         jJ0Q==
X-Gm-Message-State: AOJu0YzUGkmo+YdNY/EaWDQvzlOo9cfsMOBfgtyV5srRMS3PeKYU61xW
	e/V7wkzmiIF5g7Mw81EYcYfn
X-Google-Smtp-Source: AGHT+IH8nNO0Z2A5qhy/eFw6w9HCLUFnLPwuisRFUq9Zu9qVpiWOG+IrWYg6mGZN6+oEXnqT2Pz8tQ==
X-Received: by 2002:a05:620a:2707:b0:776:f5bb:f2fc with SMTP id b7-20020a05620a270700b00776f5bbf2fcmr8186278qkp.9.1702545130709;
        Thu, 14 Dec 2023 01:12:10 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:10 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 09/16] arm64: dts: qcom: sm6125: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:54 +0530
Message-Id: <20231214091101.45713-10-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011211_496714_1C0B4441 
X-CRM114-Status: UNSURE (   8.52  )
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

QMP PHY used in SM6125 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: f8399e8a2f80 ("arm64: dts: qcom: sm6125: Add UFS nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index eb07eca3a48d..b46d3c1fa47a 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -812,10 +812,12 @@ ufs_mem_phy: phy@4807000 {
 			compatible = "qcom,sm6125-qmp-ufs-phy";
 			reg = <0x04807000 0xdb8>;
 
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
