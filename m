Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58A8DC48BC4
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 17:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVyQKAxcFGDcRePJT+96JyuzF+TKWzGM0Q+3t3HpYo0=; b=dnPSvSDKjtxZRl
	6Bfe2nvrLs3Ov1a/Io85YmOhUZE1ssx/FGfxkjPwV/OYeNXG5cY6/M+3seEEOLeRzbkO9eczwNEc9
	Klz4kg0lU5LMCKbwtV7Q7thK30FsuTdKPJRnLoHr9pAni2M+hyLb9H2FBdCywZlV4nhFoLobeHHG3
	AZcXdYW/d2zJMO9Z6lh+bodSeZCkuSvqM8LNI+FjCcrDocb6/AJd6nT07/zdPNy+ZKWcdtoTqegz9
	0A94q00uiqOTbhgcid0ApE+ZZEdDCQKhd2GWYSlhhYPGP9jJ2z9mp6sIFK176BF2200hDFEWjuKCC
	lRXqBhKxjjw3NMLJ/NCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb1eO-000000036Zj-2JVW;
	Fri, 16 Feb 2024 17:05:24 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb1eK-000000036W0-3Vlq;
	Fri, 16 Feb 2024 17:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1708103117;
	bh=6OwzIeJWiBUu4hW9YyYAqgUG6qN2do9w9jwQ6wXw8TA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aw8cemXJhlCRPIwDQK+IIYT9xoZcl9k62wOb8SPteauqf23S4uh7JKpiW9nqVrUbG
	 UCl9IWYdRMQjsraAgTul3/JhCF2xqBl2zwZeKyiERcn5+NEp+W4CHSdKoqkTJKGNo+
	 u05EOx37bPWKd64yImB7DQfPBBUK0gT1OM5B/Tcy+F7GDsybfKNkuS4664AeWYLteY
	 QDiaujv61hBCoMq/14oqRjOna9NZUsUZkvV/c9u4PmpE9vc79xqaLdP6GgivDnmKfZ
	 IHlCv0k9g30YvlRPTefvPqc4g1Sis+KcuP31aI6Xn0wGw4YKBspvuSW6K4i2/t07jp
	 s9maM07oBs0PA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 57CBF37820B6;
	Fri, 16 Feb 2024 17:05:17 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id D55C24800CF; Fri, 16 Feb 2024 18:05:16 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v3 03/10] arm64: defconfig: enable Rockchip Samsung USBDP PHY
Date: Fri, 16 Feb 2024 18:01:18 +0100
Message-ID: <20240216170514.75200-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240216170514.75200-1-sebastian.reichel@collabora.com>
References: <20240216170514.75200-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_090521_071802_ACBDA9BE 
X-CRM114-Status: UNSURE (   9.81  )
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

The USBDP Phy is used by RK3588 to handle the Dual-Role USB3
controllers. The Phy also supports Displayport Alt-Mode, but
the necessary DRM driver has not yet been merged.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e6cf3e5d63c3..07890b86777e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1492,6 +1492,7 @@ CONFIG_PHY_ROCKCHIP_NANENG_COMBO_PHY=m
 CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_ROCKCHIP_SNPS_PCIE3=y
 CONFIG_PHY_ROCKCHIP_TYPEC=y
+CONFIG_PHY_ROCKCHIP_USBDP=m
 CONFIG_PHY_SAMSUNG_UFS=y
 CONFIG_PHY_UNIPHIER_USB2=y
 CONFIG_PHY_UNIPHIER_USB3=y
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
