Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F63EC83F2C
	for <linux-phy@archiver.kernel.org>; Mon,  4 Sep 2023 17:57:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rg/eAa1zbUGbWNMGKZ3VJOHMyfCSaJ1kw3F3OAyx4Go=; b=N0jmJrNnGzGogu
	jxH+9P5DbhQyaLqxDAfAwQKsvQs8o08ir5hC+FXXSBf3OndtEYeSPgFEtdGYFaK5Ja7oLtRa3fzp4
	E3h66ovAgKaMDf9rZ7m+G4aELeY5fXx6c0QjlLecsVO02+e1VmVlBmCUoQ6svixIzLgGzX60uWOYH
	7W8LaOd3jxORT+qNkcW8IMMQc1eTaQCK1/l7qMeKewaePxJ9rlCnz9ML3P/iDo2NuaBe/8N/wlrbU
	YTpzHcj2IMg6pYJbzGNv/2YlrFZ8ygpFQ0A2gIOYhBs9+YOjJrHIMZUjrw1Gt3YDlLM3MifcMcsWV
	PxNAZsPuw9h6L7ANis1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdDpb-004YJl-1c;
	Mon, 04 Sep 2023 17:57:47 +0000
Received: from smtp-20.smtpout.orange.fr ([80.12.242.20] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdDpX-004YIq-1K
	for linux-phy@lists.infradead.org;
	Mon, 04 Sep 2023 17:57:45 +0000
Received: from [192.168.1.18] ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id dDpNqLclXewmQdDpNqCbJ0; Mon, 04 Sep 2023 19:57:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1693850257;
	bh=nR71hbq/PjoQgx6c1QsB9ddoM6wjPhcwxem+IF/5MAs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=DAmM/NUC9xDbqtOy08KIXOcL8tmmpXv9w0aLhvdPCW/b3pVhHp9s92Gs39idwsLOO
	 uUgQN9V6cvYbGFBLFo6PaXwsP00xKZF4t5QmeRhjGoDPX6dGmUOOKeiuNYI2jOxUOK
	 wTiKH4H4u25rVSTHmdJQjIS0EnRDs6dqOklCrfNIQr50dp8JRVcYmbvu7dNhZh9N/0
	 qzxO81ISdmp2bUVqs7gie3KaoNksdre5yy5anbMFHWB1nFVQaM38ZDT0xiIkuCq9gn
	 TBUJGCnGh2i2fKUgx/Hlmc++hm5Nly5Wzr38Ua4mGwpGus3VaAGQw+vOuAvK+x+z64
	 wfek9dll6yFog==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Mon, 04 Sep 2023 19:57:37 +0200
X-ME-IP: 86.243.2.178
Message-ID: <858ca657-3845-f65e-b9d8-9d7700e4a069@wanadoo.fr>
Date: Mon, 4 Sep 2023 19:57:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] phy: sun4i-usb: Fix a W=1 compilation failure
To: Andre Przywara <andre.przywara@arm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <0bc81612171baaa6d5dff58c8e009debc03e1ba8.1693735840.git.christophe.jaillet@wanadoo.fr>
 <20230904005855.658819b3@slackpad.lan>
Content-Language: fr, en-GB
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20230904005855.658819b3@slackpad.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_105743_858297_DAD44C68 
X-CRM114-Status: GOOD (  21.99  )
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

