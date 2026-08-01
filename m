Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2488C55175
	for <linux-phy@archiver.kernel.org>; Sat,  1 Aug 2026 14:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhQE4vWOyOWDDUCCL2Qd0W6MZtlo/PzWHD+hKzFNFKw=; b=WB15S2mU4CPf4R
	BVqmyGu08aY6EbFfj0XgInhUL0JtsYzmO3pUFl1oF6dwvXr4mQJOdOwkX/AFYudpGUcsQG/Cqvunq
	w+rxK0bC+lS5QtUg70QXSit5Nf+OW2ttWNGTJgFAK62DFgzxp7wJsVSjQq0Hg2wvAwAiXRdkJfxfV
	X2hy63GJWVBtz0+mNU1QgbioHwTOfjHr+IR4nDBUBnlJxogpV93RqeTW+JOn358oDfli0dRZqDJNN
	IpgyLbSxd+1Ip2gF02IjIttvlmSeHSm7bGzI4JiW/AhS2ppR2PghpzgbYaqWe5t7tzVweKpPFQpO+
	KisfNSv9sjOKnTmVzoGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAdW-0000000EjM9-1G6h;
	Sat, 01 Aug 2026 14:24:26 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAdS-0000000EjGg-2LGo
	for linux-phy@lists.infradead.org;
	Sat, 01 Aug 2026 14:24:24 +0000
Received: by mail-pj2-x0b.google.com with SMTP id d9443c01a7336-2ceb5a39c48so6118905ad.1
        for <linux-phy@lists.infradead.org>; Sat, 01 Aug 2026 07:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594262; x=1786199062; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=q83Sos7xhYVmpTWu/ghFNGUmMBURB6KpF38DP5+YZjg=;
        b=pfJ6M0ANNPoedGNGUdiTGJtgVg1yXBEvVD/okb1zr6DXfqbprUpAI/a3Ajt7qoWeGQ
         lkoiTn7PR2mAESrF+9CJW0MklWwI3mXVYCZQg5AZ9wBFnziSfewvoUmKRoI9LkBK9f3v
         ZaCRcPpsamisfgGX550jq/jKYo4yGQx/z8ElQBnWKFbrD3AuacgbcqjR3ZSAZPVD+4Rs
         2RjWgqg9Va3xqQ34NnxYaSt4x5/2MRExHpkp0uVTWHcCvQq+Y/Z661xV8BdLRio6Yfhi
         xNrhKxnBoYS/yzNOgShar/th4SmQVOZlo6bSj1aNF66pomROAc5JdU/3/MHMn69q6ICg
         oR+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594262; x=1786199062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=q83Sos7xhYVmpTWu/ghFNGUmMBURB6KpF38DP5+YZjg=;
        b=nyipaxWeLt8mfhNe6yy1tmuLWgwumKZcOOl5P+NMhH8e/od4URn0Y9ekNYQvR30QQo
         nH/ZVGE+DPALObV6IpWW4N+BJlJv1pgR8lre6g6AoG8/9lwr3MfW4kf4K9W1W4Nn3W9H
         Gfof7Ct+APfGD0hNY16ohD7sfMJ+uOWXstfQ1CQzjrxMV/c43+UaCGHQZBmwKAnKx/CE
         FfS9/40VkZ7rXr5g8Pcc5lXx6JO9wPdmCDx8VEjV+tNdMKZlhonC6BJ5PC3ynvT3WnCI
         UdhMxA7wvmH2UG2hymSbnYQiwepuLQ51+kB1dzvZY2CvgfEz21hwSIoxJCSi5BHBAEZ7
         Po+Q==
X-Forwarded-Encrypted: i=1; AHgh+RofqoIJAoFKW5ZKQrD5QCmmLABFP0RQca92HyrQ0i6OUR5WowNaYdvUvn0h4xsD6ln5qRGf3VHlug0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxPsHX/VoJTNz4LB8ob5id8aNy6JM+9Bfjau446/KcRx599mc78
	GGLpk+jOF4lMqkckxuB7uF/eVKfCsm2iSmkh1iNhHT2EWZ8al5GPOlpr
X-Gm-Gg: AR+sD10lOwts9O+/Pq8CfUp4xlF6S3T4vDYJ7DSZXbfKPkey6Hg+04aVaLHnSCy97C6
	8i5yJUfLN9xTxDtYftlAIM3OOmL/Zg8C64kiLDABgowPqswQKkpH+SQ6jxRiZRwOKIeosubha9X
	dmbeVpXO1DyD+yEn06KsF009mo7kIAw1McXYtOH+OPVFpYbfzY23KQ93I8mtAf3QVEMhMmTtxY4
	3IOtM3+T3nGeTXIMwI5p0xGet6xupdOD9XX8A+wQNbr/Mtg7meWxNg/MMjOW3UGOgGgqXhCUc7m
	110t144PYPz6moTC5Z9btwQiP2+AJyCLk5BocFtHhhUkjdF/Jq8uCR7+H7ZRmFD+2WOkyVaD6lf
	a/5mQ6YHsK6zHHwoTKpivUWXtnjjzOmSkLB/2s/5ZGZUAu79Nl2ylluz/ZkEJ7dWFM/uLrb0WEk
	flm5mSURU9aLZMOue4/m8Y2HUiv27PiI8DlhWUREArZ0jAn6q08upBaeE=
X-Received: by 2002:a17:903:234b:b0:2c7:f12d:5d37 with SMTP id d9443c01a7336-2d0521b8488mr34096625ad.17.1785594261862;
        Sat, 01 Aug 2026 07:24:21 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.24.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:24:20 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 10/10] MAINTAINERS: add entry for Rockchip XPCS driver
Date: Sat,  1 Aug 2026 22:22:34 +0800
Message-ID: <20260801142244.679437-12-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072422_615779_213521CE 
X-CRM114-Status: GOOD (  10.45  )
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
index 5114e6db7307d..cd5ffae6afd34 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23468,6 +23468,15 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/sound/rockchip,rk3576-sai.yaml
 F:	sound/soc/rockchip/rockchip_sai.*
 
+ROCKCHIP XPCS DRIVER
+M:	Coia Prant <coiaprant@gmail.com>
+L:	netdev@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/pcs/rockchip-dwxpcs.yaml
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
