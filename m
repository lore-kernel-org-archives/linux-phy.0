Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF0F7C531D0
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 19:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Irdbj8KNQ/c+h8hlUYacASb7D0fRPorjmlq5ruzVn1o=; b=LALLpUtMdlY6pf
	8Yo6/GfxJn/54MlcB+2FhJyjlPdFcsUJAPPY3VPe2lwI/6G54xoOpeRNomZ3FMjMk6hnBNBpBg97v
	p8PN763pjoeevRxXqL/asbTTjaMg29mXz/E8boiJwT6RD8nDlkXvAgMLdTSYMGwbbQYxlR//j4lxd
	ZEH3IjmkCcD2Lmc6FmmjNKRCGKM+d4cZi0LvcbxzM0RyHKn+r+lJ1qJvl2IsHskRe/a12u0X+j4W+
	pYhyqDKRhtUoav4TP8UyHq9ViVMg9UnzErSLtej25kZ4adXCC0GlnQHoj/sGyI/ObRAg+2JzHkJ23
	ZQzgF0se268OaHkXttOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzUt-0000000F0Vl-1BrG;
	Thu, 23 Jul 2026 19:54:23 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzUr-0000000F0Vf-2Mbi
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 19:54:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EEA7142B6E;
	Thu, 23 Jul 2026 19:54:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 840511F000E9;
	Thu, 23 Jul 2026 19:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784836460;
	bh=Gt1/W8LKlyx7Uquf3ak4e9ACAqpp9rAIJaWWOAN43dw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AwoaTkIyEYRLtf4Furv5HYQSNp0oaTbW1w3PU9/RxBIAyJVeU2TFEdFTZ95tpqT+X
	 ZmeBAir6L0rD30/hqfSrWfd0PN//F7yzt9aXQfTg7Pt5hQEIi/69w05GtesL+MCfxy
	 Rl0rFkW9QhQEFz3FXj5h8Tm2fKSudLrWq5FNovTfGRe+iMELWGylgUqYvceBYckrXi
	 e5g8OcByfnNJaDzXKCEXrgn+LUKLM/GLnW7qpIE89jnKBXXj1mFxwZPvdfdyMCMJIz
	 7DpQiZ3S+8PyiXtQbPEgbZ8TDist3djpMA5RLNy50eLa4UC0VcMXT363A/fSS2/qEn
	 KbjRctPyO29Jw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 06/10] phy: rockchip: samsung-hdptx: Drop TMDS rate
 setup workaround
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260723-hdptx-clk-fixes-v5-6-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-6-8e786067865f@collabora.com>
Date: Thu, 23 Jul 2026 19:54:20 +0000
Message-Id: <20260723195420.840511F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBj
bGFpbXMgdG8gZHJvcCB0aGUgVE1EUyByYXRlIHNldHVwIHdvcmthcm91bmQgYnV0IGZhaWxzIHRv
IHJlbW92ZSB0aGUgY29ycmVzcG9uZGluZyBDQ0YtYmFzZWQgcmF0ZSBhZGp1c3RtZW50IGZhbGxi
YWNrLCBsZWF2aW5nIHRoZSBjbGVhbnVwIGluY29tcGxldGUuCi0tCgotLS0gUGF0Y2ggWzZdOiBb
UEFUQ0ggdjUgMDYvMTBdIHBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IERyb3AgVE1EUyBy
YXRlIHNldHVwIHdvcmthcm91bmQgLS0tCmNvbW1pdCAwZjY0YzNiNWVjMGQwOWEwMDQ3M2UxMzYy
MjAwYzc1OThiODYxZjlkCkF1dGhvcjogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9j
YWx0ZWFAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IERyb3Ag
VE1EUyByYXRlIHNldHVwIHdvcmthcm91bmQKClNpbmNlIGNvbW1pdCBiYTljMmZlMThjMTcgKCJk
cm0vcm9ja2NoaXA6IGR3X2hkbWlfcXA6IFN3aXRjaCB0bwpwaHlfY29uZmlndXJlKCkiKSB0aGUg
VE1EUyByYXRlIHNldHVwIGRvZXNuJ3QgcmVseSBhbnltb3JlIG9uIHRoZQp1bmNvbnZlbnRpb25h
bCB1c2FnZSBvZiB0aGUgYnVzIHdpZHRoLCBpbnN0ZWFkIGl0IGlzIG1hbmFnZWQgZXhjbHVzaXZl
bHkKdGhyb3VnaCB0aGUgSERNSSBQSFkgY29uZmlndXJhdGlvbiBBUEkuCgpEcm9wIHRoZSBub3cg
b2Jzb2xldGUgd29ya2Fyb3VuZCB0byByZXRyaWV2ZSB0aGUgVE1EUyBjaGFyYWN0ZXIgcmF0ZSB2
aWEKcGh5X2dldF9idXNfd2lkdGgoKSBkdXJpbmcgcG93ZXJfb24oKS4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4gaW5kZXggNzky
ZWI1Nzc1NWViMS4uMzFhYmZmNWFkYTllMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9j
a2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+IEBAIC0xNjYwLDIyICsxNjYwLDYg
QEAgc3RhdGljIGludCBya19oZHB0eF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ICAJ
ZW51bSBwaHlfbW9kZSBtb2RlID0gcGh5X2dldF9tb2RlKHBoeSk7Cj4gIAlpbnQgcmV0LCBsYW5l
Owo+ICAKPiAtCWlmIChtb2RlICE9IFBIWV9NT0RFX0RQKSB7Cj4gLQkJaWYgKCFoZHB0eC0+aGRt
aV9jZmcucmF0ZSAmJiBoZHB0eC0+aGRtaV9jZmcubW9kZSAhPSBQSFlfSERNSV9NT0RFX0ZSTCkg
ewo+IC0JCQkvKgo+IC0JCQkgKiBGSVhNRTogVGVtcG9yYXJ5IHdvcmthcm91bmQgdG8gc2V0dXAg
VE1EUyBjaGFyIHJhdGUKPiAtCQkJICogZnJvbSB0aGUgUksgRFcgSERNSSBRUCBicmlkZ2UgZHJp
dmVyLgo+IC0JCQkgKiBXaWxsIGJlIHJlbW92ZWQgYXMgc29vbiB0aGUgc3dpdGNoIHRvIHRoZSBI
RE1JIFBIWQo+IC0JCQkgKiBjb25maWd1cmF0aW9uIEFQSSBoYXMgYmVlbiBjb21wbGV0ZWQgb24g
Ym90aCBlbmRzLgo+IC0JCQkgKi8KPiAtCQkJaGRwdHgtPmhkbWlfY2ZnLnJhdGUgPSBwaHlfZ2V0
X2J1c193aWR0aChoZHB0eC0+cGh5KSAmIDB4ZmZmZmZmZjsKPiAtCQkJaGRwdHgtPmhkbWlfY2Zn
LnJhdGUgKj0gMTAwOwo+IC0JCX0KPiAtCgpbU2V2ZXJpdHk6IE1lZGl1bV0KU2luY2UgdGhpcyBw
YXRjaCBkcm9wcyB0aGUgVE1EUyB3b3JrYXJvdW5kIGhlcmUsIHNob3VsZCB3ZSBhbHNvIHJlbW92
ZSB0aGUKY29ycmVzcG9uZGluZyBDQ0YtYmFzZWQgcmF0ZSBhZGp1c3RtZW50IGZhbGxiYWNrIGFu
ZCB0aGUgcmVzdHJpY3RfcmF0ZV9jaGFuZ2UKc3RhdGUgdHJhY2tpbmc/CgpMb29raW5nIGF0IHJr
X2hkcHR4X3BoeV9jbGtfZGV0ZXJtaW5lX3JhdGUoKToKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmM6cmtfaGRwdHhfcGh5X2Nsa19kZXRlcm1pbmVfcmF0
ZSgpIHsKCS4uLgoJLyoKCSAqIEZJWE1FOiBUZW1wb3JhcmlseSBhbGxvdyBhbHRlcmluZyBUTURT
IGNoYXIgcmF0ZSB2aWEgQ0NGLgoJICogVG8gYmUgZHJvcHBlZCBhcyBzb29uIGFzIHRoZSBSSyBE
VyBIRE1JIFFQIGJyaWRnZSBkcml2ZXIKCSAqIHN3aXRjaGVzIHRvIG1ha2UgdXNlIG9mIHBoeV9j
b25maWd1cmUoKS4KCSAqLwoJaWYgKCFoZHB0eC0+cmVzdHJpY3RfcmF0ZV9jaGFuZ2UgJiYgcmVx
LT5yYXRlICE9IGhkcHR4LT5oZG1pX2NmZy5yYXRlKSB7CgkJc3RydWN0IHBoeV9jb25maWd1cmVf
b3B0c19oZG1pIGhkbWkgPSB7CgkJCS50bWRzX2NoYXJfcmF0ZSA9IHJlcS0+cmF0ZSwKCQl9OwoJ
Li4uCn0KCkxlYXZpbmcgdGhpcyBibG9jayBiZWhpbmQgc2VlbXMgdG8gbGVhdmUgZGVhZCBjb2Rl
LCBhcyB0aGUgcmVtb3ZhbCBjb25kaXRpb24KKHRoZSBicmlkZ2UgZHJpdmVyIHN3aXRjaGluZyB0
byBwaHlfY29uZmlndXJlKCkpIGhhcyBiZWVuIG1ldC4KCkRvZXMgdGhpcyBjbGVhbnVwIGJlbG9u
ZyBpbiB0aGlzIHBhdGNoIGFzIHdlbGwgdG8gZW5zdXJlIHRoZSB3b3JrYXJvdW5kIGlzCmZ1bGx5
IHJlbW92ZWQ/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNzIzLWhkcHR4LWNsay1maXhlcy12NS0wLThlNzg2MDY3ODY1ZkBjb2xs
YWJvcmEuY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
