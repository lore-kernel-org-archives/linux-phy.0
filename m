Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A654C6FA8F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Aug 2023 13:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdpSj/s7O0bu7b8ijUcsY3B3H5r9NM7r04oN2upkLl4=; b=stTrxLaOrzhlUY
	vP0JWpxiB/Bws6wH07/Dofr+Cq/Echb0j+DbcUqXiGoHuzIB8dbPxsTdAwCU1nOHGD/pODmpYg8Nm
	D6TDtbzbnlY7mZtccYdSQJkKWPPg3fWtNmZd2eT3aFyAB+V7yGk0Qdx6rY31er92UbqdPINTuDxzL
	mTp17/Pi/YQYpf7keaJAtutfOM+aEMihyjVtAsNLDM6Iw7Xf18DEYbbjn0sSW8m6RIyxFQm8D9x/d
	6Tpws74npMQPF5Zb1Y91XDM9+bE2h/8behXwpPNstDrP1nNMoF1IL13dZBmyneNs3YgZNEh/6T1S8
	VkOWT6YTK0b0+cC9U83g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLPO-00Dag8-0V;
	Wed, 30 Aug 2023 13:38:58 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbLPL-00Daeq-1f;
	Wed, 30 Aug 2023 13:38:56 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-401bdff4cb4so44658795e9.3;
        Wed, 30 Aug 2023 06:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693402734; x=1694007534; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=keE4f6mexSCLXM3y1/CVIDHktCoAT49bvVYyDIq2rlk=;
        b=jgYOPEtSuxYpskNiio05W2xk+nnMcyXtmoIN7LpgrFWjwmmlQ/Ybvz+NQnRmKkiYGJ
         oorUlTBH4S2jDD3HfD4yHXhJ4NYirnO4d5igYYqzHvZ301Z9hKBnfeOWsMnGPWZYu2C+
         +kRFlVd854Z8wrAkvsDckGRsNqhCtKRQHenSw3fQ4rJEh3bCiasEm0QTiEBXQlIh7m2h
         nFyO5juxNVUCDKPggR6Vyy2G/95JcTxGn678GGF5YsF4xRBE7FXxp8zfJMY3xSSUqHwY
         Gw/LLz6TPrgCsf9QVEReHRl75bZjRyyazg+wwPyNdGLTX0O6aZQPxQmQehC1123oIEi4
         AGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693402734; x=1694007534;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=keE4f6mexSCLXM3y1/CVIDHktCoAT49bvVYyDIq2rlk=;
        b=cF8RnIZV8ucIwgcwMO+W7t+p4WFu/AR2LlOdqAljeZaK4oxT2jq1C9ejREJIfPjaMo
         6aCB9DCB1SCCpIGdnGcqBjxuMCLOmyyOeOeAtqVjMgl3lJ3j2iNUsMkQYC8fuhe2Ex6W
         eOR9N4Hs2mB1fkxJGa7J78QA1pwlFMSr6Q5FCWS4KZOYlmWsxizeE8Mo1qIUKFMouSER
         i7ioMbaqpf5Z7LdOB0Xzh/YNw24vb+tmq/Dql1wRBdI5Mt32zK6i5w5F7K19i6A7HcYO
         HqTkdtzxulr8jvizmPS9oZMjJFCiR0veI+Una5mEZW3VvwHc6Hw44TL2Dkb4Vm7EId9l
         idhQ==
X-Gm-Message-State: AOJu0YxrBqpAz3ACUGzLQomgM9Z10AFLeG5W4bddvNQxve7/MOqaV+Bt
	gCYzaAcyFvztvogHNedh2Q==
X-Google-Smtp-Source: AGHT+IG+zDL2Fad/PcYWzK8AWbmBY6SajXktKNR9JFgpXu9PXUdpkMssQC419M+Fo44nVjAKZAIyug==
X-Received: by 2002:a05:600c:446:b0:401:bbeb:97c4 with SMTP id s6-20020a05600c044600b00401bbeb97c4mr2026162wmb.37.1693402733905;
        Wed, 30 Aug 2023 06:38:53 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b963:7410:17bb:6f65:50d0:b82b])
        by smtp.gmail.com with ESMTPSA id x14-20020a05600c2a4e00b003fed70fb09dsm2326343wme.26.2023.08.30.06.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 06:38:53 -0700 (PDT)
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
Subject: [PATCH v2 3/5] ARM: dts: rockchip: Add USB host clocks for RK3128
Date: Wed, 30 Aug 2023 15:36:25 +0200
Message-ID: <20230830133623.83075-8-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230830133623.83075-2-knaerzche@gmail.com>
References: <20230830133623.83075-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_063855_557766_F4430514 
X-CRM114-Status: GOOD (  10.34  )
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

Add the required AHB clocks for both the ehci and ohci controller.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index b63bd4ad3143..ffe99db0eeb7 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -109,6 +109,7 @@ usb_host_ehci: usb@101c0000 {
 		compatible = "generic-ehci";
 		reg = <0x101c0000 0x20000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST2>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -118,6 +119,7 @@ usb_host_ohci: usb@101e0000 {
 		compatible = "generic-ohci";
 		reg = <0x101e0000 0x20000>;
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST2>;
 		phys = <&usb2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.42.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
