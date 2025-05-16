Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12712C3ABC9
	for <linux-phy@archiver.kernel.org>; Fri, 16 May 2025 17:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UMH/sd/ixKn9uAWh+ilaAo0pvFyOYQpJQNTAmyOsz4=; b=p9XBtfwcDGu95U
	fkuxGeJKUYrKYbdtDsjQJ5UkFA6k4nQalABUe/ZNSwqqXNLlcyiQnJETuNKtEY1Ss+bIVWv3MW6nx
	WUaZq00PIb1Kbr6teTOxXquBwKduzP6hr3T4HLkBkyl7Vo5Gty5vFicEDStRq3SJcD+GSsSX6Dsm2
	AgqtaaYT5e0kdtjraGAViKpO+i+JzpVaLKJGPKdE4g2aZ3pebW1oqefKxhhNsHICs67M77BPw0RIl
	k/7imOnEcfiKOsFxBqrkFbVeZcvjH+1TWggh6xgjt/1TQrs4ohhYEofKdsc3Iu6mAf8cXroCpVWKR
	IXmZdewPPFek3rGuUTRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFyzg-00000004BW1-2oDi;
	Fri, 16 May 2025 17:37:12 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFyyP-00000004BJm-0uqM
	for linux-phy@lists.infradead.org;
	Fri, 16 May 2025 17:35:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1747416936; x=1748021736;
	i=markus.stockhausen@gmx.de;
	bh=+B/b88RxHjiUqLu3BOQlv0ZiKCFsaP4dJyaBRKqiRcI=;
	h=X-UI-Sender-Class:From:To:Cc:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=uK6MdAV/TlSaWM98hndEx9eSQl6yfZGHCE13v8vTh+DXUvYd7o8cClX0rTUqvup9
	 lnbsLxkdbcmrkl7l7LCeq4+RU9RcUZt0BD4eqbqsIkZlxLHAvTInUz5dmvPSnqbjb
	 Lj6urIGeVhhioh+FDH9jiDrAzN868gOXevCLQQ0uC8X/JD7EDWTJzLpNebvqAGUUj
	 jrWU6//PKjCdlfvlD9HPgP2JJ+Lx7jbK0E6SJTEI4p7W/NMiC8KpwaVpGxGBKeWy5
	 GSwhjTgrlJNb4CM75+W7SCOUc9tyoXY7sE98g4NNuKuSanBamB3AM4qtts184hMj+
	 5RUtQ5q7AKIezl+WeA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.55]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mlw7f-1ufejc3TcJ-00pIbY; Fri, 16
 May 2025 19:35:35 +0200
From: <markus.stockhausen@gmx.de>
To: <vkoul@kernel.org>,
	<chris.packham@alliedtelesis.co.nz>
Cc: <kishon@kernel.org>,
	<robh@kernel.org>,
	<krzk+dt@kernel.org>,
	<conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>,
	<daniel@makrotopia.org>
References: <20250417124741.2405981-1-markus.stockhausen@gmx.de>
In-Reply-To: <20250417124741.2405981-1-markus.stockhausen@gmx.de>
Subject: AW: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
Date: Fri, 16 May 2025 19:35:32 +0200
Message-ID: <06ad01dbc688$ee2a40c0$ca7ec240$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQHBQkHCtLzM7kSYhx7haRg7W8ZOSrQKjE4Q
X-Provags-ID: V03:K1:D1NCFB+ty+ZMFxfRwKSAG04gbrM3lOY6BlUBmMouyKWaaE0GhzA
 61dyEAxWMFbCvKslIpMg6QapGNKzE+8ACZZ65uw14gLUh2UBubbYpkZiKQU8XXL5HYN6tDw
 7ZQM8O15vTEgzson13Hqc/u8YjgWRyTGJRqzbt3GB+qJsAAkgvxCRAnHyzeFARHriv1DpcX
 wZRN6SNhj26MCR+xipGsA==
UI-OutboundReport: notjunk:1;M01:P0:+dNfF8UvNYo=;ta54VbzRNfd60YeaaSuYNPjvPOE
 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_103553_567456_A0AE5913 
X-CRM114-Status: UNSURE (   8.33  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

-----Urspr=FCngliche Nachricht-----
> Von: Markus Stockhausen <markus.stockhausen@gmx.de> =

> Gesendet: Donnerstag, 17. April 2025 14:48
> An: markus.stockhausen@gmx.de; vkoul@kernel.org; kishon@kernel.org; =

> robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org; =

> linux-phy@lists.infradead.org; devicetree@vger.kernel.org; =

> chris.packham@alliedtelesis.co.nz; daniel@makrotopia.org
> Betreff: [PATCH v6 0/2] phy: Realtek Otto SerDes: add new driver
> =

> This patch series adds support for the SerDes in the Realtek Otto
platform.
> These are 8-52 port switch SoCs of the RTL83xx and RTL93xx series with =

> MIPS cores. The ports are based on 1-8 port PHYs (e.g. RTL8218D) that =

> are connected via multiple SerDes.

Just a short reminder to get feedback on this series.

Thanks in advance.

Markus


-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
