Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CE69C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 11:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:CC:To:MIME-Version:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/YfpiWS4oLMYY0EhSZlblGm0P+QhYpWh5NgWtQberRg=; b=mRBxWiB/yD7rWNn3UfjSEn0CGm
	5Du+1DoYqaaKlVTlsXB1nXK8ZcQigA5QUb5V7YD8WhxY882gNHGzbAm6jDomOKfRjM5h36N2hn8lH
	6KeP1ruMeddaxWy/4jY9NAhzHm672hAOAiT8A+lD2IjBxs1hYH5LJrA9m2piE0oLW6JxrtmH4+knP
	s9w8TbUC730BGzgKE4Vl1Gnwxcu/2Pb2y58JPphx6ptmQK+NsP2b2rbeuUAsIc+0HbHxvC9knJj8B
	E86+mgZc0Xn7+gpA6hRDX99Bd3aevnkhtYxgQZzTcOJcJE5IsSTQvFwpALkYJv3DiygDreX/d4dWp
	Mb1B3YWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GJQ-0000000BXgk-2mD0;
	Wed, 09 Sep 2026 11:17:56 +0000
Received: from m16.mail.126.com ([117.135.210.7])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4GJN-0000000BXed-0M0p
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 11:17:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Message-ID:Date:From:MIME-Version:To:Subject:
	Content-Type; bh=2+G3GOCnrTRmVz6JASGr0p2d2fHHRQdn/hOPCjtmJiU=;
	b=aPL2Gl9l85qSLA2erk5mimQKBMuMufmacdw/Yrr1GXLO+LsSncvnqRutdH4fcg
	oqv5GqUcT8P0YxaSm3WHTKgkCopulGa3giaAUWaakCFgl7j1A8fjqlQIvcgxMoi/
	sJyjCQfWSaPSZ3KgT3/6FPP6CZGqGBni3oiPh4o6fI9Xk=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wDX175BQKFqkFKgAw--.46613S2;
	Wed, 09 Sep 2026 19:17:22 +0800 (CST)
Message-ID: <6AA14022.6070905@126.com>
Date: Wed, 09 Sep 2026 19:16:50 +0800
From: Hongling Zeng <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Manivannan Sadhasivam <mani@kernel.org>, 
 Hongling Zeng <zenghongling@kylinos.cn>
CC: vkoul@kernel.org, neil.armstrong@linaro.org, johan@kernel.org, 
 kishon@kernel.org, rogerq@ti.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v6 4/4] phy: ti-pipe3: Fix clock leak in init error path
References: <20260619030214.1779043-1-zenghongling@kylinos.cn> <20260619030214.1779043-5-zenghongling@kylinos.cn> <lsywnpxioldkbvb6n7pi6uihlnofjdwrhvm7yt3qiarori4hua@c6wueslryla4>
In-Reply-To: <lsywnpxioldkbvb6n7pi6uihlnofjdwrhvm7yt3qiarori4hua@c6wueslryla4>
X-CM-TRANSID: _____wDX175BQKFqkFKgAw--.46613S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ar13urWrXrWxXr4UCr4kJFb_yoW5JF18pr
	nxWa1qkrn5tayv93Wftr1UX34Fy393Kay3CF1UKw1rZ3Z8Cr1kWFW7Krs8ur1DCr4DCF4S
	va1UJFnIk3WUZaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j4Hq7UUUUU=
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/xtbBrwIj82qhQEIvdAAA3v
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_041753_542162_6EA6D0B7 
X-CRM114-Status: GOOD (  17.60  )
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

