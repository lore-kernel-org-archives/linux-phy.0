Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 179C2CDB47F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Jun 2026 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FeBk4rGUC87teH0n6SyxBQzXXkD7wO5rFvlzO89wKak=; b=wcUTPW14dgFY/N
	t3ASsCMfZQcwJnuF5IITHLLz8K6mlYmiXuw5OfBsIdjhkfmM6IaQj8L9YWe+pHXS5yxr/oCP/S0Gb
	QA3h3or0yhwwj1vXFfRM56pJvTJUEwOqtWfQ5CSHxRRTcNuM8ro77NZzrnuyOaUCzAaMvWng9i1vW
	hlV1Th1iC184Cf2NmFWHJXZhP8TfkHnQviMwN22cn+w+ygdw3CnilSH2HS0xgYE/WwCLTfw3i9xSV
	cTaWr2qVX9yQSpKcHXqZMnjWJUHxartsyDQlxI/f/jXdyGdT4KHtH9ANthuFiyPcRJ5/1QyEHrziV
	zbLkyGA87DYknH0rYYjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJHR-00000007QkK-3JS7;
	Wed, 24 Jun 2026 08:48:21 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJHP-00000007QjS-2CA8
	for linux-phy@lists.infradead.org;
	Wed, 24 Jun 2026 08:48:20 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-49241a577d8so4608865e9.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Jun 2026 01:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290897; x=1782895697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k1FzrumTX3WZt5WL8bKsZ9SyEzh7Lzm7lk8O+J8ro9A=;
        b=nNxiKQgWpT+MiqnOOJ7we4FPA5F1U3vCCV7S6cMcSLtPaAcoZ8L7v+g0l6R3iSZqnW
         iJBkbN9gwdgLvn8pjNJDUlbq/ywsxbqf+lFvLuf3QNI+bopvkgkQ85Ok7L5yNR/92rsu
         CzK2uEP5nQ5KsqPR4A4+j+4tbGNgrxQqz9rI/I+StNDeLC8112c4OkboejS7Re8wkLI7
         54/d31w46M3q9Oxotr5zS+mJbMY/Pb8CnOxHzQ+Wz/bY3WZOd8MSWX3jpIEv32XpiKoH
         +Iii8MK68Uvm92fDn7QJgnDYeJfPqwY2GA0SQKhO1kXSta+MwTVZHXP6VcUMY+hXD9D5
         1hEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290897; x=1782895697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k1FzrumTX3WZt5WL8bKsZ9SyEzh7Lzm7lk8O+J8ro9A=;
        b=aw4LEd25+mVYpSfYhBDn/GUb58dAccR2nbKCWxGSET6Tjk+OG/8Tq1OKLGzWzGFoOL
         AWbTK/cjmzFSWEJ+KVNS9saOE+3MIxfe16eQfMM0VJscuSef7R468E9Szd00M/Vwnhmy
         U3R3QwYnPBUqMlfJxB9Bo3MBN9KIvfJPK/wgVu59s7yiNQr806e8NGsdeOzDqazz/rCJ
         vp2N7oUSnAzUtqJvfdI9XbFnq1Wcpit1x8ZKUa28lJagVj3xfpJFmDlL6zYlcGDb866E
         Z91fVs194F6keIzvpWAZMNJYWV1TeaZV4LdsD+tUtVtkGtrmxzX57NIcz16rDM2SnE2b
         wClw==
X-Forwarded-Encrypted: i=1; AFNElJ9t0KiOxfLkaaIw/QDjl2PSjI4gQ/SI+B0MYhUEQyGrvaPadi9ABompfrVfT7aPXJClO9tc3j5n27w=@lists.infradead.org
X-Gm-Message-State: AOJu0YyHzBkpizNvfUS2MOXUjheDbwkLVqzLOJJWJW5PyrjYKlGHBPD1
	2NaPJjvvKr4s8L9e/lYeSOGtc4nrccVAJs1wSpQKAFNZ6fhvTnGzrjmM
