Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAC2DC79F85
	for <linux-phy@archiver.kernel.org>; Sun,  6 Sep 2026 15:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZm5pZS6Lb/7AsH7d/9f7qvb5WcHIFILIjB0gYgTSg8=; b=ve3pdRkJMFYT9D
	jk42m00rixKNAIC0f1mSOdDVDuIzP+130Xmc7Pa9nf8B1LI+XUaArxB5REuVpVGa2sPST0beXIpao
	amf0lM/wQeIhv6ErtHuu9Y3DuVwdKVmzfSLfKXFIq7x0Z5OT/zVwI6ATGMasEUd1I3HK7mkh1XRNB
	k0fJIhxdGx2T6Eya/O/DWqi5iqTUO6v4I4LkFyXbwTKmc/F1KW06z4UVszN3TB8ZOS+4Q1Ro4LpAB
	KY9r388wos8x+eGXWqt/0dCzbChqlnjT5muJ2ZkxHyDg9/HuxASceVnC+FpCtRJsUR3mh+zIWx15O
	2KKo6aCq0yDRA194YEIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Ent-000000058Ku-2iTg;
	Sun, 06 Sep 2026 15:29:09 +0000
Received: from aposti.net ([185.119.170.32])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Enr-000000058JL-03Iu
	for linux-phy@lists.infradead.org;
	Sun, 06 Sep 2026 15:29:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=crapouillou.net;
	s=mail; t=1788708538;
	bh=6a9PVxeFa4X7+g2+7hm8XIBPO0HMmiR+2HcmRobBeu4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=AfwWAa/+Ahtj7VNsXIcqLyVfVvjM0+cFp0SZDHDuctAGkqxKEIa1QsdMA3IlRPLbV
	 1q4ntPsvpWyweR9K1NLcMcBXXlzhwelAuIS8nzNWldLPidcJ/TUYIR2D6M+nFBv+32
	 gnUh5s2r9oSLEcR6F/FKWPs7SXC2WOjKkBEIHLYQ=
Message-ID: <9985dcd7b614e0876b7052ed703d4c186632f877.camel@crapouillou.net>
Subject: Re: [PATCH] phy: ingenic: fix unbalanced regulator disable in exit
From: Paul Cercueil <paul@crapouillou.net>
To: Felix Gu <ustc.gu@gmail.com>, Vinod Koul <vkoul@kernel.org>, Neil
 Armstrong	 <neil.armstrong@linaro.org>, Manivannan Sadhasivam
 <mani@kernel.org>,  =?UTF-8?Q?=E5=91=A8=E7=90=B0=E6=9D=B0?= "(Zhou Yanjie)"
	 <zhouyanjie@wanyeetech.com>, =?UTF-8?Q?=E6=BC=86=E9=B9=8F=E6=8C=AF?= "(Qi
 Pengzhen)" <aric.pzqi@ingenic.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Sun, 06 Sep 2026 17:28:54 +0200
In-Reply-To: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
References: <20260906-ingenic-v1-1-2311f3df8ddc@gmail.com>
Autocrypt: addr=paul@crapouillou.net; prefer-encrypt=mutual;
 keydata=mQENBF0KhcEBCADkfmrzdTOp/gFOMQX0QwKE2WgeCJiHPWkpEuPH81/HB2dpjPZNW03ZM
 LQfECbbaEkdbN4YnPfXgcc1uBe5mwOAPV1MBlaZcEt4M67iYQwSNrP7maPS3IaQJ18ES8JJ5Uf5Uz
 FZaUawgH+oipYGW+v31cX6L3k+dGsPRM0Pyo0sQt52fsopNPZ9iag0iY7dGNuKenaEqkYNjwEgTtN
 z8dt6s3hMpHIKZFL3OhAGi88wF/21isv0zkF4J0wlf9gYUTEEY3Eulx80PTVqGIcHZzfavlWIdzhe
 +rxHTDGVwseR2Y1WjgFGQ2F+vXetAB8NEeygXee+i9nY5qt9c07m8mzjABEBAAG0JFBhdWwgQ2VyY
 3VlaWwgPHBhdWxAY3JhcG91aWxsb3UubmV0PokBTgQTAQoAOBYhBNdHYd8OeCBwpMuVxnPua9InSr
 1BBQJdCoXBAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHPua9InSr1BgvIH/0kLyrI3V0f
 33a6D3BJwc1grbygPVYGuC5l5eMnAI+rDmLR19E2yvibRpgUc87NmPEQPpbbtAZt8On/2WZoE5OIP
 dlId/AHNpdgAtGXo0ZX4LGeVPjxjdkbrKVHxbcdcnY+zzaFglpbVSvp76pxqgVg8PgxkAAeeJV+ET
 4t0823Gz2HzCL/6JZhvKAEtHVulOWoBh368SYdolp1TSfORWmHzvQiCCCA+j0cMkYVGzIQzEQhX7U
 rf9N/nhU5/SGLFEi9DcBfXoGzhyQyLXflhJtKm3XGB1K/pPulbKaPcKAl6rIDWPuFpHkSbmZ9r4KF
 lBwgAhlGy6nqP7O3u7q23hRU=
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260906_082907_241359_E023B90D 
X-CRM114-Status: GOOD (  13.35  )
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

