Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE08CCD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6VM7ZsDueFDODSP7CeqPLLdmmEauV9n52CU6RQjN4A=; b=bA0vmKu+OorZfj
	w+utqz/W+i2WIPSbgqZ5SrEenH3ZVg2uSdSwqjHloGZMD6/c/RYn2LgV4TYBmZ4IPqeOvfrn+rl1I
	/leubJPM7aon/+jUIEFYS7i6NKKFZk8qen7E1U9wuvTr8PHKltk1w1nXt7rj2a51+SALQjY3oomUj
	Oxfwjy5V6ZOfkJgT5QvIiZk9g+9A4C4bZV+hTGZYoJ42dTNie3kbIz+WDwlChx2Uzo4ES2rpz+Vav
	7nkAk9vzc3DZBrhzEWAnfASN/EZHBCRRalKQiGfSeq61XD1ouEP+Nb0qod/D3NJgXvrvGNn2JPnL3
	e3An9RJdw1r7xmtwAn+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlZE-0000000FAoF-27wl;
	Wed, 03 Jun 2026 13:23:32 +0000
Received: from canpmsgout07.his.huawei.com ([113.46.200.222])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlZA-0000000FAnV-30ol
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:23:31 +0000
dkim-signature: v=1; a=rsa-sha256; d=huawei.com; s=dkim;
	c=relaxed/relaxed; q=dns/txt;
	h=From;
	bh=wpv2sBaYYFs0xNXG/8KbI1KISPXU12LoYQ2EvtHEOvc=;
	b=1MMETwXU+AUBfiHDi72EGGM8LUZgVQVyz9ARFR0TKhkkM5p+eNNpYvBp+tFRcBki2Jxu3Qjnc
	C4xD0YNDGSBG4dVT2FBklVM6aLypoluN2nGexDXh6Qq2O1aJXoyF283eqFmKh8wlEiRcyjnsgrn
	FNetXigRPv8zBn+CWicjhAo=
Received: from mail.maildlp.com (unknown [172.19.163.127])
	by canpmsgout07.his.huawei.com (SkyGuard) with ESMTPS id 4gVp8c5rF0zLlSg;
	Wed,  3 Jun 2026 21:15:12 +0800 (CST)
Received: from dggemv705-chm.china.huawei.com (unknown [10.3.19.32])
	by mail.maildlp.com (Postfix) with ESMTPS id 793CF40572;
	Wed,  3 Jun 2026 21:23:02 +0800 (CST)
Received: from kwepemn500008.china.huawei.com (7.202.194.149) by
 dggemv705-chm.china.huawei.com (10.3.19.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.11; Wed, 3 Jun 2026 21:23:02 +0800
Received: from [10.67.110.89] (10.67.110.89) by kwepemn500008.china.huawei.com
 (7.202.194.149) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Wed, 3 Jun
 2026 21:23:01 +0800
Message-ID: <e49fc109-41a2-449f-a232-d8beac2c5e08@huawei.com>
Date: Wed, 3 Jun 2026 21:22:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND v3 3/5] phy: renesas: rcar-gen3-usb2: Lock around
 hardware registers and driver data
To: Claudiu <claudiu.beznea@tuxon.dev>, <yoshihiro.shimoda.uh@renesas.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <geert+renesas@glider.be>,
	<magnus.damm@gmail.com>, <horms+renesas@verge.net.au>,
	<fabrizio.castro@bp.renesas.com>, Greg KH <gregkh@linuxfoundation.org>
CC: <linux-renesas-soc@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Claudiu Beznea
	<claudiu.beznea.uj@bp.renesas.com>, <stable@vger.kernel.org>, Lad Prabhakar
	<prabhakar.mahadev-lad.rj@bp.renesas.com>, "tanghui (C)"
	<tanghui20@huawei.com>, Xia Fukun <xiafukun@huawei.com>
References: <20250507125032.565017-1-claudiu.beznea.uj@bp.renesas.com>
 <20250507125032.565017-4-claudiu.beznea.uj@bp.renesas.com>
Content-Language: en-US
From: Xia Fukun <xiafukun@huawei.com>
In-Reply-To: <20250507125032.565017-4-claudiu.beznea.uj@bp.renesas.com>
X-Originating-IP: [10.67.110.89]
X-ClientProxiedBy: kwepems100002.china.huawei.com (7.221.188.206) To
 kwepemn500008.china.huawei.com (7.202.194.149)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_062329_427416_C82B2E74 
X-CRM114-Status: UNSURE (   8.04  )
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

