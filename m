Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86C7DC4332F
	for <linux-phy@archiver.kernel.org>; Thu, 14 Dec 2023 09:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PD6ij3khvuzBY+9Bh9WRb0OQcG55Zw95p+UD5FnKURA=; b=SpproT63mA5YxH
	UA8p5pDhgc0IlBqC0aJBnQjCwNyVSv4yp/DIds4/pV9UPqaGAMYIvqzYz+HGXGRlBHfUWwEEjxCcN
	AxkGUeOnOqZDKafAW8uEGw2tZZZT7Yaxo7oi4Z8mR9TYbFmHz66SkJs0/W+K9/NyjvKHX+lKkhfAw
	wB+J0p/QU7KNaUSdnySct/Q3BPC2s9dtxi3KoZ16UcqgG7VkV3zaPTd9ETGdQ+Qbompaf/csNzqEp
	0np2KpU+ppK/pV6mCEZFdGXsxIf1j6woM2d44dMlOLi6bqtIA6ccDlnRgzBuaCEaqHAnw1iY0DINW
	sbjUCZfdtieoMqRCOznQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlK-00HJgC-0v;
	Thu, 14 Dec 2023 09:12:10 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhlI-00HJf7-0T
	for linux-phy@lists.infradead.org;
	Thu, 14 Dec 2023 09:12:09 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5cece20f006so78772247b3.3
        for <linux-phy@lists.infradead.org>; Thu, 14 Dec 2023 01:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545125; x=1703149925; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9loaHfrne3H3i5jJvNSoB5V0DmyPKqbag1DqqG2m2L0=;
        b=KwLX4t8kvwittd3Adl3Ec7WbK482xyaODqppRk7NY5vCQMSurZ1yYb9pw6aqsI/3Oz
         rt6rXab9WbkbKxjj/HslskPUYmkC33UbKwTbAm1NbgWie+MsZFk3ImW9pWQ2CB3VMA1u
         5tVExPXMfGk0MGXK9gFtamSdK84spcalsT/SJrWgeS6K9fnkJ6cZnJAJ7a27tDCEQ0z/
         AtszDnSeZJTKRSKahEHYyTUGeEooXWX5Xww/7U9uS4Dzkl+eMfZvW7op+N4KYFwX5AoE
         wZoG0t/c19POWCepgTdpiJdL+X6TJhJjfbrSdB5rMK7yPtnoL9EsUGnRanGB54HB43Ai
         LHpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545125; x=1703149925;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9loaHfrne3H3i5jJvNSoB5V0DmyPKqbag1DqqG2m2L0=;
        b=fZSL0isoEVJQ+inhOW/fLncl2RVJhoHckz7Wvy2PtBSpu971GyMpERhqJrdGGurZbT
         eQJ4WzDHpXiZBcxrPFLsloNPIbu0tVNsA2UIoP6JPwd41ukAhM8X8VpcKf1/IbDY0aZ/
         wxXIscL5+hl1scZsqgQ+/8LgJFiS76mbn12E1UsmL99qN8vUXwZYmwx7qE4aGObt0yFq
         7J0mVysWUpAgLyWhXrfkO06V8G++B6QtVzBUEB8C8pqb7F27Gl2VbmU7nfZyhEkwjXZV
         i/xOgEb0NP8QnGrpc/u8eFWICwTIIAJ8EEYrydWrWSesLq0NcJ7mk3Qj/R5PoOoBOb0A
         sM7w==
X-Gm-Message-State: AOJu0YywdXZlKZfAPVRGlFTkGuITGpMEuXIo68QzyoH79e1nWKeazRbi
	A3GZtz/NRTagCF8N8UVr2+GJ
X-Google-Smtp-Source: AGHT+IGFrvj76C9g7DF6q0IKJE1RWepK4pib253K6Tv9NO1veFIB+KJjqnqPmgkzLZ2ovJOm1w1gxQ==
X-Received: by 2002:a05:690c:91:b0:5df:4992:d724 with SMTP id be17-20020a05690c009100b005df4992d724mr7706528ywb.41.1702545124893;
        Thu, 14 Dec 2023 01:12:04 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:04 -0800 (PST)
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
Subject: [PATCH 08/16] arm64: dts: qcom: sm6115: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:53 +0530
Message-Id: <20231214091101.45713-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_011208_191451_10CDE57D 
X-CRM114-Status: UNSURE (   8.46  )
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

QMP PHY used in SM6115 requires 3 clocks:

* ref - 19.2MHz reference clock from RPM
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 97e563bf5ba1 ("arm64: dts: qcom: sm6115: Add basic soc dtsi")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 839c60351240..40394c412fdf 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -1033,8 +1033,12 @@ ufs_mem_phy: phy@4807000 {
 			#size-cells = <2>;
 			ranges;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>, <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref",
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
