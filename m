Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68C2CD2069E
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 05:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6s7FFu/YpVP5ok6urF5CuYxkUNb7h/dOZw6vWQZRhOs=; b=ZMlc+1QESKMp1U
	++VZy5YPXiFC/kuMKNlcqtuoms13yMUyCoO3dJXuMYR0OJNI2XQ9lArQIUQUU4Ina26bGdJ8UwIKy
	sgdmP4P8ZF0TisSBqp/aVZd7jZHmMKYfSzircrta2ttONeBdgqFonkNdoi6tqThjRKqDCDV+B2ujz
	urGVrfbZ/b5H3dZi4PDrGygoAG22L9yOnZ7Mek5hWvpm+cL1CjWzrHK7iaO6eZvITXAhIm/NkY2KG
	Q94VDVpW/RCDctgvtZrJ5MHUibCGTrph133MuDz9SuCe3Bo0yYDDj32nrtreqIGRBXcgxkY0QR0px
	SxTBTvNH/ko26SBTOAXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0wuJ-0000000Ac3Y-07ot;
	Wed, 16 Oct 2024 05:49:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0wuG-0000000Ac1R-0Cso
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 05:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729057726; x=1729662526;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=ABag9x+zf0HxHkXhJAEIBSVvlfEY1svZhLbmfZnbP56Lvx50hpHLoiuwfEDI4pIi
	 gka40Pf9qy0jdHQe0+wFfmTEb0/Wf9tu9MMixoxHA8nUF3aZz3BbMP4Dmr8tbUkRq
	 Farwza57e3ATiaNiitL9qZiPkQ2eG9SoM8dRnipUfG/VevUoF3iUQI+gB+r2VTIZN
	 +Jd/7JwUn2I2NJ8y6OKZaomzx3Uh7LULcWexzQz01N2J14JKebWoxLjL9QeWX7VEa
	 BBOV9bG5Vah5RMLg+HNDqaVqlZjDIePB/AGQuYFBc7bKUw/fFOZvEbMxCzcqRqgun
	 sFLkgtU60iYVbBTDrQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MOzOw-1tJZhq1U3o-00VDRI; Wed, 16
 Oct 2024 07:48:46 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v4 0/2] phy: Realtek Otto SerDes: add new driver
Date: Wed, 16 Oct 2024 01:48:40 -0400
Message-ID: <20241016054842.3435609-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:J8KaY2G/hIfd7t+TpqhOnpjZtP498PtwTFhOFOubkcwZ8to2//s
 ptpPCvtBKsJmTynDnFkJiRUpvlBB/k2Sq6ayjC+Qj/CMwjnhzHmgAteta+Vn+Om8keFMdln
 VOxxzYVs3ro5L8+aDxIEPgzWSTtbTHax4KI1wVRUFVryDd0lXzLzpZ/S7Rk0rWG7pblA0I0
 cPZQu3ZGoLkQzuFWsRAYA==
UI-OutboundReport: notjunk:1;M01:P0:5/2lUkaS7BY=;Cpigq1h47R+3hOk7nLUW3bsS0YI
 ig7DAqIp0d2pPaIM/WppOTk4Txgw4CpoUb0yA1O4YLBfH9b28i2ckoE2Vb3f1cWSpjkmEFKJ7
 p02GIynjHvR/Aybwm1SCGMKytcNJKyML0fCJfSjLAuq3RlbvkZwgZpvUm4W9IbKsaoUwzmAXp
 29fkMr0s3Sd5Y9EExsgQNKeC63Aa3PYxR+KCTbcVCOhpTdzffWabDp7e2p8KcMZNYbtzJcgYy
 E0GLk9MXmybBC+tcUhXEFCXJ1dgPz2FPYeVq31dFWf0q1ixcmOp+AtkeeXEtexFWZQe7U+cLY
 cdhwoZXHxqQnGFBlA3w4vr4RVI81XGGcBXSBC5JzWNfQqcDmFn7D+bfTTVwZ39oa+4G1DeMrO
 hY4xmiC0vglPKc3RQBBs9yDZwIVTlTIQfkhK2UxWK6pHEqD7KP73dF/fv3tVoNlbaSFmpNTFk
 kauXvfw4vshIaBV+0YLacVgs4zAh7anQ98Zt0Lrdh4U0PrkkCdPfflBp80tvBr6Jeda0aX0rO
 qeCs+AS07aKHFlg78RRIlDmSEQLtfDz52eDpwjqJoq4dNB0lYDnrDuxLb5SS/21fgq4uTtM26
 5Cevl5faBu6YhrnQcexsNMuAPLMSezyulXJ5mlsqqEyvqyJiYbEbSnG6poYn4sikxRNaQP+iM
 vzZn4UNAbX7VhwAKKDBqKY+UUqzIXih8UwFrQpPRFmH+0s4/MOzDlV0eBKREbY2GKuwtNi5lz
 ickWWiml8RQ6Bmy4/TRcve8GRNJmVF4QB/eD/PyxPQQWp8ZntpdESynryzpzmnEhRw7rfShVL
 qbnVUz2uPU6MWz/Us6tJmE5A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_224912_381639_46465AC5 
X-CRM114-Status: UNSURE (   8.12  )
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

This patch series adds support for the SerDes in the Realtek Otto platform.
These are 8-52 port switch SoCs of the RTL83xx and RTL93xx series with MIPS
cores. The ports are based on 1-8 port PHYs (e.g. RTL8218D) that are connected
via multiple SerDes.

The driver is based on the GPL source drops from the different switch vendors.
It supports all 4 SoC series and was developed and tested on the following
devices:

RTL838x - codename maple - Linksys LGS310C
RTL839x - codename cypress - Zyxel GS1920-24
RTL930x - codename langon - Zyxel XGS1210-10
RTL931x - codename mango - Linksys LGS352C

Due to very little information and fundamentally different I/O handling and
port ranges of the devices the driver assumes and translates some handling
to provide a common consistent interface.

Currently only provide the most basic operations for mode set and device
reset as well as some debugging information if enabled. The strength lies in
the fact that the driver can run patch sequences for the SerDes registers at
certain events, e.g. during setup. This allows to run configuration
operations to get the SerDes up and running.

For more information see:

https://svanheule.net/switches/gpl_source_drops
https://svanheule.net/realtek/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
