Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54B1DC3601E
	for <linux-phy@archiver.kernel.org>; Fri,  4 Apr 2025 12:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ll3PiGLU/DfQ3Jci1gkmBAGbbPO3RfjrwpfM2x4/zYc=; b=SQthSuvOZKGP3B
	U4MiG8mSXj2KGywH0LAlyLiIHwBW5TpGJY4LstUlfz+KPvoQzD5HFNU3yNy3yegqZr1iohikLREsj
	DUhS0Gul7HEDmkN/el5oX4rmgKD+0vqPs7lwIIZXAal8ugQKHsEKCDfD1xaZ3QaJtAYyWWkUwZjtz
	ncLMu/bq8MEKFGEhq2iqtyx08Df953cpUyBXmEGXu1IcqWvzbO3yZ5lIIM4edC21TZYD5EOJgQ3vY
	V+OM8MIndk5AFwBCoTdfHzgntQ/j8ZStS2IfQOKdNKipTsFpE85pzGxERHt5mMSapOhDcmLGC42HX
	5wPTD7NKPX5ftSeWUzkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0fz4-0000000BeoZ-0L33;
	Fri, 04 Apr 2025 12:17:18 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0fvO-0000000BeIX-1Ylf
	for linux-phy@lists.infradead.org;
	Fri, 04 Apr 2025 12:13:31 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-391295490c8so162737f8f.3
        for <linux-phy@lists.infradead.org>; Fri, 04 Apr 2025 05:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743768809; x=1744373609; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BCrk6cV7dA6AvJCKRlUey2b+xo8EnSHwCLZ5f42ogPo=;
        b=KhTwnrf/HaITQa1JYklk6RjlfsHd811UwBHMRAtZzPHkg5USnu1IdWQRihHRYOmIxS
         1Jpwk8sZ39THUPnFjNt5gd5ObCgh0Th9MKdbkqNATU3jYecE0BsdT7njMv0qO5V5XD9Y
         OrpWID6vekZjGPet6L4GQFl32tix2094aD3MyWdgVppA7nsSAJSQnNHyS4s6xQggANMI
         zKCnPILq1ZPaNo66+u4g26tM01Ty4SGyATs+zqfFaWiHg9T2pYiMFFe77mKPwnCYeYRo
         KcuNwu22M2CajC5TiXG2UWQhr2PDrMyFASHDnUTJIHW8s6kIvltMINboMHoRytAaEBhk
         8R0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743768809; x=1744373609;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCrk6cV7dA6AvJCKRlUey2b+xo8EnSHwCLZ5f42ogPo=;
        b=aSoGPKs91kQMYgaaPYF1VrDCqr67uWHdEff75dc1zQX7kE9SKNLHQ9xRzbFhTkIZ+m
         6sDYIo6nbse4GZi+qfcNwDMaWsHjzjkDZJ9u2J08EaE+lieKEcC7bEF4u0LwQEoXkcPK
         bkS3ncQIZdcIhVTHQQo4FM7mpo7XyELuDdXEYxEAVzj6WT3c23HmeJ5MOBOfRnWphQ16
         LogbZTq89GT9mjkhCALPguOgVKTB+KApyivOC84TUH/ZvakE6rstXRpJU+1wqruRozT7
         u3bkM51BsSiXV/JuG8X4iLeIweXj6gmNBwfQAwLJfDGvxJXIzZmyuROQ22uTgShkuVMr
         T4PQ==
X-Forwarded-Encrypted: i=1; AJvYcCWptAPAXFZ0w2sMx/k16xKIe1cxROgPyRbdNUu6A+sbYaOWLgOUpvLmYItKOmVMTqwqCP9rnnoCqjo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/brT7tu8UnjChLJ67RhgKzAhpzh4meIYOqNdcfPmy0pvf1bwc
	hz38S/S+Tk+rfQq76B9IDOzO070GiyR459QYx6qLao4PdHM+Pv4t/3JDuofqxOY=
X-Gm-Gg: ASbGncvJ3Pcdpq1fREEaemYVRG/4oQEDruVA39ptgBTyPg/bv+i1CuQSdkrXHs2IJxE
	Gzqe8iYuys/cAYImTeUd6aZW/x1vX+THZfj6NEVi7yV3iEDWirRU/8SBVHm3claRT0DO0Wn25f3
	IVd6jYzLn20ide0iPQwck/OvrfiOEhKk3MaPI7ollVUGGk6uujuwJDiNpySpUATy8nv9SXfSbVg
	TyVxm+EwFKS25jR8pFy/TlzSiF3dpJNGGZOUBtCpBAY5K+Sz3OT0wrKT4SSEmPJOfZG97MRJCzp
	xYwk/O8cW+4qyB0yzbHPbPc0h0k/MQI8ecxxvBUFOam43C4eYr/B1w==
X-Google-Smtp-Source: AGHT+IFDNVJaVv8BTUMTy2B8iBBvdj+QxuWwYbdyak/PIbEAyuqvg0EqV1eAnhkPorQ5j8Iws2ew0w==
X-Received: by 2002:a05:6000:186f:b0:39a:c832:4f3b with SMTP id ffacd0b85a97d-39cb35a97camr908140f8f.8.1743768808836;
        Fri, 04 Apr 2025 05:13:28 -0700 (PDT)
Received: from shite.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30226be7sm4140344f8f.89.2025.04.04.05.13.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 05:13:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] phy: marvell: Do not enable by default during compile testing
Date: Fri,  4 Apr 2025 14:13:25 +0200
Message-ID: <20250404121326.318936-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_051330_416159_BE792487 
X-CRM114-Status: UNSURE (   9.81  )
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

Enabling the compile test should not cause automatic enabling of all
drivers.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/phy/marvell/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/marvell/Kconfig b/drivers/phy/marvell/Kconfig
index bdb87c976243..bccd72dccb77 100644
--- a/drivers/phy/marvell/Kconfig
+++ b/drivers/phy/marvell/Kconfig
@@ -29,7 +29,7 @@ config PHY_MVEBU_A3700_COMPHY
 	depends on ARCH_MVEBU || COMPILE_TEST
 	depends on OF
 	depends on HAVE_ARM_SMCCC
-	default y
+	default ARCH_MVEBU
 	select GENERIC_PHY
 	help
 	  This driver allows to control the comphy, a hardware block providing
@@ -40,7 +40,7 @@ config PHY_MVEBU_A3700_UTMI
 	tristate "Marvell A3700 UTMI driver"
 	depends on ARCH_MVEBU || COMPILE_TEST
 	depends on OF
-	default y
+	default ARCH_MVEBU
 	select GENERIC_PHY
 	help
 	  Enable this to support Marvell A3700 UTMI PHY driver.
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
