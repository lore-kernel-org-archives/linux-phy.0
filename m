Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D32C7CF2566
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 13:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6s7FFu/YpVP5ok6urF5CuYxkUNb7h/dOZw6vWQZRhOs=; b=OmQdjKwOr7irXE
	S5X3LOcPXfgulfrOadI5FJ2IMwPXmlmwWs/wbQy4265qXyZDTlFq53NiBiVJODtF6oENVH4ZWCrs5
	SaaGFKY5TeTydWPqUHxuQCZSEB1sxTvD+F+wKc6DCqRx9JSfE7s7EuOTpW0jSoJ4jY87p7U8jCB7z
	bgDdo5Se0R3egaeaIdUogfV7qDNu1XS2ylOGa/3Ia4ue3B2SzO1zXjR/tlIhyvi606fXy5/KV6Ytc
	SppUdXq6CJrUX6sWo3wU0pTQjMSinRlpWe8vYa7floLbZwBa6/xYp91jO4bl+0Nf3PFTwm0Tycl9p
	umD8W54reZ9M1VveZCiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szcUH-00000001I4X-21g3;
	Sat, 12 Oct 2024 13:48:53 +0000
Received: from mout.gmx.net ([212.227.15.18])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szcUD-00000001I2k-3Kcd
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 13:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728740918; x=1729345718;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=nXVf/4NxTZHXoXG0nAhX3/pYaqyejLHIfi60wrPArd3lHg5s1xzac4xLv7DauHpD
	 +HHVadnN15OlMkzzihotK4v76KVyykD1mr60g2e4GGR5Ed4o+gbdXEF6GElZUO+aM
	 r4FCT2Xo6OE4ekopvXOGBlUuox5XWvzS5bSgAeR7rSGWWeXOT2MmUPNx7/cR5bgJk
	 xXjWCZXJe11GDY96mU1HcnpgV5yarGC+r3hjEPbjNvpO8JE+UDowTJReH4iU/bVrX
	 O4db/GUN1LHjP090vax/5cf10V2Ww1BWORc3+T/dVX2oeUXo5R1zxjmpetc/OmC4l
	 APAPTOsicxKofPr5Zg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MIMbO-1tDrYA1xga-00GJSe; Sat, 12
 Oct 2024 15:48:38 +0200
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
Subject: [PATCH v3 0/2] phy: Realtek Otto SerDes: add new driver
Date: Sat, 12 Oct 2024 09:48:32 -0400
Message-ID: <20241012134834.1306992-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:Oj8+337dM8VJHfGd9kXbSLhqqhg89TtZbSkxaUshb8QSX6Zq1z9
 tWYcsdfrgil6xGLtUbjZFEQzDO740wByqztI6L23i0jFJeTvvhuk0EYYU/gXIg77zcmoYwA
 T+isb827CC/Yo34/WU6p7vlkORG2RhdBLLdTPJpbPSX1NAsq1zim8Dz+nw59zbIp82oWJFv
 /x6GpK8yxkV1tNyykZK4w==
UI-OutboundReport: notjunk:1;M01:P0:GOTzriedaP0=;iRItdQR7bb+AzeLFf45XxZ+xxGd
 FbEvlPBpVTksghd5NZ7b60kliZt9uJcCMRk07qTUllxeGj5NcH4uYoRDS87y/hART2/mqrjIo
 mV5Cb3xNiiMuFDtjroU2hisLiEq5mLXNyfC1wk+G4wNiAhYiRi6xwQLgkVxzTVbbBeLLgYMW6
 SUgpbZyvel8uCQ5XF0Cy0nR0mWisdAWv2x5nWYic7FNuJzFnc2Nuv3IiI0k/T7pZ7XQWfUqC5
 KB3blMmRIIGmBO4szyvhmJU+HWoiUvhAMW/6Xj6fbrnSFMvZnKH92Ra7jbw6se9lBumC1pKFc
 /wWSOUcNxKrLLhtdo1rLbh2gneLyUnTehyOgxFhpNMuxoYVNDvmKW5usI/43rfO60OcCfMDIr
 5K8JtePVy38xJu7fdcnYNFYT9HDsskoS4uds4dvS4SLK2mJC+YUd2Jxl/0k257dP1tLYIYX6a
 gkhI1l96deM2nydgd8j/mpHNrO1a9wQcFb4FEmVu97+RGWaemCoCIjP5kzUO2NO7eZvvmGAEC
 qMo7emfVL1SOT5KeWgH+usePfetluFvbsKo49ECZX0IyuhXrhdnZe4t7jQ6SKEzT3lxjMnvsF
 1gBoBmG2Smbk4G7TCOxl9y1TpptPeOCncNKJFrqBPh19AC2qdxtSxy5NghWNqt765y4HVP3JW
 sAT2MiRPpXLfOPFx5lzJGd6AKLRnHciAqfMojxuX4EHEu2PW4oBVK8widSJtvw4NNpVUeFjL8
 vb2e18gZK/p4YPwowB1OeELS5PNJ31vk2r1dDVSVqeW8sUP8vVKFe0xdl0DFqyiDvP5uPwA+Q
 MwZ2QPFazclAbZqRna1CJFiQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_064850_146855_C0C7AF31 
X-CRM114-Status: UNSURE (   8.83  )
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
