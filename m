Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE8C0CDB471
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 08:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yr8QotupyCOUSX0Z8ZUcDrNqi32bImKUOE310/tiqTM=; b=w2i7iI8Zd/yg1q
	rDaVQHtp1qH4SPdeMK3a2IF1yMM+2eTJgzFM/CZYxNhmLtRjwAXP2ln9+vQMXoE7/nrKIlLVDa9lL
	WEqZTTY1JDUY89efAuW+SVC06Q6WzyOAx3jul792Peh1St737lLImREdqksrmhPUiB8WZzIlhhH6x
	75a2+sUGpyXNgs3wT1UVoZ0c0j/ooLP1sMd9vuXeTeYeKfu23dn7qdsCGa8XWl2r5IQiqNWrGtF1i
	PxRf3U8s2y3z72+CdClgPqXX9n0lKRMlReNDyc8DGWWxkr8DHE4NZDqyEzioqoqvZclsjMHB8PEE2
	IfPxKioL9BuM8crsbk4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbw8g-00000005sUm-0tsv;
	Tue, 23 Jun 2026 08:05:46 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbw8d-00000005sT9-2kSN
	for linux-phy@lists.infradead.org;
	Tue, 23 Jun 2026 08:05:44 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-46019b190b6so4069303f8f.3
        for <linux-phy@lists.infradead.org>; Tue, 23 Jun 2026 01:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782201941; x=1782806741; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ELOEUuutMxNNAMcf6UDVW4Cm1ruDQcVU3Uet78R6qow=;
        b=AjjHgEkSjh5msuSJfWf14lx8VL3bDHnsx0RSkZFJEQhrrC+DxDAt2NTpgtxE0GXXO0
         2BfJlpMg4tidqEfIPGDSU+Ecv/P5xkwfreOWeXsQpOEDvEgNFDvKoWz/H3KbeHYh2/S1
         lGpfr0myjHUR1fTbu7n87s8/rqOXZ0aD4d2SqLkYVRJKWNUkYMD8J/mC1LqWm+kmhfQ9
         x3/WEOb5YJ/kr9V8V+N6OD7AHmr0W/GRbL53rvkfx+BF71O2vnr9YjcIIohRGHI6/UAF
         DrkxlRuQYeRXRcRcwJh7Gzwez3mU/g56l7Ett2sIQXu7ruiG/Kqg2+Tiy3sXZ2DeMOne
         fyKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782201941; x=1782806741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ELOEUuutMxNNAMcf6UDVW4Cm1ruDQcVU3Uet78R6qow=;
        b=CpopTA8YwMmOWzagrogX/xodef4b9BSu20+qR4MrTc/MsW7wy3wPyPXFsP+Ow95vUx
         XEgeG6o01By2vR0Zokq8bIhCCd8nWtwhwXUTss9osbsSq1rq5fSo0OGsVPIn9cfRKxkF
         fC21GCSFVaMgx/VjCBlH3yIC2DAX9RGSxWM5Pfau5NfLcDQ0iBaa8cAlcdXK/KirT/SE
         VA5AsXQDvDvjmGbL6VvXuT0tOhO1jc85KkZMGGd1yf5CsJHLEW13gfuhyeGmJJoMmFNm
         t3o9USGJm+iu6TATJhWrGE33H2T/tGbPr7ellaEq3hQd+fm2xSh7MTFIkIOweP3mQktE
         o4VQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr+DP6/IcixhH03HugtMhO4dF9mJ5MMjlP+/NS8XtLLcTNjHpKj7pHdYwFP1jXZFRAVR0TGioDhjJw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxw8Eh/ZjuLabBlqfmulvWdD/g4f1LorlRk5qswvdtaXUPPSsun
	DOG+p3wcN1+ucBFQgCCQL11Ad5gZG06GJQ+HCgW50TecZwC5Hk9HxxR7
X-Gm-Gg: AfdE7clFNtg8qGTTlT3BpZ9y+cE04cEWHvyy/Gy/NLGLcuOdr8cUInDIQGro09hCceW
	bWmUXH60U8cIKHoWWBUehvhA0CmpxFdobHrDItMpMiweEzIOAAy/LVcA7ZIouCkclz5mStZNFAd
	wOx9PZyuYEZW758xEdM6QUKZXIeA16DMzI0IyJp4dQYsqGIFwdf/7FaSmFIM2MzvPUkpbZd9IJM
	GVbOkX5XfpZVBIOJWS+PKA/PopydrsxBU9TFEtVicxeRN7eIA6fSV4a0vEcdrNPKwMac7ysGHNL
	W14egceuC428GxvlQD9Tms1VjFGDZzhKIjUF/rvmFpU3tRS6iX9sz0dA/mPsIIVRG84Wx19uVp6
	AcxS0696Lm2VXVkCCcyHg0eoa5Mv6twbzy/c0vaEJcFITVpVMGAsY7/DqJYaRmQ+dyzFMb1sQeP
	CzAp0IUaIdklWTQ8xkM+9RTvIVCH8IvRZOJPB6qeIzQYYL9sWNua559OvobM48KyR71vPtoUvQn
	LhwimomrgjjE/JzcQ==
X-Received: by 2002:a5d:6f1b:0:b0:461:a161:8101 with SMTP id ffacd0b85a97d-46adb5875camr2438044f8f.11.1782201941275;
        Tue, 23 Jun 2026 01:05:41 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-46667221de7sm32486503f8f.33.2026.06.23.01.05.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 01:05:40 -0700 (PDT)
From: Petr Wozniak <petr.wozniak@gmail.com>
To: linux@armlinux.org.uk,
	andrew@lunn.ch,
	hkallweit1@gmail.com
Cc: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	maxime.chevallier@bootlin.com,
	bjorn@mork.no,
	olek2@wp.pl,
	kabel@kernel.org,
	Petr Wozniak <petr.wozniak@gmail.com>
Subject: [PATCH net-next v3 0/2] net: phy: sfp/mdio-i2c: defer RollBall probe + fix mii_bus leak
Date: Tue, 23 Jun 2026 10:05:36 +0200
Message-ID: <20260623080538.7646-1-petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_010543_742263_79475F54 
X-CRM114-Status: UNSURE (   7.94  )
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
that has been present since the helper was introduced in 2022. Patch 2's
new -ENODEV path destroys the MDIO bus via sfp_i2c_mdiobus_destroy(), so
patch 1 is a prerequisite to avoid leaking the bus on that path.

The v2 deferral patch was corrupted in transit and failed to apply; it is
regenerated here against current net-next with no functional change.

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
 drivers/net/phy/sfp.c         | 23 ++++++++++++++---------
 include/linux/mdio/mdio-i2c.h |  1 +
 3 files changed, 24 insertions(+), 15 deletions(-)


base-commit: b85966adbf5de0668a815c6e3527f87e0c387fb4
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
