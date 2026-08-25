Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C32AC5DF94
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 06:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEIQ9GOXng/vLeXBdCowIWokkFAXWZ/WDtgkYFJTuUg=; b=etfl9PF4/J6OlV
	oTjJxBSV0Bq7UeIm+B90xivdx8jPSAdQQ8V6zHx4UwRsI+Kyc0RYR2DUMSrV1jfo0nUznRAtdYPQZ
	pVOPYZhzM1o5sAXPi6tkVnIGPA6LPBg4z6neqK3sclQxLauB+WjKTWxebZj6nL7S2dBGyR9DlfTOK
	GPSe4JBBEoxUXcKLjF8fqcWVzL89F11IHdfOck4AZJuZvX6A3cd1G+XYNtcuvP83dwu5yE7u+b0Nv
	Cc2MsDO1Xh6oSsbUMShPOvz/xXqjvQQui/mckAzASM9M8QLVH7pjS0uQFWJjTyv9qjmIpAhWpVO5h
	cjEomHDhUmyNY7+prkSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wykzJ-00000000F4I-3lRM;
	Tue, 25 Aug 2026 06:50:26 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wykzH-00000000F3N-1SAX
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 06:50:24 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-c214e625259so656021066b.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 23:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787640622; x=1788245422; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1DHRKCZWzr+4UjNiYIgWaDbN/EmFdXfmYAEs5enyKkY=;
        b=cVkmhvHeE2oAQZ1kEMv6UOr4Uqmj792fqBqeIrCvJ0L3a5uXV37UjCwW78TIbF/m8C
         GLo93AoiIoj1dEBWQG1wkvxedk8fR6n3paB/j4mjzCJatQgoMUJM0IUEiOPErIZYOv2s
         Gor8PsDDRZU9kqYHETsbWa1BR62/4VV4echHEh7lqiIXAdzW3f2AyIk/qsrQqrMaP46n
         2umMfA178O9qgwvSFpPdQSho7JQubjV4MywHGm+tvYBZ/N3hTwMqhkwd6+jVQLVyYJ/i
         QHlry5Al/Vg2b+6QhNyBSjZLEXosM3psaOvwWIX8aItSCi+uYuWTwOo7AM68tThNhdcV
         KTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787640622; x=1788245422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1DHRKCZWzr+4UjNiYIgWaDbN/EmFdXfmYAEs5enyKkY=;
        b=TMaQvL/2hqDbbnVPdz+2Y7ScOeK+XG3uSrabUPgZbk/EYSlM7OhmJGW0W0i3rhIUNx
         K/8S4+ubydmpkvWyTS+yPe61BFFkfS3vqGo1c6Zug1kLfv7n6uGcoTOOY2xWXGhjxE0i
         qaJ4/cnOxMVtN06xZgsqLiiJyTQDhK6VFfVEtGJsfS1LEyomIxRAfNi6F91/N8hCkjbP
         qw5hxW9MRz4q6rgtP4SkjJi2mEBpcGEjjmgynvS9eQMqQQZJwjgwbt7quQBlFfUmOCvJ
         +g3Hau8UgLgpx+ExDL5fgGB62Ni2WobXAUN4OMNjB8dPAkhlF49TniwqL/mIcJ+ybqYQ
         O6lA==
X-Forwarded-Encrypted: i=1; AHgh+Ropf0F8c/a73qcpigWnJE/wDxUJteZco1ZxIFy96929qcj8xHnfhPMDdj9rNCevC0xxNrd1bZCHDk8=@lists.infradead.org
X-Gm-Message-State: AFuF++nkAmf4h/aHFjAOGJPtSs3zerRUt3voIC0t3274vga1TxZLZrW8
	rQDfBgXL1lIUEi18YlO593put+CbVIsnLJHC9VLY9WUdEXEOv/SUC0/b
