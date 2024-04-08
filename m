Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B060BCD129A
	for <linux-phy@archiver.kernel.org>; Mon,  8 Apr 2024 22:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R5+PwWvPHKhPWhZxVqfuKKag9/j5lzzRsQVMY8kWq4s=; b=nmd8AzC+jpp+4y
	AuGbMHJD/+HDmxwb1QPEGmhzE3rZ5ZpNVjW91cYm43GqqqAh7cLKJ8/pA/ABn8gvfpG2jpsy6Juog
	QIHsJBFaUKoVf1ZldpwPrlkFHRgvbyzDMmicoCVwFb0f08dDvxUwfxKHF4pWZrCRQh9UDs89iDeoz
	8F+HRz0Bz5uGl45ADhEPG/jrFpg7q3SQBHyciO4E4HvqJ5QSAssm5OpzFv851w30cSCR/NqKLdGw2
	4+Vx2XZBKJJ4Xp/1iLWVnr1QkGIpHHe0Rx/2rkJJqaGYgH1aGNQltUS5a6ef32ZdWJyZ30KzIjITy
	nm/Mv8EK9fR5dKeag9Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtxpg-0000000H45u-12fG;
	Mon, 08 Apr 2024 22:51:20 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtxpZ-0000000H417-3BJi;
	Mon, 08 Apr 2024 22:51:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1712616670;
	bh=DOQyBmJqMcgpGS+w7kqQ0AoLHI+zmLPm0WGY9FVt1ao=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H4zl7AiHRZ7NMYdl/m7szepNLfoAtnnMjNiJH13JnLSGq1LGW0rTFeURfBvJ3lXCF
	 zqmxCLpQ9iu6cV+xSiJBzN3+Od9d0RYLDdhsJTeQH5rUB1e5P/J31qWzXlxuEHQ49l
	 Ly05X/F7P6nAQglkJDSol/wjfzUEofEc362EI0Achdw0U8zDzJsZBawsiJ5IMFY/7D
	 bjCBL/k4Fyx1IzG5+HPZrgWVvDpppNghUG8qMcZVBUvgVsqTSDKnzceXLdwIZLOkVW
	 pwYbTC7MDxkBWur6euQ4oBWH9JUGtJkreYsZz8OcQguZ5UlrgEnGYP+f0uIDv3qI0t
	 JS5whFyo1Xgyw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id B6D4837820AD;
	Mon,  8 Apr 2024 22:51:10 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3FAC14800D0; Tue,  9 Apr 2024 00:51:10 +0200 (CEST)
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
Subject: [PATCH v5 03/10] arm64: defconfig: enable Rockchip Samsung USBDP PHY
Date: Tue,  9 Apr 2024 00:50:30 +0200
Message-ID: <20240408225109.128953-4-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240408225109.128953-1-sebastian.reichel@collabora.com>
References: <20240408225109.128953-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_155113_973761_A163DBB8 
X-CRM114-Status: UNSURE (   9.37  )
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
index 2c30d617e180..364795edb94b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1517,6 +1517,7 @@ CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_ROCKCHIP_SAMSUNG_HDPTX=m
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
