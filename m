Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9673460A262C
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 08:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=nxKhLd+a;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lxUhxJiu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=zwwrW1A+N7vFQl6d5sXGnPzx0XuI8Pbp9SbnVcwhq0I=; b=nxKhLd+argy/HbknaA+kYIXByC
	iRGPDUtxhs9zncZ5JoakTN5iZr5INez2lmOHiNIawdtqiShCGf9MzHnNSRhDfJp38EudCNaX9Udz2
	cEtpavYstKZmyvO006RK+RSiZx5CozTFBFKYl3j8qSkL9IlfGxxPhT7sEkJVmjmYMKWaBquqgxUF4
	6NWBnlC+h+pRlHmzjibzINQYtMc7VOFB5DJH6IHwJihT34SHcnI/qOdjI+yKqFWQBDPbsJOECB/Tz
	BRfHO/PpWzvd4eY8gGk6TUg8bpiG1SygcGAgBjIbDqSniU9NwHCk1yR8RcwD8/0PrmfHI6P5Qohp3
	FWjpxS7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3s-000000034bG-1N4p;
	Tue, 10 Nov 2026 08:18:36 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQh3j-000000034TO-0YPk
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 08:18:32 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-36e2b1db9bfso204165eec.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 00:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794298706; x=1794903506; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yl3B8wwACC0gEnAcEi/cuKG4GHHYZ1RZckwVjmBrJlc=;
        b=lxUhxJiu+FVeZW2RePL/5pxJyl3xaZ1m7dYhp7KGtjN9xGdPhluQ7HSBVAtdxYPjmI
         kzWeIdJ5PQ9IuswfNHBpyWqxRsdDBN5zKo8DYnwktIHOacYDytL/v5pSNti4sJfOd8J/
         JtT6ZkAhHO1mr/f6vnoSpXn9GZzJOVZs4gFL6ZMzvImYGPZ8EYkpNanKaD6WE2gbN4VL
         uPMVNWztHCKascCVBsngufh+5QTBmOFmZdymlxlrozEgHO6C8z29P/lXReyFyuXWpNZs
         WTRJKFA9+YWeR6dQBAPwQxRHX8ApJz7VH5SYhr7QBT3RrGsF3W7RuCRrNLoDNAA8Tv0t
         SWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794298706; x=1794903506;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yl3B8wwACC0gEnAcEi/cuKG4GHHYZ1RZckwVjmBrJlc=;
        b=2ruiv+32RowTFIJvBlRfhQgIpvejdrE9HrCfGtVMoPDl61UMDeddB15ROVCe7dKm+K
         givUaSN+dhQLI2GSey6lbx84ADWwEY13XaFMhvtEhjuRQxkWQzMepir7jjlc4C+5CM6B
         A06fHPNUhT2A8svUKLUBF8O936Z7h4Lkg/58J7C7v2L5/2v0PhRJdPqJVmszmEwcYUUf
         IvEp5kYzONvK3tU0t/05Svg4NKB5PBfTeYd8nDSdJDvyxgtIDtZH0IfbcGnJ8ZsOMLyb
         t61kSOIhhVJHTqbMT8cC6XKJEjVnbdLhBJ+FxjFPMs17/weCHNhJon5REWspEEWBWUGq
         ILfQ==
X-Forwarded-Encrypted: i=1; AL+hErF7RehcMRsyfV3DiGOWhHfHGUEQm93GJGIEdK4X00izNAbrBzgf4cUXeFZ5KLCro3JzGut1uxakty8=@lists.infradead.org
X-Gm-Message-State: APuU4Z/6CRCdrdvdpGMaBtQmKhlT0SEnfpkE12qKKToKfmzZkb0ZJF7r
	k3x59j/WdrqY+j7GGs/hpyh0T2MVa+JcoGtzhZLy/n0ACI2e+kmd4hX0
X-Gm-Gg: AYBFou1ZNIbsd59+Cd2QsIeIvwRWlsBn3yddNm/EU7IMH7/ZSQTD01EnLuY3HR5NbRk
	2WXOVTg0I/F3HvW6Y5rA4vs2R8czEcDICK/emKoIhtCNU9ccXWdC/vUsAsGMEmCExeTKYlrjgIM
	yIssb9Xg7F85pgyCIX8gcRcTnBmje2GDCV8/1SJzMWBbD/uj0eY/A5YdjG/NTzZ5/P7N5/2SaIf
	+IKCGoRJ1rsYdon3R0xoGR8rNJlIX4Woz0q6LR/qMQnLJbLpt1K5hqWWpKsMb3jV73poqHqV99b
	fTO5MXQAjOd9ES+rd14IbNpNhnpgpW40F2JSnOOayP3eeKwztznEX44PQrREE/jFgyfTOfUtaKS
	9MOt26kOwKxaCwvZu5POWugBwH/SSuSLekBfzjbN4d9D0XZA7nb2GuRURUG0EfE1PVlu05Jm1oL
	wgvSpNtXx7XVLcbzGOBRH6rUlYjsQXkQS65cINByZLlRpWKf2IQ8kTVrsWRhmbSrzohw72Ti3Sg
	mhsp6bP6aNrIJADDB7Qlov74406zuyf4qouY7G+khVsK+KAV3nxrzaNM8+kXb5/Lrvn1wFTItrN
	Lv+HtyGAvI89/25WKI3F9esveEm+v42AfC2CvReb+yT34RP3bUmNf3fypiqH
