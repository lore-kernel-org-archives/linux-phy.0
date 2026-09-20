Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5908C982D8
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 17:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNIMlKjpaJr/CsB7m2ezL5sKbXMtqP/B6MTVfrbyZaI=; b=fA5uBhAkJmMLwK
	gYK8RLu4W+ZX3LhddmhnCr6lqZfdl5iyE0P2wpqkTkENlPApCFyjHxbiJvoY3ObkR9v0Gh9ebtwIo
	b6YugEUcq6pPjEg6nXL3z2pb+sGucKSleXQRbMjbYqrNCLl7CcrLSuomrGbHdI+O9EswsmANnUc5h
	WKvgfOTPukE9bcxzft0O0v+ScaoMXnu88202mo+qxXRwJ7NL+3dy15egUJQE5ZZEejS/8YKe3+w6F
	FLVolIIQRhSgb769XnzfHXo7JI4WQGmo11dt3iS2ZurO1v1EAeXgiE6Os9j0LkJuI32TQwRm32/uH
	C+QWJymmw49sCmdvVbxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8KxD-00000000A4y-1eEY;
	Sun, 20 Sep 2026 17:03:51 +0000
Received: from mail-pz2-x0b.google.com ([2607:f8b0:4864:3b::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kx3-000000009tH-0A1P
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 17:03:45 +0000
Received: by mail-pz2-x0b.google.com with SMTP id 41be03b00d2f7-cc1631a57d2so1684804a12.0
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 10:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923820; x=1790528620; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bdJAnLwrz+/OjIyJtnetxy2JKy8P0MsUYxFs2QuKaus=;
        b=XwKBcZLnXeDwcopeIYa/t0m9CS3MtAoIDuwJP+JCz55l0DSG1kmP5IfptskuyS5JYW
         p0C0aPV1McrJO6iQ51DucroDyVaTclxRqX6mvFG5rlm6h6P2LUi5osZFHVi/rtcRBvQa
         ESCZ0ax2KCsyyXfBb0OP3ArO0VPemh+KXOxrg7539s26fOfc62yXyIE4TdRCXcdmk50Y
         R4+MU+pD7DUndPA/3YgIvk9mrWr46S913voVQqzQqG2zxSIH+rSIWc9TWDGRQjmA2kUB
         WNwxJgNNesoYjPpDO5D/o+Yvbrd0XymbHJaKyy44X2TULP6xIMSD/brRcLdxPsxZJRsR
         q0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923820; x=1790528620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bdJAnLwrz+/OjIyJtnetxy2JKy8P0MsUYxFs2QuKaus=;
        b=fhpTiUByb3iTNVoIxSHZvjmXWTZOV+NKsTH4jw1wkQqn2UkRF9STDpLjHweO8sy509
         SyhDKRShFenxgcI9tUUXstfbkq5g+e4l6QkNXahMmkHBP9WZ9auGutVr/s8N5cBUV6Mh
         sRgpixJDyjpPbPHXhF9CMrCW01PDQ0gpgg8jAoGHxU2qW/EaAa3VT3gBVVJ6grmoarLY
         0uaElfaU+jtLg0JVNCvCYu4uD/2QGkho2FDf0We69jt8uMTJrkzcyc5rURN4T14DHp39
         Wvn2CwWj8ZGm2E5t28xuFrZP30Ec1ZjxGLaJ6ZGtkYaJIMDFP7tLnIN6rDAHh2kwJb6l
         0SZQ==
X-Forwarded-Encrypted: i=1; AKwUvByrV0kJJKN2/prdDoOYrJYHTJCtN06+IDkRuHO7ZhvNhAHOGk6h2XfTUqJ8HV/22f8jy6NcB3ZBpFU=@lists.infradead.org
X-Gm-Message-State: AFuF++koefEXqjQKOmZkGu7zuRkkMXuxNhwy3EFf98Fz4AAtGhtAeXpw
	+fAZG8kdqqefljvBy7NLCP1h4EwAgsMTvcZoSU10jBJyRhB7y3xjoMbS
X-Gm-Gg: AYBFou2tcDcriaJ3KcadZ3DZCPFa/CuHBQSQJfcSe/Dx+C5RbrFNRupytTJMoUTG7td
	TnPgRPfck6RffxF5RXX2dX0kXCFFHY/9JelP4vQetRdSHxfM04y0HjaniYeoLeSDrc5q9WhTwz/
	TWcoJL+obApga8U/w5/YlyPYsqqhKA/1Z6LddU/nw6pLbMiQgiBAzqHDgI0rLGlukiGN1B4Atyy
	7IuHh2Qo05iL5ATNA6yH928cbFdjzs3QF2qbX/8F79xNfCQ56nQqXOrWdm3nKIqw0H9g7rH9C8Z
	qFgMA/J4RbooQKZp3z4ee1pebRbijb31M1DttLHbK2XmV2UUvutbWUx1x0rTohePMxK08/N1p1E
	d3c+MgcVhejsO74b5CVQatclRobuBPusy5EDXUP2DHiPAoY2Fd0H9vA7uhkuONmEcIUKgxH97Re
	9Nc1GzkGxIrV/k4/GYPfA77JlPyU6Z8LpUx6DVdzqeIOkU5hEl6HmGA2/PcXj9szsZYca6UQ==
X-Received: by 2002:aa7:88d0:0:b0:878:3538:8f80 with SMTP id d2e1a72fcca58-87835389b2bmr4633099b3a.46.1789923820049;
        Sun, 20 Sep 2026 10:03:40 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:03:39 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 11/11] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Mon, 21 Sep 2026 01:01:15 +0800
Message-ID: <20260920170116.3624104-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100342_210242_9C416522 
X-CRM114-Status: GOOD (  10.14  )
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

Add a MAINTAINERS entry for the Rockchip RK3568 XPCS platform driver
and its device tree binding.

Include the relevant mailing lists (netdev and linux-rockchip) so that
future patches are properly distributed.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cc3cae2e378b3..085589b8ba65e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23740,6 +23740,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip,rk3568-xpcs.yaml
+F:	drivers/net/pcs/pcs-xpcs-rk.c
+F:	include/linux/pcs/pcs-xpcs-rk.h
+
 ROCKER DRIVER
 M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
