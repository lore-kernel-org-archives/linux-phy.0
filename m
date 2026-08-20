Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B951C5DF87
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C2hw7smrFUuiHPL4faRR/b8QIlG+6SIF6L0lfvdiV4c=; b=xz07qEl9m1bjup
	zNUPM7bmWrBM1KD/9tJK6JJ/+4euS8PBC6SoiCA5dEPgioRhRfDC+ESI8HOsV3z8Yh0Lg75BCCcAk
	wR/4Szx5Y+2FHxNXXLEKYzUYeY2Nt+Lc+D5BKvH7f1h7gX8nHdeuTLvmu9r9+bdNRAGy+NaIsUfKQ
	1On5Wv7VVgdnV02iiEfHU7jtHlYJH8t4TxFWVvFBp1I9m+uFdbYss5HqdrXWUQLdH1GuqntOMJYBI
	QjhAmXc2FJpv5eaGVEnJ7t0W39U/XVpLQCieYUZutRWvtFIcyMfY4rxFtrTEv74IM/TKu/+XqFeFm
	AWYKM4dbIdEJf7w8s5Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kj-0000000BeTa-41R7;
	Thu, 20 Aug 2026 14:01:29 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kf-0000000BeNd-0AiP
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:01:28 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-49557167508so23645155e9.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787234482; x=1787839282; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=WUT4gJuTXpaAq3LMxd9C40AoVdjqOX0m7pjXnk2O4Gs=;
        b=jz7idWUI/Ds+V7TSDoUKJEREWF6Xiq7lUni/CZueMaic/N0FyyzuACJQugYuVJUSzp
         4zGZgy6xW77CIsD/JA0V09iHuwbjtWpDElecR5dPDZp0f9Tq0D/VtWlZbpCwEvVmilbc
         WeiSFC5Rdcws+F4b82AYBRPvU+8O5JYc1ZWDOpnmjp543dVz6kev9QfnB7ynS0BdwknK
         QAzA9m58vaxjx9TmVNclBP2gkWYUu25Vcbc7EOdQEQ7WS2G3znWZV+uWzgTCz216+I37
         FX10HeywASYUwdqyankTD2jsrZEkcUt2DXqevxDNTgJRKV0KbBivu9ui4Zecw3w/mqXu
         o4VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787234482; x=1787839282;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=WUT4gJuTXpaAq3LMxd9C40AoVdjqOX0m7pjXnk2O4Gs=;
        b=fkq99Csl+Kk3g13K73BqQEatD2c1wl4LlrP4y5ebrpXlxZBIos4byredYW6hx6lGYK
         D0K58zFoiqrZ7t0yrIO46KkhtILpVIM20XJiZO48WnNX1SI7bbdxv9Zul9KS7UAVawL7
         fkeh9qzeF3xz6WrLKLjWr/XpXyukiz0v4DO5N86oribyoxgOu2TVoPl7wkgMElnnGIpC
         fuTAo33b09mMDDewzxxCPT5k+ciFV8s85tIsweQC1dfelNSSljfF36Wl47z/wn7zh26s
         FSQS2vYhm22wrxekq6nTVaMD7SuHmFVBdI3W4+mo3FHNJrxew8ZO9/m/ZhlduzCvGRTz
         4SCQ==
X-Forwarded-Encrypted: i=1; AHgh+RpTIAgdKggSS4aY2F+0MMq1zC42NWnstv3zqKA6/SoC+Frn7mp28iYJiOkBLiMnpiCZU0OuwOYq8ng=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5gm31v2fN/YnRaijPd1FM6m4/10NQbJLmRTF86F/f0nsdSpJJ
	PHCamv4chojLzmp7z7C9Q26Bfa7bgBkzas0eP+0ZFN3izz7aSwBycrpv
X-Gm-Gg: AR+sD1085NfPK2jYTeK/qaf/k2rWs70uKswjuwRBEuTCHdtwi/TvDsgNOm7u1EYnQWc
	i7hW8Ys/JNgByvh+LLEOgxoMS4iGGo7J6tLWwJ0u+W+fIHxEfX1fMLkcJjItE2rwnylprLruowA
	8ZZ+A0ZBDeF+wZceCAE+e0ldq4+WS7AnwFl+8+MLwqow64tTlBnb6RtVmlkbu+07XcMNdRqDCZR
	rEDFSDK2BxMMMMKNttGZY8POnN4rrhCnpSWnRuVIPqztym2M6Pc2/dIftop/u75yfMxTE6Z4tLn
	XCqBENKZCPdEvp8Jl4nM+tq3zlNwcOp8aukXsyxfdVHS+y25IeqtxicwrHISMJdBJ5FxJjIdvbg
	Pj/0DMYNHPp9ukd4H668KF30RxzdeBV4YZ0UvXty59QoUo1wFVKgEjWtEBX6WzZRnKl5ldPeIP7
	BjnYaGMwoX+y5+oXOJghSYpRbdGGuFGDdpFbL6cJYvBvWTe8158O7OluulVSdUQrs3l3krtUnwv
	c2TRKN0muVPIdhMaG1dQEJbDXoWXolpcRADc/aAyZpG/osc9UtKC6+aag==
X-Received: by 2002:a05:600c:1d06:b0:498:943:ccc0 with SMTP id 5b1f17b1804b1-499aa1a8726mr195609195e9.6.1787234482269;
        Thu, 20 Aug 2026 07:01:22 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0e473dsm137978275e9.15.2026.08.20.07.01.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:01:21 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Subject: [PATCH 0/4] phy: rockchip: add support for the RK3576 MIPI CSI-2
 DPHYs
Date: Thu, 20 Aug 2026 16:01:07 +0200
Message-Id: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKMIh2oC/yXMTQ5AMBBA4avIrDVp669cRSyowZAgLUIad1csv
 8V7DiwaQgtF4MDgQZaW2UOEAeihnntk1HqD5DLlSuTMTFGSpaxdh4vJiMedipUUSQO+WA12dH6
 3svpt92ZEvb0LuO8HXXyln28AAAA=
X-Change-ID: 20260819-rk3576-dphy-2304f848215b
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787234481; l=1144;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=A2VFtAAu1+hhr925EcEt3otzqbqApHxmFMxqu1c6scg=;
 b=p6MTPqtWbWzGbCNQJGHAQWd3iNaXx9MMd+sTatZJKw+3c3Axcd4gzRri2JGsHa6YnJQDcHV/q
 mzW3yvAtTlcBY7O0NfD4aO+MjBLxC0z0JjUltOKdGQOQIulnEbBk3wB
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_070125_094808_56F3E04A 
X-CRM114-Status: UNSURE (   9.36  )
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

Hi all,

The Rockchip RK3576 features two MIPI CSI-2 DPHYs. The CSI-2 DPHYs can be
supported using the existing phy-rockchip-inno-csidphy driver.

This patch series adds support for this variant.

As you may have guessed, this is part of the efforts to bring the
support for the RK3576 camera pipeline (VICAP) mainline.

Looking forward to your comments!

---
Amin Gattout (4):
      dt-bindings: soc: rockchip: add rk3576 csidphy grf syscon
      dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576 variant
      phy: rockchip: phy-rockchip-inno-csidphy: add support for rk3576 variant
      arm64: dts: rockchip: add csi dphy nodes to rk3576

 .../bindings/phy/rockchip-inno-csi-dphy.yaml       |  2 ++
 .../devicetree/bindings/soc/rockchip/grf.yaml      |  1 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi           | 34 ++++++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c   | 22 ++++++++++++++
 4 files changed, 59 insertions(+)
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
