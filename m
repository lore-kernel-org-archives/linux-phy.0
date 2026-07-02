Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5BD2C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tNiYpm2EHJI/8ldUL5LXuQ7al3KY5w4UMfsc4m7yZNc=; b=T54ET90yLU5qmL
	OskaMlrFjm0zw73tz+SOloa4ve72VFx9fhc1+38+M+v/bpmR842AGbckcQFyEqxRdJKCynf6uBvnT
	uPWfoce8ltJkgYg3LOYz/82euazj+f++ujLcHRLpKfxAg6+CAtoA9oGG6NQmLC44s+ifOb85kXLpo
	hUZjnH34iC3rHsK03uWpCsLDTP/dzcG+BSjhJdOwLL14RKhCgwDGEuMl1x4kVHJ3mGk7dLUbTdnwO
	Xq1ErXERhKwkiA30gEKZKX8+WUON9noZEsHETfP/z+59w0Emz9jq800U1IFr/2Vp1cOVt/w1LVwxR
	f1uY1KYOWW66QRvJa4IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfH0V-00000004Txg-0mZy;
	Thu, 02 Jul 2026 12:59:07 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfH0S-00000004Twc-3PHE
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:59:05 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-470174001a0so1325643f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782997142; x=1783601942; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gmLDi1XgEV0nw8Bvz62Dym/abqNF+kJy2cP0AFA24gY=;
        b=mqoo4Ivj7wCRwtyWXxS9WVDzSwPLjhInpujoItYa82Wugu1vvkhJdwK6/5dPrwoDUA
         P3gmjUMU8abSXvFCtLSnEWs/b0nH+fh26U6HHHe8ftrGlg8xoj6GkU1TUG3O2Ij5Vq+/
         sm5PWkWhKUdWOH+voNZoc4IRd0NZEQlwbvAoHtzaCc7GLf2mviZEqe847u48emI8Q3fy
         16ZYeS+3/SAhSb7UeARgkvqUldWufRuJywvcnyH4LRyFvzyQMSfFKLqBHojv2bC1tzKu
         KwR3XRWloVMdhSqGMig6httTARFLk9DQ/LQB5d8u0L2XEcvgETPUu9DsEZfhX51kUA9+
         EKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782997142; x=1783601942;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmLDi1XgEV0nw8Bvz62Dym/abqNF+kJy2cP0AFA24gY=;
        b=qXh39wjNBUvCO9fT0nBOehbV7fawlpkdH8yTGKju+pxGs4glPKCBIi5200eLgsGIS5
         JFBDlKb3MvJt3SXFu9CsXPAhkuX+m06hsIkqoCocDI+TgwzQdY/Mov/knYcbgiu3LL5e
         bBYiuxH1GrKdUaBs6hcrcCXwLCLbF0oNhXa2OXuyTcU2jLMb0XHAkf1jpMT7tgk0R6Uf
         oXO4cCChFnxiwoOTbYtuzcOzWDNFHkkgJ3IDUWIYLAn2xGrhxmRjRvIJPTlizHE9y1/m
         riZqu0ZkRrkccTYUQVsYK8QXpLwc79J/FKRgOYz917W+Kl1f8c835yHCVjcHM7mWtJ52
         AeSQ==
X-Forwarded-Encrypted: i=1; AHgh+RrxO7ahoAY/qnW44ByJAvuz/pso5fzwSxZn5w2UBa8UuyRl8SFMlLAeSlTJ47DiEuymJs1nQuZXCzU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxSlTABnuo0hVYFYrHLuPnWWYHw3ye/OgQ4LYoc+Cfl2Q+9FDBj
	bHGMg4A7QZNGwTz91VKcY0h4RSVo63GrAHztN+uYKpBuofgsgnvwhK5b
