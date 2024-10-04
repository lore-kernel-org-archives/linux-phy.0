Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60F0FCF8857
	for <linux-phy@archiver.kernel.org>; Fri,  4 Oct 2024 21:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A5dYZyqFBnFu/H+je0bWPHcK+zD2EcqWk2D8ao8far8=; b=XnztHAK5cFcE6g
	zAutvECY1EiPVw9CiwWkJ0UErvn1NuwiSV9Z/rYESha+uBuq1id5pUOBlh176Dy2t7ehjR2RpEwUm
	C1gn1sQU8f4DT5VMDHfg81bG7CWtgnlLUaOavqbZpMOIJizpzwTQM70TVwKCkv3JyqRWN/uhsgPe0
	ubz5nnKGpuojbQ3iINPhAD6Y9JbwsAPkAbUZYCqL10U7DH6t4+pWtYi0DTxTmHUpTYzqgom8dvd/e
	9WoDoRlBEnb37Rhx+9mr5LyeEyDwg5rhccb4eiow1SHVNAFb2nliOQUbmLHGvS7E3jmgopYoF2GgA
	mu1veeUpUxsg4Tz/7NQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swpR8-0000000EE8C-3tHm;
	Fri, 04 Oct 2024 21:02:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQp-0000000E13m-3f9s
	for linux-phy@bombadil.infradead.org;
	Fri, 04 Oct 2024 19:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=DlYeLSZ3m5Yzgp8AOoB3GbiMUe8xwG+/NWrSdhuYPpo=; b=KvK2F87pU9CTfrbRyASu6G9gZ6
	0vd0zx61fSMl3+ZlZk1832WQEWlG8EKz6XTExwmFia4zP0/Gon370esv5IAKW15KnJ5tE/cKNfKL1
	/U1Cf0Phav0x1Ov8F0BtJzUxZRJG6jL8nL7OOAKpssJUCVmmL5MP/wNUthfQFKHyQ4bP/lQWFeeLd
	SKwmI8ggVThKPWIColH7FCaMa5ckV+p4Xn1wTpHZ/bwpjAHm8rGmZ1///r1RJX6Rh93Dc2ZCvtRA8
	jZETyn9rhOrSwyg6K+kKQmk9GSqjlMW+aNEOem32ZBZhdsR9SjR87CNUNnMRORZLhGHWQB15R3/N3
	OLozHBFQ==;
