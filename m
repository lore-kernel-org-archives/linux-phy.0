Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34784CD4F4C
	for <linux-phy@archiver.kernel.org>; Sun,  8 Sep 2024 16:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XidiH35HDGYu+McnC61nmjp+150T4VQwfoANM8BO92Y=; b=A73fUIe0jHSwHq
	sb1XvTqdbfeeDWHmCpIslXpK9wbljNKAuKwuQJknk0enz0Vd4TeIvh/GYyEJcPh1+SkuZ0Bwt3kif
	cYpn7XAkzN1kVTW+7yo5mnEQv4s3DUF7wdPGp7GyLoTS5IqArJt3MBbekKFduH4beyjckcQR777tG
	c0810Ul6Xrf8KWoq9bVMy6xTl3hAoaLproRvF2Z3O7LVdB+/iT+5EpE2QlI+0aBng3wyHQPStkjJN
	+SJSERTCky73+Q4ZGKqixk3R+K0oupUOY8nOpKB7fkWmsE5PV4q3UcLWVA1Y+4Lh0yepgGm+dBKNI
	O+AmpCgm6qsY1Ew+xKbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snLFg-0000000H8c4-36E7;
	Sun, 08 Sep 2024 16:59:04 +0000
Received: from msa-210.smtpout.orange.fr ([193.252.23.210] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snLFc-0000000H8bG-2bls
	for linux-phy@lists.infradead.org;
	Sun, 08 Sep 2024 16:59:03 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id nLFVsSexkHecynLFVs3xum; Sun, 08 Sep 2024 18:58:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1725814737;
	bh=RdcTk8ohJPW11cQiApgamG5S3f5jcX8WFaEBB5WL29M=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Waf26jujfPXECY3CCDjijKiHyI/dBzztosdUkGORAS/uepLb4kcKcLqmgiPDoYcku
	 MoXMKrUxZEDENW48sn74nf7unkftTZiaW/l95dmfPviRRTkvexcsvSiskoc1uat1ZD
	 +gRtAs187E32Lft/bz80V2cScm6OjBinBKUQVX9Wyx0Xf17m1H6bpTOHmpjU4VtAGW
	 rklcVfzdta3T+DQRBeCO2mgLWFTmkVQ7LbQ6V4SI36ZSf59SzBh56y+6KmeB1IZu3Q
	 i/ZB8QGH7iR9sLQpi46o6xJdGoV3ffCZLVCx/6E7ZWWtMtOPTJ/mI/ktgazDnTtOe9
	 irQCqqT4HbSPg==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sun, 08 Sep 2024 18:58:57 +0200
X-ME-IP: 90.11.132.44
Message-ID: <d01bed96-7811-4ace-8b92-1ee9fafac649@wanadoo.fr>
Date: Sun, 8 Sep 2024 18:58:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: renesas: rcar-gen3-usb2: Fix an error handling
 path in rcar_gen3_phy_usb2_probe()
To: Biju Das <biju.das.jz@bp.renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <4efe2d0419cbe98163e2422ebe0c7896b8a5efed.1725717505.git.christophe.jaillet@wanadoo.fr>
 <TY3PR01MB113468D1573C1E50AC9F97DCF86982@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <TY3PR01MB113468D1573C1E50AC9F97DCF86982@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_095901_231809_A0E82925 
X-CRM114-Status: GOOD (  21.95  )
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

TGUgMDgvMDkvMjAyNCDDoCAxODozOSwgQmlqdSBEYXMgYSDDqWNyaXTCoDoKPiBIaSBDaHJpc3Rv
cGhlIEpBSUxMRVQsCj4gCj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCj4gCj4+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IENocmlzdG9waGUgSkFJTExFVCA8Y2hyaXN0b3BoZS5q
YWlsbGV0QHdhbmFkb28uZnI+Cj4+IFNlbnQ6IFNhdHVyZGF5LCBTZXB0ZW1iZXIgNywgMjAyNCAy
OjU5IFBNCj4+IFN1YmplY3Q6IFtQQVRDSCB2Ml0gcGh5OiByZW5lc2FzOiByY2FyLWdlbjMtdXNi
MjogRml4IGFuIGVycm9yIGhhbmRsaW5nIHBhdGggaW4KPj4gcmNhcl9nZW4zX3BoeV91c2IyX3By
b2JlKCkKPj4KPj4gSWYgYW4gZXJyb3Igb2NjdXJzIGFmdGVyIHRoZSByY2FyX2dlbjNfcGh5X3Vz
YjJfaW5pdF9idXMoKSwKPj4gcmVzZXRfY29udHJvbF9hc3NlcnQoKSBtdXN0IGJlIGNhbGxlZCwg
YXMgYWxyZWFkeSBkb25lIGluIHRoZSByZW1vdmUgZnVuY3Rpb24uCj4+Cj4+IFRoaXMgaXMgZmlu
ZSB0byByZS11c2UgdGhlIGV4aXN0aW5nIGVycm9yIGhhbmRsaW5nIHBhdGgsIGJlY2F1c2UgZXZl
biBpZiAiY2hhbm5lbC0+cnN0YyIgaXMgc3RpbGwgTlVMTAo+PiBhdCB0aGlzIHBvaW50LCBpdCBp
cyBzYWZlIHRvIGNhbGwgcmVzZXRfY29udHJvbF9hc3NlcnQoTlVMTCkuCj4+Cj4+IEZpeGVzOiA0
ZWFlMTYzNzUzNTcgKCJwaHk6IHJlbmVzYXM6IHJjYXItZ2VuMy11c2IyOiBBZGQgc3VwcG9ydCB0
byBpbml0aWFsaXplIHRoZSBidXMiKQo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxM
RVQgPGNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyPgo+PiAtLS0KPj4gQ2hhbmdlcyBpbiB2
MjoKPj4gICAgLSBSZS11c2UgJ2Vycm9yJyB0byBzaW1wbGlmeSB0aGUgcGF0Y2ggICBbY2xhdWRp
dSBiZXpuZWFdCj4+ICAgIC0gVXBkYXRlIHRoZSBjb21taXQgZGVzY3JpcHRpb24gdG8gZXhwbGFp
biB3aHkgaXQgaXMgc2FmZS4KPj4KPj4gdjE6Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC9mYzlmN2I0NDRmMGNhNjQ1NDExODY4OTkyYmJlMTY1MTRhZWNjZmVkLjE3MjU2NTI2NTQuZ2l0
LmNocmlzdG9waGUuamFpbGxldAo+PiBAd2FuYWRvby5mci8KPj4gLS0tCj4+ICAgZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDEgKwo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcmVuZXNhcy9w
aHktcmNhci1nZW4zLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11
c2IyLmMKPj4gaW5kZXggNThlMTIzMzA1MTUyLi5jY2IwYjU0YjcwZjcgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMKPj4gKysrIGIvZHJpdmVy
cy9waHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYwo+PiBAQCAtODAzLDYgKzgwMyw3IEBA
IHN0YXRpYyBpbnQgcmNhcl9nZW4zX3BoeV91c2IyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4+ICAgCXJldHVybiAwOwo+Pgo+PiAgIGVycm9yOgo+PiArCXJlc2V0X2NvbnRy
b2xfYXNzZXJ0KGNoYW5uZWwtPnJzdGMpOwo+IAo+IFRoaXMgd2lsbCByZXN1bHQgaW4gZWl0aGVy
IGtlcm5lbCBjcmFzaCBbMV0gb3IgcmVzZXQgdXNhZ2UgY291bnQgaW1iYWxhbmNlIGluIGNhc2UK
PiBvZiBlcnJvciBbMl0gYW5kIFszXSBpbiByY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoKSBz
ZWUgWzRdLiBBbHNvIHJlc2V0IGNvbnRyb2wgQVBJIGlzIG5vdAo+IHJlc3BlY3RlZCBmb3IgU29D
cyBvdGhlciB0aGFuIFJaL0czUy4gRm9yIHRob3NlIFNvQydzIHJlc2V0IGFzc2VydCBpcwo+IGNh
bGxlZCB3aXRob3V0IGNhbGxpbmcgYSBnZXQoKS4gTWF5YmUgYWRkIGEgY2hlY2sgKHBoeV9kYXRh
LT5pbml0X2J1cykgZm9yCj4gYXNzZXJ0IGFwaSdzLCB0aGF0IGd1YXJhbnRlZXMgYXNzZXJ0IGlz
IGNhbGxlZCBhZnRlciBjYWxsaW5nIGEgZ2V0KCkgYXMgaXQKPiB2YWxpZCBvbmx5IGZvciBSWi9H
M1M/Pwo+IAo+IFsxXQo+IGNoYW5uZWwtPnJzdGMgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlf
Z2V0X3NoYXJlZChkZXYpOwo+IAlpZiAoSVNfRVJSKGNoYW5uZWwtPnJzdGMpKQo+IAkJcmV0dXJu
IFBUUl9FUlIoY2hhbm5lbC0+cnN0Yyk7Cj4gCj4gWzJdCj4gcmV0ID0gcG1fcnVudGltZV9yZXN1
bWVfYW5kX2dldChkZXYpOwo+IAlpZiAocmV0KQo+IAkJcmV0dXJuIHJldDsKPiBbM10KPiByZXQg
PSByZXNldF9jb250cm9sX2RlYXNzZXJ0KGNoYW5uZWwtPnJzdGMpOwo+IAlpZiAocmV0KQo+IAkJ
Z290byBycG1fcHV0Owo+IAo+IFs0XSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92
Ni4xMS1yYzYvc291cmNlL2RyaXZlcnMvcmVzZXQvY29yZS5jI0w0ODMKClNvLCBpZiBJIHVuZGVy
c3RhbmQgY29ycmVjdGx5LCB2MSBbNV0gd2FzIGNvcnJlY3QuIDopCgoKSSBkb24ndCB0aGluayB0
aGF0IFsxXSB3b3VsZCBjcmFzaCwgYmVjYXVzZSBvZiBbNl0uIEl0IHdvdWxkIG9ubHkgCldBUk5f
T04uIEJ1dCB3aXRoIHYxLCBpdCBpcyBub3QgY2FsbGVkLgoKV2l0aCB2MSwgcmVzZXRfY29udHJv
bF9hc3NlcnQoKSBpcyBub3QgY2FsbGVkIGlmIApyY2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMo
KSBmYWlscy4gU28gWzJdIGFuZCBbM10gY2FuJ3Qgb2NjdXIuCgpJIGNhbiBzZW5kIGEgdjMsIHdo
aWNoIGlzIHRoZSBzYW1lIG9mIHYxLCBvciB5b3UgY2FuIHBpY2sgdjEgYXMtaXMgKGlmIApJJ20g
Y29ycmVjdC4uLiA6KSkgb3IgeW91IGNhbiBqdXN0IGlnbm9yZSBpdCBpZiAicmVzZXQgY29udHJv
bCBBUEkgaXMgCm5vdCByZXNwZWN0ZWQgZm9yIFNvQ3MiLgoKCklmIG9mIGludGVyZXN0LCBJIHNw
b3R0ZWQgaXQgd2l0aCBvbmUgb2YgbXkgY29jY2luZWxsZSBzY3JpcHQgdGhhdCAKY29tcGFyZXMg
ZnVuY3Rpb25zIGNhbGxlZCBpbiAucmVtb3ZlIGZ1bmN0aW9uLCBidXQgbm90IGluIGVycm9yIGhh
bmRsaW5nIApwYXRoIG9mIHByb2JlLgoKCkNKCgpbNV06IApodHRwczovL2xvcmUua2VybmVsLm9y
Zy9hbGwvZmM5ZjdiNDQ0ZjBjYTY0NTQxMTg2ODk5MmJiZTE2NTE0YWVjY2ZlZC4xNzI1NjUyNjU0
LmdpdC5jaHJpc3RvcGhlLmphaWxsZXRAd2FuYWRvby5mci8KCls2XTogCmh0dHBzOi8vZWxpeGly
LmJvb3RsaW4uY29tL2xpbnV4L3Y2LjExLXJjNi9zb3VyY2UvZHJpdmVycy9yZXNldC9jb3JlLmMj
TDQ3MwoKPiAKPiBDaGVlcnMsCj4gQmlqdQo+IAo+PiAgIAlwbV9ydW50aW1lX2Rpc2FibGUoZGV2
KTsKPj4KPj4gICAJcmV0dXJuIHJldDsKPj4gLS0KPj4gMi40Ni4wCj4+Cj4gCj4gCj4gCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
