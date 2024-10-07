Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6BAFCFB43C
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 17:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z9XbGUvZaypaFc6Gl9HZOgVyjcVDaaWYwNhcP0fZjZQ=; b=Orgu9FSYfknDaG
	uqnm8IONP6xscdMr+2usLzADUKo+EyOaAad5yhd8xPrYY63c+z4rIvAADgnd6RlK80HVc+DO2PXdw
	gbTCZol/Hw1ZdlOKMVN0pls72JKtOKcGgcwb//dmmDL7fZp3P7Gm3IHaqGFKRWMwIIFBUiSDI+nUx
	3HrachPX84I4ygl/nD/Ze6Jkw2HeYuzNPMFhy9dFNh1QsdjaaIA5dKiqfEUpO9JuBeswaLx6C4oO/
	VIzY1GOHWQ8Kxcing3dyhEPlLpZ4J3ZwOBJb64WQYC4xGCBXpBr6fF3jsGohMCrorJtEulyUzME3g
	KrazJ2nXET2fBtcHA+PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxrnV-00000003N8q-2VAX;
	Mon, 07 Oct 2024 17:45:29 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxqjG-00000003BR0-1iPU
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 16:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728318987; x=1728923787;
	i=markus.stockhausen@gmx.de;
	bh=6r1iyAW+MPhFfGdFNuxCvPOa/U2sdSRL3vxx58PITug=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=OANC80TN9GwFdZx8Y0bx/4HkErCdLp9BUUtVlyKIaWAiV1XqqCpxh6mlukkOoPYB
	 d7zSo4JUSe7QEphINGDPP8WkHOqzzM8LOnNXkRMtTDQ2iK7ck81hWG6TEHSO5E6nZ
	 y0Hsx1+74XkrE6iOoNKy+OEWuqBdkHBH177+7ZJXTynh+0zncETf5XA1GapG1wU4E
	 4T2qdZoKX1EgeEXuRfAKf4x1rglTPkeyNSzm4z0xIy9Hq6OujzNBPipk4xQGW5x8m
	 vdRCTBhQ5sjwFtJ/SQewC/TOaIF+9FT2m4ly/4SW78zkzSMih5rUc5y7n12/utCbr
	 4AuthbJl+6eokMBZ0w==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.45]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MryT9-1tjbkU0TDR-00jwt5; Mon, 07
 Oct 2024 18:36:27 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org,
	krzk@kernel.org
Cc: Markus Stockhausen <markus.stockhausen@gmx.de>
Subject: [PATCH v2 0/3] phy: Realtek Otto SerDes: add new driver
Date: Mon,  7 Oct 2024 12:36:20 -0400
Message-ID: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:E4SpbU9iI15qAgU3v7RQJepCA+KdFwRIFl9nTBXezQhJGOuVZ8A
 MEXBrP3W0HmM4d2QXdDAY/5oUmXZDGlt6fTdaJGro2zL3pxsGqaqSmYNM2sVb6tTx2io/mf
 cMQDVrUW7C2TAqJpnQ/v71O1j7DHvSdjW0FBi241wX72rbvsKTis9kWzH+tBZ1Z/jRKm5mR
 drU6WKgXWiT3uTNWi6/4A==
UI-OutboundReport: notjunk:1;M01:P0:EDNWHl46oZE=;va7eUL8/jdUBp1M+ANuo8nulHHr
 S8b/oCuM8HdkEyqU/UXaDQ3PXqq+CeYj4sFdZORl6SooNkAwLLEeURRpl3hYv8jLU196J8plI
 0g0ATCelwpt35FHibVAOxnbjA3AwsEVbaO1VG2fVAZJoZfIW1plfkDvnZfC4pimMc5s2UK4QH
 AqxCBZytQFfeezJgXLFx9atkYlOSl7drl+O/K/MHboGtA1kfyuCKlEKM/Jiu7+wOJxqBWCBQU
 toSDjT8AJc3ePqP+5xBbvlhYlqQFlklyOpeDlQjadfjlho+MP+CmmOxAtumc+2irYZw1bW9uk
 cAMqJ6Xf5v9Agj8PSN5kWONA7a7B3XCqRs2V/LJq1woDXmNsa5iGt2PtWo8s4w1l8Ihdsl5ID
 s4+duZL+dZ5SDEGH6Beu9k8Ky8P5Jfh8uJ2c/TCZ3aFRzvNNyKMCepScyVr5wqAxMJeR2eW5D
 LrlzsV2Z2EWmGHTSbqMzWkPCcL76lhZauSQ3mYymDWmTjF6Ag+5z2zJkSxDk/PLUGRKryfKuI
 gbR8egRy0aQouPfyEf6FZooduco8TyWVMp+YzE3j6CPZ3QaeuhYgoFHipjeDs5pJlNx6678tG
 2ihYIM5xDwUrCGXiuubLy4kvnUwhtjzzeNRaKAoPvX1zk/85xgLKRqDPet9bDCg1Dg8vywq3y
 LFGlvYKVUu439FfK8aTjwiIi5Xhb+HBnNYVpEcCo4bDmbFBtFgY+c0I5l8yGPfN21fBMFi/Nj
 yfNnQPcTtaGi2CMHOpxahGAAHu+bpnYfv2tBmRV8b7Ka+aBfv05pCminxUer65DHetVNGhIi4
 WxtgLq4EsKZMoIQf4kNgk12Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_093702_753518_083D968B 
X-CRM114-Status: UNSURE (   8.58  )
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
operations to get the SerDes up and running. For now provide setup sequences
for RTL838x and RTL839x devices.

For more information see:

https://svanheule.net/switches/gpl_source_drops
https://svanheule.net/realtek/


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