Received: from mout.gmx.net ([212.227.17.21])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swoQi-00000003vvy-3mWi
	for linux-phy@lists.infradead.org;
	Fri, 04 Oct 2024 19:57:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728071835; x=1728676635;
	i=markus.stockhausen@gmx.de;
	bh=DlYeLSZ3m5Yzgp8AOoB3GbiMUe8xwG+/NWrSdhuYPpo=;
	h=X-UI-Sender-Class:From:To:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=VVrTSi3ZBt+Tqk0v8cRtuYpLTDYagxJynlA/XXjUaJFwNAsRrH1qBMLMSlpVjsSe
	 7Vx4dhdhh9tj6kt/Xk9wzbJQIPyipiXRpWBbjDO39uaVli9Da8n6rmWZ5k/x8vCj1
	 pJaJy+K6+JlLwK1svD6E8iOBlNPJ91AoGfg9dUHLOKWHG3jZu5djUaoeBtSvUasJO
	 FFeZ8EM7J90eaPafmqXF/vnWUdG1ULPVbXGF/i5sPrl29CdGU0PUOZzai9InJ124v
	 FVbchrEhs7SshIJZshWkgcBvbV9Or9LfdPgf/LG/ERI5qbqAoxxsPKGhyQL0ZJdSf
	 J95bbXzKiLACMbYCoQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from openwrt ([94.31.70.81]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MKKYx-1tISyS2y5v-00PYFv; Fri, 04
 Oct 2024 21:57:15 +0200
From: Markus Stockhausen <markus.stockhausen@gmx.de>
To: linux-phy@lists.infradead.org,
	chris.packham@alliedtelesis.co.nz
Subject: [PATCH 0/4] phy: Realtek Otto SerDes: add new driver
Date: Fri,  4 Oct 2024 15:56:06 -0400
Message-ID: <20241004195712.1891488-1-markus.stockhausen@gmx.de>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:q5wVcW8qrY308x+S5AGXxC92Sqe7mW18UsHY/m5rflnu4+sNWRA
 e+366ztW6f3Aq0mDv+QbCr+7xTx9i/nVsb9z5Y1lYEkKZ5YjlhoYBEB/D89btvWndnmFRLS
 B9robGeTi0eD9RoOz3LygxZFU3zEyTrMhEzGNmbZGLQQikHI1+5W9ebo3vYIA7yAdJdGLj7
 qYPx+KS7lKarXJkQmf/kA==
UI-OutboundReport: notjunk:1;M01:P0:Q7/KfWkA4TI=;9UgNWNbS4+IKcxNVrGfCsalcRaj
 x2lQcckR5iWvt5+sBEjsD4ocfkWPHxVFKJ219xy4pQLsZ9DWqhkx+Xj3vnoxK+KoV6PPq0hbF
 EKL+ZoINc5E3OSsp2OjGYtU7EP0gsPk0hWxUYkWOYTPxXkI//Ks5MXHwCkGVypJu/kmix5WLm
 VjuorWYz4fF++l6kQpRe3KuNI1KAnd5uh/fVRv8CwpPTeui+7xRp8brIDlRQGyH0NQ48MGcpD
 LCm+kenZL7/oxuoCgFBaxX/bUnnEk4nVZCigXx61gqqiV+kYSssagG73tQdO1rkdQh57zcTrK
 ll0RcsN7kvEnb3x1H3rk7Ve0AMSk5wTP9W5QjHz/frHzebfu6sZV7Q/m8voeE/ugahPN05Tcx
 BhuV/oeI9l7MEemsgv/Av0AfPynOepYU5gQAZQsgyQa7KMIGByGWbJrLEn4GWeFo13mTsb61N
 Nq0Z4Qy/FEDNDH8sBPv5dfGoTGnL4xlzyVzgtV06rF+iTzarue1d5WGY5K/2aa/U0LvVqh5z4
 Q9kDWjtUi7cTziNmE7+uDBDWIa0wf6xY3Cl4srX8hwuGbO0n4XfW3/AZ+KJDJNhcqZ+nAlaTv
 72VwkuVb6FZ4WGN9W5Vl9L4BaNr6E4QH5za1HCtf7lclXZ6hzkRS/VYAjRdmbrkIdaSmTJOFj
 zt8O6EyzZebJGJ7S2Bfp7VEPpyICks3k3u4hOsn+nwy7o6VBX89mpaOcIpQm7fBRk0lIo3Swk
 Q57sLhtbDE+TbIuhiLefqC/PHsBDgj7pfpx2f2rzcgMtnGBlPW1L2ffk5dC98lVQWU9JLxjUI
 ke4koFOPRe6ZgY/DPylssV7Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241004_205739_077633_C537B0E3 
X-CRM114-Status: UNSURE (   8.13  )
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

Due to very little information and fundamentally different I/O port ranges
of the devices this driver is the best we can achieve to provide a common
consistent interface.

Currently we only provide the most basic operations for mode set and device
reset as well as some debugging information if enabled. The strength lies in
the fact that the driver can run patch sequences for the SerDes registers at
certain events, e.g. phy_power_on(). This allows us to run configuration
operations to get the SerDes up and running. A lot of the sequences are
totally undocumented and can never be implemented in the driver without
further knowledge or vendor support.

For more information see:

https://svanheule.net/switches/gpl_source_drops
https://svanheule.net/realtek/


[PATCH 1/4] phy: Realtek Otto SerDes: add header file
[PATCH 2/4] phy: Realtek Otto SerDes: add driver source
[PATCH 3/4] phy: Realtek Otto SerDes: include driver
[PATCH 4/4] phy: Realtek Otto Serdes: add devicetree documentation

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
