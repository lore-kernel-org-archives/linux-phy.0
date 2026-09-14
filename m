Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2495C88E50
	for <linux-phy@archiver.kernel.org>; Mon, 14 Sep 2026 03:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hk3npaa2c4g8k1wSwFpY3y7h2gHhV8+M9zYafQcDDz0=; b=Yh/wu0h0EBOPol
	vYlKu/1C1zvM8LROBYM6oLUc/RLSOv7jC3teZvWzE7E7oB/xAIvjGB2dWBczGMmHetuvEOKwLb4iQ
	ZDRtO6gW+sv/7Ntr0vJguWRO6db33aQRY3im4fNZIGgbEafJscDO3i9Rppalukg3L8LhB19wdgBQu
	+u99WP+yLCPbRgFudbm/oUuNbHskzzomyJEKrXPJQsLkiCPfyXtgkj3Ut+m2fQFBfgs7Gxd3QmNnk
	kKTS8IgC1LDLuJffirKlIu7LXxxMfFj775jRRcx+z5u++m2xJ4lH5AqW3WGfECQgIBy5nTes3rF7Z
	5YO8WPzaIVmCZNm0LvUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xDq-00000002G4s-06jx;
	Mon, 14 Sep 2026 03:19:10 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5xDn-00000002G3u-2sMC
	for linux-phy@lists.infradead.org;
	Mon, 14 Sep 2026 03:19:08 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-2dd4b3c752fso25861985ad.3
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 20:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789355946; x=1789960746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=oKKKPTctZOY62gpBWjyYhq7FRns8SufRf13oKGN+IiQ=;
        b=EueTpOpGOHKUere58VXjVYCTLw16AmNBUQKtKnGYtDK0XpuHDMQBBvO/uZAlxa62Cg
         hMsCSv0ceUToMLA14VZOgwcZacgT0KsnriHs/mpj9raTBoRa+Sxiuoqk823MhT2eJDgN
         SmXBwwse7AgxrzQmkLwfd7JMpZraCX7bDagk3TB/TwNXh8oQ1AgkZ8giUimoJjepb6lN
         19PtgmfHW9KM8EUx6YOcOmiMQcPN8Rjd2fXAYVW4NGLp1LQGKNwsKZegmZIUcYXGHAU+
         fGUcQsWFc/RYpFbGwPmM/djaRyr0RYQSUp/bfBqP8xwJu76R5t5BPBytTIlnlwqNeTpI
         A5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789355946; x=1789960746;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oKKKPTctZOY62gpBWjyYhq7FRns8SufRf13oKGN+IiQ=;
        b=aTWZKmdUWGs4lTzxFgd8QXuxs6/UVhleehf40RwcqbHFolsqGzecte0TSRbkAWts4Y
         USq+6ybQxV5YTV7mrDN8XAXuF72mtn6L4dTUPXG8DIGIsJGytT+LdKu9zkuAAnkbKOgr
         0dAxOrLmlzg8vVvx8u4FuaEhhpPmREPBuuTIFyVBzNbw+mPCy0HpehaKnLV2XrXHnqCc
         Aka8cUIxiv4/0No+79nL/Uf0F7EKE1EfFDrDXJueVHbB1MnD1YbRnEgwZ982sMrGz2+H
         uzCn3kiCREjZIaokCljVPvy25YgHKehC171DHEfxwL+FRI6Du9WJGlzIG6s0JbgJ8pBI
         S3Qw==
X-Forwarded-Encrypted: i=1; AKwUvByIvjMBkLuk+TZ8rghKD8r+975Dw2tPyXavjWl+UAMOGDBymLexkuZzsECitOF43Y0515XdmlK3U7Y=@lists.infradead.org
X-Gm-Message-State: AFuF++kRrTkLenjfST6bxTdaFVge6Q/TmbYXFbaKXqwn166I67OZqEg8
	xgPmIxJrDMVjAaqyMblPU0jXM9vn7rX/BpIEfDNomz6VOyLKr8glusxs
