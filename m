Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 175EBC3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 21:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22MGiwOZaVvvB+mAWWAH4jx43Nml4qSHYlVq1bUyT+g=; b=j4rbIIEUg4wpeJ
	iu1ueF/eoZg9BhLZTKvYXLieiTDkoT7eWK76orb/hfyiDNBMy9TtpX4GSThUIExvZ5m42HdPCQPp0
	Va1FvaeEImrWjeT4yCK1n13swvcyBur+VjR+tt2OToUdkdFcvH0/350kunaWRMIFXWpmRSSAkLPnt
	Yey493HcwaIu0RO0AcewTa26bGnMqajcR7Rj6hEgusRc9baQQHAuZUjhSBn9kjU541ruoBUpOvuYt
	n6ZuY3b/ZabGz//L1q8sY3uQNzJVaWo4up7RiRU78nXJ6UDfJoY+a3LJUDYCtaxR7fAJbb81PYSHK
	rnNyyCF8VCzJHUhUCnJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajDR-0000000Dzjn-30mm;
	Sun, 04 Aug 2024 21:56:37 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sajCB-0000000DzIW-0rB0;
	Sun, 04 Aug 2024 21:55:20 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5b8c2a6135dso2473960a12.1;
        Sun, 04 Aug 2024 14:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722808517; x=1723413317; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BnqKBVLkVbPU4IXqUitU7Vb8AZX6hoKEj/nS2/Cpby8=;
        b=IuR5bPyVQY4awYz2oI07Tk2lM6QFNYn1LZfHIhK515djD+9A8rkrcoeJPFfyMxZ5RI
         jBbNusQjhk01HkAbF89GDcb3g7jxHlHoPBN62CAsscAjsTqwqGykU9boeiwkstH1qt5c
         tMdd0qsXAmsfEY3pDalNadQlLHZK+Oz84rLQ3ohXuzF57h4yulAbplnB181Gra8kuJzQ
         Y3CqD1rZzoD6bOXLbBBO9kUshPcKWwlgDWlgE/hXstO772wEjsi/Khn0VQ6+Pd0vyJNe
         GrdFu5njduelPhKwKA7LhYieZrR702XdHvAXHfaHcutZzppVMO/9iQeaApTLCGGHZOU8
         VwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722808517; x=1723413317;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BnqKBVLkVbPU4IXqUitU7Vb8AZX6hoKEj/nS2/Cpby8=;
        b=pcA2s3Bkf/Fh7jWMSXt6Y/c28ZzXKnOfi9ikz2cFonPFKz3vnOzb2err31jdEW8AcI
         CrkSrbVB71LoSpO6TbvpnGPutkGWfiJlfPbJ7Uen8GVb7tHtIWmVN0RVMP55JlNCMzFi
         rZUdImdt3S+VqWMuMYga0DYBD4QTNC63e+ZQDSWT5cXskhKRi1Jl767PPJ3RoWkjfFFN
         4yuihoUppXPbRrO1UGyHUSYR9AxFGgcZvBE8D1u5nqe4klD9qihE7yVPauhOV8qynmpo
         VXm8kuxqX9vLUvKhgCWnMLttL6eHC5+G8tc2vZZrf06OKxcfXM69hdNVIWPaEvUtI4CF
         TkQg==
X-Forwarded-Encrypted: i=1; AJvYcCWkfye3+x7jPFAKIbh6lmaj0vCMaJTMnZjXe5G2MjQYILq5AmrC7augynVVvjxw1gXlsIw7/H2C3hKNHTn93PcQB/tF2tgeQejG9qfvzG1dkClPUvE=
X-Gm-Message-State: AOJu0YyIYVlFmZ5+uXXrHTtFYcgE8pBNOOCsQTK2SDtiXT4SsnG908Bw
	WiPPW07ZB+kGE0RUzYKzMao1471x6s3z+2aX5n1g/2FifL1QxNR+
