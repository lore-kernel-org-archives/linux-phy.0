Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F5ACD8C8E
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 05:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2uKpH2b/Rh7SMjjjSKXrVaNiQDrFfXSZ/WWQL39Eel0=; b=WeCIXL9jHcXy+f
	wts6UlPfcZ6uoXkOFn0BUXryHvqddWOhVkb1lIYuNZAVTeJd1VfNe9Bwq1EnXUmzQYppTZ5cSor05
	pArgloWJMTjSdXFFTU3R2z7QDY5Yat4yKCArsLyrJpzqoNBqyc1ieR0ZFw9Bxl8p2YXB0WnM/Hfe6
	xb5sXAVMSJa69JsxhB8gXbLRSBEAoEHqoyLuRXE+6MwxoSMv+ME05p3W0Shs1hwFIk+6Cow3JToJ/
	kyCgcYd5gPf2v/qCXrlVrxLbtqjRj8+hHiBS2fwZ7uL5V0dRX83EYVYR19pYykJWJ3N1WGpSuWm89
	AnhvKFND1p7VefKOHNag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWSeJ-00000002qXD-1jHe;
	Mon, 08 Jun 2026 05:35:47 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWSeG-00000002qWW-2Jsr
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 05:35:45 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-36b9b15af73so3425719a91.0
        for <linux-phy@lists.infradead.org>; Sun, 07 Jun 2026 22:35:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780896943; x=1781501743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wpy5I6qrcZoBL+aAYboFR4xjmZ4wLohsQTQs1EK7ZSs=;
        b=QXnAZHx44xo9fWeY0vt1UkBVcn2YG1H+qJabm3aV6r57iPFrNCu4dWzVLLvPROjRnc
         mbVsi342BH87B513Jrw1zmD+blVf3XIedENfptBFvV9FNHXeKDh0GfExjnReihZY5VFx
         phVCaUugPI3QyV4cHDV/5c5FbGi1RkA8Z+oly6vU5DEaPp8FB57JjjL+BXe39vPC6bX6
         mvjadozA7WMsONmK/6PsR1v7j8K4tIYO+z04bFd4d5+P/SfZ4cIe4+jo5Erw2KnMyQIF
         GR3x8RA6OZ6BfEAku/dX5/uY1o2gEIRXbAhyYVuTyDV6ST3OZS4MkWmJcxrXPtkbymfg
         rDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780896943; x=1781501743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wpy5I6qrcZoBL+aAYboFR4xjmZ4wLohsQTQs1EK7ZSs=;
        b=p4b0mtRCPAkqxZcaPNA8KpTk9AOe+g4LNFIOm0Aed5XgpT6pVDKj81AFrJaCNeyHgp
         RjZCLWWKhq61Cyyym636rK4OloG5I0CVokrVqgDXWbrXN7ho+9XBBnchZpffeYgkuy8V
         LMg1zzRPG0lw3NzdtrWz7sh7vJ6X8SuAb4LHrdZK9uOPLOg9FoRzQo341H6svqY8GrcN
         f1Hes+c023rYH1NJzmBP8BFuowZsQjbZRuWllkU5XFVfdcXNtNPggza4pgC7u28yu+m4
         9tsorC4ivbX40Km9il/zQH4YnZ2NsW4q7+Pq2QM0ztd2gQrHy8RrImX3mgTLWtnqgCiv
         SBfw==
X-Gm-Message-State: AOJu0Yz0S03lSYTxVlJU2Wh2wax8e4D4ARevJPxu3Wl2IOl/L3IEl3xN
	mu9bmEb1zYqCBodZVphjq2qL+uSFJY59KK/1Ym6wcN+hpnNuJ1VtVOlJhCyfDmju
X-Gm-Gg: Acq92OH+Hr7X2ni2gsYWVMft8har6XIIVQ57VQArRubourOLglChiOwkbcGodTn5CP8
	HwWrx1ti9Rv/UX93vFlhmO8JVTaUgWuq3GvOVCM/x7MT8WRUzIi+ItW4UQBAJ69rji/7bA7xjrH
	c4xn0Ov5CfGERRJ7F1IOHhkClgeGCrqFKZQhsEFseXhWy8XVlVKuEuA5MMipAhUjRiVrGFXzYKs
	g38HQNSx9xIEdu9IENEGzY5vKICkmeI24sryaFMm89EGPpGJXG3k4I9DbNzeIf55uNTA/wg69z8
	i2VyKPceY3kniUGljbKy2xqnd4xkG7MZNNLYrFsS6Ga2RniD356EdUBMWIGCUIFA6eit8uE+qb3
	XU6+AV3wwrv+tLYI0j7/aZJFq3nKIs9v1lsCYfjUoGzvjc1AAjYOJ6Tm83eJ68QLIbbcExltTec
	guIVn/ggey+TZU0ASHRV1eoA0BhRavFDEJU8zcDmwtMlafRs5+CRicS7/1AoAZUZ6W1nkKPxoeL
	cCGOhVI4hHK9saob1ysRVoD8cJSb4N9mGjujunmQ2oYwg==
X-Received: by 2002:a05:6a21:4688:b0:3aa:c93b:625b with SMTP id adf61e73a8af0-3b4ccd77c1dmr16839353637.3.1780896943548;
        Sun, 07 Jun 2026 22:35:43 -0700 (PDT)
Received: from ryzen ([2601:644:8000:5b5d:7285:c2ff:fe45:8a32])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df0a61b3sm14526743a12.17.2026.06.07.22.35.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 22:35:43 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	asahi@lists.linux.dev (open list:ARM/APPLE MACHINE SUPPORT),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/APPLE MACHINE SUPPORT),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] phy: apple: atc: remove stale kernel-doc for removed struct members
Date: Sun,  7 Jun 2026 22:35:25 -0700
Message-ID: <20260608053525.12354-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_223544_628310_71F3CC32 
X-CRM114-Status: UNSURE (   7.32  )
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

The @sw and @mux members were removed from struct apple_atcphy but their kernel-doc entries remained, causing kernel-doc warnings.

Assisted-by: opencode:big-pickle
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 drivers/phy/apple/atc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
index 4156fabad742..f09305dd76d1 100644
--- a/drivers/phy/apple/atc.c
+++ b/drivers/phy/apple/atc.c
@@ -585,8 +585,6 @@ struct atcphy_mode_configuration {
  * @phys.dp: DisplayPort PHY instance
  * @phy_provider: PHY provider instance
  * @rcdev: Reset controller device
- * @sw: Type-C switch instance
- * @mux: Type-C mux instance
  * @lock: Mutex for synchronizing register access across PHY, Type-C switch/mux and reset controller
  */
 struct apple_atcphy {
-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
