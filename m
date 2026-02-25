Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 480C9FD3762
	for <linux-phy@archiver.kernel.org>; Wed, 25 Feb 2026 14:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hL3GoZklDtzZKSZiuxtvvAJ5G4PO9ar/pNkfber7pVc=; b=QCpVTOyutRGPaK
	BxAzl02s1sLBuF0n/PacVTeKcUv+tn/RWbYatGUaTBnKxRjST9hX7O5iOGZwpwOVRPAmqg3a+HqaP
	LM00mVOnS44rZ+xAPFncKhG1jdhmHno9ba+OM1JIoUofPwgVPM4p/2Fg08cb+ft7wGf+NkHkBG6HI
	3DAElFh3yQcD0Mx2xXgaySwAESBHgAn0m7PxvpdW9LczibUJBUCMrAQbUdRVL7/6qm+7r0XszPezs
	uBpeUiI8XgKdqqn0HDRYA0b7uqUZBdvNFJ+flo8JfPZMUUI+YigIKNStzjrJYXtY1NFejyz8oGmtm
	uj399AJ6Kzcr+a0TM4gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGHq-00000004EPd-2rHB;
	Wed, 25 Feb 2026 14:54:50 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGHn-00000004EOg-2IDJ
	for linux-phy@lists.infradead.org;
	Wed, 25 Feb 2026 14:54:49 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B390E4E410F8;
	Wed, 25 Feb 2026 14:54:42 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 855AB5FDE6;
	Wed, 25 Feb 2026 14:54:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C1FC91036923E;
	Wed, 25 Feb 2026 15:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772031281; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=FTk/d67CtY8ZapgM//ezIGGA/bXReJD1LaqTvX62mLw=;
	b=JkH0Uq4XtShOocNcAAhp+piqjlj5aQkoGd6ruThi4UifZx0EV6bHL/50VHSBAnbADAQy30
	wTXAW/0EfpgTL2TBT1XfYomOpCbKrwVOwbLo0f9VMUKQztfL015LxoSzXZYUU0nbwZZmNK
	qTlKZMA2aqvnFXG0yD7wIkUcuJk5awZDiJAfdeeiZlctpaumv1GFJRt+MyjSWIvE1An4oD
	OEoIcn56UmWnjj3V/rh1D/0NAe1eJW/hw9eO8ywSBTcgsVBjPaEA6PYTT/hJ9+0qdO3VR8
	98d5FCtTEFRcR+InS08CbM5xjcw30+70cpuSW6Tz6YQ0ogLIzaFsP8q8nNLKSw==
Mime-Version: 1.0
Date: Wed, 25 Feb 2026 15:54:36 +0100
Message-Id: <DGO4NU2DMD0P.1EQARLCP0QW4V@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v6 3/8] phy: Add driver for EyeQ5 Ethernet PHY wrapper
Cc: "Vladimir Kondratiev" <vladimir.kondratiev@mobileye.com>,
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Michael Turquette"
 <mturquette@baylibre.com>, "Stephen Boyd" <sboyd@kernel.org>, "Philipp
 Zabel" <p.zabel@pengutronix.de>, "Thomas Bogendoerfer"
 <tsbogend@alpha.franken.de>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 <linux-mips@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-clk@vger.kernel.org>, =?utf-8?q?Beno=C3=AEt_Monin?=
 <benoit.monin@bootlin.com>, "Tawfik Bayouk" <tawfik.bayouk@mobileye.com>,
 "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>
To: "Vladimir Oltean" <olteanv@gmail.com>, =?utf-8?q?Th=C3=A9o_Lebrun?=
 <theo.lebrun@bootlin.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260127-macb-phy-v6-0-cdd840588188@bootlin.com>
 <20260127-macb-phy-v6-3-cdd840588188@bootlin.com>
 <20260210193516.temrg46yozxma7xb@skbuf>
 <DGND4VXM9X0N.2CP1VBD8E128M@bootlin.com>
 <20260225122949.pt55t3eefr5nawmu@skbuf>
In-Reply-To: <20260225122949.pt55t3eefr5nawmu@skbuf>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_065447_718262_70EBE5E7 
X-CRM114-Status: UNSURE (   4.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

WW91IGNhbiBpZ25vcmUgbXkgZW1haWwgZnJvbSBhbiBob3VyIGFnbywgSSBkb24ndCBvZnRlbiBm
ZXRjaCBlbWFpbHMuCkkgaGF2ZSBldmVyeXRoaW5nIG5lZWRlZCBmb3IgYSBuZXcgcmV2aXNpb24g
dGhhdCBpcyBjb21pbmcgc2hvcnRseS4KClRoYW5rcyBmb3IgYWxsIHRoZSBjbGFyaWZpY2F0aW9u
LAoKLS0KVGjDqW8gTGVicnVuLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5n
aW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
