Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B18C61DE2
	for <linux-phy@archiver.kernel.org>; Mon, 31 Aug 2026 08:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Y56QrAM9AETbzhn/HqKMY78pVrI8UjwPS7HyFWqJDQ=; b=QPrBdxcLMXDRBs
	DVxIvttSKs6Jfu11QPpmm9eb6CpA5fchJ9L22u9rfbnohgv6VsCGmEqV20uiMF1T3rOW3g/nFyPWr
	Jt4rIwvI8J2tLXZtoDzTahKANuXjJszhIIxuFucJwBmMPE50kWnLpqr7XNKeIFxwNqYkcEkRMV1OM
	Jd/kc988sHWZx1NL1m8n1hLL5PtWGdjfSWGl7aHAfmOcjYRK8duArc+mrweEbq1T/cniqYRG9HOXa
	Z48/ucKIRkSGwnI9QEvBE0ogYi2jkD2WjibJe34xQA+IhN9auq9i3EKqQ5l0Un+rHhbWjrZFpbK0q
	HGf4Ebm9P3rkbjDML3Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xR9-00000008tWj-0OKI;
	Mon, 31 Aug 2026 08:32:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x0xR7-00000008tWA-3hq5
	for linux-phy@lists.infradead.org;
	Mon, 31 Aug 2026 08:32:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 810EE405C2;
	Mon, 31 Aug 2026 08:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4B271F000E9;
	Mon, 31 Aug 2026 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788165132;
	bh=UqmN2g4i1QfTRNrh4hYhJjRbRe9hDrdnXsq1it2S9BY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jVoxIorJchGXCMXb0ot5p/U1aVAtCcJ7Cr2tUj1nBHxp25/MXQM48ZyYmshIwVaY5
	 +ehnwYFkiCztpWOm46bh69XGdl3jVsCsyQN4wGXvomUitNLd/BBv4hevsvFIMHPvAl
	 WWybvUJJnwbKKxwIxrI11X28a2PY+l770jcu61Mv5EN9KhVVeyzMTbjyBfCfLhHPGu
	 Adlq1zWHJLJAbHToGodyQsuH6BCszgMES8LGNQu8f/LAabDV5AebFHgzsLhQTR0SB1
	 KfAP2Hz1NWu7DHbZVm4OWKy/A9PS7wEtPkSgdZ56hsGtD81ckadnftiJBNMGNhDx+Z
	 XYTSP4hOkBrTg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/4] dt-bindings: Add CIX Sky1 USB bindings
To: "Hongliang Yang" <hongliang.yang@cixtech.com>
Cc: conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20260831082309.3854507-2-hongliang.yang@cixtech.com>
References: <20260831082309.3854507-1-hongliang.yang@cixtech.com>
 <20260831082309.3854507-2-hongliang.yang@cixtech.com>
