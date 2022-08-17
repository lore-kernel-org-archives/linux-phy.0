Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7B35C25B08
	for <linux-phy@archiver.kernel.org>; Wed, 17 Aug 2022 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9G/ewOjsPZfTY8I8ckmxi518P+WpXuhmqkTQDVqfL4I=; b=LIuaKMhaoABo5v
	zBkbZSnJui0jiEf4EKyEq3CWT7dfRy+opV5UyyaSmTrjHZ1lnjFVZQ9NAGGOhcFMHrlpDnffpxVKM
	3WhfpvCF4lKhM1EHcialrHWBWEAQ+KVkLOxT6gmDERr4wX4oK7zFgHlVEpQlLI1GJ65vQ9y4Za/sN
	cS/trCEwDqWHSaNKvO/ErvLiVPuMFGwJKEasL/rX6RGta6S8ogRnIiLuY5kCZCuPhtsCA92ulRf+Q
	F9UjVYKazzUUNbK15hp3mSMn+Ltv7ZA4txYMCt2RE5F5pmnNw3hYc1Yian2Wf8voqao/n0CLltlLa
	tGv6irPA3nSryNr2x2jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOP0n-005vtk-8h; Wed, 17 Aug 2022 19:47:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOP0k-005vsL-7v
	for linux-phy@lists.infradead.org; Wed, 17 Aug 2022 19:47:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 84F40614C6;
	Wed, 17 Aug 2022 19:47:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D158C433D6;
	Wed, 17 Aug 2022 19:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660765648;
	bh=RlznfQgTn+Zb69qUdCkZoQUpTrnL73CXphk9kJNJFHY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bAfkLGolSdo3TKS9rqeOUu76NFl9PJTUgF4T2R4WoLYhjeCpFLXiRnUVRfzuj9OUg
	 kQqk1/dsTB4P+KsaUO5GCu2QyzJ5V3rgDmNbTq6rTXBOCErMbtNH4CcWb5oX8CtJ1R
	 ITfOPhAr3lMAeN1NumI2wbmHQVeX/xyteeCCpHTAq5RjydUNz1dcn8a0IvVzZdyfpm
	 RlUa3g4KVQGKI1y+xZZSVLhXaWeTZhCQ2MSB85hAWJYF7mxvneHSoRIhM8kqMeNhO5
	 TDOKrMMG36wCVLTZCaf7llyiZDrYZskC1+MIhnHMlRJL97sUzJhdyVasjOQfeFhAmF
	 EdsRIKabPWzRQ==
Date: Wed, 17 Aug 2022 21:47:22 +0200
From: Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Linux Phy <linux-phy@lists.infradead.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally
 <djrscally@gmail.com>, Gregory Clement <gregory.clement@bootlin.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Kees Cook
 <keescook@chromium.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-kernel@vger.kernel.org, pali@kernel.org, josef.schlehofer@nic.cz
Subject: Re: [PATCH linux-phy 3/4] phy: marvell: phy-mvebu-a3700-comphy:
 Support changing tx amplitude for ethernet
Message-ID: <20220817214722.461b18c1@thinkpad>
In-Reply-To: <20220817193119.4463-4-kabel@kernel.org>
References: <20220817193119.4463-1-kabel@kernel.org>
	<20220817193119.4463-4-kabel@kernel.org>
X-Mailer: Claws Mail 3.19.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_124730_358649_0B084316 
X-CRM114-Status: UNSURE (   8.50  )
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

T24gV2VkLCAxNyBBdWcgMjAyMiAyMTozMToxOCArMDIwMApNYXJlayBCZWjDum4gPGthYmVsQGtl
cm5lbC5vcmc+IHdyb3RlOgoKPiArc3RhdGljIHU4IGNvbXBoeV9maW5kX2Jlc3RfdHhfYW1wKGJv
b2wgZnVsbF9zd2luZywgdTMyIGFtcCwgdTMyICp0cnVlX2FtcCkKCi4uLgoKPiArCQl0eF9hbXAg
PSBjb21waHlfZmluZF9iZXN0X3R4X2FtcCh0eF9hbXBfbXYsIGZ1bGxfc3dpbmcsCj4gKwkJCQkJ
CSAmdHJ1ZV90eF9hbXBfbXYpOwoKT01HLCBJIGNoYW5nZWQgdGhlIGZ1bGxfc3dpbmcgcGFyYW1l
dGVyIHRvIGJlIHRoZSBmaXJzdCBvbmUgYXQgdGhlCmxhc3QgbWludXRlIGFuZCBmb3Jnb3QgdG8g
YWxzbyBkbyBpdCBpbiB0aGUgZnVuY3Rpb24gY2FsbC4KCldpbGwgc2VuZCB2Mi4KClNvcnJ5LgoK
TWFyZWsKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
