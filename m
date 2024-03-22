Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AED5C47DD9
	for <linux-phy@archiver.kernel.org>; Fri, 22 Mar 2024 07:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BszyNRUhVjLpg37z+5chsQqlUenmKes/14R7WfQgbGM=; b=UoS0Yjx0spg9RF
	xipuGqHzZBwrPQ/ukSuQOW2WsT9v/5uaanbgZ3BHDx+DoR/wR6vMptmcGAMPxfqNBCRLeNv5xB/mz
	oXOf31PYdGyfHMLtC+JEH2jr4+FFCblv691ribEIH3eQSFOYTJvBDGiM8mEt/zPyqz+1tYxdTHndD
	KVSnAK2fsOwiGTQldgs9ke3iH1dJGrO3LvDEld8zG4icwolj+485UQwybTS200PFLnvxY1RUjUWih
	m6ymEfsr0u/dN1H1TbqJdqhjRmncxMZtEhyZRg2jgqtrKeAkLo0nr52DeaDfmobI4/c/sE4uHC0A8
	6h81uH+AklYG/h4VSSvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnZIm-00000006Bl0-2QMN;
	Fri, 22 Mar 2024 07:26:56 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnZIi-00000006Bju-3bhp
	for linux-phy@lists.infradead.org;
	Fri, 22 Mar 2024 07:26:54 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4FEE4240006;
	Fri, 22 Mar 2024 07:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1711092408;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lQmTusbOmMSSaBgpQThp7ZrEL7/j9/5tVlOksabCb8Q=;
	b=L1eE+UHYcFgfKp4UM/EZy1mC62JIry3PzwRfcrdzi8oR5i6fprdcPe/L0xltrb6+jzRUL7
	j1tal/LT/rXn+AOAsubzJ5VBexbovqrD3vwqXeDReAPO0r4Vd1pYiUTHxybYduQeuqMaf0
	Ep34Tx8uCwYA4t+InzIZCYGP7S0w/qxLfdhlEpUFbryEajFnCIdm/nYZT1L+ohZjHwjVuj
	eEzmriTN3eIV7DbfgVDMwGa1OTUzYSk32MqvZEf6idF4F4WftzSEoyROjBx6qqpm6b0ibv
	quJXJk0WGynqzQvNjC8bHKZvTX692+XbjJaC1A7+I9PLYfkqZBnIM9KYM69vaw==
Date: Fri, 22 Mar 2024 08:26:45 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mikhail Kobuk <m.kobuk@ispras.ru>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>, Pali
 =?UTF-8?B?Um9ow6Fy?= <pali@kernel.org>, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org, Alexey
 Khoroshilov <khoroshilov@ispras.ru>
Subject: Re: [PATCH 2/2] phy: marvell: a3700-comphy: Fix hardcoded array
 size
Message-ID: <20240322082645.6c1d43b5@xps-13>
In-Reply-To: <20240321164734.49273-2-m.kobuk@ispras.ru>
References: <20240321164734.49273-1-m.kobuk@ispras.ru>
	<20240321164734.49273-2-m.kobuk@ispras.ru>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_002653_162678_7F5B827A 
X-CRM114-Status: GOOD (  13.55  )
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
MTk6NDc6MzEgKzAzMDA6Cgo+IFJlcGxhY2UgaGFyZGNvZGVkICdnYmVfcGh5X2luaXQnIGFycmF5
IHNpemUgYnkgZXhwbGljaXQgb25lLgo+IAo+IEZpeGVzOiA5MzQzMzcwODBjNmMgKCJwaHk6IG1h
cnZlbGw6IHBoeS1tdmVidS1hMzcwMC1jb21waHk6IEFkZCBuYXRpdmUga2VybmVsIGltcGxlbWVu
dGF0aW9uIikKPiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIEtvYnVrIDxtLmtvYnVrQGlzcHJhcy5y
dT4KPiAtLS0KPiAgZHJpdmVycy9waHkvbWFydmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMg
fCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21w
aHkuYyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LW12ZWJ1LWEzNzAwLWNvbXBoeS5jCj4gaW5k
ZXggNDExNjJkNzIyOGM5Li4xNWJmMTA3MTBkZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkv
bWFydmVsbC9waHktbXZlYnUtYTM3MDAtY29tcGh5LmMKPiArKysgYi9kcml2ZXJzL3BoeS9tYXJ2
ZWxsL3BoeS1tdmVidS1hMzcwMC1jb21waHkuYwo+IEBAIC02MDMsNyArNjAzLDcgQEAgc3RhdGlj
IHZvaWQgY29tcGh5X2diZV9waHlfaW5pdChzdHJ1Y3QgbXZlYnVfYTM3MDBfY29tcGh5X2xhbmUg
KmxhbmUsCj4gIAl1MTYgdmFsOwo+ICAKPiAgCWZpeF9pZHggPSAwOwo+IC0JZm9yIChhZGRyID0g
MDsgYWRkciA8IDUxMjsgYWRkcisrKSB7Cj4gKwlmb3IgKGFkZHIgPSAwOyBhZGRyIDwgQVJSQVlf
U0laRShnYmVfcGh5X2luaXQpOyBhZGRyKyspIHsKPiAgCQkvKgo+ICAJCSAqIEFsbCBQSFkgcmVn
aXN0ZXIgdmFsdWVzIGFyZSBkZWZpbmVkIGluIGZ1bGwgZm9yIDMuMTI1R2Jwcwo+ICAJCSAqIFNF
UkRFUyBzcGVlZC4gVGhlIHZhbHVlcyByZXF1aXJlZCBmb3IgMS4yNSBHYnBzIGFyZSBhbG1vc3QK
CjUxMiBpcyBhbHNvIHVzZWQgd2hlcmUgZ2JlX3BoeV9pbml0IGlzIGRlZmluZWQsIHNvIG1heWJl
IGl0IHdvdWxkIGJlCndvcnRoZSBkZWZpbmluZyB0aGlzIHNpemUgb25jZSBhbmQgdGhlbiB1c2Ug
dGhlIGRlZmluaXRpb24gaW4gYm90aApwbGFjZXMuCgpUaGFua3MsIE1pcXXDqGwKCi0tIApsaW51
eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
