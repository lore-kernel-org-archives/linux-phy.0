Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E058606A32C
	for <linux-phy@archiver.kernel.org>; Wed, 18 Nov 2026 05:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=a3dK3G+O;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=XmUZ4dk0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fo7NCaMl4cNEz3tCNX2qESjYxZWd10EMBh6hWSXykKE=; b=a3dK3G+O079qBd1R0pdDhrIX2G
	/esBF4ImHPFIeQFKU0Nt1hz2gOMitww2Suyl2uW5yUG+7EYUrjwBN6yh/emjUTYCgWCNV8vvFd2Zd
	54766LrfwZtF/kkSo4OCitlMXgMG8uxfoiVqbUNsgXWxPWfUjDDeGlvUR51wKlLx0MpoqWmXYBQ0s
	MnRG5rr/8yJKr1KTJ/xnyudxo2J/r1ye8agFJhFVCy+ZqJuVT4gLhfouRKeiWmi2LoqwUc3/TFgEB
	wVwZd8HLak/daVXnDF/08Hq7ot0Y40p3tmAP9wNlWEYxJaj8PRayehVURkQFGvtEYzBNS5ZYbCczl
	iLY+Z0BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYeC-00000007nkC-02xV;
	Wed, 18 Nov 2026 05:55:56 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTYe4-00000007neg-386w
	for linux-phy@lists.infradead.org;
	Wed, 18 Nov 2026 05:55:50 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-cd63b18598dso5853a12.1
        for <linux-phy@lists.infradead.org>; Tue, 17 Nov 2026 21:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794981348; x=1795586148; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hpSIJOUQjOP0Sdyl3LIT9vfFufPLepKEgm5OjTXs6D4=;
        b=XmUZ4dk0LK4ZyyoYY0HbPEL6B6/06TZuYlzPQbnup8IMEHUnieZRUyqu5CRY7VKHkE
         /2NdVPDDLm8BxM5EV9PK2T+hl0ngRg5xIZ0rcWYiiKJEuHU+dOORou5KHqo47938v9jL
         tuuojCHI7qqjbogm5k+4H92E+rA4iQSKKAT38r2qfOVH9A65jUbV0r/4weevGk4vxqdQ
         OoEdAp0IKuADKPutHPmXvQa21CdnRjUnyX1xCBJr1GvkEQw+0D8BNDN0WoEs3UEEBO4T
         fDXKvk26RLeolfBlAqbqGcOFXaXuJ0GHUFu2PrM4sq78OBlO/YPlQCvGDEZM3jlGgP7w
         BKWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794981348; x=1795586148;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hpSIJOUQjOP0Sdyl3LIT9vfFufPLepKEgm5OjTXs6D4=;
        b=BFK3xuATVT0WGW55GaP1pXc02tpx8F4Qe0Bp5Dqay+3R7m6WLWdt4Zp86B18369kDe
         TEQCzTZrOPc7VoDB+6eaLWsMO/c5n7aaklJwQ/7OUtd5mWupF8dyFDxaFYVzho7ZotPO
         MUIf+ZLFpLXHrWz4ftunBTm3ACwgXBv2yztGVAH3Te/AKJGIhi4/5l9jMVQHzuPOzYTl
         t6t6m7g3qvRulB7FWdVbyw1AG3aqZ6d0c343yUEeDRLFzz9uEdyhHkwnK3EGYszwZCTW
         CgZijhpLq/8V7TTYVlcn9thoZPUfmOWGlo+vCvDftvODubnw5LjMybYIwaXL1Kt0xHsp
         5MUA==
X-Forwarded-Encrypted: i=1; AL+hErGtw2rXp3OJSVFEPhGSYFxMRdCdH/o7k/6rrmzbfzDYnb+bMpwsPXeScIsBgdiT7EZ96z1ruUBJpD0=@lists.infradead.org
X-Gm-Message-State: APuU4Z+dTQElK6nO2GSpwk2aOfR4Txh3SeYeFUGhD2EbnGfGmpJGlat5
	t227/I6EjpKWDq4YaLo6d9JBvNY5xJ2RR/vDCGBFlCeAmfrwBkg63HFguVmsli+1fD0=
