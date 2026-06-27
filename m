Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD38C43458
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jun 2026 17:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ARVk4PSOwlJHkgqK2hWdUaIHk2qK8OKve5kM83uAXY=; b=MYb5r8UPV98bWz
	OQHvZFgST2++Py/CmA0O/XUZyTjQp/9XCdly2ckfRkvZ7yRSdlIB1RD1Bemu40TK1pzbXL3DPSusS
	dRo84nA8/O1XQdiUVb4al/hNj2bYIAMaGIxRev3um/w7YcPsVIbAiilg9/b7Y9WQFcnW/5VjmsYpo
	PUYaCmd2XDKaDolQCsInI7p7IAF/yxPYSFK46w7keVCRfzds/83W/Q24VEXgzyGmS2mxiHx/+U8Fm
	5R/4XP9cW+OOBoGz2HujLrcHffgFAlllQCCGme3URf/9kZe8s4L+1aWf5hksuA1RLRJvT2udtE7+t
	GYdU6N1faEesyLRhE0HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdWtd-0000000CfWz-38xc;
	Sat, 27 Jun 2026 17:32:49 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdWtb-0000000CfWN-27gv
	for linux-phy@lists.infradead.org;
	Sat, 27 Jun 2026 17:32:48 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-4927014c0deso7052935e9.2
        for <linux-phy@lists.infradead.org>; Sat, 27 Jun 2026 10:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782581565; x=1783186365; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cM/pLIVt1BlaXM/xDvt8+QTdVXwM5yDmKDhwIbZHwi0=;
        b=gwZzQvfgdSJvBIPWL5aLBgaq5RtmD6lNr9cIIMu/7gsoh3TcdeUigqHeJ5GvY9jVM8
         rqvbFJSkqdR22fVDkAjR59xRDQ8k8SJ9xcTsMDaq40huiuWslcBGlkRzYkNLm++KFPbX
         kjzL6JlWwg7zDaoXeqqkWrKoMPRBfnGIOhWTvO/x5clPskZjrRXqkKixYuFHKhZvhMYj
         Ao5wzXlouDtQBsHhvnvdmK4+Ygl1qOuyi+9FLdrSsYzTWmGB7dA0e0qID3VVnKHaEnUr
         T9t0uitQFD2UHFqsAnQHMKkjtESxHy5HhGtn4kqgZQvSEeFEt/CrhWNCslLdL4JGM0ZI
         lY+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782581565; x=1783186365;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cM/pLIVt1BlaXM/xDvt8+QTdVXwM5yDmKDhwIbZHwi0=;
        b=P3JDmlspk5Bpa7lktzHTwc81ymzezv7WId0VJE3PJkHV0gWONxmTM54g7mFcDSJPRT
         OoZZ7FK7KYDH9tus1JoxXtblBY8aaY6aaJ5Bv+7deYDCAudzIYtWsJ5cwrDoVScCSnlC
         Y8irCLh+Akd/tMdSEgoX5neZbSjb56BEzr2UTTmLS3IuynHos/SsNIDSOeAqa3qmKM2q
         VDM3hN8fg92XoI5XmyVH/tyt0AVQX39KEc8q6rJ9Aaa6iHq+GzIGHi0jz5tNYoo5G/Vq
         7x1wb7R5FiSiy9qOBjB+psy1m34pzb4+fe5qvXx2bUmw/UV+FKJiKgHSTTQa88A0tGch
         Le1w==
X-Forwarded-Encrypted: i=1; AFNElJ9kjSmfHSt13vRMNad0rjAuVxesrr5HGidEOwiabW8YpVnu+F2pawIkQsVfG2vISjw1+wBytP7mXvw=@lists.infradead.org
X-Gm-Message-State: AOJu0YxNtldrP2DBkGWsa9pf2kC9Ce4OI4CxYIdfmGhWB8eavR6WwNyk
	AM2Z5gKxCb58KfU62WS14th85IC3XLgT0C432NsHkdL5sXE35ypZ2wPb
X-Gm-Gg: AfdE7ckrmsbHfRT+vFUnhsOz9oR/jcPYsJxrh1JqkryodgZEWmt1kmpZaaRJ9hRnnMz
	K9wyBS24p4p/nmnZ9cNGMAvgvJysGmw0lTlfdSaTPn25f3WGttdwnHHOheeSoMAvrisNU2jX58h
	BtAq2n5BDApuHZW4MXe1M5y/izGRu4/j+iiB1Frhrev4nyy6QaAM/lE3QWRJviKW9UYVpoP9qxC
	XcYXzj5Q+UlUAIvdfWly8nfmQHX5Ox5B20Qpn74pcrITTH/9xz+Lozc5+0+xmRfS/P6TlezwLAg
	yhqtGRXPWkvcwxjz/4fzQJN6DCjIF64X/WEO1cw194hMeALciK3+YU1PxNY/XKkBhUTMHiYxzP6
	unW0GapyOIKgT9bWayVKq3j8kdOQgo+J0lNFbWGXCnSmqinz23yGvk3+RXPnob0fswe5lqSITyx
	gn/ERmVdBcbmZMtvyyBO+pGQIWXEPVMdofyF0JUbXh94VFCLD0pkxm17JnNpmOBzwoYn/VGdnmj
	Hy8fdE=
X-Received: by 2002:a05:600c:4b9a:b0:490:c2a3:23d3 with SMTP id 5b1f17b1804b1-4926689acf5mr119984125e9.35.1782581565131;
        Sat, 27 Jun 2026 10:32:45 -0700 (PDT)
Received: from localhost.localdomain (ip-89-176-136-191.bb.vodafone.cz. [89.176.136.191])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4932f100e4asm64505955e9.1.2026.06.27.10.32.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 10:32:44 -0700 (PDT)
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
Subject: [PATCH net v5 0/2] net: phy: sfp: fix mii_bus leak and revert RollBall bridge probe
Date: Sat, 27 Jun 2026 19:32:40 +0200
Message-ID: <cover.1782581445.git.petr.wozniak@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_103247_574861_04F9EC64 
X-CRM114-Status: UNSURE (   8.01  )
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

v4 tried to fix the RollBall regression from 8fe125892f40 by deferring the
bridge probe to PHY discovery time. Maxime Chevallier and Aleksander
Bajkowski both tested that on genuine RollBall hardware and confirmed it
does not restore PHY detection (the module still is not ready when the
probe runs), and the Sashiko static review flagged the same path.

So this version drops the deferred-probe patch and instead reverts
8fe125892f40, restoring the pre-regression behaviour for genuine RollBall
modules. A proper fix for slow-initializing modules needs per-module init
timing (a longer module_t_wait / a per-module quirk) and genuine RollBall
hardware to validate; that is better owned as a follow-up by someone with
such a module.

Patch 1 is the independent mii_bus leak fix, unchanged, now carrying
Reviewed-by from Maxime and Larysa.
Patch 2 reverts 8fe125892f40.

v4: https://lore.kernel.org/netdev/20260624084814.20972-1-petr.wozniak@gmail.com/

Petr Wozniak (2):
  net: phy: sfp: free mii_bus in sfp_i2c_mdiobus_destroy
  Revert "net: phy: sfp: probe for RollBall I2C-to-MDIO bridge in
    mdio-i2c"

 drivers/net/mdio/mdio-i2c.c | 59 +++++--------------------------------
 drivers/net/phy/sfp.c       | 15 +++-------
 2 files changed, 11 insertions(+), 63 deletions(-)

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
