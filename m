Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3ECEC6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 13:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Puc14QYAAwfA5tE5COslZOi0xj/fQD0c3nFNgGR52iM=; b=mAmn6kXs09gyQw
	1U23djdx1XenVQzK6aN7u3UQEkFjyElpGiMkUlcedyPkQHTCOzCW2MUQbzhafjwbod0iCKvr7N7At
	FL+w3VjI78VgL0I1W+UoqUlufPwFcdB8NFBpZ5uZhkeUuezqV2Hpyn3ck8zol1orGITW+0suwaRbp
	QICJX0wK2rC7+SjtTPi18dyEWMmzdm4WX/gpjcCEq/mK+3jO1xMlpH5ychhXtTKR5YMLzhZtR9MeQ
	GlUz3M4wIVFZxrnZREj8vDDSJ30rIFKifWt8OEcrWldkPQvhRSDRmCJ1Y1ojPRnJF9KeYrrXrVZjv
	9qEd7rlF6u2/zpeSgArw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLQ8-00DavZ-1e;
	Wed, 30 Aug 2023 13:39:44 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLQ6-00DauT-00;
	Wed, 30 Aug 2023 13:39:43 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40078c4855fso52421815e9.3;
        Wed, 30 Aug 2023 06:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693402779; x=1694007579; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pL4AHGqRwUAH2UbRxdk/07qkcSparuw8rJPg7HDVZLk=;
        b=K06o9T5UXLsJaL7dPOh+4XLbpqPMa/beBxjZY6GWklkw3mGDaC8bjhT2E+GHDSbWkS
         +uI95cVQ1YBJl5/npSXGJPjS98rhqHHkWvnpB1DJCosOPaL3m5N9OD4Yw6PGjwGobzAy
         qvrAFs619Bt2IPghYRZzJAfJUiZoHZaq6HtTmhdl1aQhLSZVQpWB5TVPqIpZb33RKPg8
         2jY4PhcMw6ti/pnztpTVSsY3fGmxgKIcOQjghxrPeBS/nywaivmJtex66/wfpg62slo1
         hBaK51PvaVpkujU/wpwPPIz4OEZEcqj3yoH1wI9iC8+9OC0UDGVh18+ZRD3Sw80+vd6B
         CLEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693402779; x=1694007579;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pL4AHGqRwUAH2UbRxdk/07qkcSparuw8rJPg7HDVZLk=;
        b=JazShL+YKUGWKduucs9lSMw6JiYesp7NCfeDDBQUshQvTXGcczRTrX99lMBOydll+l
         2PP5kCN60Di7WTVpWa0BAKkoYUr5JuZ9U7V/7jloCpOL75G27MBjoC5NZE0cXLoWCkl8
         CkoMrMIyb0UvjeWwQKQpP2GQgZZfq5/+mLlSfof/lO0L6yiy2kpP88796IBDCyFAd68g
         AreDtppqrK7PctQ4CFI/2LglEvtPfug5K9LJvS+EMtGj+PnZtwoKSYHpzRsHj2mvcy/h
         6wV7CrdxJXxUena2jpMXRAi6ahjWxDPacHoBhbHLVVCdD8EuLymQVhVxHtH8EtJq5blc
         7/2w==
X-Gm-Message-State: AOJu0YyTtuH2VOkmiveMaxrX885NdxCKxyo9YNskV3VlD9nFqs3198Tt
	iPcX2YydTarfwTkytAKR6Q==
X-Google-Smtp-Source: AGHT+IFmTJWYc2nF+k9N43mdYv3DixoSSezT3uaOMI8tivzPwvZJqspYDXCwnJy0/2KKR2+BqsD65w==
X-Received: by 2002:a1c:7307:0:b0:3fc:9e:eead with SMTP id d7-20020a1c7307000000b003fc009eeeadmr1931954wmb.20.1693402779110;
        Wed, 30 Aug 2023 06:39:39 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:17bb:6f65:50d0:b82b])
        by smtp.gmail.com with ESMTPSA id x14-20020a05600c2a4e00b003fed70fb09dsm2326343wme.26.2023.08.30.06.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 06:39:38 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 5/5] ARM: dts: rockchip: Make usbphy the parent of SCLK_USB480M for RK3128
Date: Wed, 30 Aug 2023 15:36:29 +0200
Message-ID: <20230830133623.83075-12-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230830133623.83075-2-knaerzche@gmail.com>
References: <20230830133623.83075-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_063942_038059_DB9DB094 
X-CRM114-Status: GOOD (  11.02  )
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

Without setting the parent for SCLK_USB480M the clock will use xin24m as
it's default parent.
While this is generally not an issue for the usb blocks to work, it becomes
an issue for RK3128 since SCLK_USB480M can be a parent for other HW blocks
(GPU, VPU, VIO). They never will choose this clock as their parent, because
it currently always runs at OSC frequency.

This sets usb480m_phy as SCLK_USB480M's parent, which now runs and outputs
the expected frequency of 480 MHz and the other blocks can choose
SCLK_USB480M as their parent if needed.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 119e89fef2a2..5590af6f42ad 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -113,6 +113,8 @@ usb_host_ehci: usb@101c0000 {
 		reg = <0x101c0000 0x20000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST2>;
+		assigned-clocks = <&cru SCLK_USB480M>;
+		assigned-clock-parents = <&usb2phy>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -123,6 +125,8 @@ usb_host_ohci: usb@101e0000 {
 		reg = <0x101e0000 0x20000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST2>;
+		assigned-clocks = <&cru SCLK_USB480M>;
+		assigned-clock-parents = <&usb2phy>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