X-Gm-Gg: AYBFou0J+GEzLloyfpg0vhHvkaRIVjM9YF3pJjMDfDgQXF69gdZdDXeHQ+Ie+Kof17a
	pM2eGD/FkbAjxbQ/GFLZy+K6VJOWRC03EptF+pagFMZ5LYPXBqO+7xcM/pZbBZg2EbFha7KSkBn
	aKC/86B8NKbnpuZCH9pvMLQqYb+KSdQHo97eYTYdEL0zzqf4oVXwuOKer8pAt5BVxbaRogVyXOT
	ZnQK3lUis5H2wZpBRvfVrMDvlCw0oKPw80xVefWIqN5JWodKRn95XOFR+5cZDc8Ilr+EKEsporg
	K/77D0UKI7NWrLo/wjRt+jrhYqdLWmvltus63xmChmUWXZENg0/vbqMNVCwUxjPL7wSuha6Df0N
	zrpqrp5XGcWf7Wh2NmI2HPZ3UrWtmDlh0urVDxKIwvuBZ8GfkUbQaTzphbrZITxsN/QLGDLDSxw
	J+pagkIunGFL4AroK3kc2RP6td0Uu33m+hFeBPiXKEn92NzR82K9u5O67Mqf3HBD1Hifv8SYbiK
	OwQNLrvmrSr2wLI9tHFIzM0iZExJbeKaa9h1dgx8wNNCjVHj3gjmYfgyk5/VdWaAm4DMBquTi1K
	wRV2N8iyRX0QgVRutnBTLMbslcJTdJ+BAvt9o+agcXQsx84/lEvfszE/Y/Dxnj1brs2JwVVniSm
	+q2TTKYqSvpIH2Zr+0KAT
X-Received: by 2002:a05:6a20:8c24:b0:3e2:3392:540e with SMTP id adf61e73a8af0-3fe83bf23fcmr1761880637.0.1794981347492;
        Tue, 17 Nov 2026 21:55:47 -0800 (PST)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c5ca5bf959sm569563b3a.20.2026.11.17.21.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2026 21:55:47 -0800 (PST)
From: Jason Yang <jason98166@gmail.com>
Date: Wed, 18 Nov 2026 13:55:14 +0800
Subject: [PATCH v7 1/9] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261118-dcphy-rx-v1-v7-1-8de1adac3a74@gmail.com>
References: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
In-Reply-To: <20261118-dcphy-rx-v1-v7-0-8de1adac3a74@gmail.com>
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
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794981338; l=1462;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=7sQblceXUwwCxWuG4J0+9R8T6ZbfrV3Py9uIEDjHBZ4=;
 b=IISL7MaqFphE9FGykkbqCzIkGXZYfy271E+jKBfZ7rU0dt4KAzfvgE/OuNoSaciPzWsAGmK4E
 OSqwrJ3fqQGAyD5ybTFE/M9BPzMkGPkV3z/56WMpIf/GGjEDLoB2TfW
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_215548_828138_FA727840 
X-CRM114-Status: GOOD (  11.03  )
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

A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
blocks have one of each and can use them at the same time, so one PHY
node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
PHYs.

Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
host.

Suggested-by: Michael Riesch <michael.riesch@collabora.com>
Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
Signed-off-by: Jason Yang <jason98166@gmail.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Michael Riesch <michael.riesch@collabora.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # RK3588 Tiger CSI1 2-lane IMX219, CSI0 2-lane OV5675+DSI
---
 include/dt-bindings/phy/phy.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 979b5dfd8353..9ead74d9a172 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -29,4 +29,7 @@
 #define PHY_POL_INVERT		1
 #define PHY_POL_AUTO		2
 
+#define PHY_DIRECTION_TX	0
+#define PHY_DIRECTION_RX	1
+
 #endif /* _DT_BINDINGS_PHY */

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