X-Received: by 2002:a05:701b:4594:20b0:1a1:9106:cfff with SMTP id a92af1059eb24-1b3ba7b302emr828418c88.2.1794298705356;
        Tue, 10 Nov 2026 00:18:25 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b2fc14sm5236759c88.12.2026.11.10.00.18.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 00:18:24 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Tue, 10 Nov 2026 16:18:05 +0800
Subject: [PATCH v6 2/9] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 Select TX or RX, add phy-type
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-dcphy-rx-v1-v6-2-d681ba20b36a@gmail.com>
References: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
In-Reply-To: <20261110-dcphy-rx-v1-v6-0-d681ba20b36a@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794298691; l=2929;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=xQ6WaPuBjE54d5cF8BexwENmzZIHniJK629BNNCMNF4=;
 b=X7MYhiVj8tskEvqzZbwBYXtP4KTQ0kMGiYW4eHf31wARRGAJfwayNHMoayBu8o+H23PJZRJTA
 7Suk9JEi68TAzp65I59DtI/ekqH0WZiIvBnu9ESCzffERUmKEIgD32g
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_001827_269508_689BE248 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Samsung MIPI D-/C-PHY block on RK3588 and RK3576 has a transmitter
for DSI and a receiver for CSI-2, and the DSI host and the CSI-2 host
can use the transmitter and the receiver at the same time. The single
cell of this binding selects the mode and refers to the transmitter, so
the receiver cannot be described.

Change the cell to select the transmitter or the receiver. The
transmitter and the receiver cannot operate in different modes [1], so
the optional phy-type property of the PHY node sets the mode for the
whole block, D-PHY by default:

	/* the MIPI DSI host, driving the transmitter */
	phys = <&mipidcphy0 PHY_DIRECTION_TX>;

	/* the MIPI CSI-2 host, driving the receiver */
	phys = <&mipidcphy0 PHY_DIRECTION_RX>;

For C-PHY the consumers stay the same and the PHY node gets:

	phy-type = <PHY_TYPE_CPHY>;

Existing DTs on a newer kernel: PHY_TYPE_DPHY and PHY_TYPE_CPHY remain
valid as deprecated values. They select the transmitter and imply
phy-type = <PHY_TYPE_DPHY> or <PHY_TYPE_CPHY> respectively, so nothing
changes for them.

New DTs on an older kernel: an ABI break. The older kernel ignores
phy-type and takes any cell value as the mode of the block. A DSI node
with PHY_DIRECTION_TX therefore gets no display, and a CSI-2 node with
PHY_DIRECTION_RX gets no camera.

[1] RK3588 TRM: section 22.1 (overview): "The TX and RX only support
    operate in the same PHY mode."

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/94d47cab-10c6-4ec3-84a0-3bddc9d67f5f@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 .../bindings/phy/rockchip,rk3588-mipi-dcphy.yaml       | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
index c8ff5ba22a86..1ea21ab203ba 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
@@ -22,11 +22,23 @@ properties:
   "#phy-cells":
     const: 1
     description: |
-      Argument is mode to operate in. Supported modes are:
-        - PHY_TYPE_DPHY
-        - PHY_TYPE_CPHY
+      Argument defines whether receiver or transmitter PHY is used.
+        - PHY_DIRECTION_TX
+        - PHY_DIRECTION_RX
+
+      PHY_TYPE_DPHY and PHY_TYPE_CPHY are deprecated. They select the
+      transmitter and imply phy-type = <PHY_TYPE_DPHY> or <PHY_TYPE_CPHY>
+      respectively. Use PHY_DIRECTION_TX and phy-type instead.
+
       See include/dt-bindings/phy/phy.h for constants.
 
+  phy-type:
+    description: D-PHY (default) or C-PHY mode
+    enum:
+      - 10 # PHY_TYPE_DPHY
+      - 11 # PHY_TYPE_CPHY
+    default: 10
+
   clocks:
     maxItems: 2
 

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