SGkgRmVsaXgsCgpMZSBkaW1hbmNoZSAwNiBzZXB0ZW1icmUgMjAyNiDDoCAyMTozMCArMDgwMCwg
RmVsaXggR3UgYSDDqWNyaXTCoDoKPiBleGl0KCkgYW5kIHBvd2VyX29mZigpIGJvdGggZGlzYWJs
ZSB2Y2Nfc3VwcGx5LCBzbyB0aGUgcmVndWxhdG9yCj4gZ2V0cyBkaXNhYmxlZCB0d2ljZSBmb3Ig
ZXZlcnkgcG93ZXIgY3ljbGUsIGNhdXNpbmcgYW4gdW5iYWxhbmNlZAo+IGRpc2FibGUgV0FSTi4K
PiAKPiBEcm9wIHRoZSByZWd1bGF0b3JfZGlzYWJsZSgpIGNhbGwgZnJvbSB0aGUgZXhpdCBjYWxs
YmFjayBhbmQgbGVhdmUKPiB0aGUgcmVndWxhdG9yIHRvIHRoZSBwb3dlcl9vbi9wb3dlcl9vZmYg
cGFpci4KPiAKPiBGaXhlczogMzFkZTMxM2RmZGNmICgiUEhZOiBJbmdlbmljOiBBZGQgVVNCIFBI
WSBkcml2ZXIgdXNpbmcgZ2VuZXJpYwo+IFBIWSBmcmFtZXdvcmsuIikKPiBTaWduZWQtb2ZmLWJ5
OiBGZWxpeCBHdSA8dXN0Yy5ndUBnbWFpbC5jb20+CgpZZXMsIHRoZSBkb2Mgb2YgcGh5X2V4aXQo
KSBkb2VzIHNheSB0aGF0IGl0IG11c3QgYmUgY2FsbGVkIGFmdGVyCnBoeV9wb3dlcl9vZmYoKSBz
byB0aGUgZml4IG1ha2VzIHNlbnNlLgoKUmV2aWV3ZWQtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxA
Y3JhcG91aWxsb3UubmV0PgoKQ2hlZXJzLAotUGF1bAoKPiAtLS0KPiDCoGRyaXZlcnMvcGh5L2lu
Z2VuaWMvcGh5LWluZ2VuaWMtdXNiLmMgfCAxIC0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2luZ2VuaWMvcGh5LWluZ2VuaWMt
dXNiLmMKPiBiL2RyaXZlcnMvcGh5L2luZ2VuaWMvcGh5LWluZ2VuaWMtdXNiLmMKPiBpbmRleCA3
ZTYyZDQ2ODUwZmQuLmQ4ZTVlZjMwMmI3NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9pbmdl
bmljL3BoeS1pbmdlbmljLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvaW5nZW5pYy9waHktaW5n
ZW5pYy11c2IuYwo+IEBAIC0xMjQsNyArMTI0LDYgQEAgc3RhdGljIGludCBpbmdlbmljX3VzYl9w
aHlfZXhpdChzdHJ1Y3QgcGh5ICpwaHkpCj4gwqAJc3RydWN0IGluZ2VuaWNfdXNiX3BoeSAqcHJp
diA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+IMKgCj4gwqAJY2xrX2Rpc2FibGVfdW5wcmVwYXJl
KHByaXYtPmNsayk7Cj4gLQlyZWd1bGF0b3JfZGlzYWJsZShwcml2LT52Y2Nfc3VwcGx5KTsKPiDC
oAo+IMKgCXJldHVybiAwOwo+IMKgfQo+IAo+IC0tLQo+IGJhc2UtY29tbWl0OiA5ZDgwYWE0NjE3
YjMyZjUwNTRjNWFhNDcxZDA2YjY2NzA0ODU0OTM1Cj4gY2hhbmdlLWlkOiAyMDI2MDkwNi1pbmdl
bmljLWU1NTgzNjM5OTNiZgo+IAo+IEJlc3QgcmVnYXJkcywKPiAtLcKgIAo+IEZlbGl4IEd1IDx1
c3RjLmd1QGdtYWlsLmNvbT4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
