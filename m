Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D509DC88E53
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dkhcg+EQhJsPAla5cyOZzDAIZlxZiUSESoK0QGfIjxI=; b=a5QYwHJ4ZR4wCe
	nh/VD+Y7ZBqwtZU8NyisGrrwq7pwtg0TNbuaH6rNO+V3Hk0rdlbsk+AOYTCjCn4Tw3RD7Yt6YvKQZ
	QddzsEdoJpyeks52uuqTt2b1FqYVnvay85w/yo/HWXqWW/oDTEcEBLEhI9IDHpRbKCh6qPOtBRZGP
	UjW9rp4z9XLw17w6H9NaiBPhg0gBII5SsD5jnA0JASFsHN0jKV58sUVdtnRzKiGmbzSNtDvYRUpuU
	oQkR6eumdBKn2O0uWnsW1MQBNqi9Nqp+XRHLdXsVXUoUgpF7iujOZwIRiYB9M3MumOuOJtDrIhwCd
	lLSoFNlBG8JYds8p04iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdS-00000005xTG-2EyR;
	Tue, 15 Sep 2026 10:43:34 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdO-00000005xR2-2vXE
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:32 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd4ba9f68so1459415e9.1
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469009; x=1790073809; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=c1tT3yvxjkinhN97rO87ZxGO8TE43RhDvmMo/jPsRss=;
        b=X6Svc1YbXATDCbbJSw4W7nEn6QVlMYjZWY3akikDqJFGAI+wY27fVfbBb0bKthYVXD
         I0C//wNbh1AeruP4KeMDWtwjCL+lcrD1jSbG8TIBSjRmeK3AkKalORlu5Ndj6U6h1kxf
         /B64YKfVtmOUkOJEOznikEKeQc/AOyJB4zQNQXSWvAa8StIN+6Uu78EwI7HCzelQb7ed
         bZHCO3kjV9CT5CczJY7BIYN0Y9qunBNzyN6U7eFTUbeytxIIBgTWhPaFUE0jLXoanwCY
         9ZFjfbjfavpwa1V8eKUhunrkYg3l9VCxLHNQn2Do36cml7hRoj/EGaJ/+eRaU9Ks61cA
         WwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469009; x=1790073809;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=c1tT3yvxjkinhN97rO87ZxGO8TE43RhDvmMo/jPsRss=;
        b=Mgz9yJ6zIOUd+pkBhULcuxf7wbBRn1VRkNtrpM/1GnQIuVl7V8QWvej61Sn33GDNZT
         tW1//ojeunnnuO5MVvp5OdVlPRoKaeWMToOb2hpagZp/RYg7AivkiYVisGQM+nzqRbnX
         Hk78RbqsZ9XSt6HPiciv3xPkmg2mwOHrRqZ4tKKfLx/NOR4FvrWoLG+XKXUvZ9viy+3j
         GYo+t/wQ4ylC82y5J56ZReBTzOCJMUp+YSKZdrymwlq8lwnV/MGjEviB+7cBlEyh/vWd
         x8COV6lO7VlBBe4WorJiS1PAci0gBYcXS2dJVDk/byvFdW7sQ9Hfx+Kyx8zOs5BHnoh8
         wLgg==
X-Forwarded-Encrypted: i=1; AKwUvBywHQmeUtpPcSCWT0dqBvC6ZFOKKdItxxIAw0N5mFBqOUJgbHI3626N84w7vbYeRSXUC5iNF39suKo=@lists.infradead.org
X-Gm-Message-State: AFuF++m1XoQ4y+PUnpKxroOftddndyNwGeFa+TM5MggWoEVCaaA0RYgl
	OXjml204yxTKe/LyqZs7VmgibHsFgs0l9I7MqSj74S82uKj3xZztQS9A
