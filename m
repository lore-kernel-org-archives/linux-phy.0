Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C6E3D58CB0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 01:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YB67yQGk30edoUC2pSsATpblF5a0AgegWxe7MyEdBN4=; b=A0Apagns53pU8i
	DDIns0ltDBxeW/3dX5yONanl217sALgkRHR/t4/NcqS8xXzZcfSCZrnXCM8RffwgdSRW9WQdLqiJf
	tLP9V7O7v/cY6+jrtDEKm6usbn7DfwtIppikivqbIQdRInfW8GgSbvBRYIAmfMv1U4ZpwGEbRlHl8
	SwEBXuiA+E1HGZYvIlY8auIJLGBipnx5QIPyKlrNwHt6aSBsIzegLyuNrhjgRX2/hihH4DjRbtQ4D
	RWdXtmPaPP6q4aZD+jTI0ac/jKZYwlnUd4xP7bDmJJtlrHhm06grIcDTqBsCQXxh4rocnXuOk4Aey
	xQHuuE37W5XcG0aMxF8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UV7-0000000Fs9S-36QD;
	Mon, 23 Mar 2026 01:54:41 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4UV4-0000000Fs8v-3tG7
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 01:54:40 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-2c11c43aca0so882146eec.1
        for <linux-phy@lists.infradead.org>; Sun, 22 Mar 2026 18:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774230878; x=1774835678; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CFNqFKHYHzU+/IYMzEM9SYl6am5Pz+NCaLhPwszpQBw=;
        b=HA606wbuDiu5yjrimpFnKftEjbOgHsGYZ0p802h7NBPyjxXASSVQEV7jgdyAjgvNy3
         tgXOAe3GkQsRzhRCredJHlQAJWo8498xu7eHE+FUdmzJbSqaLEm68ky7NxjP5r0Q71eC
         eimi1Gq6lGSSxIuofqvzh7NgOHGLrBed0OxC+xqr1zzvXz3zVzJZZsGwdBzsf05dqoc0
         que9g+R8G/OUUTtA8TufLmAvhPGDZ5Ezxewnxy9HcGLFhkpnOlygpJWOJxdJYXkZCWtD
         B12U5XJ3IHFt0r/FBUbBnzxEb5+l1uwjCI7ruu47KIP9e7x+qscwD5637sH1HVf9N2C+
         AI/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774230878; x=1774835678;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CFNqFKHYHzU+/IYMzEM9SYl6am5Pz+NCaLhPwszpQBw=;
        b=aTqwPP1N5HNmoPEht+q6b/8Q96ROnQg1Pdv9dQeNUkYHsAKcPNDVQ5qsMiavTeHJEj
         xl2XbTyZhBpqLbliUAQ4Zig/HICKf1ZjEYraeSwBEfwzzmHflv1nG6llTqp6RdTtuiaa
         Csk2GLoohlU1Atefn78TuO59FwaEgTtfdKyIF3KoPmPzEIAB5U5vLE1oRRhiuk39EPcu
         80a4lg6AKcvrO3cxj3k3tzfDixIu4DLY5AWtmISj/9kSdsg9Bkr2AeGhfmbXUBQjw4pG
         GIV63h8zm8Rs8Zg5oHpDcrChbyp6T+pN3loYDq9TPsNljOuFTtyMkkILzREpplFB9/Lz
         Ebhw==
X-Forwarded-Encrypted: i=1; AJvYcCXdBdaPg95yoqVXOOxfyBj6AfMEOyiRc17fj17F9lSTPFN4k/Zc8s6URNlpYs38i5t3hVVHs1XVEmA=@lists.infradead.org
X-Gm-Message-State: AOJu0YxUlVX+PapiD44xXQQjxBrp+yx67d/JPLYy3ViWBgdTx4BYNfQa
	h/OLrRb/CqBSzT7BmuMj83mjYL9zKxiA0W5Ro/1K3Req5PSX04h13kfC
