Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53EBBC021A5
	for <linux-phy@archiver.kernel.org>; Sat, 14 Sep 2024 16:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=purBrqb0QK1V2zsJVQsw+mpJoIKPkhoRDm5edttLvkE=; b=ojiiQO8BZNVaBr
	ZrF/sFQ4JRfoapF9srXySqL5mpOhwVcOmdfC1tCPHH1ysJMJEYMrumgUB5OJIUKUrNOn0Yqz8Uf17
	tjQj5zbXbDEerCRD/RrjAsWBOwTMqyKj1hq366CepI0qe2wedc6UxgE/LYjKnAFPaHsX5TpuAKwXp
	DCWVCF+hd+7yokchbFAWqJwanaCY7o6ir8jIOQhOkvT1iGKo7vhS2yoXcjOXIDjBQltdM6haMAzyR
	vGT+kPROUM3gtUbngr0qfYf3t02BngZoYmB3M4bkZbdaXMxUTF+SUp2PtCiXarNFjCZoG/XUq3lNh
	I6nmF6cSZqUMbw3P5rqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spVMc-00000000v4P-3QcK;
	Sat, 14 Sep 2024 16:11:10 +0000
Received: from out-69.smtpout.orange.fr ([193.252.22.69] helo=msa.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spVMa-00000000v3w-13Fk
	for linux-phy@lists.infradead.org;
	Sat, 14 Sep 2024 16:11:09 +0000
Received: from [192.168.1.37] ([90.11.132.44])
	by smtp.orange.fr with ESMTPA
	id pVMSsua8GqXJQpVMSsnqpy; Sat, 14 Sep 2024 18:11:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1726330265;
	bh=MBuP/BOaPyMnGuO0PoHHXki8MmwwuT9/WeXZMzNlRZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=gbZ+d2IZsZQv279daBVzp+/rWbquiYMr+ne+KDPjK07JlAArSJEHwv9f4sAFiaX6n
	 /DfTgWeka0+Ct5qMqN4v2r1jAna9g6OnyuugmVnEq13lrwnBi4+BtcGPE4Qc+rQvFW
	 O/zx7XsMA0ZoX3S90R16h9xLPUeodkRw/EsPD4fkeG3Qtz/A9YPpC0sasXQM1ZOt1C
	 GSHk9T8LTJVbXnT8eKKuX1nhjpM7YPy8UV44DI60K+PCeXXHa5GYNE5eorqs/zjoyr
	 GdVzuTgJg2tanmf4PQ+jsEpxJIhtlQkic4S8Nr4gBbWq6dvxpvYa/sGwKBf58l/WSg
	 x7eoFP9mP3LJw==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: bWFyaW9uLmphaWxsZXRAd2FuYWRvby5mcg==
X-ME-Date: Sat, 14 Sep 2024 18:11:05 +0200
X-ME-IP: 90.11.132.44
Message-ID: <c394ebc5-c19d-4e52-9cb1-939be554a153@wanadoo.fr>
Date: Sat, 14 Sep 2024 18:11:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] phy: renesas: rcar-gen3-usb2: Fix an error handling
 path in rcar_gen3_phy_usb2_probe()
To: biju.das.jz@bp.renesas.com,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Cc: linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org
References: <290b25827e3f0742808940719455ff0c5cb9d01d.1726329925.git.christophe.jaillet@wanadoo.fr>
Content-Language: en-US, fr-FR
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <290b25827e3f0742808940719455ff0c5cb9d01d.1726329925.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_091108_448817_95FA9127 
X-CRM114-Status: GOOD (  22.29  )
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