X-Gm-Gg: AYBFou07864mbifXUNXU/8EgeQym+BDqw7DlN9BEIeagOWHN7ykswx7ZWEBzqqHvUs0
	2dgZNUCqw6qE4Q1dQ2jc6oDLr+YWA5ZY3ELpAYdGDyg8kNJtskfavOrQNYU05ljB+hp+BPzDd8v
	NwcyoCPNoua/aZZIdujMqlMkW7pYkaudSJNRazDOW79VZOdkn4tiJreENyT/fQ1fGhbs0Igjs2k
	1WVgbiswzoa87YPN3lDTHU+WCA7BsFQpkM59u4awhh+bOLZ/1bdoz/SmDlKXt3SgagWypbg/B/o
	H3V4ubBxkfuV3zc2PUhYM5Ko3zJWONYdJMTbkdckTNoEETwzxIHZQBHPH64VBbeVMcA3WDEAUqk
	ExfM8AEUZcpaj23PKWxdROghw3RKxG+k72MCeD5yRbMhm/lXOzeKJdqdaUWqHDg8RJG294wR/wG
	meiypO0WRYQMfGpzA9iPbjCyLGmTjMDxzamZIbkU4rA050V0hh36l7GNnnNyEraNBBDIlvpAffC
	sGD/EXiBD7VkiB79uPMf298DZfmKfeAOfVrlqV4uFra58y4UoANQYg7fpBr9rlilNI=
X-Received: by 2002:a05:600c:4f46:b0:49c:cfbe:5a76 with SMTP id 5b1f17b1804b1-49e82213d4bmr10107005e9.2.1789469008368;
        Tue, 15 Sep 2026 03:43:28 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:27 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Subject: [PATCH v2 0/4] phy: rockchip: add support for the RK3576 MIPI
 CSI-2 DPHYs
Date: Tue, 15 Sep 2026 12:42:45 +0200
Message-Id: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACUhqWoC/1WNyw6CMBBFf4XM2pp2oFBZ+R+GBY8BRuWRFomE8
 O8WdOPyJOeeu4Ijy+QgDVawNLPjofeApwDKNu8bElx5BpQYS6Muwj5CncSiGttFYCij2kQGlS7
 AL0ZLNb+P2i37snsVdyqnPbEbLbtpsMtxN6vd+5VR/pVnJaRIJKEmU2lKzLXpcn6ey6GDbNu2D
 87Uuh64AAAA
X-Change-ID: 20260819-rk3576-dphy-2304f848215b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, 
 Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=1671;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=yZEgzTB21dJfahfS3EghGIYvrSbI8fD5s64xGT2boCo=;
 b=ot+vSy2JSTHjEbz9uBeefJXb/lU1tBk60Hb1vd+2VgmjPFt6k8cpkzJT9QHP88Ng6VxHFAlTL
 bJSEKJiOgB5A2Ledx+QpDv+NYkObnMwn0SNsr7pQzcftDj0X92xSduC
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_034330_769159_F77AC2A9 
X-CRM114-Status: GOOD (  12.28  )
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

Hi all,

The Rockchip RK3576 features two MIPI CSI-2 DPHYs. The CSI-2 DPHYs can be
supported using the existing phy-rockchip-inno-csidphy driver.

This patch series adds support for this variant.

As you may have guessed, this is part of the efforts to bring the
support for the RK3576 camera pipeline (VICAP) mainline.

Looking forward to your comments!

---
Changes in v2:
- Patch 3: drop the RK3576 GRF register table, which duplicated the
  RK3588 one, and reuse rk3588_grf_dphy_regs instead, so that the reset
  names are now the only difference between the two variants (Michael)
- Patch 3: reword the commit message accordingly
- Patch 2: spell out in the commit message why the RK3576 compatible
  cannot use a fallback (Conor)
- Collected Acked-by from Conor on patches 1 and 2
- Link to v1: https://patch.msgid.link/20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com

---
Amin Gattout (4):
      dt-bindings: soc: rockchip: add rk3576 csidphy grf syscon
      dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576 variant
      phy: rockchip: phy-rockchip-inno-csidphy: add support for rk3576 variant
      arm64: dts: rockchip: add csi dphy nodes to rk3576

 .../bindings/phy/rockchip-inno-csi-dphy.yaml       |  2 ++
 .../devicetree/bindings/soc/rockchip/grf.yaml      |  1 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 34 ++++++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c   | 15 ++++++++++
 4 files changed, 52 insertions(+)
---
base-commit: bd5f485f3f026225b86573e559af0b7254ef4184
change-id: 20260819-rk3576-dphy-2304f848215b

Best regards,
--  
Amin Gattout <amin.gattout@gmail.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
