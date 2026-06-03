Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AE8CCD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWQIO8qdHWiVirJQHQFWcB3bYUBeykbaF/8eHiW8mGc=; b=PoWj4qM+X0FrRV
	w33wqGYzIJN/CmFpvO+X7vX4oPwbRJlV4Xfj4tzNn1r3eBMjoxZaLxd3eY7P/Rp7Or5D3McONfl4a
	Q5+vs0AwfvUlao8YHaIt0EiAcCRsTGVohISByZhOLVgcWAqzpXbGlwDQl/wf6FnCjmSaBmoolyLLh
	SqNX+nN2e6uKlPB8fouDyW9itL+w+9/Ja+3adM3PaMNdXKR1ZZNihWBbNBSwGKM9edJYrP1tHNLjf
	TsaZJUKZAOwSbArdVHvd6R3yQgV4E/FWaymbPK9OreYtsWfqRF3tnJ0/e3upuwS5Qc/AI7bqX4ms1
	7gNe92P5e+4JirMDczJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlnt-0000000FBkR-0FVo;
	Wed, 03 Jun 2026 13:38:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlnq-0000000FBjE-2d9s
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:38:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 72BC441727;
	Wed,  3 Jun 2026 13:38:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7E771F00893;
	Wed,  3 Jun 2026 13:38:33 +0000 (UTC)
Message-ID: <2e62a5af-06f5-4a11-80f1-81c62f9b2311@tuxon.dev>
Date: Wed, 3 Jun 2026 16:38:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 3/5] phy: renesas: rcar-gen3-usb2: Lock around
 hardware registers and driver data
To: Xia Fukun <xiafukun@huawei.com>, yoshihiro.shimoda.uh@renesas.com,
 vkoul@kernel.org, kishon@kernel.org, geert+renesas@glider.be,
 magnus.damm@gmail.com, horms+renesas@verge.net.au,
 fabrizio.castro@bp.renesas.com, Greg KH <gregkh@linuxfoundation.org>
Cc: linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "tanghui (C)" <tanghui20@huawei.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
 <20250507125032.565017-4-claudiu.beznea.uj@bp.renesas.com>
 <e49fc109-41a2-449f-a232-d8beac2c5e08@huawei.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <e49fc109-41a2-449f-a232-d8beac2c5e08@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063838_691782_E805EF93 
X-CRM114-Status: GOOD (  12.80  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

CgpPbiA2LzMvMjYgMTY6MjIsIFhpYSBGdWt1biB3cm90ZToKPiBPbiA1LzcvMjAyNSA4OjUwIFBN
LCBDbGF1ZGl1IHdyb3RlOgo+IAo+PiBAQCAtMzQ4LDYgKzM0OSw4IEBAIHN0YXRpYyBzc2l6ZV90
IHJvbGVfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAq
YXR0ciwKPj4gICAJYm9vbCBpc19iX2RldmljZTsKPj4gICAJZW51bSBwaHlfbW9kZSBjdXJfbW9k
ZSwgbmV3X21vZGU7Cj4+ICAgCj4+ICsJZ3VhcmQoc3BpbmxvY2tfaXJxc2F2ZSkoJmNoLT5sb2Nr
KTsKPj4gKwo+PiAgIAlpZiAoIWNoLT5pc19vdGdfY2hhbm5lbCB8fCAhcmNhcl9nZW4zX2lzX2Fu
eV9vdGdfcnBoeV9pbml0aWFsaXplZChjaCkpCj4+ICAgCQlyZXR1cm4gLUVJTzsKPj4gICAKPj4g
QEAgLTQxNSw3ICs0MTgsNyBAQCBzdGF0aWMgdm9pZCByY2FyX2dlbjNfaW5pdF9vdGcoc3RydWN0
IHJjYXJfZ2VuM19jaGFuICpjaCkKPj4gICAJCXZhbCA9IHJlYWRsKHVzYjJfYmFzZSArIFVTQjJf
QURQQ1RSTCk7Cj4+ICAgCQl3cml0ZWwodmFsIHwgVVNCMl9BRFBDVFJMX0lEUFVMTFVQLCB1c2Iy
X2Jhc2UgKyBVU0IyX0FEUENUUkwpOwo+PiAgIAl9Cj4+IC0JbXNsZWVwKDIwKTsKPj4gKwltZGVs
YXkoMjApOwo+PiAgIAo+PiAgIAl3cml0ZWwoMHhmZmZmZmZmZiwgdXNiMl9iYXNlICsgVVNCMl9P
QklOVFNUQSk7Cj4+ICAgCXdyaXRlbChjaC0+b2JpbnRfZW5hYmxlX2JpdHMsIHVzYjJfYmFzZSAr
IFVTQjJfT0JJTlRFTik7Cj4gVGhlIGZpeCBmb3IgdGhlIHJjYXJfZ2VuM19pbml0X290ZyBmdW5j
dGlvbiBoYXMgbm90IGJlZW4gYmFja3BvcnRlZCB0bwo+IHRoZSA1LjEwLXN0YWJsZSBicmFuY2gs
IHdoaWNoIGxlYWRzIHRvIGEgInNjaGVkdWxpbmcgd2hpbGUgYXRvbWljIiBidWcKPiBpbiB0aGF0
IGJyYW5jaDoKPiAKPiByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdCgpICAgICAgICAgICAgICAgICAg
ICDihpAgcGh5X2luaXQoKSBjYWxsYmFjawo+ICAgIOKGkiBndWFyZChzcGlubG9ja19pcnFzYXZl
KSgmY2gtPmxvY2spICAgICAgIOKGkCBhY3F1aXJlcyBzcGlubG9jaywgZGlzYWJsaW5nIHByZWVt
cHRpb24gKyBJUlFzCj4gICAg4oaSIHJjYXJfZ2VuM19pbml0X290ZyhjaCkKPiAgICAgICAg4oaS
IG1zbGVlcCgyMCkgICAgICAgICAgICAgICAgICAgICAgICAgICDihpAgQlVHOiBzY2hlZHVsaW5n
IHdoaWxlIGF0b21pYyEKPiAKPiBUaGUgcGF0Y2ggZm9yIDUuMTAgaXMgYXZhaWxhYmxlIGF0IHRo
ZSBmb2xsb3dpbmcgbGluazoKPiBodHRwczovL3dlYi5naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC9jb21taXQvPyAKPiBoPWxpbnV4LTUuMTAu
eSZpZD0wZjg2YTU1OTkwMGZiZTk2YWYwOGEzYTIyNmE4NmZhYzI3YjAyYjhmCj4gCj4gUGVyaGFw
cyB0aGUgc3RhYmxlIHBhdGNoIGZvciB0aGUgNS4xMCBicmFuY2ggbmVlZHMgdG8gYmUgdXBkYXRl
ZCB0bwo+IGZpeCB0aGlzIHNlcmlvdXMgYnVnPwoKU2FzaGEgYXBwbGllZCB0b2RheSB0aGUgcGF0
Y2ggYXQgWzFdIHRvIHNvbHZlIHRoaXMgcHJvYmxlbSBvbiB2NS4xMC4KClRoYW5rIHlvdSwKQ2xh
dWRpdQoKWzFdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA1MDEyMjU4NTkuNTA0
ODY4LTEtbm9idWhpcm8uaXdhbWF0c3UueDkwQG1haWwudG9zaGliYS8KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
