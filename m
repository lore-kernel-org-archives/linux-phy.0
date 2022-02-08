Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF290C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  8 Feb 2022 17:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb1BzmNu6zkeyQLiyC+EXaLVNL/7vQf/xredAyKJ/Ao=; b=m57fMQ/+Ly7W+7
	rGoHCCRqJLv01a/0T2wCawWSvFqU4lDqm77bYeL2mqWsjLoyyzvqRfvgzcWDG8yfFDJIWtS1brae+
	hIqA+ARmF9Bg4XdsUSxJQgow+E3O+U62nIzxxFrHn6GHyv11ljU5Ay82mk1H0wqGfzvOZ9yEfv+bQ
	JuPlVeAFqaMaW9hfoEUOx9y1w6Sz4l4Thj5b9Cu5qKkJFg8y69j+BAJ8iQliVCOCsD+Z37xA3DIx6
	EIoDucB5+bv2DShtriYSBoVylx+IQRelyYxbndpXVXJOfqb3KKVR6KoTDFQAnSoJeRhYm58FMmhbO
	4qfBSU847DWS5ve6GFjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHU9N-00F2N8-Bb; Tue, 08 Feb 2022 17:19:33 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHU94-00F28X-Ok
 for linux-phy@lists.infradead.org; Tue, 08 Feb 2022 17:19:16 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6F8F840012
 for <linux-phy@lists.infradead.org>; Tue,  8 Feb 2022 17:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644340752;
 bh=ljNZXcV6Ym7/PH8vFjEM0hkawYJJLcPyRUsIX2ztPxc=;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
 MIME-Version;
 b=MnenrchCcxbLqRXNFVnXEZWrQFjXNDWsAnL6fDhWQwsDq5xhJ1xfBVYZrF+M+ILbe
 D/zcwNuiJwNb2GigcGJ+tSIzvk/Kf0sNhjchrTu6oLe9DHlaqzP8FNi8z5D1CGTyZP
 KJZj8XSM25br/gafWV8rEIx+I6+Det9UJpfpOC31IF/MQGW2h7AAu82dgv0OukQQWQ
 mCcjUUdFziRn2jdxa0yN4rVXa7rXKgcJWBFYyPKvq11PZJVtsCNsPydiOF1ju1qOVm
 kmSVMfkA6e3Wnk19AMsQs43A/iXypgFjZeI1YNkJWErMJ3tdCwbPV/E29l0fnTtJFe
 5L7HMGWXdaDGA==
Received: by mail-ej1-f70.google.com with SMTP id
 d7-20020a1709061f4700b006bbf73a7becso6027284ejk.17
 for <linux-phy@lists.infradead.org>; Tue, 08 Feb 2022 09:19:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ljNZXcV6Ym7/PH8vFjEM0hkawYJJLcPyRUsIX2ztPxc=;
 b=F/VdWVu21Xcqp6884fyRRgB3Xs3VUYrvtJuALhl4rpgJ0F5i569MbUvobnZ/Y4cn9F
 Yj9PEbXDAGlmg9yJ1NgXYVDKcx2TQ5jXrBLSe89ZmuFNGo820NhakA0OLfNwvGTt9yjo
 ifaGTLqRPPbEvajCFnmonLjJ2TSvv91/alWrDA4Y3l23FZ6RGflC6/JPTZgEQQ6dMsSX
 DE8DwjUxXZ62G9VfEkUpMKdWga/hY18MwzqsvaNf9wgLgQ81MMtrNg9cEolHqVBrr0b7
 v+rXb1AMYehepHgEUDlt69xeo8lFJoTikQIGMuOK1Wz1NYLjiV70yVKuBIEgQt1ZIuUt
 9xAg==
X-Gm-Message-State: AOAM533MHmott9u9cb3OEQrDN9U+P08J8fxk6ofisFVLDh0PAvRHJEdO
 mGvJnMnTk+3MZexwrQBrLCiP8cGJOybgkgc+L7UosHPfwhEga9oJxM1VZluLWrj2iw94jYAj0Kz
 R/Jb/Gc9i1m94tF3P5qH5J7YkUgOkZoab2JwXfjN/8MY=
X-Received: by 2002:a50:fb94:: with SMTP id e20mr5723257edq.292.1644340751869; 
 Tue, 08 Feb 2022 09:19:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzFtmSCjrFuZnV5QFldxP4RqEiUiHOeP0ej5h/rJ0gsHHDMvXDxxIkOQXiY9qgzDn7rJ1eDKQ==
X-Received: by 2002:a50:fb94:: with SMTP id e20mr5723234edq.292.1644340751717; 
 Tue, 08 Feb 2022 09:19:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch.
 [188.155.168.84])
 by smtp.gmail.com with ESMTPSA id r10sm5125550ejy.148.2022.02.08.09.19.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 09:19:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Inki Dae <inki.dae@samsung.com>, Joonyoung Shim <jy0922.shim@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>, stable@vger.kernel.org
Subject: [PATCH 01/10] ARM: dts: exynos: add missing HDMI supplies on SMDK5250
Date: Tue,  8 Feb 2022 18:18:14 +0100
Message-Id: <20220208171823.226211-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
References: <20220208171823.226211-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_091914_959752_B601D671 
X-CRM114-Status: GOOD (  12.51  )
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

Add required VDD supplies to HDMI block on SMDK5250.  Without them, the
HDMI driver won't probe.  Because of lack of schematics, use same
supplies as on Arndale 5250 board (voltage matches).

Cc: <stable@vger.kernel.org> # v3.15+
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos5250-smdk5250.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5250-smdk5250.dts b/arch/arm/boot/dts/exynos5250-smdk5250.dts
index 65d2474f83eb..21fbbf3d8684 100644
--- a/arch/arm/boot/dts/exynos5250-smdk5250.dts
+++ b/arch/arm/boot/dts/exynos5250-smdk5250.dts
@@ -118,6 +118,9 @@ &hdmi {
 	status = "okay";
 	ddc = <&i2c_2>;
 	hpd-gpios = <&gpx3 7 GPIO_ACTIVE_HIGH>;
+	vdd-supply = <&ldo8_reg>;
+	vdd_osc-supply = <&ldo10_reg>;
+	vdd_pll-supply = <&ldo8_reg>;
 };
 
 &i2c_0 {
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