X-Gm-Gg: AfdE7clzmKbHd2MWD+xFvCTmXzXperSdiUyLcNnv342VvHODjkuXKKe3FUUTuHWrNGu
	Uu6FMjAos2UVh87uTlXJC5t82LekKM8fvZP4xNV0lu3SpLH8HKoghKPmC1YYCaGUD3qbr6LNzET
	9/iz8qXjPh0+TA5ASzsXYKGp0PecyIcUP3/16rNSKO7DzWBKQYAtv1ZLlLeoNBVPggm0bUPF8Ag
	1UG4DCoAkkRFGpCYRs1btmDUW+KSHRaJ5yR1zzZg1+I+QZe+fvUJs09eeBcOb6TIf4wljU25Lyh
	JeJmSUv3t4MQp1amZpBDAuji02YB9oukBdnPndp/yG2b/EwFFvsdbELTZRQian5446OEx+0/9l/
	6YrwhNJdg1tOGo6hTmzaqvVUGP1lbCTjd3D/Njd4DaBgZWdMK4rhsPlmYQuDW8sdTEVUUjwvfcO
	MqVfAw7acQt5JaH1JzOyIwEIHeWk/N9n7SrVrArKWbDDvpqhSMuUnIXZhuC9+ce2uNeg791ru6U
	qQFwDM=
X-Received: by 2002:a05:600c:548e:b0:490:bd66:db49 with SMTP id 5b1f17b1804b1-4926084b8admr29211765e9.12.1782290896994;
        Wed, 24 Jun 2026 01:48:16 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46c221d9371sm5065849f8f.21.2026.06.24.01.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:48:16 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Bjorn Mork <bjorn@mork.no>,
	Aleksander Bajkowski <olek2@wp.pl>,
	Marek Behun <kabel@kernel.org>,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net v4 0/2] net: phy: sfp/mdio-i2c: defer RollBall probe + fix mii_bus leak
Date: Wed, 24 Jun 2026 10:48:12 +0200
Message-ID: <20260624084814.20972-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014819_578411_13DE2609 
X-CRM114-Status: UNSURE (   9.21  )
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

This series resends the RollBall bridge probe deferral (a fix for the
regression in commit 8fe125892f40) and adds a related mii_bus leak fix.

Patch 1 fixes a pre-existing mii_bus leak in sfp_i2c_mdiobus_destroy()
that has been present since the helper was introduced in 2022. Patch 2
introduces a new -ENODEV path that destroys the MDIO bus via
sfp_i2c_mdiobus_destroy(), so patch 1 is a prerequisite to avoid leaking
the bus on that path.

v4:
 - Retargeted net-next -> net: both patches carry Fixes: tags and
   8fe125892f40 is now in mainline.
 - Patch 1: added Reviewed-by: Maxime Chevallier.
 - Patch 2: reworked post-probe error handling to drop an over-80-column
   line and moved two block comment terminators to their own line
   (checkpatch); set err = 0 after switching to MDIO_I2C_NONE so the SFP
   state machine does not schedule a redundant 1 s retry. No functional
   change to the probe logic.
v3:
 - Resend: v2 defer patch was corrupted in transit and failed to apply
   (netdev/apply); regenerated against current net-next.
 - Fixed block comment style flagged by checkpatch. No functional change.
 - Added patch 1/2 (sfp: free mii_bus in sfp_i2c_mdiobus_destroy).
v2 (defer):
 - Generalized scope: regression affects boot-inserted and hotplugged
   modules where bridge init exceeds 200 ms; Aleksander Bajkowski
   confirmed FLYPRO SFP-10GT-CS-30M / AQR113C broken when hotplugged.
 - Corrected state machine description (probe runs in SFP_S_INIT after
   SFP_S_WAIT) - Jan Hoffmann.
 - No code changes from v1.
v1: initial submission.

Petr Wozniak (2):
  net: phy: sfp: free mii_bus in sfp_i2c_mdiobus_destroy
  net: phy: mdio-i2c: defer RollBall bridge probe to PHY discovery

 drivers/net/mdio/mdio-i2c.c   | 15 +++++++++------
 drivers/net/phy/sfp.c         | 23 +++++++++++++++--------
 include/linux/mdio/mdio-i2c.h |  1 +
 3 files changed, 25 insertions(+), 14 deletions(-)

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