CuWcqCAyMDI25bm0MDnmnIgwOeaXpSAxNTo1OCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIOWGmemB
kzoKPiBPbiBGcmksIEp1biAxOSwgMjAyNiBhdCAxMTowMjoxNEFNICswODAwLCBIb25nbGluZyBa
ZW5nIHdyb3RlOgo+PiBXaGVuIHJlZ21hcF91cGRhdGVfYml0cygpIGZhaWxzIGluIHRpX3BpcGUz
X2luaXQoKSBmb3IgUENJZSBtb2RlLAo+PiB0aGUgZnVuY3Rpb24gcmV0dXJucyB0aGUgZXJyb3Ig
d2l0aG91dCBjYWxsaW5nIHRpX3BpcGUzX2Rpc2FibGVfY2xvY2tzKCkuCj4+IFRoaXMgbGVhdmVz
IHRoZSBjbG9ja3MgcGVybWFuZW50bHkgZW5hYmxlZCBzaW5jZSB0aGUgUEhZIGZyYW1ld29yayB3
b24ndAo+PiBpbnZva2UgdGhlIC5leGl0IGNhbGxiYWNrIG9uIGluaXQgZmFpbHVyZS4KPj4KPj4g
Rml4IHRoaXMgYnkgYWRkaW5nIHByb3BlciBjbG9jayBjbGVhbnVwIGluIHRoZSBQQ0llIGVycm9y
IHBhdGgsIGNvbnNpc3RlbnQKPj4gd2l0aCBob3cgdGhlIERQTEwgcHJvZ3JhbSBlcnJvciBwYXRo
IGhhbmRsZXMgY2xlYW51cC4KPj4KPj4gRml4ZXM6IDIzNDczOGVhMzM5MCAoInBoeTogdGktcGlw
ZTM6IG1vdmUgY2xrIGluaXRpYWxpemF0aW9uIHRvIGEgc2VwYXJhdGUgZnVuY3Rpb24iKQo+PiBS
ZXBvcnRlZC1ieTogU2FzaGlrbyBBSSA8c2FzaGlrb0BrZXJuZWwub3JnPgo+PiBDbG9zZXM6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDUxODAyMzY1Ny40MTg1MkMyQkNCMEBzbXRw
Lmtlcm5lbC5vcmcvCj4+IFNpZ25lZC1vZmYtYnk6IEhvbmdsaW5nIFplbmcgPHplbmdob25nbGlu
Z0BreWxpbm9zLmNuPgo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+Pgo+PiAtLS0KPj4g
Q2hhbmdlIGluIHY1Ogo+PiAgICAtQWRkIEZpeCBpZ25vcmVkIGNsb2NrIGVuYWJsZSByZXR1cm4g
dmFsdWUgaW4gaW5pdCBwYXRjaAo+PiAtLS0KPj4gQ2hhbmdlIGluIHY2Ogo+PiAgIC1GaXggYWxs
IGNsb2NrIGxlYWsgcGF0aHMgY29tcHJlaGVuc2l2ZWx5Ogo+PiAgIC1QQ0llIHN5c2NvbiB1cGRh
dGUgZmFpbHVyZSBwYXRoCj4+ICAgLVNBVEEgRFBMTCBsb2NrIGNoZWNrIHBhdGgKPj4gICAtU0FU
QSBlcnJhdGEgcGF0aCBpbiB0aV9waXBlM19leGl0KCkKPj4gLS0tCj4+ICAgZHJpdmVycy9waHkv
dGkvcGh5LXRpLXBpcGUzLmMgfCAxMSArKysrKysrKy0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS90aS9waHktdGktcGlwZTMuYyBiL2RyaXZlcnMvcGh5L3RpL3BoeS10aS1waXBlMy5jCj4+
IGluZGV4IDllYzIyOGMyYTk0MC4uODYwMDU4ZjMxNTk0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L3BoeS90aS9waHktdGktcGlwZTMuYwo+PiArKysgYi9kcml2ZXJzL3BoeS90aS9waHktdGktcGlw
ZTMuYwo+PiBAQCAtNTE4LDYgKzUxOCw4IEBAIHN0YXRpYyBpbnQgdGlfcGlwZTNfaW5pdChzdHJ1
Y3QgcGh5ICp4KQo+PiAgIAkJdmFsID0gMHg5NiA8PCBPTUFQX0NUUkxfUENJRV9QQ1NfREVMQVlf
Q09VTlRfU0hJRlQ7Cj4+ICAgCQlyZXQgPSByZWdtYXBfdXBkYXRlX2JpdHMocGh5LT5wY3Nfc3lz
Y29uLCBwaHktPnBjaWVfcGNzX3JlZywKPj4gICAJCQkJCSBQQ0lFX1BDU19NQVNLLCB2YWwpOwo+
PiArCQlpZiAocmV0KQo+PiArCQkJdGlfcGlwZTNfZGlzYWJsZV9jbG9ja3MocGh5KTsKPj4gICAJ
CXJldHVybiByZXQ7Cj4+ICAgCX0KPj4gICAKPj4gQEAgLTUzMSw4ICs1MzMsOSBAQCBzdGF0aWMg
aW50IHRpX3BpcGUzX2luaXQoc3RydWN0IHBoeSAqeCkKPj4gICAKPj4gICAJLyogU0FUQSBoYXMg
aXNzdWVzIGlmIHJlLXByb2dyYW1tZWQgd2hlbiBsb2NrZWQgKi8KPj4gICAJdmFsID0gdGlfcGlw
ZTNfcmVhZGwocGh5LT5wbGxfY3RybF9iYXNlLCBQTExfU1RBVFVTKTsKPj4gLQlpZiAoKHZhbCAm
IFBMTF9MT0NLKSAmJiBwaHktPm1vZGUgPT0gUElQRTNfTU9ERV9TQVRBKQo+PiAtCQlyZXR1cm4g
cmV0Owo+PiArCWlmICgodmFsICYgUExMX0xPQ0spICYmIHBoeS0+bW9kZSA9PSBQSVBFM19NT0RF
X1NBVEEpIHsKPj4gKwkJcmV0dXJuIDA7Cj4gV2h5IGFyZSB5b3UgcmV0dXJuaW5nIDAgaGVyZSBh
bmQgYmVsb3c/Cj4KPiAtIE1hbmkKPgpIaSBNYW5pLAoKVGhhbmtzIGZvciBwb2ludGluZyB0aGlz
IG91dC4KCllvdSdyZSByaWdodC4gQ2hhbmdpbmcgdGhlIFNBVEEgUExMLWxvY2tlZCBwYXRoIGZy
b20gYHJldHVybiByZXRgIHRvCmByZXR1cm4gMGAgd2FzIGFuIHVuaW50ZW5kZWQgY2hhbmdlIGFu
ZCBpcyBub3QgcmVsYXRlZCB0byB0aGUgY2xvY2sgbGVhawpmaXguIEknbGwgcmVzdG9yZSB0aGUg
b3JpZ2luYWwgY29kZSBpbiB0aGUgbmV4dCB2ZXJzaW9uOgoKICAgICBpZiAoKHZhbCAmIFBMTF9M
T0NLKSAmJiBwaHktPm1vZGUgPT0gUElQRTNfTU9ERV9TQVRBKQogICAgICAgICByZXR1cm4gcmV0
OwoKVGhhbmtzLApIb25nbGluZwoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