TGUgMTQvMDkvMjAyNCDDoCAxODowNywgQ2hyaXN0b3BoZSBKQUlMTEVUIGEgw6ljcml0wqA6Cj4g
SWYgYW4gZXJyb3Igb2NjdXJzIGFmdGVyIHRoZSByZXNldF9jb250cm9sX2RlYXNzZXJ0KCksCj4g
cmVzZXRfY29udHJvbF9hc3NlcnQoKSBtdXN0IGJlIGNhbGxlZCwgYXMgYWxyZWFkeSBkb25lIGlu
IHRoZSByZW1vdmUKPiBmdW5jdGlvbi4KPiAKPiBVc2UgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0
KCkgdG8gYWRkIHRoZSBtaXNzaW5nIGNhbGwgYW5kIHNpbXBsaWZ5IHRoZQo+IC5yZW1vdmUoKSBm
dW5jdGlvbiBhY2NvcmRpbmdseS4KPiAKPiBGaXhlczogNGVhZTE2Mzc1MzU3ICgicGh5OiByZW5l
c2FzOiByY2FyLWdlbjMtdXNiMjogQWRkIHN1cHBvcnQgdG8gaW5pdGlhbGl6ZSB0aGUgYnVzIikK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGhlIEpBSUxMRVQgPGNocmlzdG9waGUuamFpbGxldEB3
YW5hZG9vLmZyPgo+IC0tLQo+IFRoaXMgcGF0Y2ggY2hhbmdlcyB0aGUgb3JkZXIgb2YgZnVuY3Rp
b24gY2FsbHMgd2hlbiByZWxlYXNpbmcgdGhlIHJlc291cmNlcwo+IGluIHRoZSAucmVtb3ZlIGZ1
bmN0aW9uKCkuIExvb2tzIGZpbmUgdG8gbWUsIGJ1dCBwbV8gZnVuY3Rpb25zIGFyZQo+IHNvbWV0
aW1lcyB0cmlja3kuCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAgICAtIFVzZSBkZXZtX2FkZF9hY3Rp
b25fb3JfcmVzZXQoKSAgIFtCaWp1IERhc10KPiAKPiBDaGFuZ2VzIGluIHYyOiAoYnJva2VuIHBy
b3Bvc2FsKQo+ICAgIC0gUmUtdXNlICdlcnJvcicgdG8gc2ltcGxpZnkgdGhlIHBhdGNoICAgW2Ns
YXVkaXUgYmV6bmVhXQo+ICAgIC0gVXBkYXRlIHRoZSBjb21taXQgZGVzY3JpcHRpb24gdG8gZXhw
bGFpbiB3aHkgaXQgaXMgc2FmZS4KPiB2MjogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzRl
ZmUyZDA0MTljYmU5ODE2M2UyNDIyZWJlMGM3ODk2YjhhNWVmZWQuMTcyNTcxNzUwNS5naXQuY2hy
aXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnIvCj4gCj4gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2FsbC9mYzlmN2I0NDRmMGNhNjQ1NDExODY4OTkyYmJlMTY1MTRhZWNjZmVkLjE3MjU2NTI2
NTQuZ2l0LmNocmlzdG9waGUuamFpbGxldEB3YW5hZG9vLmZyLwo+IC0tLQo+ICAgZHJpdmVycy9w
aHkvcmVuZXNhcy9waHktcmNhci1nZW4zLXVzYjIuYyB8IDEzICsrKysrKysrKysrKy0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2IyLmMgYi9kcml2ZXJz
L3BoeS9yZW5lc2FzL3BoeS1yY2FyLWdlbjMtdXNiMi5jCj4gaW5kZXggNThlMTIzMzA1MTUyLi5j
OGEzNzI3ZjU2YWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcmVuZXNhcy9waHktcmNhci1n
ZW4zLXVzYjIuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JlbmVzYXMvcGh5LXJjYXItZ2VuMy11c2Iy
LmMKPiBAQCAtNjY4LDYgKzY2OCwxMyBAQCBzdGF0aWMgZW51bSB1c2JfZHJfbW9kZSByY2FyX2dl
bjNfZ2V0X2RyX21vZGUoc3RydWN0IGRldmljZV9ub2RlICpucCkKPiAgIAlyZXR1cm4gY2FuZGlk
YXRlOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIHJjYXJfZ2VuM19yZXNldF9hc3NlcnQodm9p
ZCAqZGF0YSkKPiArewo+ICsJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdGMgPSBkYXRhOwo+ICsK
PiArCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KHJzdGMpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGludCBy
Y2FyX2dlbjNfcGh5X3VzYjJfaW5pdF9idXMoc3RydWN0IHJjYXJfZ2VuM19jaGFuICpjaGFubmVs
KQo+ICAgewo+ICAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IGNoYW5uZWwtPmRldjsKPiBAQCAtNjg2
LDYgKzY5MywxMSBAQCBzdGF0aWMgaW50IHJjYXJfZ2VuM19waHlfdXNiMl9pbml0X2J1cyhzdHJ1
Y3QgcmNhcl9nZW4zX2NoYW4gKmNoYW5uZWwpCj4gICAJaWYgKHJldCkKPiAgIAkJZ290byBycG1f
cHV0Owo+ICAgCj4gKwlyZXQgPSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCByY2FyX2dl
bjNfcmVzZXRfYXNzZXJ0LAo+ICsJCQkJICAgICAgIGNoYW5uZWwtPnJzdGMpOwo+ICsJaWYgKHJl
dCkKPiArCQlyZXR1cm4gcmV0OwoKTkFDSwoKVGhpcyBpcyBzdGlsbCBicm9rZW4uClNob3VsZCBi
ZSBnb3RvIHJwbV9wdXQ7CgpJJ2xsIHNlbmQgYSB2NC4KCkNKCgo+ICsKPiAgIAl2YWwgPSByZWFk
bChjaGFubmVsLT5iYXNlICsgVVNCMl9BSEJfQlVTX0NUUik7Cj4gICAJdmFsICY9IH5VU0IyX0FI
Ql9CVVNfQ1RSX01CTF9NQVNLOwo+ICAgCXZhbCB8PSBVU0IyX0FIQl9CVVNfQ1RSX01CTF9JTkNS
NDsKPiBAQCAtODE1LDcgKzgyNyw2IEBAIHN0YXRpYyB2b2lkIHJjYXJfZ2VuM19waHlfdXNiMl9y
ZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAlpZiAoY2hhbm5lbC0+aXNf
b3RnX2NoYW5uZWwpCj4gICAJCWRldmljZV9yZW1vdmVfZmlsZSgmcGRldi0+ZGV2LCAmZGV2X2F0
dHJfcm9sZSk7Cj4gICAKPiAtCXJlc2V0X2NvbnRyb2xfYXNzZXJ0KGNoYW5uZWwtPnJzdGMpOwo+
ICAgCXBtX3J1bnRpbWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKPiAgIH07Cj4gICAKCgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