TGUgMDQvMDkvMjAyMyDDoCAwMTo1OCwgQW5kcmUgUHJ6eXdhcmEgYSDDqWNyaXTCoDoKPiBPbiBT
dW4sICAzIFNlcCAyMDIzIDEyOjExOjA2ICswMjAwCj4gQ2hyaXN0b3BoZSBKQUlMTEVUIDxjaHJp
c3RvcGhlLmphaWxsZXRAd2FuYWRvby5mcj4gd3JvdGU6Cj4gCj4+IFdpdGggZ2NjIDEyLjMuMCwg
d2hlbiB0aGlzIGZpbGUgaXMgYnVpbHQsIHdlIGdldCBlcnJvcnMgc3VjaCBhczoKPj4KPj4gZHJp
dmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYzogSW4gZnVuY3Rpb24g4oCYc3VuNGlf
dXNiX3BoeV9wcm9iZeKAmToKPj4gZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2Iu
Yzo3OTA6NTI6IGVycm9yOiDigJhfdmJ1c+KAmSBkaXJlY3RpdmUgb3V0cHV0IG1heSBiZSB0cnVu
Y2F0ZWQgd3JpdGluZyA1IGJ5dGVzIGludG8gYSByZWdpb24gb2Ygc2l6ZSBiZXR3ZWVuIDIgYW5k
IDEyIFstV2Vycm9yPWZvcm1hdC10cnVuY2F0aW9uPV0KPj4gICAgNzkwIHwgICAgICAgICAgICAg
ICAgIHNucHJpbnRmKG5hbWUsIHNpemVvZihuYW1lKSwgInVzYiVkX3ZidXMiLCBpKTsKPj4gICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xn5+fn4KPj4gZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2IuYzo3OTA6MTc6IG5v
dGU6IOKAmHNucHJpbnRm4oCZIG91dHB1dCBiZXR3ZWVuIDEwIGFuZCAyMCBieXRlcyBpbnRvIGEg
ZGVzdGluYXRpb24gb2Ygc2l6ZSAxNgo+PiAgICA3OTAgfCAgICAgICAgICAgICAgICAgc25wcmlu
dGYobmFtZSwgc2l6ZW9mKG5hbWUpLCAidXNiJWRfdmJ1cyIsIGkpOwo+PiAgICAgICAgfCAgICAg
ICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
Cj4+Cj4+IEJlY2F1c2Ugb2YgdGhlIHBvc3NpYmxlIHZhbHVlIG9mICdpJywgdGhpcyBjYW4ndCBi
ZSBhbiBpc3N1ZSBpbiByZWFsIHdvcmxkCj4gCj4gV291bGQgdXNpbmcgInU4IGk7IiBoZWxwPyBB
ZnRlciBhbGwgY3VycmVudGx5IHRoZXJlIGFyZSBvbmx5IDQgUEhZcwo+IG1heCwgYW5kIGluIGdl
bmVyYWwgdGhpcyBpc24ndCBleHBlY3RlZCB0byBiZSBtb3JlIHRoYW4gYSAiaGFuZGZ1bCIsIHNv
Cj4gOCBiaXRzIHNob3VsZCBiZSBwbGVudHkuIEFuIHVuc2lnbmVkIGlzIGJldHRlciBhbnl3YXku
Cj4gSXQgbGVhdmVzIGEgYml0IG9mIGEgYml0dGVyIHRhc3RlLCB0aG91Z2gsIGFzIHdlIHNob3Vs
ZG4ndCBkbyB0aGlzIGtpbmQKPiB0eXBlIHR3ZWFraW5nLCBlc3BlY2lhbGx5IG5vdCB0byB3b3Jr
IGFyb3VuZCB0aGUgY29tcGlsZXIgdHJ5aW5nIHRvIGJlCj4gY2xldmVyLCBidXQgdGhlbiBub3Qg
c2VlaW5nIHRoZSB3aG9sZSBwaWN0dXJlICh0aGF0ICJpIiBpcyBib3VuZGVkIGJ5Cj4gY29tcGls
ZSB0aW1lIGNvbnN0YW50cyBub3QgZXhjZWVkaW5nICI0IikuCgpkYXRhLT5jZmctPm51bV9waHlz
IGlzIGFsc28gYW4gaW50LCBhbmQgaGF2aW5nICdpJyBhcyBhbiBjaGFyIGlzIHJlYWxseSAKdW51
c3VhbC4KClNvLCBpZiBjaGFuZ2luZyB0aGUgc2l6ZSBvZiBuYW1lIChvbmx5IHRvIHdhc3RlIHNv
bWUgc3RhY2sgaW4gb3JkZXIgdG8gCnNpbGVuY2UgYSBjb21waWxlciB3YXJuaW5nKSBpcyBub3Qg
YWNjZXB0YWJsZSwgSSB0aGluayB0aGF0IHRoZSBiZXN0IGlzIAp0byBsZWF2ZSB0aGluZ3MgYXMt
aXMuCgpDSgoKCj4gCj4gQ2hlZXJzLAo+IEFuZHJlCj4gCj4+IGFwcGxpY2F0aW9uLCBidXQgaW4g
b3JkZXIgdG8gaGF2ZSAibWFrZSBXPTEiIHdvcmsgY29ycmVjdGx5LCBnaXZlIG1vcmUKPj4gc3Bh
Y2UgZm9yICduYW1lJy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoZSBKQUlMTEVUIDxj
aHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5mcj4KPj4gLS0tCj4+ICAgZHJpdmVycy9waHkvYWxs
d2lubmVyL3BoeS1zdW40aS11c2IuYyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2Fs
bHdpbm5lci9waHktc3VuNGktdXNiLmMgYi9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRp
LXVzYi5jCj4+IGluZGV4IGVjNTUxNDY0ZGQ0Zi4uZTUzYTlhOTMxN2JjIDEwMDY0NAo+PiAtLS0g
YS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjRpLXVzYi5jCj4+ICsrKyBiL2RyaXZlcnMv
cGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPj4gQEAgLTc4Miw3ICs3ODIsNyBAQCBzdGF0
aWMgaW50IHN1bjRpX3VzYl9waHlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
Pj4gICAKPj4gICAJZm9yIChpID0gMDsgaSA8IGRhdGEtPmNmZy0+bnVtX3BoeXM7IGkrKykgewo+
PiAgIAkJc3RydWN0IHN1bjRpX3VzYl9waHkgKnBoeSA9IGRhdGEtPnBoeXMgKyBpOwo+PiAtCQlj
aGFyIG5hbWVbMTZdOwo+PiArCQljaGFyIG5hbWVbMzJdOwo+PiAgIAo+PiAgIAkJaWYgKGRhdGEt
PmNmZy0+bWlzc2luZ19waHlzICYgQklUKGkpKQo+PiAgIAkJCWNvbnRpbnVlOwo+IAo+IAoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
