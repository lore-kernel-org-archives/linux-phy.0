Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EB2FE77188
	for <linux-phy@archiver.kernel.org>; Mon,  6 Jan 2025 22:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV8UM0HJ36g+CZbYmF2G2IaBjRdEq9nPsxWS+xH/dAI=; b=R8T9ozYRsDzd5o
	/J+m6B0gm9gQAbgxXAQlbdJKMVnYKWcslq1vVmZ+Po0BLMeefNXg/t2j0nJoTW/fYLY/iGcCBK9AN
	PhHfiv/l6qMzwUyQDMfw3jVEFMZ35Qv58I5vr4Vb5D3dVeXFa0uvcU6xqVHRDN07mAaynrmKOGyTM
	g08D2YVz7QFXdY7kAIWtGh2ylndeu5ASw44tVXeCptx/PkcCSoOjJdFHW79T8yHNI4MI1TXNdRUvs
	n5ECMG6EmnEXtQORrpzPRAI1TSaLURzvGZMn3CIk2KcVYA6RL7CEpL1DpTOnVSvlLvdMjqMaECxhK
	vDQtrG/NHk0oEbcKm17w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUvAU-00000002oMa-3zKg;
	Mon, 06 Jan 2025 22:01:50 +0000
Received: from smtp-66.smtpout.orange.fr ([80.12.242.66] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUv9E-00000002o1j-0Qrw;
	Mon, 06 Jan 2025 22:00:34 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id Uv8xtgasrGcOqUv91t2CGv; Mon, 06 Jan 2025 23:00:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1736200821;
	bh=QnVrWEUtFgMvDpm5kd+ZvPWkuuGKmlEREXeXjJ/9WLQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Knj/XA/gpVUzVe4EkuDhwlNFpl7y04M6/5moZxeMxboXoZUWYOr6qlzRTqtNuWBG3
	 /MnW8YwGCMviEcnoV2JqsUluyeTkycD2nxfjYZNiruOjvLaYogZZzY8oAl9m4Td24Y
	 pYg4Z/jrut/XM9F6y3h1nqdZjtdy8lAW3t1w2sAQOXYO8ydYIYuV9CEMwd1PVh76v4
	 dqN9MflSQIWoZLVHXI3jOeiNuM5l8w4ZDt4Z1lfzhl3nfXKopCzzM8JLePvtwthV7G
	 LgXUMF95kAPUbB/M3yziRIliIN0woQ5by3smNzPMLz37eOdsxGpb4RgmhK0oBuSvy/
	 QfRYsK8viiV7g==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Mon, 06 Jan 2025 23:00:21 +0100
X-ME-IP: 90.11.132.44
Message-ID: <1483780d-115f-4555-82b3-3e9cffe82dce@wanadoo.fr>
Date: Mon, 6 Jan 2025 23:00:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] phy: cadence-torrent: Add PCIe multilink
 configuration for 100 MHz refclk
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, sjakhade@cadence.com, rogerq@kernel.org,
 thomas.richard@bootlin.com, u.kleine-koenig@baylibre.com, eballetb@redhat.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20250106131925.263240-1-s-vadapalli@ti.com>
 <20250106131925.263240-2-s-vadapalli@ti.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20250106131925.263240-2-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_140032_414856_C53F1DA0 
X-CRM114-Status: GOOD (  15.98  )
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