Ck9uIDUvNy8yMDI1IDg6NTAgUE0sIENsYXVkaXUgd3JvdGU6Cgo+IEBAIC0zNDgsNiArMzQ5LDgg
QEAgc3RhdGljIHNzaXplX3Qgcm9sZV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBk
ZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICAJYm9vbCBpc19iX2RldmljZTsKPiAgCWVudW0gcGh5
X21vZGUgY3VyX21vZGUsIG5ld19tb2RlOwo+ICAKPiArCWd1YXJkKHNwaW5sb2NrX2lycXNhdmUp
KCZjaC0+bG9jayk7Cj4gKwo+ICAJaWYgKCFjaC0+aXNfb3RnX2NoYW5uZWwgfHwgIXJjYXJfZ2Vu
M19pc19hbnlfb3RnX3JwaHlfaW5pdGlhbGl6ZWQoY2gpKQo+ICAJCXJldHVybiAtRUlPOwo+ICAK
PiBAQCAtNDE1LDcgKzQxOCw3IEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19pbml0X290ZyhzdHJ1
Y3QgcmNhcl9nZW4zX2NoYW4gKmNoKQo+ICAJCXZhbCA9IHJlYWRsKHVzYjJfYmFzZSArIFVTQjJf
QURQQ1RSTCk7Cj4gIAkJd3JpdGVsKHZhbCB8IFVTQjJfQURQQ1RSTF9JRFBVTExVUCwgdXNiMl9i
YXNlICsgVVNCMl9BRFBDVFJMKTsKPiAgCX0KPiAtCW1zbGVlcCgyMCk7Cj4gKwltZGVsYXkoMjAp
Owo+ICAKPiAgCXdyaXRlbCgweGZmZmZmZmZmLCB1c2IyX2Jhc2UgKyBVU0IyX09CSU5UU1RBKTsK
PiAgCXdyaXRlbChjaC0+b2JpbnRfZW5hYmxlX2JpdHMsIHVzYjJfYmFzZSArIFVTQjJfT0JJTlRF
Tik7CgpUaGUgZml4IGZvciB0aGUgcmNhcl9nZW4zX2luaXRfb3RnIGZ1bmN0aW9uIGhhcyBub3Qg
YmVlbiBiYWNrcG9ydGVkIHRvCnRoZSA1LjEwLXN0YWJsZSBicmFuY2gsIHdoaWNoIGxlYWRzIHRv
IGEgInNjaGVkdWxpbmcgd2hpbGUgYXRvbWljIiBidWcKaW4gdGhhdCBicmFuY2g6CgpyY2FyX2dl
bjNfcGh5X3VzYjJfaW5pdCgpICAgICAgICAgICAgICAgICAgICDihpAgcGh5X2luaXQoKSBjYWxs
YmFjawogIOKGkiBndWFyZChzcGlubG9ja19pcnFzYXZlKSgmY2gtPmxvY2spICAgICAgIOKGkCBh
Y3F1aXJlcyBzcGlubG9jaywgZGlzYWJsaW5nIHByZWVtcHRpb24gKyBJUlFzCiAg4oaSIHJjYXJf
Z2VuM19pbml0X290ZyhjaCkKICAgICAg4oaSIG1zbGVlcCgyMCkgICAgICAgICAgICAgICAgICAg
ICAgICAgICDihpAgQlVHOiBzY2hlZHVsaW5nIHdoaWxlIGF0b21pYyEKClRoZSBwYXRjaCBmb3Ig
NS4xMCBpcyBhdmFpbGFibGUgYXQgdGhlIGZvbGxvd2luZyBsaW5rOgpodHRwczovL3dlYi5naXQu
a2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LmdpdC9jb21t
aXQvP2g9bGludXgtNS4xMC55JmlkPTBmODZhNTU5OTAwZmJlOTZhZjA4YTNhMjI2YTg2ZmFjMjdi
MDJiOGYKClBlcmhhcHMgdGhlIHN0YWJsZSBwYXRjaCBmb3IgdGhlIDUuMTAgYnJhbmNoIG5lZWRz
IHRvIGJlIHVwZGF0ZWQgdG8KZml4IHRoaXMgc2VyaW91cyBidWc/Cgo+IEBAIC00NTYsNiArNDYx
LDggQEAgc3RhdGljIGludCByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdChzdHJ1Y3QgcGh5ICpwKQo+
ICAJdm9pZCBfX2lvbWVtICp1c2IyX2Jhc2UgPSBjaGFubmVsLT5iYXNlOwo+ICAJdTMyIHZhbDsK
PiAgCj4gKwlndWFyZChzcGlubG9ja19pcnFzYXZlKSgmY2hhbm5lbC0+bG9jayk7Cj4gKwo+ICAJ
LyogSW5pdGlhbGl6ZSBVU0IyIHBhcnQgKi8KPiAgCXZhbCA9IHJlYWRsKHVzYjJfYmFzZSArIFVT
QjJfSU5UX0VOQUJMRSk7Cj4gIAl2YWwgfD0gVVNCMl9JTlRfRU5BQkxFX1VDT01fSU5URU4gfCBy
cGh5LT5pbnRfZW5hYmxlX2JpdHM7Cj4gQEAgLTQ3OSw2ICs0ODYsOCBAQCBzdGF0aWMgaW50IHJj
YXJfZ2VuM19waHlfdXNiMl9leGl0KHN0cnVjdCBwaHkgKnApCj4gIAl2b2lkIF9faW9tZW0gKnVz
YjJfYmFzZSA9IGNoYW5uZWwtPmJhc2U7Cj4gIAl1MzIgdmFsOwo+ICAKPiArCWd1YXJkKHNwaW5s
b2NrX2lycXNhdmUpKCZjaGFubmVsLT5sb2NrKTsKPiArCj4gIAlycGh5LT5pbml0aWFsaXplZCA9
IGZhbHNlOwo+ICAKPiAgCXZhbCA9IHJlYWRsKHVzYjJfYmFzZSArIFVTQjJfSU5UX0VOQUJMRSk7
CgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
