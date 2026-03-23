Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FE75D58CB0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RREDNwkaF1UmrjbEfM63zTIb3CsfniFLby+kRZjUm0Q=; b=rBCM4twEWp1TqW
	VHeDVqsUbumtXJlZFUsJfcbmi3x8weXle3Y9ovU53rzVGdAniWTKLAhMLkn/t91c67yldi4sr5oDd
	acND5tJVj4fHPiwJ84VbnJY1GOuOHOK69lH0KFp+SsnE0qeoQjqYhAADmxKf74olpc7/dwUJToiCm
	PuA09zkcEo0kwdQLypRHSMDJ9Ec5wqRnRUeobon3TpEasgirlg6M8MtWPgOoWrJIp8hCHl7407Ako
	T2ejrG5GTBuVOzQAsl3qfFFJuFlbNDtf8szZ7dbcYRz7Pj4QOSZNu5dlh1B2n8vNIM++0+YIgN+EJ
	6Bp1aQ6UEhG6WCJWYVLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVD-0000000FsBy-3vMW;
	Mon, 23 Mar 2026 01:54:47 +0000
Received: from mail-dy1-x132c.google.com ([2607:f8b0:4864:20::132c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UVA-0000000FsAn-3Bm3
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:46 +0000
Received: by mail-dy1-x132c.google.com with SMTP id 5a478bee46e88-2ba9c484e5eso2165293eec.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230884; x=1774835684; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hFZooOyb7hfKDEpM9yx+Ztfv9BY6tuw4luVBl13uVrY=;
        b=KoQXhTcpv11ZtgWbLELCbDr2OmIiAWcWrO38jiEzBHP/M1Eb5fdtdkhspKJS7Qrxhn
         Vrt47mCMLx8wzUL8o98iObA34gEHv3X42mfyPM71n/otJfS3B+JHoZnHvmwO+T1+AkaP
         aos4fbwH/XjNmwEf+jOXBWkl0CmUWECf+gXLOJ7Blsr4jGRnrwmYMim+N1zmqvmMewR+
         QzvzmvFRduzBMKFuVUNlPLftziAmaDHqQpfF+haUP6JkTEkPzFO3pw2QUQA4a8BBl5d1
         U7fg7gzZPooJ0m8+BLvk3fRMrMCQqJmu+k1harLom/aB0rb2jpMicDxG9rDjujezl3di
         zJUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230884; x=1774835684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hFZooOyb7hfKDEpM9yx+Ztfv9BY6tuw4luVBl13uVrY=;
        b=KAmE1SF95vHPffNxCJj8IWY0/mizeP0vadZm2fF5fkfdHLphceLJjiC4W3qlYcAwlD
         Fxl0+hBps40rImb4mgRJ0fJ+AgtpykZzTj63AWT0k64qmKqCM5l9vXIQ+aG5LY4339vT
         SIUEfijMd2P/miGeD5v//whTSExj5D/DXgLhDTlK20pmMsdS/EbBBwoMNx6grHjcWZiN
         s0GWf0gnEQG5Pi944FmXEzmECAw/5dc4IQVxj2yVp5qyLpGlJnZIyJNr3iPJUiCYGLfO
         9FPyZbQLnEVuGs30HR0yPsmfVKUo4jhERHfisA+pOrCuFJZyQFix/CrpZsf+g7tY0j9G
         L/AA==
X-Forwarded-Encrypted: i=1; AJvYcCUFsjXhRPpEvgC1pv8NM26bPLfL5YXadVlbgnyc64hFdfqndrIZMUNCAycVrEq52Vz68/u9iiJ2NOY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoDVff3RKmg7nbdYCGdMCwitJaHWJSLX2GHioD7rxR7wKkQZ8f
	1kbes8iwElJLx9ruSt9PBWVRZCEJf3p4J0392CNwoTvXhT4xaXbAkFdH
X-Gm-Gg: ATEYQzwPSAQLO4honoe91R3elnFz67SO6AC+SGieTHX+mf5Gu2fJuv4s+8TRiK3mmkx
	XiOCvLijKt0pT49YOf1T+Wn5kieecpPZHjgTxmiaCTzvDZX6S2QUs56geZGd5sXoH0w/oKvQmCE
	1Y6uHtP1TPWkUR4iW1xR2YwKyaSSdcprUG1WjoILWVbG4TbAUOfEGSHMVSacbDSb0f8Ay/nlpo+
	vKaJN2reYqQ5aXk2imSVchs2Q0bZ05dnArPI/w0+yts231+7HCqYbkYVGlt//2sPSdVV37tU41a
	Peh1IPv1vmoHryTCBuD3cloTSEEvVGyjYCI7qSggwmo7UQOQrbnzoWWAtXlhmRdNjzBOALSHXyP
	4bbvnqqIPAfkNKhZqk0JgC3NUwzjAsphz6EnKNPp0Jtoo4IWwSvQDwI8Soqpp2Gvk7/68dKwkcM
	ipa28WXslY4WoV0O9jyvnyCcdZc2TWqW4hGfKXhreaaJKaZNXBH1qj2w4d+XEFsvFHj7MjYxz4x
	6sBhbEvZSVm994=
X-Received: by 2002:a05:7300:d517:b0:2be:1cb2:3a6 with SMTP id 5a478bee46e88-2c10980a523mr4129993eec.33.1774230883846;
        Sun, 22 Mar 2026 18:54:43 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:43 -0700 (PDT)
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Peter Rosin <peda@axentia.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Moritz Fischer <mdf@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-spi@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	driver-core@lists.linux.dev
Subject: [PATCH 03/10] spi: switch to using class_find_device_by_fwnode()
Date: Sun, 22 Mar 2026 18:54:21 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-3-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
In-Reply-To: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
References: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185444_824869_5996AA3F 
X-CRM114-Status: GOOD (  12.68  )
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

In preparation to class_find_device_by_of_node() going away switch to
using class_find_device_by_fwnode().

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
 drivers/spi/spi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index bf1df365f795..071a9ffdb59d 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -21,6 +21,7 @@
 #include <linux/kthread.h>
 #include <linux/mod_devicetable.h>
 #include <linux/mutex.h>
+#include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/percpu.h>
@@ -4948,11 +4949,12 @@ EXPORT_SYMBOL_GPL(spi_write_then_read);
 /* The spi controllers are not using spi_bus, so we find it with another way */
 struct spi_controller *of_find_spi_controller_by_node(struct device_node *node)
 {
+	struct fwnode_handle *fwnode = of_fwnode_handle(node);
 	struct device *dev;
 
-	dev = class_find_device_by_of_node(&spi_controller_class, node);
+	dev = class_find_device_by_fwnode(&spi_controller_class, fwnode);
 	if (!dev && IS_ENABLED(CONFIG_SPI_SLAVE))
-		dev = class_find_device_by_of_node(&spi_target_class, node);
+		dev = class_find_device_by_fwnode(&spi_target_class, fwnode);
 	if (!dev)
 		return NULL;
 

-- 
2.53.0.959.g497ff81fa9-goog


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
