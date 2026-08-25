Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E5CC61CE3
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 06:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CTfSdDGNoLB3J+uxlqx8nfOr2m6xeM2FBj+gLAPDfM=; b=uZ/bVdgHZ8flnh
	cyBuU86jd+IM2enf4uI9SDIACQgAEXxPX8nkakrIcShmebeFQSoFOF73GseES0UhU6cUcOz76bYL2
	AlIfIqKqq+LPGIHbUXx6k/Zx7yDTmgbOupTpTtMv5STP0ubkM58uv/nsIrQQ3nktYn0ovFc0ikAL1
	W/n7hrHRccm5gfwVVTeN8+2C/dzHZPDEoAJ40Fi6/8zpC1kNd2ItzLcNZ1yz6cS6npa7LBb+4DlMK
	qLyc8G3hIeLhyUt3xt22NlwGw5KSLxqYM8WQOs7emlTErOvEebYmLaTgPnFDv38Vyr/rzx1T2ZWuI
	ZZilYBmCsMlrC3Dw3UXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wykzE-00000000F2X-1MWF;
	Tue, 25 Aug 2026 06:50:20 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wykzC-00000000F1L-0GB1
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 06:50:19 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c1f758014b8so477352966b.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 23:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787640616; x=1788245416; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y9QzWtIe+gxS6pJym3F3V1dPDGFuF/K6nAoOQWMJ97k=;
        b=FccpUO9mUd23vQLRuipVkQZa41B0i31AduhiFcUI5G/kQoMaeEmzjGvm/85XPLOPFz
         9Ry/EtO3iXhowqjiZ7aRB5wUnI+CZ4LUMZS1RC7ir2KGWGuR5QkbVfOruiJnDh9cW4un
         8RohHMinbV7LI19UlGdIl2DHcd6ZSyhEQnJgYoLcxqtwB9YkfEZXN2ufxQzGpn8p2jmR
         dn/zxWWNbU3y6hpx+rFL/XqKwFv8wOm0sEUzduXTX/l9M3MGdKhWSk/o8HKU114Vi3/0
         TtUgxN5ZxrzfFK9Fu6BZYzB7venuCNan4MMjYGj0qhdad4hPkbXxfLV0fgrbp2SZZTnT
         sZQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787640616; x=1788245416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Y9QzWtIe+gxS6pJym3F3V1dPDGFuF/K6nAoOQWMJ97k=;
        b=AL4oJgtWqQ6LXSyHVKSyy7WaO1P12sSzAOjYsT+r5TlEt5BYLkqy4/e5GmhkK5cB2T
         ZSnHxSdG5+8ZVj+M+bNS/vVMM67TBfpEiN0NEm8ab4wVdge0E0ijmc8uFA1WCyUOT6Od
         X86AqTdIYJBh8g2A7Rzj8SDPeur9N7Mb2OcUsaIIZYPWOWbhQbuTDtd6mzZEG24UoLWX
         kCjzwXjW5iGS7uV7BLD3n3O+aj58VUU10NS3klKW6DlpAk8kxMHaCWCWViMswgaVpGxM
         gpkPMGzL06rnZUklcdp4sWspnsQ8oLEBkA69KBP1cWivjgT9v+4yfJdd11aws21SJoS2
         42OQ==
X-Forwarded-Encrypted: i=1; AHgh+RqfN4og1diAHWzUsnNi9GPlZttEiH97cmOODfMCdc0+gJ3fqW+gwWyHU7wf3wd7Mmhc7hacx9wpZ9k=@lists.infradead.org
X-Gm-Message-State: AFuF++lF+k58bWnnekRX8VFJjafs8aBdGLCjkNO/BUA8bXBTzTxfBC5t
	YWUMgn32bUWkCwvDqEAN385zq6V9jmxe2iPTVJCzMikyOvAmUrQCc1mj