Date: Mon, 31 Aug 2026 08:32:11 +0000
Message-Id: <20260831083211.E4B271F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gQ3VzdG9tIGRldmljZXRy
ZWUgcHJvcGVydGllcyBkbyBub3QgZm9sbG93IHN0YW5kYXJkIG5hbWluZyBjb252ZW50aW9ucyAo
bWlzc2luZyB2ZW5kb3IgcHJlZml4IGFuZCB1c2luZyB1bmRlcnNjb3JlcykuCi0gW0xvd10gVGhl
IHVuaXQtYWRkcmVzcyBpbiB0aGUgZXhhbXBsZSBub2RlIG5hbWUgZG9lcyBub3QgbWF0Y2ggdGhl
IGZpcnN0IGFkZHJlc3MgaW4gaXRzICdyZWcnIHByb3BlcnR5LgotLQoKY29tbWl0IGEwMTNiNmY5
YjQ4Njk4OTQyNDI1ZDE0ZTJmMDkxY2UwYzRjMDRmOGMKQXV0aG9yOiBIb25nbGlhbmcgWWFuZyA8
aG9uZ2xpYW5nLnlhbmdAY2l4dGVjaC5jb20+CgpkdC1iaW5kaW5nczogQWRkIENJWCBTa3kxIFVT
QiBiaW5kaW5ncwoKVGhpcyBjb21taXQgYWRkcyBkZXZpY2UgdHJlZSBiaW5kaW5ncyBmb3IgdGhl
IENJWCBTa3kxIFVTQjMgUEhZIGFuZApDYWRlbmNlIFVTQlNTUCBjb250cm9sbGVyIGdsdWUgbGF5
ZXIuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNi
L2NpeCxza3kxLXVzYnNzcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3VzYi9jaXgsc2t5MS11c2Jzc3AueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwMC4uNDcyMDJmZjViOWU1Nwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2NpeCxza3kxLXVzYnNzcC55YW1sCgpb
IC4uLiBdCgo+IEBAIC0wLDAgKzEsMTUzIEBACj4gKyAgcmVzZXQtbmFtZXM6Cj4gKyAgICBpdGVt
czoKPiArICAgICAgLSBjb25zdDogdXNiX3ByZXNldAo+ICsgICAgICAtIGNvbnN0OiB1c2JfcmVz
ZXQKPiArCj4gKyAgY2l4LHVzYl9zeXNjb246CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIHBy
b3BlcnR5IG5hbWUgZm9sbG93IHRoZSBzdGFuZGFyZCBkZXZpY2V0cmVlIG5hbWluZyBjb252ZW50
aW9ucz8KU3RhbmRhcmQgY29udmVudGlvbiBzdHJvbmdseSBwcmVmZXJzIGh5cGhlbnMgb3ZlciB1
bmRlcnNjb3JlcyBpbiBwcm9wZXJ0eQpuYW1lcyAoZS5nLiwgY2l4LHVzYi1zeXNjb24pLgoKPiAr
ICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUKPiArICAg
IGRlc2NyaXB0aW9uOgo+ICsgICAgICBQaGFuZGxlIHRvIHRoZSBTa3kxIFM1IHN5c3RlbSBjb250
cm9sbGVyIHVzZWQgdG8gcHJvZ3JhbSBVU0IgbW9kZQo+ICsgICAgICBzdHJhcCBjb250cm9scy4K
PiArCj4gKyAgYXhpX2JtYXhfdmFsdWU6CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIHByb3Bl
cnR5IG5lZWQgYSB2ZW5kb3IgcHJlZml4IGFuZCBoeXBoZW5zIGluc3RlYWQgb2YgdW5kZXJzY29y
ZXM/CkN1c3RvbSBoYXJkd2FyZS1zcGVjaWZpYyBwcm9wZXJ0aWVzIHJlcXVpcmUgYSB2ZW5kb3Ig
cHJlZml4IHRvIGF2b2lkCmNvbGxpc2lvbnMgd2l0aCBzdGFuZGFyZCBwcm9wZXJ0aWVzIChlLmcu
LCBjaXgsYXhpLWJtYXgtdmFsdWUpLgoKPiArICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwj
L2RlZmluaXRpb25zL3VpbnQzMgo+ICsgICAgZGVmYXVsdDogMHg3Cj4gKyAgICBkZXNjcmlwdGlv
bjoKPiArICAgICAgQVhJIGJ1cyBtYXhpbXVtIGJ1cnN0IGxlbmd0aCBjb25maWd1cmF0aW9uIHZh
bHVlLgoKWyAuLi4gXQoKPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAgICAjaW5jbHVkZSA8ZHQt
YmluZGluZ3MvY2xvY2svY2l4LHNreTEuaD4KPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9p
bnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvcmVzZXQvY2l4LHNreTEtczUtc3lzdGVtLWNvbnRyb2wuaD4KPiArCj4gKyAgICBzb2Mgewo+
ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ICsgICAgICAgICNzaXplLWNlbGxzID0g
PDI+Owo+ICsKPiArICAgICAgICB1c2JAOTFjMDMwMCB7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0
aGUgdW5pdCBhZGRyZXNzIDkxYzAzMDAgbWF0Y2ggdGhlIGZpcnN0IGFkZHJlc3MgaW4gdGhlIHJl
ZyBwcm9wZXJ0eT8KVGhlIERldmljZXRyZWUgU3BlY2lmaWNhdGlvbiByZXF1aXJlcyB0aGF0IHRo
ZSB1bml0IGFkZHJlc3MgaW4gYSBub2RlIG5hbWUKZXhhY3RseSBtYXRjaGVzIHRoZSBmaXJzdCBh
ZGRyZXNzIHNwZWNpZmllZCBpbiB0aGUgbm9kZSdzIHJlZyBwcm9wZXJ0eS4KSGVyZSwgaXQgZG9l
cyBub3QgbWF0Y2ggdGhlIGFjdHVhbCBiYXNlIHJlZ2lzdGVyIGFkZHJlc3MgMDkxYzAzMTQsIHdo
aWNoCndpbGwgdHJpZ2dlciBhIHNpbXBsZV9idXNfcmVnIHdhcm5pbmcgd2hlbiB0aGUgZGV2aWNl
dHJlZSBjb21waWxlciBldmFsdWF0ZXMKdGhlIGV4YW1wbGUuCgo+ICsgICAgICAgICAgICBjb21w
YXRpYmxlID0gImNpeCxza3kxLXVzYnNzcCI7Cj4gKyAgICAgICAgICAgICNhZGRyZXNzLWNlbGxz
ID0gPDI+Owo+ICsgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPiArICAgICAgICAgICAg
cmFuZ2VzOwo+ICsKPiArICAgICAgICAgICAgcmVnID0gPDB4MDAgMHgwOTFjMDMxNCAweDAwIDB4
ND4sCj4gKyAgICAgICAgICAgICAgICAgIDwweDAwIDB4MDkxYzA0MDAgMHgwMCAweDQ+OwoKLS0g
ClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDgzMTA4MjMwOS4zODU0NTA3LTEtaG9uZ2xpYW5nLnlhbmdAY2l4dGVjaC5jb20/cGFydD0xCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
