Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18B3DCAC5A7
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 10:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvaBCS0clGg40MYexWLhFBnjr8yDoY1ETLyVcwKMQE4=; b=FObWCSVewUshvM
	JDE9K6DHe0QSWTWhL9QlfMTzlieJiAFBZq/T94lL12bohO/imbKYgw1h90Hf60zKyJQ8G0yaNuzx5
	9UPhYdlkUHpbXlFI+rs36cag0WO3gwV8kskcnWCrOnud0GFPumt+JrG9xjbpale5MkwnAl0mM71UD
	jwUI9hwYNREvrjw3ZWB/bOTwFmzWaKf5iy5e9pSgllC7HqXVErkAsH38MYCZl8n2gnLx16nobY/M0
	nT0Z5RGnjqTQSEiunhI4c/Vi4hlv7EoSArtSr1TtMjqm3JzNgG0caTrsyMXPwkCxPszgGVmE/FByA
	U1AuZxuJvQtQrihH6/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iph-00000007u24-2vQY;
	Thu, 25 Sep 2025 10:04:13 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1ipe-00000007tz5-3OGo
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 10:04:11 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-46e326e4e99so5071405e9.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 03:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794649; x=1759399449; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8tKlPEoAGYIWGPFABYx17MyiXr9Nx+u7PwyPwUhqgeo=;
        b=SieN4AHg+ryPiFk6eOz+i+8jxVCKWMDRuVjHVv7gXtAU3MVN9jhxKFNPVTvaNeI+ax
         87aYFTX4uw/sIFyJfJ91grrG5McZdt1N8ZJ5qyBF9mjz4SR2zN6gx6wR5bAOtu4n2dJk
         7JQh8d3MnEdghi35ADgVtiArpYsT4PtwbX9PHJbGEaVxOpOSg3LYxTx43YSVTFwcXnUV
         lj5UEGlq3AXGSedaGH3Kq+NhKVpgSZVkDZYh68UyLmzbEHXILP5OCX9x32vfooDrEll9
         VZioXp/L26dtXsEfc8Vg6VZFTj0EYtIZvSPjItTtiX8esWUUYyApOA2H3+qjxX7F9K+I
         kULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794649; x=1759399449;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8tKlPEoAGYIWGPFABYx17MyiXr9Nx+u7PwyPwUhqgeo=;
        b=QI3cnUUYddJTXqH4wyYLrllcYttHka2wkhDWfn8f3oF1nag6R1T4Cm0X2YM1+R6PcZ
         pkkuK5FmOwatmQZ+Z56BG5/AZgAsQb+YfSQvkSVKK3Yt6iutrqHyFrcr+F9yMfJ14+WP
         KwdfUWd98stBVyaDFcSvjgMtjX7lXuiqRBt1l8xmHXCSDcZdOoSZ1O8JHUF0UmbEe3Xw
         aOp57DJWWMz8+i1+lOMaTMn7CbFstRPT8P1YraVVGOu5LZfJ9Y40gKsJX2R5byoHfkaJ
         BMYcLPDL7ViMZ04eteUX3fsTKRcy3/U4CP59YJYfG8M8BXVePqw/nISXb2TTBeo8Y4rk
         C+JA==
X-Forwarded-Encrypted: i=1; AJvYcCWSF1NP2ddTn38hfKDhNq9wunzb7jfEdRt8J6skeoEnRj5+ZVUDKB2TCaIighPFpBbJvb3oLYg3uLA=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhZFHXU52c5UTRpHkA/FRYE9bZqwKfVYqxoienrnSzi5YRK/Mp
	uJuAgyEfU0S1kmKG0QLTNIuKP1ya2hwQjUtv2TALiHF31SeItlUtvwrFnyU5f3BQyG0=
X-Gm-Gg: ASbGncuXOIqVtjZBKb/mMRAzX+DG8beis1s/PdlUnwiyhRxKgBXMc8sl3GO2ikcxFRN
	4JuJtIWfLC+PLYNVu+Gi5z3KfKXu3EGg/EB5TMvYhi+e9ZRL2pDpBfnebxTdvMVTjLpzYxiAwyX
	iseLBAh3VozSjACKIPEFYp8Iysipxh1Lw7Qszn+LGkOgFcRpYbT/L+WbcP+PQWncR0agLPFQBkz
	mzoAmbJHSQNxPWFTnyBnsnBxCmXgfuFnWw6LpnK+AvE75MrA1NXUh0RFO6jwYSDIhQ5CgeafCYX
	3e+Iu8T9E8qX0pxONkh8KKkqvu4ilHA4+z1aEcvDIIRmaqvVqEbzlYAFtdYZx/4iGMI/xuy9dMr
	xjAERe6G1mNQIuefDnjxN39cX+2bFYFjRtWDLCApRDINzayFa7IAt
X-Google-Smtp-Source: AGHT+IEAFncSrCN/DyxZQdkXk07wqustp+8ZzXW52nZf4Olgw0IFwcTFDA4LiIPHm2KGkdMJd1zQqA==
X-Received: by 2002:a05:6000:610:b0:3ec:42f9:953e with SMTP id ffacd0b85a97d-40f5fdb1108mr1870089f8f.7.1758794647472;
        Thu, 25 Sep 2025 03:04:07 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:06 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v7 5/7] reset: rzg2l-usbphy-ctrl: Add support for RZ/G3S SoC
Date: Thu, 25 Sep 2025 13:03:00 +0300
Message-ID: <20250925100302.3508038-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_030410_872704_BBA637E5 
X-CRM114-Status: GOOD (  11.17  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The Renesas RZ/G3S SoC USB PHY HW block receives as input the USB PWRRDY
signal from the system controller. Add support for the Renesas RZ/G3S SoC.

Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none; this patch is new


 drivers/reset/reset-rzg2l-usbphy-ctrl.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
index be315199e2b0..b623a511e505 100644
--- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
+++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
@@ -108,6 +108,10 @@ static int rzg2l_usbphy_ctrl_status(struct reset_controller_dev *rcdev,
 
 static const struct of_device_id rzg2l_usbphy_ctrl_match_table[] = {
 	{ .compatible = "renesas,rzg2l-usbphy-ctrl" },
+	{
+		.compatible = "renesas,r9a08g045-usbphy-ctrl",
+		.data = (void *)RZG2L_USBPHY_CTRL_PWRRDY
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, rzg2l_usbphy_ctrl_match_table);
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