X-Gm-Gg: ATEYQzw0q4e5WG2Ns/ZdbVM7OGVnfOP9KyrF9A5I0jfc4Yyt7jbvZgc+o3BZe2zPs+m
	RpmOgFbMs7llg0VQatJaLRWI4bkxwDcHzrNkvwhjXDxMLJWXgeeZnihJJ+hEHOW8U/EoxGRu0Bn
	1eEA9esUA5IExc/0PlQ1p5IiqfMaUFDCQlY0KTLJzotuDdClHROGd8etoG/WxXmj47N7rL+B81n
	hCK7fyifeQU4ffN+HIW8kqfucAUKp+wgXP+JgvZbChCTRofj/TjNEmT6kt+v8uEyGeRwgDsnwCc
	I85tquUzFabOWFLIuLU76jk+l8j8MJbGkFJAFVemb1U0rp5woJ6I6JLa5oP+NkKYtilE+flRhKJ
	TNkulOtgy+CteVC2LaKGdWRpkz9rgXZZgb6hbWQFX7nFkXeIuH//cRz4ctoO9gPiurImJrtt8gF
	9UURjQicdOxS4wnVsRhsR3kFvkPiIUxctbrWDAFG2PyLxrYNwdEjLnNrYFhcq2hg5vs31a0gmb7
	LyChJQ0NzY6L3s=
X-Received: by 2002:a05:7300:571e:b0:2ba:a1a6:c73 with SMTP id 5a478bee46e88-2c10974ccb6mr3875035eec.6.1774230877711;
        Sun, 22 Mar 2026 18:54:37 -0700 (PDT)
Received: from dtor-ws.sjc.corp.google.com ([2a00:79e0:2ebe:8:b768:22ed:3eba:aeb3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b2cf068sm10976952eec.22.2026.03.22.18.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2026 18:54:37 -0700 (PDT)
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
Subject: [PATCH 00/10] Remove class_find_device_by_of_node in favor of
 finding by firmware node
Date: Sun, 22 Mar 2026 18:54:18 -0700
Message-ID: <20260322-remove-device-find-by-of-node-v1-0-b72eb22a1215@gmail.com>
X-Mailer: git-send-email 2.53.0.959.g497ff81fa9-goog
MIME-Version: 1.0
X-Change-ID: 20260220-remove-device-find-by-of-node-077784fa109c
X-Mailer: b4 0.15-dev-a6826
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260322_185438_995911_59B6C438 
X-CRM114-Status: UNSURE (   7.92  )
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

Firmware nodes are generalization of OF device nodes and generic APIs
should offer only fwnode variants instead of providing firmware-specific
handlers.

This series switches all users of class_find_device_by_of_node() to
class_find_device_by_fwnode() and removes the OF variant.

I believe this can be applied through individual subsystems and then the
last patch can go into the driver core.

Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
---
Dmitry Torokhov (10):
      net: wan: framer: switch to using class_find_device_by_fwnode()
      phy: core: switch to using class_find_device_by_fwnode()
      spi: switch to using class_find_device_by_fwnode()
      regulator: of: switch to using class_find_device_by_fwnode()
      leds: led-class: switch to using class_find_device_by_fwnode()
      mux: switch to using class_find_device_by_fwnode()
      net: phy: switch to using class_find_device_by_fwnode()
      fpga: bridge: switch to using class_find_device_by_fwnode()
      fpga: manager: switch to using class_find_device_by_fwnode()
      driver core: class: remove class_find_device_by_of_node()

 drivers/fpga/fpga-bridge.c           |  4 +++-
 drivers/fpga/fpga-mgr.c              |  3 ++-
 drivers/leds/led-class.c             |  2 +-
 drivers/mux/core.c                   |  2 +-
 drivers/net/phy/mdio_bus_provider.c  |  4 +++-
 drivers/net/wan/framer/framer-core.c |  2 +-
 drivers/phy/phy-core.c               |  3 ++-
 drivers/regulator/of_regulator.c     |  2 +-
 drivers/spi/spi.c                    |  6 ++++--
 include/linux/device/class.h         | 12 ------------
 10 files changed, 18 insertions(+), 22 deletions(-)
---
base-commit: 785f0eb2f85decbe7c1ef9ae922931f0194ffc2e
change-id: 20260220-remove-device-find-by-of-node-077784fa109c

Thanks.

-- 
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