X-Gm-Gg: AR+sD106ktWs4PWMkBlvqJ7KK7fCJFedwJv5GmX5BwJu98iqlV6gtnHrPOfiqXT6RAH
	IEI8Tq/ZoGLQXk2FzfUcvjD00w5fnOsMjFgGk4/d+04QoGXK37CFyuyf/mR1LzhRIc1xoxQ+Z4f
	7sAPFV8vTDde2GjEBI+gFERsqPyXpokXD9E/eZLxWL0X7At4EHoZD7ejyzkEzlcnHfwhtTbguEk
	TaHaIOnTgJ5F4EaNyk/T+27KcTlDGrQHR4suCy8iVwkBwhGrD1Bu+FVdVtO24MU5Pyb3UQ/OJgt
	piZNhqqXxTtcDe9Gni3Bz9NmWiRad/nBOgO/PKC0cYqhSa5gnZM2oy3I8KqlEPxWrbk1nD+TpLv
	oHEDQgzDnRYzXvfY/QcxbJVeNUukEPD+1lUB+ZM9jamWhBwSP8e/YZ34vd/iC6x0onsx8a9GyBy
	rd94+QkI2aBb5Yn21AAusimqFex1Js0mcryH48qT0Wp1/U3g66VHz/bqM+NqqJqyyPxNPeuqwDp
	9ZDsIPWD7B77A/u+EGxAuSbdCUbXedSnZRpWd2w2Ev5MqiorEI8pvpxPVtgfPzzgBeW
X-Received: by 2002:a17:906:d8d6:b0:c21:34a3:4d9c with SMTP id a640c23a62f3a-c246a72174bmr2767472766b.21.1787640616006;
        Mon, 24 Aug 2026 23:50:16 -0700 (PDT)
Received: from GOLDENAXE.office-radnicka.localarea.network (c82-214-103-66.loc.akton.net. [82.214.103.66])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c249672becesm1658627666b.42.2026.08.24.23.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 23:50:15 -0700 (PDT)
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
Subject: [PATCH v2 1/2] phy: spacemit: fix K1 USB 2.0 PHY Kconfig dependencies
Date: Tue, 25 Aug 2026 08:50:06 +0200
Message-ID: <20260825065007.69353-2-bbanelli@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260825065007.69353-1-bbanelli@gmail.com>
References: <20260825065007.69353-1-bbanelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_235018_115719_30F5BC1C 
X-CRM114-Status: GOOD (  11.40  )
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

phy-k1-usb2.c maps its registers with devm_platform_ioremap_resource()
and wraps them with devm_regmap_init_mmio(), but PHY_SPACEMIT_K1_USB2
neither depends on HAS_IOMEM nor selects REGMAP_MMIO.

REGMAP_MMIO has no prompt and can only be enabled by select, so a
configuration that leaves it off fails to link.  In practice the symbol
is usually pulled in indirectly, which is why this has gone unnoticed.

PHY_SPACEMIT_K1_PCIE, directly above it in the same file, already has
the HAS_IOMEM dependency; without it PHY_SPACEMIT_K1_USB2 can be built
under COMPILE_TEST on architectures that provide no I/O memory.

Fixes: fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
Signed-off-by: Bruno Banelli <bbanelli@gmail.com>
---
 drivers/phy/spacemit/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/spacemit/Kconfig b/drivers/phy/spacemit/Kconfig
index 5fdf18fce..cd7ae48d8 100644
--- a/drivers/phy/spacemit/Kconfig
+++ b/drivers/phy/spacemit/Kconfig
@@ -18,8 +18,10 @@ config PHY_SPACEMIT_K1_USB2
 	tristate "SpacemiT K1 USB 2.0 PHY support"
 	depends on (ARCH_SPACEMIT || COMPILE_TEST) && OF
 	depends on COMMON_CLK
+	depends on HAS_IOMEM
 	depends on USB_COMMON
 	select GENERIC_PHY
+	select REGMAP_MMIO
 	help
 	  Enable this to support K1 USB 2.0 PHY driver. This driver takes care of
 	  enabling and clock setup and will be used by K1 udc/ehci/otg/xhci driver.
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
