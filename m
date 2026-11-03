Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A07606A32D
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 08:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PszNOwgM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=Ll3DadE4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=KtjOBiMn
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=YrKEdR3d9xOT7AAKWQwQUewltexhVid6b6xrlIX/oQ4=; b=PszNOwgMLq5dLsw4BOst9z8VUZ
	6/CFTgNxBGjTi+ZmPAE6Bs3bO0tT9LfDLFyHs88em1aC37sn4KR1dyjTExbp5rbmAsrJSQpEwdb6S
	juCRyZkHnS7wp4dkKTuyua2zo1FZAmEsU/LWVFSdx8xjU3Kj9Y2DJbrLAZrCpbkKnE959hfzAQpLm
	91GwAZniBC0mhlomBIdOKfIhUl28QKT8kO5gDhBly6QmJE2e+eZMJk+SlxYpz+hkeyETPgqZorwNY
	6YkE9IASecv6nb98MsSeNPVu83yNpmzr6q8BK9Rvvotk4I+erNytVRwG0+2L5TnNItOXiHpcs3uIT
	9lpMsPwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAMF-00000001f4C-47Ud;
	Tue, 03 Nov 2026 08:59:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAMD-00000001f3e-3lD6
	for linux-phy@bombadil.infradead.org;
	Tue, 03 Nov 2026 08:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=QJ9UD3j1pW2fYURqdT7DSwvvSglFpr3UgftmmRZbYoI=; b=Ll3DadE4Yus1UY2aLiBsqG0m90
	z3qIKA2D7flTj6Mgem5X+Elp9oDEmzy5DZSHM+12jlhhN2F+B7xuDQ26xYuF9v/mtMBB4BOH+vbEF
	5LdjgcqgOhxi9HzqHIp0ty7Z+4A/U29we/vljYc+x3q+JSfushl+Y7mmJg6Uxz0AND+fgXIC6Okuk
	1xUrm1JsV3nKysgR2Jwpf+NKPV1QP27SM3twYH+LF2fesOXqmqsiAdAiEFUx4g6It2wYxKo5NB3fb
	O8hLpD4RNqhoqGMRam6Xd3fvzxnSTCIPPiq6yOmWXD5Y6xp3RT/QNH0QtKAF+QyHuHQCK5V0gLc5X
	RT+cCwFg==;
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAMB-00000000DUv-0agk
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 08:59:04 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-3acb1224533so519296a91.2
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 00:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793696340; x=1794301140; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=QJ9UD3j1pW2fYURqdT7DSwvvSglFpr3UgftmmRZbYoI=;
        b=KtjOBiMnx1HsdopRG3bTpy1IUeM7Jb/2bFQCV3cjmKIja87uG+qsp6lSDQqs8D7n+l
         5vTvmkYG0szlrYy9zMM2ZSOjmOHtdSOKeWvIaXWnU4jCaGxkxv0DS8HrN88MoC0bdVKy
         F9pkfmxkvXRZUySgZTK7P/hRyhww4Dr6y8nO+hrxGI1IkaMJ/11h6wWDF/wo8z6TxwQ6
         F8VxYZIGR2EdRh63hNJGWeoTkgyEnbgzxAcYv8BfvlT0GvVlFTLLuQyL47kGmZJEiWPL
         lwWnvPZb84ekVhNgGJHzSgMcjyb5SGYM020Wr34og/39rKM5EO7YLiJ2wTp9Kh0yLyJp
         iJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793696340; x=1794301140;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QJ9UD3j1pW2fYURqdT7DSwvvSglFpr3UgftmmRZbYoI=;
        b=pzBsQlzmHPVcUGeHrigL/YQwEwGr8m1WumzZbrRry6vprbSp24ksbVGbz1QF9XTXY6
         uDUTYUwJ1e/zZJKLXU98aT1qt3uHDmoFrhiP7+0lK70hbESmeFdj+gCGsgowpOf0qk22
         g6DayYsBZWIjX1NWNn4Axvv7T6Ub8kTTk/KrdGeSXQigbb48g1+akUrMgCK2Bfe5r2Ow
         ebkUbQL3DyX3XzojJ5NPQIgkrfnyNFt2Qd07NIEtj63/CoqQ/Zc+Hw1KBJ1+qdzxS8hy
         vUhpM5WFdsAlOaPU7tWwoZhI2ctNg/ywmUuMqiXv10bKROUMFRVAl63rkJGny/G5Y9Wb
         V6yw==
