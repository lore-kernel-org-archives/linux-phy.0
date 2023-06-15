Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B24C1EB64D9
	for <linux-phy@archiver.kernel.org>; Thu, 15 Jun 2023 12:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6W+FQwt3ivAYF/QgDdJHwcsxehK6F8MWb0tGY90s168=; b=Kzcl48eqtg3fY8
	nIOfkmyNJwFbEKg2y9iWu/bwIY1d8LLQoPV3ljAUn3WD/eLhIy91P6E88T+3VBC/2WeFXUSOc9Sf7
	Z4EM9V7qTzkyqakqNQHgq2wujN95ndrBAKRGS4Zq+f+UlvddItCsqUMtFv1GCG+dPvB/rDqhBzzET
	VcYURcHMxvXxaq2YTbKJsFDxXGR5sirvCmfssC8NO6QCdNERVEM1Z1JHwkS25xql60vgX/2eymyHa
	nHwLdx9p8WnpUmNLAe1te1qQXNxt2l7PepnADUEiKS3q1UjnDd6+7m7z9jE8HOrrCpxgIkPVuZQhR
	HQYpyMBdZf7aHYBudxeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9ltG-00Epx9-13;
	Thu, 15 Jun 2023 12:15:50 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9lsU-00EpFh-0z
	for linux-phy@lists.infradead.org;
	Thu, 15 Jun 2023 12:15:03 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31114b46d62so621388f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 15 Jun 2023 05:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686831298; x=1689423298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+oBibPPOnuqccu7L9IO5LremAvXDtWRNvYzcCujyNTk=;
        b=tuEqi9i4Ph0PSiSFj08V9Ld+yK5DeaItEf2lQNOedOGslQF3uqYXEIqE70Q2LpkK8V
         yJcgyYU/xK27048sC68CaWAHZknJAsVoe4Ifz8sqfL1E8QeFA32UQMc/kTkXNiDI6tP4
         uhKiOYTZaVgCaPQ6E+9+iZZw2gHTEO6t8q298WJsxmMcT8hwXjAAMY/MB1iFJTD56Fca
         FIhjKR8+mGKE0Q8k2kMWsA7TWRlweVbHUKV0W3CTHurh7q4Q1NXjQl+ssAVBecumlsvb
         p1DZlxIGK8GtyCfRUGic2jvpUnq/AzONaJdAZMcB//LJ6mxtQXNbXgwocvOqHc0AnOQn
         kTDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686831298; x=1689423298;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+oBibPPOnuqccu7L9IO5LremAvXDtWRNvYzcCujyNTk=;
        b=lD5C0UJ9KysEkZT5BDhzxaGXHSbD1mnseYiQ9ehUbDztH5s5K7+kNNyNsCb/httJ3W
         0lrsbiopCrRpimcaf09ICUDgvsbUB/r7G7N24DwKUXTViG9aIhwnctH0AfLWR5fKEHLl
         a+bTPBZmtSRZPu3H8g/GJahi3GjCY4HENh0xMyOIJJYdp2C8e42gFG5eAgjevTOI4yuc
         GY2HR8WJFbAHFAW4ZcFBtvwMSjKZ7mYUojFB/hVcz4bjqYqL3RqJJ9cizvoSnYS5Sdms
         jcpp4n9mcWd9dngLZ432z8r0EvUAB3BWPyY4TPuyg8UI53Su9YhYpM4hzrQB/TBLl0DB
         +nqA==
X-Gm-Message-State: AC+VfDwFcpSVRpeZECfG0NuZ16Wpi1doeXDg1c2bulDl6d9Mbk2tgSA8
	420IoxlupIoZmLGKiPVzy8k6iA==
X-Google-Smtp-Source: ACHHUZ6ZWQodqVPUoqZH+ejZVeVQzNWRZZfR2DFh8LleB/UOHED1PVt1RXk6g4EJuRbGiVA2Fh4hFQ==
X-Received: by 2002:adf:ed03:0:b0:30f:bff8:3f67 with SMTP id a3-20020adfed03000000b0030fbff83f67mr11881348wro.38.1686831298705;
        Thu, 15 Jun 2023 05:14:58 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:2ad4:65a7:d9f3:a64e])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d4291000000b003047ea78b42sm20918012wrq.43.2023.06.15.05.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 05:14:58 -0700 (PDT)
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
Subject: [PATCH v2 19/23] arm64: dts: qcom: sa8775p: add the SGMII PHY node
Date: Thu, 15 Jun 2023 14:14:15 +0200
Message-Id: <20230615121419.175862-20-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230615121419.175862-1-brgl@bgdev.pl>
References: <20230615121419.175862-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_051502_393734_BF2CDA36 
X-CRM114-Status: UNSURE (   7.92  )
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

Add the internal SGMII/SerDes PHY node for sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b130136acffe..b6d95813c98c 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -1837,6 +1837,15 @@ adreno_smmu: iommu@3da0000 {
 				     <GIC_SPI 687 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		serdes0: phy@8901000 {
+			compatible = "qcom,sa8775p-dwmac-sgmii-phy";
+			reg = <0x0 0x08901000 0x0 0xe10>;
+			clocks = <&gcc GCC_SGMI_CLKREF_EN>;
+			clock-names = "sgmi_ref";
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		pdc: interrupt-controller@b220000 {
 			compatible = "qcom,sa8775p-pdc", "qcom,pdc";
 			reg = <0x0 0x0b220000 0x0 0x30000>,
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