X-Gm-Gg: AYBFou0Yi2MhdTaQ6RiVQXAtPLWGB6SiJYXdg1rr3OjHn5SCujb/qb8MzdHAq/ANpgM
	MZuw3zjmMlaMDXdwem91hzmaZ7IEZ22uuJ03XHcOILXVjTq7nIHQHMpfmYVoXePmS2YgvQ91YNH
	4b3owCOqVVobgvF5xfVink89NU2XJeTXlUAbnB+OOm6DlW6MTxhwUbatVhEAz0VVwnnVik8hYrU
	XYsEQuEFobN1nfPW3oTm3AZuvHS0UCOeJVv78oI9M5o9PZFXtLytWyfXm+aVucPVkKXQLX0CI6x
	Mz1EE/cmdkuoznBQ2i78/GsTVj2YUUgKwSqqd6kPzu2eBmfrGc/81JO7FGCs2X08xK2cU3mV84B
	U1L1tWFbxZLlKG2LmyTe2+CaywK/5GXRRjIILHty2JQYypLDu4CW9g/u3xFNfnfGQUFPBPg0Bjq
	FvUBGD1qHGo3PSE8bG7pSQq/GooRYFiIaCIj6yneR7LjYAgYdAI93WFTLJ/oA+QZBM+VkAkyWmm
	Gb+NhPhKBBpDmQlYwE7jtHcg1cmNSfaHtbMgJRFeYajL2SLYETIq8uuAqGzu80=
X-Received: by 2002:a17:903:1aeb:b0:2da:eba4:b640 with SMTP id d9443c01a7336-2dd6c5f7d4bmr16986685ad.6.1789355946130;
        Sun, 13 Sep 2026 20:19:06 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cfc2d3bsm41355145ad.48.2026.09.13.20.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 20:19:05 -0700 (PDT)
From: Joey Lu <a0987203069@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Hui-Ping Chen <hpchen0nvt@gmail.com>,
	Joey Lu <yclu4@nuvoton.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH v5 0/3] phy: nuvoton: extend MA35D1 USB2 PHY driver for dual-port OTG support
Date: Mon, 14 Sep 2026 11:18:56 +0800
Message-ID: <20260914031859.385224-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_201907_734803_DA7C3954 
X-CRM114-Status: GOOD (  10.05  )
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

The MA35D1 SoC has two USB PHY ports managed by a shared hardware block:

  - PHY0 (USB0): OTG port shared between the DWC2 gadget controller and
    the EHCI0/OHCI0 host controllers.  A hardware mux automatically routes
    USB0 signals to the correct controller based on the USB ID pin state.

  - PHY1 (USB1): dedicated host-only port for EHCI1/OHCI1.

This series extends the existing phy-ma35d1-usb2.c driver and its binding
to cover both ports and add OTG role-switch support, while keeping full
backward compatibility with existing device trees.

Changes since v4:

  - dts: move the usb_phy node out of /soc to the top level (placed
    between timer and soc), since usb_phy has no <reg>/<ranges> and
    doesn't belong under /soc's simple-bus, which triggered DT
    validation warnings. No other changes.

Changes since v3:

  - dt-bindings: add nuvoton,rcalcode = <7 7> example to illustrate the
    optional resistor calibration property; revert redundant clock example
    change (back to USBD_GATE as in the original binding).

  - driver: handle -ENODEV from usb_role_switch_register() gracefully so
    that probe succeeds when CONFIG_USB_ROLE_SWITCH is not enabled.

Joey Lu (3):
  dt-bindings: phy: nuvoton,ma35d1-usb2-phy: extend for dual-port and
    OTG
  arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY
    node
  phy: nuvoton: phy-ma35d1-usb2: extend to dual-port with OTG support

 .../bindings/phy/nuvoton,ma35d1-usb2-phy.yaml |  44 ++-
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  36 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  36 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  65 ++++
 drivers/phy/nuvoton/phy-ma35d1-usb2.c         | 284 +++++++++++++-----
 5 files changed, 389 insertions(+), 76 deletions(-)


base-commit: cee9395acd8043be0644b25c34bfa86623f2b935
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
