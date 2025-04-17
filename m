Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E75BDC369C2
	for <linux-phy@archiver.kernel.org>; Thu, 17 Apr 2025 12:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6s7FFu/YpVP5ok6urF5CuYxkUNb7h/dOZw6vWQZRhOs=; b=1nU/8eUhm5cOLD
	ybFA86h++98jJhgM07qOeulevilNU+nJXqxcaqqsrx4LAQgEqtKqyd9/DHnONIQj7ChJziiaYtWjx
	oJayg7KSbXEMJq9I4+6RZlPxd36whJoU/5dBcZsr0WMHvNyeHMP3BfAWqUxa0xHDBPLNRdjEZe8ze
	2rlpGuT8359AQRedx1yS9y6ypcjQdVnSKmL9d1I0UzHcC6V7J+uLmjLm3lhDvezYxjkpkDVne6eis
	6l2oMagv1c2y8A6gRSSgGBAAf+szh4X1yvCuhlFeAEg37MrVe7FkaUIG2iuG6klyBJDe3VcLD2Y/7
	Vnyku9YDRHyJQwraYK8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Oob-0000000D3oK-2I5K;
	Thu, 17 Apr 2025 12:58:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5OfA-0000000D2Yl-3ZWi
	for linux-phy@bombadil.infradead.org;
	Thu, 17 Apr 2025 12:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=; b=mYUeJofLLy3RfKesB2Vjep2nne
	AmPuQp6kHLLSZwrs3GlrAQq/7sEau5xTd6Fj/4IGdHWl9+EzaZp2y4QRWeXdjB64SjAwDDHrWRvJp
	oA33dTUszK38hKo5g3VeyvmFBn56ducDAUEi1+JTBQ6vh1NrNNaJhHYrvz4rQ8Qbpe5lkkx4dLExJ
	LolmdJ9VL5GfOosZrDmcP9IxcVIITmSlr5ms+rNawJPZSG9WI6jbO6Y0FRY0+8pJFTzzkyEko1rEN
	Wow68Q6x26H6BPxQ5KZiCy06ymxS80LRSxol1C5EreYhrPqbk/CgQyKTVbVns44NLtJXZXio7R+EE
	I7Du79Fg==;
Received: from mout.gmx.net ([212.227.15.18])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u5Of7-0000000AHR7-2qKB
	for linux-phy@lists.infradead.org;
	Thu, 17 Apr 2025 12:48:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1744894084; x=1745498884;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=G/Yb7oaumPdM/8qQ0kugyO+iwx2YrBHRD3y/tjzR7wqJuiVBnFvzIVCYhRuxJhLM
	 AsNGNbUqWbA9lDEJITMHwgX6hLth9yN+lBUL6Hy8IsWtLFkF0hpJUNjz1neNOHcVn
	 xZNQ8P9qTV2A1Axm0mCnoDnHGBJHHklNM7kWC8MPwXkhgstjNp3U4k3j446pCWUYS
	 gK/pSpbO4+b9HKaWS+5iauza/O3uDtas3LHzIb88uoOKq0uDSgmuurg6eHm9pISm5
	 TcoLjk3c0OVpPksibFWjZcmx5kdOktkrsWkV15IzsdigmA3uLDbPokHWgMl/NDn9Z
	 Fuez0DXAVAiqubxfAA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.55]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MKKZ3-1uR3DH0o6J-00WwfS; Thu, 17
 Apr 2025 14:48:04 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: markus.stockhausen@gmx.de,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	chris.packham@alliedtelesis.co.nz,
	daniel@makrotopia.org
Subject: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
Date: Thu, 17 Apr 2025 08:47:41 -0400
Message-ID: <20250417124741.2405981-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:z1q87PWrzmA+wZ6MmSuAOPAUk3WHPvHPmJ2WcsqhdyvaTUUkS6x
 d11KF+Bs/HBSKNKvH8yRtX0tlCemiijrwTa7D5IU+VsQxy/TEhpOR75hwjjfWWPtC9TGMBd
 6XF+Eb8LN9IWmtaeeAupn0aP5J0PmWDnosnCIsfY6ozXVLqJQh4Rayqqw65/rG8tDgEslaJ
 TbbwSO6lytqaW3Wb/6EsQ==
UI-OutboundReport: notjunk:1;M01:P0:6c0dz2ZZ/uU=;BvYxgyYjX3fK4VnXuNW5l3ye3ag
 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
 UUV5S4uJ9HNamEOLzvFwJ4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_134813_919673_AC251157 
X-CRM114-Status: UNSURE (   7.93  )
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
