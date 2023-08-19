Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 056A1EE49A2
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wq0cVMXcws8ZKTM6azXyi62xd7i8B1f1YI00alS4i7o=; b=NL5B4Tg9nAh8lW
	3CvBvWpSuZZEoyiUS8gzX1aDSrfPw7sNCZ9otn1KTwl9JJvJeFxo0T/CIFdRq9SKde9OpeUkkYz2F
	afnGEIY3H8aY6NhZS/u+e0JyDlumLfl8RRCDu8V6X2+orn0VIrO6s7sVQ1Ef4B3gTOWVAZd65bDgk
	u1w0bGjzPm4CBb/7H2rgz0ulZ6b3x4hmKn6jUPbsKYaT8q5aAE0IWxDBZlm8ZZowvTrDcQLk7HT3P
	VFULT3XwUuyLyK7STfeW4Bnc1Xc1rSP3w6zs7Ave6ZwUU8W5/EAiSIALcg1RQ8Hh6rdzWBJ6TAz6n
	IqSR075DAFZFs8ttRdDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT5-00AKeo-0t;
	Sat, 19 Aug 2023 03:17:39 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT1-00AKcR-12
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:17:37 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-56f557e9e84so308822eaf.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415052; x=1693019852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Q7Mi/sRAGm8lhYDAZVLrk5zgyos5NQEy7qr6AIL6DU=;
        b=UbhUG+mLPhnobKlykd6gqCDeeDq8gYEW1q5+RAqlhFXRpBNUiy//H6n0gEWJqpVrcH
         28aRiT4idt5ZYLJBqPU5B2RE2A4MdKUbCIxdO4K/hrpuGv1rzWLUtNJL7dpeflV4nmTN
         r3ofwS0Wmef5p09OdV++XIPPcuWVLFnxW8LWpQUU8zuQ1+d8SOn43mO9XUJCEw2UtP9L
         Z1clpoHaYrlluHt6sKzRuUU3MjQymbq7PUdqzd61X0Ps3CYbs4I7YMHgenuCsv6BXnbe
         YQeYciSH3dB2FnzHwE+5apWRLTKzYLELeJ66GSe1rSbaeQOhKNHA0dkmDWhHgd0XdABW
         z96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415052; x=1693019852;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Q7Mi/sRAGm8lhYDAZVLrk5zgyos5NQEy7qr6AIL6DU=;
        b=j45k4kg2r17f4pFOUrzFqfvWEsZ0Qbff92vgPtgMzHQ6rMedpBwNQPMb/8sslMPBnJ
         ivn/LZd0AeeUB92b2RvPV+yUUKJCYADUIepi830SrLIr5eFMMvs+29lNbSGEDGFWuxKZ
         kgTNhB0jEYgVQRgWPEHErYhRXqSVHcL+fBbO+EcwYuB+2O7Z9rEuCN3XEcqKsS6rp0qo
         waA83Cy404/Vcggsk5m34a/8bpa/yg6pGcxulpQJLvofw8NMewdWYBchPzeqLvH412tm
         9GNxLMEo0e4oF2rHRItHQjpcwOuYnFOQ+kthGkBRQOPjL+qZYbFaOl2yAiaRwahMarrr
         wnBw==
X-Gm-Message-State: AOJu0Yxuer3kttYnYGCM3XCoGUPKkw3i5NSSuiSwu1SdYsBUu/7xObjG
	I5iyBDzIksS42uerIuly2Dn16A==
X-Google-Smtp-Source: AGHT+IFVUmkUoC3QURVVvQmtTQIMGCKsvM2bNgWNvvFiOc8n9HKAZXjCVFIJolRC3nL5ZZHZ4ysstQ==
X-Received: by 2002:a4a:654e:0:b0:56e:4ee2:9189 with SMTP id z14-20020a4a654e000000b0056e4ee29189mr1647457oog.5.1692415052465;
        Fri, 18 Aug 2023 20:17:32 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id v7-20020a4a8c47000000b0054fba751207sm1494141ooj.47.2023.08.18.20.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:31 -0700 (PDT)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 0/8] arm64: exynos: Enable USB for E850-96 board
Date: Fri, 18 Aug 2023 22:17:23 -0500
Message-Id: <20230819031731.22618-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_201735_381089_0C30EC4A 
X-CRM114-Status: UNSURE (   9.14  )
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

This patch series enables USB gadget, USB host and Ethernet support for
E850-96 board. The most major change was done in USB PHY driver, as the
register layout of PHY block in Exynos850 is very different from
Exynos5 one.

Sam Protsenko (8):
  dt-bindings: usb: samsung,exynos-dwc3: Add Exynos850 support
  dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos850 support
  usb: dwc3: exynos: Add support for Exynos850 variant
  phy: exynos5-usbdrd: Make it possible to pass custom phy ops
  phy: exynos5-usbdrd: Add 26MHz ref clk support
  phy: exynos5-usbdrd: Add Exynos850 support
  arm64: dts: exynos: Enable USB in Exynos850
  arm64: dts: exynos: Enable USB support on E850-96 board

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |   1 +
 .../bindings/usb/samsung,exynos-dwc3.yaml     |  16 ++
 .../boot/dts/exynos/exynos850-e850-96.dts     |  58 ++++++
 arch/arm64/boot/dts/exynos/exynos850.dtsi     |  30 +++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 182 +++++++++++++++++-
 drivers/usb/dwc3/dwc3-exynos.c                |   9 +
 6 files changed, 294 insertions(+), 2 deletions(-)

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
