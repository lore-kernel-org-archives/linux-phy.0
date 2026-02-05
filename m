Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77300E9129A
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 14:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtFuwMqUikNeTCzPOHBxb/PJqQnqox2y73Zklbip6jM=; b=BiUyZK8uBrsNxs
	cmTvbPf4wpQ+niQ6BVg7q9V/lCQMOME4RWYPKEyybrc9ygH0oX4eapwNne63mWUnRXTFmmCu7RlFy
	bC8nsLZnG29LhbsHkHbEf64o3DD/oT/obYV24pr/7+u+UonnYEew7axf+gGONYYx6euarXKsDVKgT
	bPzb91xKKOgyoSMTIVdFEoT1Iw+JavgSeC3uG1Gt/vkXY8yWPZOiKJ3k09yYmEKUetjAXKU53zPw1
	K4WocdmXnRlRj8uK6wkureSg+FpyXJEOEPU+vGe524b1qfoj79ZMdosFK+5DCitqxAzefxB966JUD
	oGqO+c9ttJxK9Mcu9eFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo0mP-0000000A3e8-1lYf;
	Thu, 05 Feb 2026 14:56:25 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo0mL-0000000A3ct-1mZ1
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 14:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FIu6yjrjJWFFr5/fXZO+yWGMg6ojD/x4VIPzUupvXpE=; b=vikpDgWq49zmiR0/KJL8cp/3w5
	rfqkeMLeqvptf+XbuwmQ3Jf5LYkx83lk3zE+zpmIaEZYdYHjYBo9FW7XoVyKy3opTn4gdcJwn0Skd
	Nkps4uGAJuOSrnIL2w+4plOyvCibdz413520ZP82sMlrNzuL9jIrGWO3Tb/iqzQLqZlIL0BbeJ5/r
	cJlvF532iceGQi/fAJ93qykvnBtVJlG/4jttOHTNRfz0agYSWUmn8+VFmhbm3/1feLUbshweezFkJ
	AoHtWZ3+UoltaHhUa0UKzL3lje/Yj1+VVpTm+IPoYq0nnp0JSVcBsUhu8qgMzT0qg29hh/7yR/Ljt
	iYeda5/g==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:52036 helo=rmk-PC.armlinux.org.uk)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rmk@armlinux.org.uk>)
	id 1vo0mG-000000007LD-06MB;
	Thu, 05 Feb 2026 14:56:16 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <rmk@rmk-PC.armlinux.org.uk>)
	id 1vo0mF-00000007kbg-1OeA;
	Thu, 05 Feb 2026 14:56:15 +0000
From: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
To: Vinod Koul <vkoul@kernel.org>,
	 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH net-next] doc: generic phy: update generic PHY documentation
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1vo0mF-00000007kbg-1OeA@rmk-PC.armlinux.org.uk>
Date: Thu, 05 Feb 2026 14:56:15 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_065621_789243_D041A8E2 
X-CRM114-Status: GOOD (  14.94  )
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

Update the generic PHY documentation as a result of the discussion for
the s32g submission.

Link: https://lore.kernel.org/r/aXtvDn_-pCuKPrnf@vaman
Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
---
I didn't get any replies to my follow-up question to Vinod:

  Please also indicate in the documentation whether changing the submode
  of the serdes (particularly for ethernet) is permitted without doing a
  phy_power_down()..phy_power_up() dance around the phy_set_mode_ext()
  call.

I also didn't get any response to:

  For drivers such as stmmac, it will be important that details such as
  whether phy_est_mode*() can be called with the PHY powered on are
  riveted down and not left up to the generic PHY driver author - without
  that, generic PHYs basically aren't usable from SoC/platform
  independent code, and stmmac has bazillions of platform specific glue
  already because of (a) bad code structuring and (b) lack of
  generalisation through standardised interfaces that abstract platform
  differences.

  I want to be able for core stmmac code, or even phylink code (which
  is even more platform generic) to be able to make use of generic PHY
  stuff, but if the calls that can be made into generic PHY are platform
  dependent, that is a blocking issue against that, and makes me question
  why we have the generic PHY subsystem... it's not very generic if it
  exposes the differences of each implementation to users of its
  interfaces.

 Documentation/driver-api/phy/phy.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/driver-api/phy/phy.rst b/Documentation/driver-api/phy/phy.rst
index 719a2b3fd2ab..cf73e4fb0951 100644
--- a/Documentation/driver-api/phy/phy.rst
+++ b/Documentation/driver-api/phy/phy.rst
@@ -142,6 +142,7 @@ Order of API calls
 
     [devm_][of_]phy_get()
     phy_init()
+    [phy_set_mode[_ext]()]
     phy_power_on()
     [phy_set_mode[_ext]()]
     ...
@@ -154,7 +155,7 @@ but controllers should always call these functions to be compatible with other
 PHYs. Some PHYs may require :c:func:`phy_set_mode <phy_set_mode_ext>`, while
 others may use a default mode (typically configured via devicetree or other
 firmware). For compatibility, you should always call this function if you know
-what mode you will be using. Generally, this function should be called after
+what mode you will be using. Generally, this function should be called before
 :c:func:`phy_power_on`, although some PHY drivers may allow it at any time.
 
 Releasing a reference to the PHY
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
