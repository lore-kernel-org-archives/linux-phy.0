Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0982EC43458
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jul 2026 08:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkeQrhiead99YUJHk5KybhkZmCT3E1r70CUlhwFpF+U=; b=bTZWk/EzEm0xfD
	Qog6a/eiKzKM1+x4TuSY/2qIZKvNQXRVDe3Ckj92yjD6HhHpkFXJnMWciOraJdNJ/VZ2q7eQjjLbE
	ADLpvZTJYADE2YsovvUivY/Zcm501S4dgX7lLYMs8gMuEHgInsKTiBhTKq7WeM3xxBRUtCg2S2KNB
	Ue2zMIVUKAMZ/Ge763fvitBOurWjmleAxApSTp4M3wVVjlOttmmJlqAaYqqcnqnLX6zu2gnQhJC3+
	mfg+WrcSLbtspsWeo6dqu8TPKCya0j63Jl0Gddk/SeUT6sZGK0cqPX799GypTQWpnl4FjbnL8T04H
	d+F97D2uUESFg2z56Obg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHva-000000095xX-3HFm;
	Sun, 05 Jul 2026 08:10:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgHvZ-000000095xP-3YHT
	for linux-phy@lists.infradead.org;
	Sun, 05 Jul 2026 08:10:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B8A6661377;
	Sun,  5 Jul 2026 08:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3F861F000E9;
	Sun,  5 Jul 2026 08:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783239012;
	bh=TuJljFV6aHebHFgH7z9AaaGFr8qGcZa30IuzI8E3B1Y=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BvlLbze6teX+eUaqg9fRWsAkN5iCYvyldIGLmav+F8VqvOBIEmJrlrTpJHtQsZrFy
	 RCd6JT96aToCrJVXTGVYAxAmYYHFQPhOEV7V49zxsKaiMXA5TzR5tiWtGl4yYcWWt6
	 XmLv7xvEBYubQsrj4Y4UWW3V5dnoNp8xHKjQOD4k2a8yavGRuJir+zX2nqN2UKMLq/
	 8a5l4avzFJNcneJ1AOSui4pNlFi4wZqAXWh7YFuF25lUOUxcbOD3Qe5p7jyzNTPgHs
	 kOFN+FRAzODUJ+ruclSZwvLzL8nNPd2mjJuIKqtbGQM7gc5ZRpOg+UbluRmf8clKAI
	 rnIfskOCB6dGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/5] phy: cpcap-usb: add DCP detection and make UART
 idle mode optional
To: "Ivaylo Dimitrov" <ivo.g.dimitrov.75@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, robh@kernel.org
In-Reply-To: <20260705075809.1793784-5-ivo.g.dimitrov.75@gmail.com>
References: <20260705075809.1793784-1-ivo.g.dimitrov.75@gmail.com>
 <20260705075809.1793784-5-ivo.g.dimitrov.75@gmail.com>
