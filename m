Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE0CEC44501
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BbUW/GH+1nczoIYqFyHWZqHYsbG4+YgwpYX97suJSUw=; b=cxh22Bc1cTAZqA
	ldJSlmR2U6UoDDTMehJ+cRO9Axl5wcZXPo2o9f5Zj/YlgC6252ecvgTSUg1EQ/+UBNV0VBh856L/e
	DewiIqX4yEzQ6fmNqCVh+uO5cEoq7zdkW6tK6Zgd4LQ75X3gI0nBGAWWq09ermoPG0nfHp464THYP
	3zf5wiVeFOYQYiL8XmyFhRWvj6ASm+Sv9H4iCJMlg7YpFdsgJJw9e7aM+nmDgy3XcaZ6jWRRhZX5J
	v4CHE91KptTdIUNRvdGpGdE4J7P2Z/SR8TKoMEsROTe615bid/qvU27Qs4mPbY/n7wTOF4bTNhqfJ
	GaLKd3hD+1FlLAxUGoXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whucn-00000003V3X-0arB;
	Thu, 09 Jul 2026 19:41:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whucl-00000003V37-2siC
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:41:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4570A43CB8;
	Thu,  9 Jul 2026 19:41:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE87D1F000E9;
	Thu,  9 Jul 2026 19:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783626091;
	bh=BSwixGZacA8eJ/2GfyJWVMp7rzTtyXn7KbRqjhiLazQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bXZc9qgoFduqHQlI3CYAzo1wII2NGTBhLb+7ggJbHdUUnX02QCanx6vtlq0uQ0eOP
	 VpR9tbs8ZJOofZ1/16n3zTUbfVqoP3wmPF1hWuyXxDVlwi5tn9Q8hNUw7W1sR7dqbg
	 ihbDneWsVGFdCzvbSBNQFuVg6Ikxa3VaprEZNgBr3E1QFt+7/Rox71wtLVb1Ud6B0k
	 4Y4LtCPmV6tKS+PvFiQtenz0tmRH/wAe/aj85jmn43hTCPJj+62MC3bz/uw8h34Iec
	 cbDlSIXwrOI+r2mhHBKuz18cxVBeM19URez1o5+Tl0eqG6O6bYGtuoO1weCKq9JMjw
	 +1dC/AvdeGOng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 35/36] phy: rockchip: usbdp: Re-init PHY on mux
 change
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-35-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-35-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:41:30 +0000
Message-Id: <20260709194130.AE87D1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtIaWdoXSBE
ZWFkbG9jayAvIFJlY3Vyc2l2ZSBMb2NrCgpQcmUtZXhpc3RpbmcgaXNzdWVzOgotIFtIaWdoXSBT
aWxlbnQgRFAgUEhZIFN0YXRlIExvc3MKLS0KCi0tLSBQYXRjaCBbMzVdOiBbUEFUQ0ggdjExIDM1
LzM2XSBwaHk6IHJvY2tjaGlwOiB1c2JkcDogUmUtaW5pdCBQSFkgb24gbXV4IGNoYW5nZSAtLS0K
Y29tbWl0IDYzZTYxMDJlYWZmMzQ1YjRlYmY2ZmFlZmFmZDZhYWU4OGU3YmI5OGUKQXV0aG9yOiBT
ZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTog
cm9ja2NoaXA6IHVzYmRwOiBSZS1pbml0IFBIWSBvbiBtdXggY2hhbmdlCgpFbnN1cmUgdGhhdCB0
aGUgcmlnaHQgcGFydCBvZiB0aGUgUEhZIGFyZSBwb3dlcmVkIHVwIHdoZW4gdGhlIG1vZGUgY2hh
bmdlcy4KVGhpcyBlbnN1cmVzIHRoZSBQSFkgaXMgcmUtaW5pdGlhbGl6ZWQgd2hlbiBjYWJsZSBv
cmllbnRhdGlvbiBjaGFuZ2VzIHdpdGhvdXQKRFAgYmVpbmcgaW52b2x2ZWQsIGFuZCB3aGVuIHN3
aXRjaGluZyBmcm9tIERQLW9ubHkgaW50byBhIG1vZGUgd2l0aCBVU0IKc3VwcG9ydC4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCBjNWFkMzAwNjIw
YTY1Li5lY2YwZWQwMTM5ZjY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tj
aGlwLXVzYmRwLmMKPiBAQCAtMTM4Myw3ICsxMzgzLDcgQEAgc3RhdGljIGludCBya191ZHBoeV90
eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBlY19tdXhfZGV2ICptdXgsCj4gIAo+ICAJcmtfdWRwaHlf
c2V0X3R5cGVjX3N0YXRlKHVkcGh5LCBzdGF0ZS0+bW9kZSk7Cj4gIAo+IC0JcmV0dXJuIDA7Cj4g
KwlyZXR1cm4gcmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKHVkcGh5KTsKCltTZXZlcml0eTog
SGlnaF0KQ291bGQgdGhpcyBsZWFkIHRvIGEgcmVjdXJzaXZlIGxvY2tpbmcgZGVhZGxvY2sgaWYg
dGhlIERXQzMgY29udHJvbGxlciBpcwpydW50aW1lLXN1c3BlbmRlZD8KClNpbmNlIHJrX3VkcGh5
X3R5cGVjX211eF9zZXQoKSBob2xkcyB1ZHBoeS0+bXV0ZXggdXNpbmcgYSBndWFyZCwgdGhlCmZv
bGxvd2luZyBjaGFpbiBzZWVtcyB0byByZS1hY3F1aXJlIHRoZSBzYW1lIG11dGV4OgoKcmtfdWRw
aHlfdHlwZWNfbXV4X3NldCgpCiAgIGd1YXJkKG11dGV4KSgmdWRwaHktPm11dGV4KTsKICAgcmtf
dWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKCkKICAgICAgcGh5X25vdGlmeV9yZXNldCh1ZHBoeS0+
cGh5X3UzLCBQSFlfTk9USUZZX1BSRV9SRVNFVCk7CgpJZiB0aGUgRFdDMyBkcml2ZXIgaGFuZGxl
cyB0aGlzIG5vdGlmaWNhdGlvbiBpbiBkZXZpY2Ugcm9sZToKCmR3YzNfdXNiM19waHlfbm90aWZ5
KCkKICAgcG1fcnVudGltZV9yZXN1bWVfYW5kX2dldCgpCiAgICAgIC4uLgogICAgICBkd2MzX3Jl
c3VtZV9jb21tb24oKQogICAgICAgICBkd2MzX2NvcmVfaW5pdF9mb3JfcmVzdW1lKCkKICAgICAg
ICAgICAgZHdjM19waHlfaW5pdCgpCiAgICAgICAgICAgICAgIHBoeV9pbml0KCkKClRoZSBQSFkg
aW5pdCB0aGVuIGF0dGVtcHRzIHRvIGFjcXVpcmUgdGhlIGxvY2sgYWdhaW46Cgpya191ZHBoeV91
c2IzX3BoeV9pbml0KCkKICAgZ3VhcmQobXV0ZXgpKCZ1ZHBoeS0+bXV0ZXgpOwoKV2lsbCB0aGlz
IGNhdXNlIGEgc3lzdGVtIGZyZWV6ZSB3aGVuIGhvdHBsdWdnaW5nIG9yIHN3aXRjaGluZyBtb2Rl
cz8KCgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9kdWNlZCBieSB0aGlz
IHBhdGNoLCBidXQgZG9lcyBpbnZva2luZwpya191ZHBoeV91cGRhdGVfcG93ZXJfc3RhdGUoKSBk
dXJpbmcgYSBtdXggY2hhbmdlIGNhdXNlIHRoZSBEUCBsaW5rIHRvIGJlCnBlcm1hbmVudGx5IGxv
c3Q/CgpXaGVuIHRoZSBwb3dlciBzdGF0ZSB1cGRhdGVzLCB0aGUgUEhZIGlzIHJlLWluaXRpYWxp
emVkOgoKcmtfdWRwaHlfdXBkYXRlX3Bvd2VyX3N0YXRlKCkKICAgcmtfdWRwaHlfaW5pdCgpCiAg
ICAgIHJlZ21hcF93cml0ZSguLi4sIEZJRUxEX1BSRVAoQ01OX0RQX0xBTkVfRU5fQUxMLCAwKSk7
CgpUaGlzIHJlc2V0IHNlcXVlbmNlIGNsZWFycyB0aGUgQ01OX0RQX0xBTkVfRU5fQUxMIGJpdHMg
YW5kIGRpc2FibGVzIERQCnRyYW5zbWlzc2lvbi4gU2luY2UgcmtfdWRwaHlfZHBfbGFuZV9lbmFi
bGUoKSBkb2VzIG5vdCBhcHBlYXIgdG8gYmUgY2FsbGVkCmFmdGVyd2FyZCB0byByZXN0b3JlIHRo
ZSBhY3RpdmUgRFAgY29uZmlndXJhdGlvbiwgZG9lcyB0aGUgRFJNIHN1YnN5c3RlbQpsb3NlIHRo
ZSBsaW5rIHdpdGhvdXQgYSBmdWxsIHBvd2VyIGN5Y2xlPwoKPiAgfQo+ICAKPiAgc3RhdGljIHZv
aWQgcmtfdWRwaHlfdHlwZWNfbXV4X3VucmVnaXN0ZXIodm9pZCAqZGF0YSkKCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDktcm9j
a2NoaXAtdXNiZHAtY2xlYW51cC12MTEtMC1hMTQ5YWM2MGY3NmNAY29sbGFib3JhLmNvbT9wYXJ0
PTM1CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1w
aHkK
