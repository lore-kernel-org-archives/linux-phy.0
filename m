Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC4C9D374BF
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 16:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6s7FFu/YpVP5ok6urF5CuYxkUNb7h/dOZw6vWQZRhOs=; b=3TUu+/oyPkjhr/
	VisNDcToFVNASA9lYAT+Xi4QNjLc/HvFx0ZId29mk5OGT6sra878YZre3f5yE84Dzm9QhJM8bhVvW
	3YZ/w3fOAwWNrDNPVXwmkvbibKPCM8TPsZ72zTvBS0JRkPIirz2edxiCyKUPK33ZeooKWP+IdT0+p
	r1lJOWTiMRNqERHZLHXtFAj0W8mlMWc6M1QFUqQg0ireFBx2pzo/z8ki42aCQfBSLh/fLs2xKVtJ/
	DNEmOxK/nsTLSYbWiJQ4UTWGBvb4ftXkn+Tm0VEdGxUqZoFWsgiFhdY/NZlptSZ6tSpv3d8C4oDUd
	qWj1lgSZlHcm40/hwJ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1TId-0000000FTk9-2sAC;
	Thu, 17 Oct 2024 16:24:31 +0000
Received: from mout.gmx.net ([212.227.17.21])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1TIV-0000000FTga-2ygK
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 16:24:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1729182250; x=1729787050;
	i=markus.stockhausen@gmx.de;
	bh=lk3UA/xG0turmQ05InXY1YnCg4vvyf0svh1HVwn0xS4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-ID:
	 MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=EkEJykXctTPpdUod+Edt6VhGvaF3PizXmFNL88cunkPl6o1lZcFm9Td3zihHF7K1
	 XQb2VnFBKO3Rhyj0FTCX/KFW7Yef3AIa7jVQ17qhwdtYLf7UpWFasqrAY6M4v3KKS
	 i9VCCN6/cKvr3hGEIrpifXwPOcpHUDPgO+0BcBEXeoFiVrOFAXEk9PaF9Atdqo2Im
	 znk7exEhyYI3mS9qTIZ+Y4oqmnOSpzK+LTYjeAaXuCGEOga7uTqnje6FFUGrGT8HJ
	 IC317xMuJy5Mhcrhi1019aBblV+01wOmrBYIEOgzcxZlkzgGEr1z6TJBiM1d/kw//
	 /y97w6Oupk0o5vOa1Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.17]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N0Fxf-1tpR7d1svv-00xKrl; Thu, 17
 Oct 2024 18:24:10 +0200
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
Subject: [PATCH v5 0/2] phy: Realtek Otto SerDes: add new driver
Date: Thu, 17 Oct 2024 12:23:58 -0400
Message-ID: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:TiqkoZK0sHUvZjbLqlVGBpwOEgVxu7Sc1xnIEujLfYsheWGhYKZ
 4ECz1kxs5ujquGNKfopu9pyopGLQ/RFk6djA3uo2in0Doi31CzAmYT/mzxngG1xJsgMTo/R
 u6htiYpoUDWzhAyzJzwy/LFacDZHCTNkQsTIgXqDv2Va3rx4seCbUJjCyi9mKwEwkK/7w+u
 wTpQUmUXo7uq4Qg3QTVcA==
UI-OutboundReport: notjunk:1;M01:P0:P/z53sdpcNQ=;ar2XupGxZHDr9mwNaDGO9/8pxsY
 6JYH9QNC4na7btfm1PwrwVfmDOINm+8nKTnH8JeF4i7+UlyYots0NXQ5SrNC6CMvuLJKEi1co
 VyE4l0VJ77MnAxkGFGVwKRlNfSGPOCrihB2qcq9qh/REv4ajcQ+FMjbjXzb7USIb2Ev7u/hMN
 w/FHTthO3gYGI9iG1hv/u5TcDrtIklhk+e1bB+tXe3xnVsS7Jjr2Et0pRg99uUvWuU7u5nt2o
 Y7hoDUPZCiMCaCLE2kS1nWsbJwwuWll+cLJa227lZQ32vUmWghZAn+opMQIdFSfDrP0BTCx+c
 xlRSrU8u33+61ZBwjqX1npKngQp3I8Fxyfh1deafGiVTIgppjcDLUWIPJYTMwskerDsELW5lY
 cTuyyPdxHcZBd3WjFVDl6/3YsjdPuI6x4QdYhUvjan/F+cBGEw0finQr7fmwmyE87EEGoHqo0
 UOpbaV0sNBwpeDOGcn/6iiuED0o7wup0sHXUkSEfKeJcyYpeuOfGjALhReVDs52L8CtgMnAGL
 F8Zs4zl7xc1cULkM1Cr2nqKejKh/wCBqBdlabbPP355hFApsHf14ew4tkms4VW0BirOrdUBqe
 yhyvI//jExzkFmP5W92LgneqUlqD/q8b0cLkOPsEpVr6AKMJNtFgdv9O5coUcDij75V8rtl7J
 ykECtqNMlUNdaY8xsLUStd+QWVsksthcK4MH9wH9/sn9qxLTj3tjVGMXLBrArUg6GcvWYh1nh
 j30z1JjPrS4+XOktXujwrFnkfgY5TdOXudKYGWjrzimmVhnLNink+FNMt5djk7q+l1J7A0dCW
 ZWAaUJZ2kylkGYjgx/F3JxXQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_092424_130368_63193D52 
X-CRM114-Status: UNSURE (   7.74  )
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
