Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C6D7C3ABD8
	for <linux-phy@archiver.kernel.org>; Sun, 18 May 2025 07:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6s7FFu/YpVP5ok6urF5CuYxkUNb7h/dOZw6vWQZRhOs=; b=gW4X3g7moiN3Eu
	JTW56EEaYgcfZBFQAqKGxOPH+qeC4gSrNuq1VIs5PPUxoXpkjH0xqP5jhMco8uE8OkYlAlKmO4L7O
	kVwAlH5BUJCHI+0i5N5PXIJeXy3Tf751WIiifMNrrdDkI27/6R+o7FfMgyoRUNZPxTKRNt6NnCKiv
	w0yXYDc9NHe4XBb9VKbc9Mq+LsaCOTgPlzY8uQt8OXbOtqkqCrVI6DI4iEjIdqDsZaeFMb935M2K2
	0GIyXq8IjNYExaPU52l4RJ91mThDVddRuMktCOtwjMaiJTaQRJAWo+hAos3OX/CSyJxIOrvbBC4Sd
	Fs6CDByfeD8PHaWZuafw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGYV7-00000006ql0-2oBt;
	Sun, 18 May 2025 07:32:01 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGYV5-00000006qkM-1pIV
	for linux-phy@lists.infradead.org;
	Sun, 18 May 2025 07:32:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1747553499; x=1748158299;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=k9yValvS9dFREANUsFAdf6d9HgporwGC14GTb32ExKgELHhEfOZqCFSTGtEJQ36T
	 Ny/alOV8d4eN+2uCqVxaTCyYjCKP6jQv1ADFwUhWTs4qKKcAZv4DccbAJIUfhl2QG
	 5/CjSZ398KzkHa6GEqzEVhf4p7u7e1vQsEpoypz/dNEP+c2nQHxyO32UTDo5VM1rz
	 HMPLOMZwX5GOy5mVsnBGhGlvybqrMcDx1jxvldgt4K/gHo726NjhKHHGOKRumv2zl
	 yU8uFRoJnDxA6/6aKiouhjPJExMxZEYYW/F1Lj53Ie6C2Ng54ZQUmWip/jjMma0gC
	 /3B9aRFOKVZmwPuW7A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N3KTo-1uz4NV2wXC-012Et4; Sun, 18
 May 2025 09:31:39 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v7 0/2] phy: Realtek Otto SerDes: add new driver
Date: Sun, 18 May 2025 03:31:32 -0400
Message-ID: <20250518073134.3357015-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:kKVUiRZ2g04DAXB06PHRpCJgs/7h3u+i8sq3FRwHGy/bNqbOC+v
 xmF13qaSVfN8QOaRocpPMWe7DUURu992XunP6KQtALnR5Tx462t47MwUuAT7F2VANpLlNJ/
 YsIyrcSnaQmmp4ghJOH4XLEGjLS+lRC5QA2jsbyEfUFVfaCd1hL+bFYB8TRRTtEFNBFbM5X
 x7hqLyvulmONMNM2NZbvg==
UI-OutboundReport: notjunk:1;M01:P0:b0+WcwPODvY=;UfENzNb0Zp0ugaOia1KblDdEbj0
 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
 Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_003159_777442_D1D3F50E 
X-CRM114-Status: UNSURE (   8.38  )
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