X-Gm-Gg: AR+sD109MlgcBJGWpZ7F5KW2aqg6lAW4ITzWkRJ5IjEnAehl+77abeyf64cTR0kL6mg
	QdzyOHzIoNxD9ckZHM2HBclVoDOhV++i06mEFDBBnAc47Efwl+bisL4NqTDR2dDI+MzdbLcnAGO
	gu3d5P/P36w9BOv0tQNp4gULajFoOWWPLARZ4ldWStYlyQ0I0yzKeu20kFrkQBqHAAtyRY+dTZz
	2SmeH4OWPYxNa6P71RZiD5ZqwbChiT0QkoMZRLH2M5CFvEG+X6a+g6iSsJ8GsEhpmvJIQli5i4r
	GvLy7PCQvIH8ICDPB0UtOIbgMhZbZwrQhj2OJyiGvhvOE3BlCmAoHl873wvlcfdJ289iXbKTQZ1
	FfIhwpgcy1OGDC+Y58vHi/73p7CR19PKAlQgAWFLVQMC8kBI47TiCn8uC7Kwhwj7Lc/I3X6WQWY
	quB6Ix4txrULOhtikdwgBwq3VV8PhvW2HKaw1gJWLSBYQSgNmS9izudXQUZc7uX/X13k0AkfyaT
	aBA75m5fvwzrXaycnHgpb2IwqihoqYFeErMDbTOeSVyfnNGFQWj3gayGO8dVgnZXim/
X-Received: by 2002:a17:907:9304:b0:c17:cf99:6154 with SMTP id a640c23a62f3a-c24e5b28879mr442783166b.16.1787640621284;
        Mon, 24 Aug 2026 23:50:21 -0700 (PDT)
Received: from GOLDENAXE.office-radnicka.localarea.network (c82-214-103-66.loc.akton.net. [82.214.103.66])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249672becesm1658627666b.42.2026.08.24.23.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 23:50:20 -0700 (PDT)
From: Bruno Banelli <bbanelli@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Yixun Lan <dlan@kernel.org>,
	Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@riscstar.com>,
	linux-phy@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Bruno Banelli <bbanelli@gmail.com>
Subject: [PATCH v2 2/2] phy: spacemit: enable K1 USB 2.0 PHY by default on ARCH_SPACEMIT
Date: Tue, 25 Aug 2026 08:50:07 +0200
Message-ID: <20260825065007.69353-3-bbanelli@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260825065007.69353-1-bbanelli@gmail.com>
References: <20260825065007.69353-1-bbanelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_235023_393049_583B226D 
X-CRM114-Status: GOOD (  11.74  )
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

PHY_SPACEMIT_K1_PCIE has "default ARCH_SPACEMIT", but
PHY_SPACEMIT_K1_USB2, directly below it in the same file, does not.
Since the symbol is also absent from arch/riscv/configs/defconfig, a
plain "make defconfig" build for a SpacemiT K1 board ends up with the
USB 2.0 PHY driver disabled.

dwc3-generic-plat needs that PHY, so the result is a kernel with no
working USB at all on boards such as the Milk-V Jupiter, where all four
USB 3.0 type-A ports hang off the single dwc3 controller.

Give it the same default as its sibling.

Signed-off-by: Bruno Banelli <bbanelli@gmail.com>
---
 drivers/phy/spacemit/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/spacemit/Kconfig b/drivers/phy/spacemit/Kconfig
index cd7ae48d8..b5f36621b 100644
--- a/drivers/phy/spacemit/Kconfig
+++ b/drivers/phy/spacemit/Kconfig
@@ -22,6 +22,7 @@ config PHY_SPACEMIT_K1_USB2
 	depends on USB_COMMON
 	select GENERIC_PHY
 	select REGMAP_MMIO
+	default ARCH_SPACEMIT
 	help
 	  Enable this to support K1 USB 2.0 PHY driver. This driver takes care of
 	  enabling and clock setup and will be used by K1 udc/ehci/otg/xhci driver.
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