X-Forwarded-Encrypted: i=1; AKwUvBwgXkL9w5/SPpvfgfwvy4nzi7c4KLD42ydqFROC6s1YuUc41KQb7P8VikEwpdhHCsu/kfHF8nnU8QM=@lists.infradead.org
X-Gm-Message-State: APuU4Z8vTd+gr7CGcbp7PAnQX4d2w47oHtPh4C2i9u1aN2X1dT1usDMM
	BW13uz935FUVegs9OSaloOWh3iL1rkK7eMO1OFqHvgBzFCWjx93KTu75
X-Gm-Gg: AYBFou0VL6Ec3kubbmI286YgS7CanIolhcjBnSMISLCcuJvJhzILN7O6tC+oIAB/ftr
	rVA3HKO6430mMnXkaJwBiREnpq05bmtp0I7WIoYJ0fbvT370+Oxm96W/6kz8yCzTl+ySM2jgQyh
	BiZwXj/jNf5LskPaArtAotXTpI8oU09r6xrleoJn99TFsfL/RYtipps1fzQ+qA2vlM+DSnfLXnh
	Ljp0ivTyZkPLoNkZJPil5MNurUa7rVwYCeG9gge4zDPMPLGlYbC4E44HxPiScr5gylqQ7acFS2M
	EICTSxxyf2yC4I3fN4qly4jIK3eGBytgz4Z75JJKTcYNTOjKrwMLZPry7VwR9s8Qs7fgGFWKQw/
	X/mx1CNDkB8108NP3hNl0tz/+L2CUigSCKn8b4CjHkRk1kU/rTZfMfde3IGNhcp+b4opYehkZ0C
	hQ8vOBd+tl2DQxO/vxh468Lh/2L6WO423kULTsVVCAzF3IVrG7YYPScH6fmz0wyWWqQ7ij8dGW2
	wIZBhvRTk7w83qd7bC3JthCTA5iWj614QZbNW9W6KOmP2sL2LsxDdSzKkcJfCRnogVZkggqi+uV
	WWvHGiVoj/UQ9UFwhxA1w4dfqHXz0VHnSN/nuTiLrg6cpJgO1vdAUXdWtBh+WFcKB552GkM4JGB
	LqE+ODfkIUa87LqgIazVubVIbakxy4N5rTQ==
X-Received: by 2002:a17:90b:1652:b0:3ac:a7ee:6785 with SMTP id 98e67ed59e1d1-3ae895a0406mr17203844a91.1.1793696340127;
        Tue, 03 Nov 2026 00:59:00 -0800 (PST)
Received: from chenyou.. ([140.116.39.229])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b07c6740a1sm3345662a91.10.2026.11.03.00.58.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 00:58:59 -0800 (PST)
From: Chen-Yu Yeh <chenyou910331@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Chen Wang <chen.wang@linux.dev>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Hiago De Franco <hfranco@baylibre.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chen-Yu Yeh <chenyou910331@gmail.com>
Subject: [PATCH 0/3] phy: sophgo: Add USB role switch for CV18XX/SG200X
Date: Tue,  3 Nov 2026 16:58:44 +0800
Message-ID: <20261103085847.338613-1-chenyou910331@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_085903_236438_1B87D065 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.1 (/)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This makes one DTB work as both USB host and USB device on the Milk-V
Duo 256M, following the discussion in the thread "Milk-V Duo 256M: USB
peripheral mode works on mainline, how should dr_mode be handled?" on
the sophgo list. There, Inochi pointed out that a dual-role switch is the
right way and that the default should match the vendor image.

The usb-role-switch support in dwc2 hangs on this SoC. It clears B-valid
through the GOTGCTL session overrides while VBUS is present, and
GOTGINT.SesEndDet then fires back to back. The vendor kernel writes only
the ID override in the top syscon and lets dwc2 follow the Connector ID
change, and this works on mainline too, without any change to dwc2. So
the role switch lives in the PHY driver, which already owns those bits.

Test setup
==========

Milk-V Duo 256M, vendor buildroot rootfs, loaded by hand from U-Boot.
Tree: v7.3-rc5 with these changes, CONFIG_USB_DWC2_DUAL_ROLE=y,
CONFIG_USB_ETH=y. The series itself is based on current master; the files
touched by patches 1 and 2 are the same in both trees.

Tests 1 to 3 ran with CONFIG_USB_DWC2_DEBUG=y and the DT properties
applied through an overlay. Test 4 ran with debug disabled and the
board DTS from patch 3.

In the logs below, 
R=/sys/class/usb_role/3000000.syscon:phy@48-role-switch