X-Gm-Gg: AfdE7cmeO9uLSxl0Mv4A+yRSovoz6hYn67ux4ueR1aPViAm7ZWvlM4I4WZStK39T4wK
	kJtvvwGq2sS18tek9Lc53k2U0xSpxWqvLPTDJ618roC0v1HtC+iN5eL5hXxzisFghVvkIc8Tx+d
	R+HE/ZAu5nKeWBj2hfdLFFbMJq91d7oEkRVcyR/PYzOpczmk1fVHf3UUzO9CQGG7VrOSoWeJT3z
	dLg+faLZHkKnm6YMueXnhyTBe8qXl7QFsLa5PlHRWhdNh26Gg/hl/Fpm7k2mzxGJRUiEZD4Mqpx
	NHbn5+uZTqHxt7+tiXVm/uLPzY2frEAZrOm24FEJMqVAMrUYX3PywpEnh/SOXdwucD2vM+KJQVd
	ZukHgSoM57eSJ/Wf4rNMZHnLT3d7OyZ0aCddROQv3FcvmAj1+xDQqkRxgENs7xCfA7JVFxbAsSE
	Pa2wg7OnKms925rOrqAUlYjGnZKzakL5UIsNL91VIlufZLKdaXE/EtP6Jq4y+WrD9AwDtLUW142
	q3yvwrN9Uca3UBY3Vb4/45ve2I=
X-Received: by 2002:a05:6000:2505:b0:46f:7d90:8127 with SMTP id ffacd0b85a97d-477b3889474mr7327706f8f.13.1782997141864;
        Thu, 02 Jul 2026 05:59:01 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:7a4b:58b4:175e:8c2d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477db8a44d7sm8312273f8f.9.2026.07.02.05.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 05:59:01 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] phy: renesas: rcar-gen3-usb2: Ignore missing VBUS regulator
Date: Thu,  2 Jul 2026 13:58:55 +0100
Message-ID: <20260702125855.3157253-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_055904_870375_E47E9ED6 
X-CRM114-Status: GOOD (  13.40  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Commit b6d7dd157763 ("phy: renesas: rcar-gen3-usb2: Add regulator for
OTG VBUS control") introduced support for controlling OTG VBUS through
the regulator framework.

As part of this change, the driver started requesting an exclusive "vbus"
regulator for OTG-capable PHYs with no_adp_ctrl set. The lookup failure
was propagated unconditionally, causing probe to fail on platforms where
no VBUS regulator is described.

On RZ/V2H and RZ/V2N, which do not use a VBUS regulator, this results
in the following error:

    phy_rcar_gen3_usb2 15800200.usb-phy:
    dummy supplies not allowed for exclusive requests (id=vbus)

This failure completely prevents the USB 2.0 interface from initializing.

Fix this by allowing the probe to continue if an external VBUS regulator
is missing. Only propagate the error if the internal vbus-regulator node
is explicitly present, or if the lookup returns -EPROBE_DEFER. For all
other missing regulator errors, gracefully assume no external VBUS
regulator is available and return 0.

Fixes: b6d7dd157763 ("phy: renesas: rcar-gen3-usb2: Add regulator for OTG VBUS control")
Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/renesas/phy-rcar-gen3-usb2.c b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
index ef38c3b365d4..9ae9975d3255 100644
--- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
+++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
@@ -902,8 +902,17 @@ static int rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(struct rcar_ge
 	int ret;
 
 	channel->vbus = devm_regulator_get_exclusive(dev, "vbus");
-	if (IS_ERR(channel->vbus))
-		return PTR_ERR(channel->vbus);
+	if (IS_ERR(channel->vbus)) {
+		ret = PTR_ERR(channel->vbus);
+		/* If vbus-regulator node was present vbus regulator should be available */
+		if (channel->otg_internal_reg)
+			return ret;
+
+		if (ret == -EPROBE_DEFER)
+			return ret;
+
+		return 0;
+	}
 
 	if (enable) {
 		ret = regulator_enable(channel->vbus);
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
