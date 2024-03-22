Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E36DC47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 07:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUhp3Jh4yBBBmaYae7rtzzupcn5dIOgCETAAZSnRZ8s=; b=Wiowt0QMRezGjN
	XaysdwySxXs+Wjp5fhgOk7MeM6OW6F7lN16nibHWJepXvft/JmnPvyHvndFNnXZbNhzBt7rYnZ38p
	1wtIOTYC2XdhF01A0mUMMeRWaIL7CMu5CsckBt7oy1qtz6j4eKfQyEsQm+nskwMVLLze22KBAlIcX
	Z3zkXIZX0TQo0NijAM7K35lWNg/fwHE4ARAZv3tapIosyQSltfTTiGM3km0bqJAaFqmgseCgn7ALc
	l20ONJT0r2pokkApE7MhVjAUQcqDWWMlZuxUs0l7ehyUnGEZhwd9SZeJAPEDIfGoM7wCfh54x7l4h
	p9bf5dNkewRUuO/DfHJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnZHF-00000006BQA-3J4Q;
	Fri, 22 Mar 2024 07:25:21 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnZHC-00000006BOV-2rm2
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 07:25:20 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id D522AC0009;
	Fri, 22 Mar 2024 07:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1711092308;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E1HU3MaaZuurSbEALSn4O+2+Vq9VJFs+Q64NGMlxrrw=;
	b=CM9SHIfnmGUNE1IzwOHvaAK1g9NZ1WvSYOa1vy60o/YQLH+EvEtHHb29PRtIBWb4L3RIDV
	0PiXPywzFRxF9wikKti3xzriBzcF/sQezg97XH8ji5eFsS79+JbYiwlA50ozVpBGSUJTL0
	87FqpXCjxeKhLVv9ok5FL2/DmyVXAtAKT0FD68aCxXgWObOW9eyubS1Jw9+qZZPOVzL1dO
	zu6WBd4zyihBgkUJVLxs0aOqzjad7LJgs2MdKNDE8XF9w6OO1c9In1GQ/E6jAzCsKOVrTJ
	OcJXrroAquMWl68MFgsx2UvUfun+9D+qHZV7M54eaPeQ5ZoTCdc0TW8GShIdzg==
Date: Fri, 22 Mar 2024 08:25:06 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mikhail Kobuk <m.kobuk@ispras.ru>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>, Pali
 =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org, Alexey
 Khoroshilov <khoroshilov@ispras.ru>
Subject: Re: [PATCH 1/2] phy: marvell: a3700-comphy: Fix out of bounds read
Message-ID: <20240322082506.6d4cfa69@xps-13>
In-Reply-To: <20240321164734.49273-1-m.kobuk@ispras.ru>
References: <20240321164734.49273-1-m.kobuk@ispras.ru>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_002519_024727_CC5E8962 
X-CRM114-Status: UNSURE (   5.84  )
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

SGkgTWlraGFpbCwKCm0ua29idWtAaXNwcmFzLnJ1IHdyb3RlIG9uIFRodSwgMjEgTWFyIDIwMjQg
MTk6NDc6MzAgKzAzMDA6Cgo+IFRoZXJlIGlzIGFuIG91dCBvZiBib3VuZHMgcmVhZCBhY2Nlc3Mg
b2YgJ2diZV9waHlfaW5pdF9maXhbZml4X2lkeF0uYWRkcicKPiBldmVyeSBpdGVyYXRpb24gYWZ0
ZXIgJ2ZpeF9pZHgnIHJlYWNoZXMgJ0FSUkFZX1NJWkUoZ2JlX3BoeV9pbml0X2ZpeCknLgo+IAo+
IE1ha2Ugc3VyZSAnZ2JlX3BoeV9pbml0W2FkZHJdJyBpcyB1c2VkIHdoZW4gYWxsIGVsZW1lbnRz
IG9mCj4gJ2diZV9waHlfaW5pdF9maXgnIGFycmF5IGFyZSBoYW5kbGVkLgo+IAo+IEZvdW5kIGJ5
IExpbnV4IFZlcmlmaWNhdGlvbiBDZW50ZXIgKGxpbnV4dGVzdGluZy5vcmcpIHdpdGggU1ZBQ0Uu
Cj4gCj4gRml4ZXM6IDkzNDMzNzA4MGM2YyAoInBoeTogbWFydmVsbDogcGh5LW12ZWJ1LWEzNzAw
LWNvbXBoeTogQWRkIG5hdGl2ZSBrZXJuZWwgaW1wbGVtZW50YXRpb24iKQo+IFNpZ25lZC1vZmYt
Ynk6IE1pa2hhaWwgS29idWsgPG0ua29idWtAaXNwcmFzLnJ1PgoKUmV2aWV3ZWQtYnk6IE1pcXVl
bCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgpUaGFua3MsCk1pcXXDqGwKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