TGUgMDYvMDEvMjAyNSDDoCAxNDoxOSwgU2lkZGhhcnRoIFZhZGFwYWxsaSBhIMOpY3JpdMKgOgo+
IEZyb206IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVAY2FkZW5jZS5jb20+Cj4gCj4gQWRkIHJl
Z2lzdGVyIHNlcXVlbmNlcyB0byBzdXBwb3J0IFBDSWUgbXVsdGlsaW5rIGNvbmZpZ3VyYXRpb24g
Zm9yIDEwME1Iego+IHJlZmVyZW5jZSBjbG9jay4gTWF4aW11bSB0d28gUENJZSBsaW5rcyBhcmUg
c3VwcG9ydGVkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN3YXBuaWwgSmFraGFkZSA8c2pha2hhZGVA
Y2FkZW5jZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU2lkZGhhcnRoIFZhZGFwYWxsaSA8cy12YWRh
cGFsbGlAdGkuY29tPgo+IC0tLQo+IAo+ICoqKk5PVEUqKioKPiBTaW5jZSBJIGRvbid0IGhhdmUg
dGhlIGhhcmR3YXJlIHJlcXVpcmVkIHRvIHZhbGlkYXRlIFBDSWUgTXVsdGlsaW5rICsKPiBVU0Ig
ZnVuY3Rpb25hbGl0eSwga2luZGx5ICpkbyBub3QgbWVyZ2UqIHRoaXMgc2VyaWVzIHVudGlsIGl0
IGdldHMgYQo+ICJUZXN0ZWQtYnkiIHRhZyB3aXRoIHByb3BlciB2YWxpZGF0aW9uIG9mIHRoZSBm
dW5jdGlvbmFsaXR5Lgo+IAo+IFJlZ2FyZHMsCj4gU2lkZGhhcnRoLgo+IAo+ICAgZHJpdmVycy9w
aHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMgfCAxMzAgKysrKysrKysrKysrKysrKysr
KysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5LWNhZGVuY2UtdG9ycmVu
dC5jIGIvZHJpdmVycy9waHkvY2FkZW5jZS9waHktY2FkZW5jZS10b3JyZW50LmMKPiBpbmRleCBh
MjgxYzBkZmFlOTcuLmIwYjVmNGJkZDdlMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9jYWRl
bmNlL3BoeS1jYWRlbmNlLXRvcnJlbnQuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L2NhZGVuY2UvcGh5
LWNhZGVuY2UtdG9ycmVudC5jCj4gQEAgLTE5Nyw2ICsxOTcsNyBAQAo+ICAgI2RlZmluZSBSWF9T
RENBTDFfSU5JVF9UTVIJCTB4MDA0Q1UKPiAgICNkZWZpbmUgUlhfU0RDQUwxX0lURVJfVE1SCQkw
eDAwNERVCj4gICAjZGVmaW5lIFJYX0NEUkxGX0NORkcJCQkweDAwODBVCj4gKyNkZWZpbmUgUlhf
Q0RSTEZfQ05GRzIJCQkweDAwODFVCj4gICAjZGVmaW5lIFJYX0NEUkxGX0NORkczCQkJMHgwMDgy
VQo+ICAgI2RlZmluZSBSWF9TSUdERVRfSExfRklMVF9UTVIJCTB4MDA5MFUKPiAgICNkZWZpbmUg
UlhfUkVFX0dDU00xX0NUUkwJCTB4MDEwOFUKPiBAQCAtMjA0LDYgKzIwNSw3IEBACj4gICAjZGVm
aW5lIFJYX1JFRV9HQ1NNMV9FUUVOTV9QSDIJCTB4MDEwQVUKPiAgICNkZWZpbmUgUlhfUkVFX0dD
U00yX0NUUkwJCTB4MDExMFUKPiAgICNkZWZpbmUgUlhfUkVFX1BFUkdDU01fQ1RSTAkJMHgwMTE4
VQo+ICsjZGVmaW5lIFJYX1JFRV9QRUFLX1VUSFIJCTB4MDE0MlUKPiAgICNkZWZpbmUgUlhfUkVF
X0FUVEVOX1RIUgkJMHgwMTQ5VQo+ICAgI2RlZmluZSBSWF9SRUVfVEFQMV9DTElQCQkweDAxNzFV
Cj4gICAjZGVmaW5lIFJYX1JFRV9UQVAyVE9OX0NMSVAJCTB4MDE3MlUKPiBAQCAtMjEyLDYgKzIx
NCw3IEBACj4gICAjZGVmaW5lIFJYX0RJQUdfREZFX0NUUkwJCTB4MDFFMFUKPiAgICNkZWZpbmUg
UlhfRElBR19ERkVfQU1QX1RVTkVfMgkJMHgwMUUyVQo+ICAgI2RlZmluZSBSWF9ESUFHX0RGRV9B
TVBfVFVORV8zCQkweDAxRTNVCj4gKyNkZWZpbmUgUlhfRElBR19SRUVfREFDX0NUUkwJCTB4MDFF
NFUKPiAgICNkZWZpbmUgUlhfRElBR19OUVNUX0NUUkwJCTB4MDFFNVUKPiAgICNkZWZpbmUgUlhf
RElBR19TSUdERVRfVFVORQkJMHgwMUU4VQo+ICAgI2RlZmluZSBSWF9ESUFHX1BJX1JBVEUJCQkw
eDAxRjRVCj4gQEAgLTMxMzEsNiArMzEzNCwxMDEgQEAgc3RhdGljIHZvaWQgY2Ruc190b3JyZW50
X3BoeV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAljZG5zX3RvcnJl
bnRfY2xrX2NsZWFudXAoY2Ruc19waHkpOwo+ICAgfQo+ICAgCj4gKy8qIE11bHRpIGxpbmsgUENJ
ZSBjb25maWd1cmF0aW9uICovCj4gK3N0YXRpYyBzdHJ1Y3QgY2Ruc19yZWdfcGFpcnMgbWxfcGNp
ZV9saW5rX2Ntbl9yZWdzW10gPSB7Cj4gKwl7MHgwMDAyLCBQSFlfUExMX0NGR30sCj4gKwl7MHgw
NjAxLCBDTU5fUERJQUdfUExMMF9DTEtfU0VMX00wfQo+ICt9OwoKSSB0aGluayB0aGF0IHNvbWUs
IGlmIG5vdCBhbGwsIG9mIHRoZXNlIG5ldyBzdHJ1Y3QgY291bGQgYmUgY29uc3QsIGFzIAplbHNl
d2hlcmUgaW4gdGhpcyBmaWxlLgoKPiArCj4gK3N0YXRpYyBzdHJ1Y3QgY2Ruc19yZWdfcGFpcnMg
bWxfcGNpZV94Y3ZyX2RpYWdfbG5fcmVnc1tdID0gewo+ICsJezB4MDEwMCwgWENWUl9ESUFHX0hT
Q0xLX1NFTH0sCj4gKwl7MHgwMDAxLCBYQ1ZSX0RJQUdfSFNDTEtfRElWfSwKPiArCXsweDA4MTIs
IFhDVlJfRElBR19QTExEUkNfQ1RSTH0KPiArfTsKCi4uLgoKQ0oKCi0tIApsaW51eC1waHkgbWFp
bGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
