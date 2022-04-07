Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BF8C433EF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Apr 2022 10:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sbaTwvN9wjGLKKsCR7cCOX4P25NAjhuDW5Kv6ucNzkw=; b=eq4kN07xsm5qWn
	oR0kNcyjk3+qVVjCdT/ZtHGUrb1CSEAptrZU5DabC//5clZn4Cdg+pLPOiCQUG75kt1zxVSAXygH/
	GBr1cDmjEkXdWy3WtwVaZKmduMmfZSKuQzm0Tv3Uxq6+3dqMVrtqn1t0VllHKqAAocGXsxrN+Nk3V
	/l6YrzNsm2XY2elDbcDlhvgUcBaY70HtLSgnDrA+az67zjm8ERGfBnXQ7ndR/Pik5GvVaJo49ctuu
	XidaO6WC81BaDbsElCbJb/tc8ywTUc3I7KWOqnVNcLnqDW+zX9kQJOKpI8ovoeZgphL9A0Nn9SZd3
	5uMaHQIoV8vLM8y+heFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncPGR-00BC89-UQ; Thu, 07 Apr 2022 10:21:19 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143]
 helo=fx403.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncPGO-00BC5u-Tb
 for linux-phy@lists.infradead.org; Thu, 07 Apr 2022 10:21:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 984A84605A9
 for <linux-phy@lists.infradead.org>; Thu,  7 Apr 2022 12:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1649326874;
 bh=+o2CkbeGPFlQUU4RWdS7adwPvE25/1YzhKrWYcylJfQ=;
 h=From:To:Cc:Subject:Date;
 b=BvTRgyDHkKcmxOOQrDHfT6scTp1WR0O4D36NoAv7vpfTwflNcUx9iptZNpC3vR+j/
 vNgcLQ1fVSfAUre+Nm+F2nLd1zP0Yrx33duQDdk7lvAIl+acysn4zmXDYAMpn/aQ4O
 kGLslDceay7Jq1rsotJcIBXP9hm3GhxJ5+D+Ybt4=
Received: from fx403 (localhost [127.0.0.1])
 by fx403.security-mail.net (Postfix) with ESMTP id 419B5460591;
 Thu,  7 Apr 2022 12:21:13 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <887d.624ebb18.67a00.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx403.security-mail.net (Postfix) with ESMTPS id 6903E460585;
 Thu,  7 Apr 2022 12:21:12 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 4562827E0443;
 Thu,  7 Apr 2022 12:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2BC5127E044D;
 Thu,  7 Apr 2022 12:21:12 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 2BC5127E044D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1649326872;
 bh=NQEYgCh4LErSGu4roSimJUphphp5nSmB7EWB2qyF0c0=;
 h=From:To:Date:Message-Id;
 b=JZTElO5jtTFb0Pgc4m5lTihCbNJJ5bov9qkJH3UBB3B1bzwKyYDw8BkM+DH2cTj9C
 ZGslkcc/vWpx5WhjJllBXbFH/E7oVU52vJi35Ha9u8cTFGxj2u14ZqFLD93tbZp2fO
 G8UE6vFHpqA8YFfG91VTYSKEFy/ZXFZ8rLNRajZ8=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ySbfysDni7aL; Thu,  7 Apr 2022 12:21:12 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0946227E0443;
 Thu,  7 Apr 2022 12:21:12 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: linux-phy@lists.infradead.org
Cc: linux-usb@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>,
 Amelie DELAUNAY <amelie.delaunay@foss.st.com>,
 Yann Sionneau <ysionneau@kalray.eu>,
 Michael Grzeschik <mgr@pengutronix.de>,
 Randy Dunlap <rdunlap@infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Jules Maselbas <jmaselbas@kalray.eu>
Subject: [PATCH RESEND v3 0/3] Cleanup the call ordering of phy_init and
 phy_power_on
Date: Thu,  7 Apr 2022 12:21:05 +0200
Message-Id: <20220407102108.24211-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_032117_122499_4D292D88 
X-CRM114-Status: GOOD (  11.06  )
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
