Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1DBCEE4996
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 03:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmibZDH6W44J3Qz5OOm/Es9pn7u8xrdYDuKlZW07wsc=; b=ayYk8Xgw2vymqJ
	HK+j2o6rObH8cPUP51B0OFR33HuKG/2d29yaPlQorMQkRPROo1wsuedxVrEu1Lk6y5H+m6sFgwC52
	45H62g9cQJ66cq/Vz5CviraldpXRUZG3UZJC+ZvshBp/JRTVIbZRkKM7gXEOrIeiZh6nz5ovnn7BD
	ZKZQph0estduDzAqBlNXjo/YMq5UtNupqoOJOfj8OjOxRXdlZGEn5tkHiBEgDhobok7bp4fBAq2w9
	p9Z0KGFoPKfrUtrKiFvxir20VZGfa7KcZw9tx1eEzhlWlf9Ho5Xu5G93vH2muM328402BwMPjRP7T
	hbDhUVTh8mzEkgO0qvVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCTB-00AKhJ-1I;
	Sat, 19 Aug 2023 03:17:45 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXCT3-00AKcz-1R
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 03:17:38 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3a44cccbd96so1082199b6e.3
        for <linux-phy@lists.infradead.org>; Fri, 18 Aug 2023 20:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692415054; x=1693019854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bSHQ+AygjgxqH5HVmvaPgTOe33eIHrHGDBC7hTH/La8=;
        b=C34abAMhDmVjj+X6tuU7eWDd92FEWuhS5gRSP/sa+1L4FcZLCHkBgX6kMHXhQ0T+vQ
         EyvCTzZaD6hyYCUXRBpz2uZ4m445iJ6+S4gdz4KUYK/LlS10Y82FzCx7K48KoYuKcS0M
         M2E4yaNXDzYzKuHIkKyvAbtS5nRz0yNxHwooagrJsYP6UFO/FKuiSu6sDWZ7dw5VGMhu
         jr4ZTIB0FWTw7p43ZSzKqd0g/pC81IDADqP+JzwZK0XZ+xR3UGZnKRuY+oakOPABXmkW
         eOEK+7HAtEqwzYqoglQigMBv3WeQclG90iYHmVKWAlDtHDLSnQwbR/srhZ3ui1uvwKb+
         2wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415054; x=1693019854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bSHQ+AygjgxqH5HVmvaPgTOe33eIHrHGDBC7hTH/La8=;
        b=eO+cHMVLF8G+OmDepU0PkfEtTbi++Edpbbs1LGnoooXalwWw47JR8PRgMTAkYFpi64
         IupbwYcZVuaJAKu/G+3gD3nSSkvifKEUK0lNjVF1Xb1tQQXUoYIqOMr8KWEWkisgnA/h
         e3Y8L59Mx04FyHZ43XsEj4OH5dI/GjnAC8gFXFnfPDk58YyCdaPHQ5IK+8h+UH6qFZOx
         bjul17C7qANfXHPiStcojOY4QXaua9jvDuC4+Jh3lSOwWpBt39oEQMYeBSjFLbG958Ox
         +zKSJZrk8dxUOBYAcdMf+MGZULQ3LclRpAO15n2xEneQSsZd6h5J3/qE4xGzVX6Iij/O
         Lo/A==
X-Gm-Message-State: AOJu0YyyTxWDpiL13p9IFz9/fG//WN5POPuLUZOWqQ5lL9wruvMAKfzU
	fANGAADUT7whV226omfsyg/hPA==
X-Google-Smtp-Source: AGHT+IERSFZA2QdkLI3yWfYNxqRffzPPNjLP1datCDevdQ8JNtPW/yFsN0fkEWcyHCH5hK0MtlKi0w==
X-Received: by 2002:aca:f045:0:b0:3a7:56a1:9bbe with SMTP id o66-20020acaf045000000b003a756a19bbemr1326198oih.45.1692415054421;
        Fri, 18 Aug 2023 20:17:34 -0700 (PDT)
Received: from localhost ([136.49.140.41])
        by smtp.gmail.com with ESMTPSA id bj38-20020a05680819a600b003a74933a1e2sm1496699oib.46.2023.08.18.20.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:17:33 -0700 (PDT)
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
Subject: [PATCH 2/8] dt-bindings: phy: samsung,usb3-drd-phy: Add Exynos850 support
Date: Fri, 18 Aug 2023 22:17:25 -0500
Message-Id: <20230819031731.22618-3-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230819031731.22618-1-semen.protsenko@linaro.org>
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_201737_484513_B29DE18D 
X-CRM114-Status: UNSURE (   9.60  )
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

Document Exynos850 compatible. USB 2.0 DRD PHY on Exynos850 has two
clocks (ref and phy), which is already described in bindings.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index 5ba55f9f20cc..452e584d9812 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -29,6 +29,7 @@ properties:
       - samsung,exynos5420-usbdrd-phy
       - samsung,exynos5433-usbdrd-phy
       - samsung,exynos7-usbdrd-phy
+      - samsung,exynos850-usbdrd-phy
 
   clocks:
     minItems: 2
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