1. Default peripheral, bare board on a PC, nothing done after boot
------------------------------------------------------------------

  # ls /sys/class/usb_role/
  3000000.syscon:phy@48-role-switch
  # cat $R/role
  device
  # devmem 0x03000048 32
  0x000003C0
  # cat /sys/class/udc/*/state
  configured

  PC$ lsusb | grep 0525
  Bus 003 Device 009: ID 0525:a4a2 Netchip Technology, Inc. Linux-USB Ethernet/RNDIS Gadget

2. Switching at runtime, same setup
-----------------------------------

  # echo host > $R/role
  # cat $R/role
  host
  # devmem 0x03000048 32
  0x00000142
  # echo device > $R/role
  # cat $R/role
  device
  # devmem 0x03000048 32
  0x000003C0
  # cat /sys/class/udc/*/state
  configured

The switch was repeated without an interrupt storm, then:

  # echo none > $R/role
  # cat $R/role
  device
  # devmem 0x03000048 32
  0x000003C0

3. Default host, on the USB & Ethernet IO board, nothing done after boot
------------------------------------------------------------------------

Only role-switch-default-mode differs from patch 3 here.

  [    3.409672] usb 1-1: new high-speed USB device number 2 using dwc2
  [    3.666655] hub 1-1:1.0: 4 ports detected
  [   72.484979] usb 1-1.1: new high-speed USB device number 3 using dwc2
  [   74.804484]  sda: sda1 sda2 sda3 sda4

The USB stick was plugged in by hand at about 72 s.

  # cat $R/role
  host
  # devmem 0x03000048 32
  0x00000142
  # devmem 0x04340018 32
  0xF300081E
  # devmem 0x04340440 32
  0x00001005
  # echo none > $R/role
  # cat $R/role
  host
  # ls /dev/sd*
  /dev/sda  /dev/sda1  /dev/sda2  /dev/sda3  /dev/sda4

4. Patch 3 as committed, debug disabled
---------------------------------------

Bare board on a PC, nothing done after boot:

  # cat $R/role
  device

  PC: usb 3-9: New USB device found, idVendor=0525, idProduct=a4a2
  PC: usb 3-9: Product: RNDIS/Ethernet Gadget

On the IO board, with a USB stick already plugged in at boot:

  # cat $R/role
  device
  # echo host > $R/role
  # cat $R/role
  host
  # dmesg | grep -E 'usb 1-1'
  [  415.464739] usb 1-1: new high-speed USB device number 2 using dwc2
  [  415.940738] usb 1-1.1: new high-speed USB device number 3 using dwc2

Before this series
==================

With usb-role-switch on the dwc2 node, "echo host" hangs the board in the
SesEndDet storm, and so does boot without role-switch-default-mode.

With dr_mode = "otg" and no role switch, writing the ID override by hand
worked:

  devmem 0x03000048 32 0x3C0  -> high-speed RNDIS gadget on the PC
  devmem 0x03000048 32 0x142  -> disconnects from the PC, host side starts

Three round trips were all correct, and ping over usb0 afterwards was
5/5. On the IO board, the hub and USB stick appeared after one toggle,
but not at boot, because usb_add_hcd() moved the PHY to host after dwc2
had already set up for device:

            at boot       after one toggle
  GINTSTS   0x05000023    0x04200021
  GINTMSK   0xd0bc3cd4    0xf300081e    (PrtInt masked -> unmasked)
  HPRT0     0x00021403    0x00001005    (ConnDet pending -> port enabled)

Test 3 above reaches the right-hand values at boot without a toggle.

Not tested
==========

 - A USB stick already plugged in at boot in the default host case.
 - Running on a master based tree: all tests used the v7.3-rc5 tree.
 - Boards other than the Duo 256M. Nothing changes on them, since the
   role switch is only registered when the PHY node has usb-role-switch.

Question
========

With patch 3, the hub on the IO board needs "echo host" after each boot.
Should the IO board overlay (sg2002-milkv-duo256m-eth.dtso) set
role-switch-default-mode = "host", or should it stay the same as the
vendor image?


Chen-Yu Yeh (3):
  dt-bindings: phy: sophgo,cv1800b-usb2-phy: Add USB role switch
    properties
  phy: sophgo: Add USB role switch support for CV18XX/SG200X
  riscv: dts: sophgo: sg2002-milkv-duo256m: Enable USB role switch

 .../bindings/phy/sophgo,cv1800b-usb2-phy.yaml |  11 ++
 .../boot/dts/sophgo/sg2002-milkv-duo256m.dts  |   7 +-
 drivers/phy/sophgo/Kconfig                    |   2 +
 drivers/phy/sophgo/phy-cv1800-usb2.c          | 107 ++++++++++++++++--
 4 files changed, 119 insertions(+), 8 deletions(-)


base-commit: 6628e7d4c6b25c8d18f1345e3a20d21829aae7e4
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
