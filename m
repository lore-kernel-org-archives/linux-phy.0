Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609CBC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Apr 2022 15:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sbaTwvN9wjGLKKsCR7cCOX4P25NAjhuDW5Kv6ucNzkw=; b=QBTmW9m/H6et5W
	I/jj8WutQpVbI8+D44dg86BRGUkJCABp/3/OLgJg0twX5aOP3MN3sgUXjzquO138ItqhVCfO12sR0
	i+r63K3uiLi3E196CSsOpb71AoDKLygjJ4ptV3GECPVbltTGK4HkIOwRGi+Ng1Uu686509ddvUNJn
	1jRxf3HBQtoAyhQ6fw7uzEvUGu3mTHbN35NcNZQs5fQy04pH5Y0IED7epd4m7KuSoG4dhTK4QWy4I
	NvzK2KZtIJdldPIpT0UQLZlhzjQSiKtlh2yLcKI695P8/4fVD10LFNwwoHpixp0IExJGcpLVrKIvw
	lXw4L08jSMqjCU37+CiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc7vd-006yGk-Ke; Wed, 06 Apr 2022 15:50:41 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc7va-006yBz-Bh
 for linux-phy@lists.infradead.org; Wed, 06 Apr 2022 15:50:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 73E631B7B15A
 for <linux-phy@lists.infradead.org>; Wed,  6 Apr 2022 17:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649260229;
 bh=+o2CkbeGPFlQUU4RWdS7adwPvE25/1YzhKrWYcylJfQ=;
 h=From:To:Cc:Subject:Date;
 b=HlQWE4cDqOKqY1D4g2Ivv9+ntpaLA/s6D6xZSWnYDms4EUIcrn9wrSjwzvEFPILKJ
 MG0nSEEZRjrLoUqBQVVhkPLo1V2QHzhej3/V6PDAXjjRyUPhNhBE0KO/5tAKZA6BRy
 Pk6B1soUivWlhaQCh3bML3rnrC/5qvwr4nIJjGh0=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 951C71B7AD73;
 Wed,  6 Apr 2022 17:50:28 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <cc81.624db6c4.1454.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id 027541B7AC66;
 Wed,  6 Apr 2022 17:50:28 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id D381927E0443;
 Wed,  6 Apr 2022 17:50:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B95C427E0444;
 Wed,  6 Apr 2022 17:50:27 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu B95C427E0444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649260227;
 bh=NQEYgCh4LErSGu4roSimJUphphp5nSmB7EWB2qyF0c0=;
 h=From:To:Date:Message-Id;
 b=kAQtCNajiGCpHlOHNmIuKzXDQM34zMdpc9tN1SrFw0QL/K8covinKRJH6R6WQ4elo
 /drx8QF2EQZq1eN1LWTKPSe/LgBGzL8Cedo4jFtbTwY/DUcfWna7rRDK6jA0up3dRz
 oxoBw6PEcGYHUdDbzNquCAD2fsXkr7GyD8bLcSQg=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id JWpYCBr2Lou8; Wed,  6 Apr 2022 17:50:27 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 9612A27E0443;
 Wed,  6 Apr 2022 17:50:27 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: linux-phy@lists.infradead.org
Cc: linux-usb@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Subject: [PATCH v3 0/3] Cleanup the call ordering of phy_init and phy_power_on
Date: Wed,  6 Apr 2022 17:50:16 +0200
Message-Id: <20220406155019.22953-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_085038_588598_E0A72561 
X-CRM114-Status: GOOD (  11.89  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

Last year Ahmad asked what is the correct order when calling phy_init
and phy_power_on. Since then, I didn't see the situation improve much
and I am once again toying around with usb phy driver.

The following two patches were in my tree for a year... Last year i
previously tried to change the call order in the dwc2 driver but this
requires the relevent phy to be also compatible with the "new" ordering.
The stm32-usbphyc driver wasn't compatible, I am not sure if that is
still is the case.

For now simply add documentation, hopefully correct, but I am not an
expert on actual phy sementics or usage in the kernel. And add warning
when the order is not what's expected.

Best,

---
v2: Updated the documentation syntax for returned value
v3: Put the warning msg inside the locked section as suggested by Ahmad

Jules Maselbas (3):
  phy: core: Add documentation of phy operation order
  phy: core: Update documentation syntax
  phy: core: Warn when phy_power_on is called before phy_init

 drivers/phy/phy-core.c | 44 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 3 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
