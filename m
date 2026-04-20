Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD92F5A8B1
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 19:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMu+83ktx7c4V0moE0J4PfjD1pDfCyeX+tnw4YfC9Us=; b=QXYFmWgrZKMosk
	kQSlMcjnWwry+Xw2ylgRRvsoaQG7k1gjGjqGgF43evAqKyoknTeXVCQFyEu4qw5cNOYLirBg7TL+H
	01jnCTHtGMATqpbrd4ZBw4tvMKW1FiNBFTsAkal52lCWPSOAwQXI/yCvypUhzKyB7TGI9ck87LzW4
	uJtqq3pk63ctKqkCo6XjYCAGBMwS84PTzqqz8PAVSpA4xVt2uC18WNxhBJSLgEfLVfn4HmLOtZu0K
	uEyXdiQ8yvF0LTG9AnH+YyW0sJxdd49aTC8DsuEKLBq2awiRa4jQTX0jotHlWjhnuCoi9/ui/HfmQ
	kHuUKwU1bc4xUazkLA0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEuAV-00000007aGW-28iN;
	Mon, 20 Apr 2026 19:20:27 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEuAT-00000007aFt-2h1O
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 19:20:26 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8962926F22;
	Mon, 20 Apr 2026 21:20:23 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zyzU4oivZufu; Mon, 20 Apr 2026 21:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1776712823; bh=Fsbxr1KoI6nvNJg1iQcsK0ER51AzQq33E2rDDFIUpTE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=aInaYlC/7dzZhmMg15U1Ny2/11f4aKXfT2xj6SVuqjjVt90OwEDAL+TsUNj/ZEibn
	 Fv+qYgTfg4gdUWrdyjWfJp/nxaXur27nk9BSlD9y9Cf3rugzQmvJBQ3WHL7NCEAPKx
	 Rib6wVsFFv0PNICLtCCgXYJAzTmQFBWhdC1uf3MHtwHILeAtP1xIQYSF8dt9oK6Z4n
	 JnGgieWjAciESDw+1vTlZE0sYSzW7778w+pXwAUkcwCAYfIvkxBe1lK7sFYnuouEZm
	 /uKSB98u9V7CwrpUgN84jQiTRozt6p4d+DFCGdsA9KGzT7KXkdh3q806Rh6xmwAoZi
	 BAuKg051yH3jg==
From: Rustam Adilov <adilov@disroot.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH v5 6/6] phy: realtek: Make configs available for MACH_REALTEK_RTL
Date: Tue, 21 Apr 2026 00:19:41 +0500
Message-ID: <20260420191941.81834-7-adilov@disroot.org>
In-Reply-To: <20260420191941.81834-1-adilov@disroot.org>
References: <20260420191941.81834-1-adilov@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_122025_823227_62220301 
X-CRM114-Status: UNSURE (   9.17  )
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

Add the MACH_REALTEK_RTL to the if statement to make the config
options available for Realtek RTL SoCs as well.

Signed-off-by: Rustam Adilov <adilov@disroot.org>
---
 drivers/phy/realtek/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/realtek/Kconfig b/drivers/phy/realtek/Kconfig
index 75ac7e7c31ae..76f9215d8b94 100644
--- a/drivers/phy/realtek/Kconfig
+++ b/drivers/phy/realtek/Kconfig
@@ -3,7 +3,7 @@
 # Phy drivers for Realtek platforms
 #
 
-if ARCH_REALTEK || COMPILE_TEST
+if ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
 
 config PHY_RTK_RTD_USB2PHY
 	tristate "Realtek RTD USB2 PHY Transceiver Driver"
@@ -29,4 +29,4 @@ config PHY_RTK_RTD_USB3PHY
 	  DWC3 USB IP. This driver will do the PHY initialization
 	  of the parameters.
 
-endif # ARCH_REALTEK || COMPILE_TEST
+endif # ARCH_REALTEK || MACH_REALTEK_RTL || COMPILE_TEST
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