Date: Sun, 05 Jul 2026 08:10:11 +0000
Message-Id: <20260705081011.F3F861F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBU
aGUgVVNCIFBIWSBzdGF0ZSBtYWNoaW5lIGdldHMgcGVybWFuZW50bHkgc3R1Y2sgaW4gQ1BDQVBf
VU5LTk9XTiBpZiBhIFVTQiBob3N0IG9yIGNoYXJnZXIgaXMgY29ubmVjdGVkIGR1cmluZyBib290
LgoKUHJlLWV4aXN0aW5nIGlzc3VlczoKLSBbSGlnaF0gQSBUaW1lLU9mLUNoZWNrIHRvIFRpbWUt
T2YtVXNlIChUT0NUT1UpIHJhY2UgY29uZGl0aW9uIGFsbG93cyBhIGRlbGF5ZWQgd29yayB0aW1l
ciB0byBiZSBxdWV1ZWQganVzdCBiZWZvcmUgdGhlIGRyaXZlcidzIGRhdGEgc3RydWN0dXJlIGlz
IGZyZWVkLgotLQoKY29tbWl0IGMxNWJhMjQ2NDEyOTQ2YTEzNDY5MWM3OWNmMGI2MDIzODgyZDYz
NWIKQXV0aG9yOiBJdmF5bG8gRGltaXRyb3YgPGl2by5nLmRpbWl0cm92Ljc1QGdtYWlsLmNvbT4K
CnBoeTogY3BjYXAtdXNiOiBhZGQgRENQIGRldGVjdGlvbiBhbmQgbWFrZSBVQVJUIGlkbGUgbW9k
ZSBvcHRpb25hbAoKSGFuZGxlIERDUCBzZXBhcmF0ZWx5IGZyb20gVVNCIGhvc3QgY29ubmVjdGlv
bnMgYmFzZWQgb24gQ1BDQVAgY2hhcmdlcgpkZXRlY3Rpb24gc3RhdHVzLiBNYWtlIHRoZSBleGlz
dGluZyBpZGxlIFVBUlQgbW9kZSBvcHRpb25hbCBhbmQgaW5pdGlhbGl6ZQp0aGUgUEhZIGludG8g
dGhlIGJhc2VsaW5lIGNvbmZpZ3VyYXRpb24uIEZpeCBhIHJhY2UgaW4gcmVtb3ZhbC4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYyBiL2RyaXZlcnMv
cGh5L21vdG9yb2xhL3BoeS1jcGNhcC11c2IuYwo+IGluZGV4IGQxYzcwYzcxNTM0NjYuLmU3NzZl
NTRiYmZkNTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbW90b3JvbGEvcGh5LWNwY2FwLXVz
Yi5jCj4gKysrIGIvZHJpdmVycy9waHkvbW90b3JvbGEvcGh5LWNwY2FwLXVzYi5jClsgLi4uIF0K
PiBAQCAtMjkzLDM4ICszMDIsNjEgQEAgc3RhdGljIHZvaWQgY3BjYXBfdXNiX2RldGVjdChzdHJ1
Y3Qgd29ya19zdHJ1Y3QgKndvcmspClsgLi4uIF0KPiAgCXZidXMgPSBjcGNhcF91c2JfdmJ1c192
YWxpZChkZGF0YSk7Cj4gIAo+IC0JLyogT3RoZXJ3aXNlIGFzc3VtZSB3ZSdyZSBjb25uZWN0ZWQg
dG8gYSBVU0IgaG9zdCAqLwo+IC0JaWYgKHZidXMpIHsKPiAtCQlkZXZfZGJnKGRkYXRhLT5kZXYs
ICJjb25uZWN0ZWQgdG8gVVNCIGhvc3RcbiIpOwo+IC0JCWVycm9yID0gY3BjYXBfdXNiX3NldF91
c2JfbW9kZShkZGF0YSk7Cj4gKwkvKiBDaGVjayBpZiB3ZSdyZSBjb25uZWN0ZWQgdG8gYSBVU0Ig
aG9zdCAqLwo+ICsJaWYgKHZidXMgJiYgZGRhdGEtPm1vZGUgIT0gQ1BDQVBfVVNCX0hPU1QpIHsK
PiArCQllbnVtIGNwY2FwX21vZGUgbmV3X21vZGU7Cj4gKwo+ICsJCWlmICghcy5jaHJnX2RldCB8
fCAhcy5zZXNzdmxkIHx8IGRkYXRhLT5tb2RlICE9IENQQ0FQX0lETEUpCj4gKwkJCXJldHVybjsK
CltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGVhcmx5IHJldHVybiBwcmV2ZW50IHRoZSBQSFkg
ZnJvbSBldmVyIGluaXRpYWxpemluZyBpZiBhIGNhYmxlCmlzIGNvbm5lY3RlZCBkdXJpbmcgYm9v
dD8KCkR1cmluZyBjcGNhcF91c2JfcGh5X3Byb2JlKCksIGRkYXRhLT5tb2RlIGlzIGluaXRpYWxp
emVkIHRvIENQQ0FQX1VOS05PV04uCklmIGEgY2hhcmdlciBvciBob3N0IGlzIGFscmVhZHkgY29u
bmVjdGVkLCB2YnVzIGlzIHRydWUsIGFuZCB0aGlzIGJsb2NrIGlzCmVudGVyZWQgaW4gY3BjYXBf
dXNiX2RldGVjdCgpLiBCZWNhdXNlIGRkYXRhLT5tb2RlIGlzIENQQ0FQX1VOS05PV04sIHRoZQpj
b25kaXRpb24gZGRhdGEtPm1vZGUgIT0gQ1BDQVBfSURMRSBpcyB1bmNvbmRpdGlvbmFsbHkgdHJ1
ZSwgd2hpY2ggY2F1c2VzCmFuIGltbWVkaWF0ZSByZXR1cm4gd2l0aG91dCB0cmFuc2l0aW9uaW5n
IHRoZSBzdGF0ZS4KClsgLi4uIF0KPiBAQCAtNjk0LDE3ICs4NTMsMTMgQEAgc3RhdGljIGludCBj
cGNhcF91c2JfcGh5X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIHN0YXRp
YyB2b2lkIGNwY2FwX3VzYl9waHlfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
Cj4gIHsKPiAgCXN0cnVjdCBjcGNhcF9waHlfZGRhdGEgKmRkYXRhID0gcGxhdGZvcm1fZ2V0X2Ry
dmRhdGEocGRldik7Cj4gLQlpbnQgZXJyb3I7Cj4gIAo+ICAJYXRvbWljX3NldCgmZGRhdGEtPmFj
dGl2ZSwgMCk7Cj4gLQllcnJvciA9IGNwY2FwX3VzYl9zZXRfdWFydF9tb2RlKGRkYXRhKTsKPiAt
CWlmIChlcnJvcikKPiAtCQlkZXZfZXJyKGRkYXRhLT5kZXYsICJjb3VsZCBub3Qgc2V0IFVBUlQg
bW9kZVxuIik7Cj4gLQo+ICsJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZkZGF0YS0+ZGV0ZWN0
X3dvcmspOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBi
dXQgZG9lcyBtb3ZpbmcgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCkKaGVyZSBzdGlsbCBsZWF2
ZSBhIHdpbmRvdyBmb3IgYSB1c2UtYWZ0ZXItZnJlZSBpZiB0aGUgSVJRIHRocmVhZCBpcwpwcmVl
bXB0ZWQ/CgpMb29raW5nIGF0IGNwY2FwX3BoeV9pcnFfdGhyZWFkKCk6CgogICAgaWYgKCFhdG9t
aWNfcmVhZCgmZGRhdGEtPmFjdGl2ZSkpCiAgICAgICAgcmV0dXJuIElSUV9OT05FOwoKICAgIHNj
aGVkdWxlX2RlbGF5ZWRfd29yaygmZGRhdGEtPmRldGVjdF93b3JrLCBtc2Vjc190b19qaWZmaWVz
KDEpKTsKCklmIHRoZSBJUlEgaGFuZGxlciBjaGVja3MgZGRhdGEtPmFjdGl2ZSBhbmQgc2VlcyAx
LCBidXQgaXMgdGhlbiBwcmVlbXB0ZWQKYmVmb3JlIHNjaGVkdWxpbmcgdGhlIHdvcmssIGNwY2Fw
X3VzYl9waHlfcmVtb3ZlKCkgY2FuIHJ1biwgc2V0IGFjdGl2ZSB0byAwLAphbmQgY2FuY2VsIHRo
ZSBjdXJyZW50bHkgZW1wdHkgd29ya3F1ZXVlLgoKV2hlbiB0aGUgSVJRIGhhbmRsZXIgcmVzdW1l
cywgaXQgcXVldWVzIHRoZSB3b3JrLCB3aGljaCB0aGVuIGZpcmVzIGFmdGVyCmRldnJlcyBoYXMg
ZnJlZWQgZGRhdGEuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRl
di8jL3BhdGNoc2V0LzIwMjYwNzA1MDc1ODA5LjE3OTM3ODQtMS1pdm8uZy5kaW1pdHJvdi43NUBn
bWFpbC5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1waHkK