X-Google-Smtp-Source: AGHT+IFtygrQuiSBintHx5W6ocZLAzQsG+1XvtKEK77LBl6f8+VAzKFjAwdsj0j0dO3Bx/GbHi1UqQ==
X-Received: by 2002:a17:907:2d06:b0:a7d:a080:bb7 with SMTP id a640c23a62f3a-a7dc4fdfe6dmr762216066b.36.1722808517365;
        Sun, 04 Aug 2024 14:55:17 -0700 (PDT)
Received: from localhost.localdomain ([2a02:ab88:3711:c80:e7a7:e025:f1a5:ef78])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-a7dc9d45452sm370485066b.111.2024.08.04.14.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 14:55:17 -0700 (PDT)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	David Virag <virag.david003@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: [PATCH 03/13] dt-bindings: clock: exynos7885: Add indices for USB clocks
Date: Sun,  4 Aug 2024 23:53:48 +0200
Message-ID: <20240804215458.404085-4-virag.david003@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240804215458.404085-1-virag.david003@gmail.com>
References: <20240804215458.404085-1-virag.david003@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_145519_296346_0DCAB0BC 
X-CRM114-Status: GOOD (  12.40  )
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

Exynos7885 SoC has a DWC3 USB Controller with Exynos USB PHY which in
theory supports USB3 SuperSpeed, but is only used as USB2 in all known
devices.

These, of course, need some clocks.
Add indices for these clocks.

Signed-off-by: David Virag <virag.david003@gmail.com>
---
 include/dt-bindings/clock/exynos7885.h | 30 ++++++++++++++++----------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/include/dt-bindings/clock/exynos7885.h b/include/dt-bindings/clock/exynos7885.h
index 4ce86810b10d..cfede84b46b9 100644
--- a/include/dt-bindings/clock/exynos7885.h
+++ b/include/dt-bindings/clock/exynos7885.h
@@ -134,16 +134,24 @@
 #define CLK_GOUT_WDT1_PCLK		43
 
 /* CMU_FSYS */
-#define CLK_MOUT_FSYS_BUS_USER		1
-#define CLK_MOUT_FSYS_MMC_CARD_USER	2
-#define CLK_MOUT_FSYS_MMC_EMBD_USER	3
-#define CLK_MOUT_FSYS_MMC_SDIO_USER	4
-#define CLK_GOUT_MMC_CARD_ACLK		5
-#define CLK_GOUT_MMC_CARD_SDCLKIN	6
-#define CLK_GOUT_MMC_EMBD_ACLK		7
-#define CLK_GOUT_MMC_EMBD_SDCLKIN	8
-#define CLK_GOUT_MMC_SDIO_ACLK		9
-#define CLK_GOUT_MMC_SDIO_SDCLKIN	10
-#define CLK_MOUT_FSYS_USB30DRD_USER	11
+#define CLK_MOUT_FSYS_BUS_USER			1
+#define CLK_MOUT_FSYS_MMC_CARD_USER		2
+#define CLK_MOUT_FSYS_MMC_EMBD_USER		3
+#define CLK_MOUT_FSYS_MMC_SDIO_USER		4
+#define CLK_GOUT_MMC_CARD_ACLK			5
+#define CLK_GOUT_MMC_CARD_SDCLKIN		6
+#define CLK_GOUT_MMC_EMBD_ACLK			7
+#define CLK_GOUT_MMC_EMBD_SDCLKIN		8
+#define CLK_GOUT_MMC_SDIO_ACLK			9
+#define CLK_GOUT_MMC_SDIO_SDCLKIN		10
+#define CLK_MOUT_FSYS_USB30DRD_USER		11
+#define CLK_MOUT_USB_PLL			12
+#define CLK_FOUT_USB_PLL			13
+#define CLK_FSYS_USB20PHY_CLKCORE		14
+#define CLK_FSYS_USB30DRD_ACLK_20PHYCTRL	15
+#define CLK_FSYS_USB30DRD_ACLK_30PHYCTRL_0	16
+#define CLK_FSYS_USB30DRD_ACLK_30PHYCTRL_1	17
+#define CLK_FSYS_USB30DRD_BUS_CLK_EARLY		18
+#define CLK_FSYS_USB30DRD_REF_CLK		19
 
 #endif /* _DT_BINDINGS_CLOCK_EXYNOS_7885_H */
-- 
2.46.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
