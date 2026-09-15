Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50994C88E7F
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOVZbIfADaeCzVR0VU4JrMq/4HI1psG9QwJkFsgX2IQ=; b=iP7RTWvRZnCxHk
	rQY12bRDkXhmRKXcH5C7iYc0FZU+/fVX5imeFkmIVVK+60M/tia/9Qf+bMgdUU2Gcj/66PeprMqmU
	AeKf5ZxSK7nDdN6ERnNfM8tM3c8PwwiC5W5Xzd9YqRuGXRbZ444Sd7chiGYGTX6um46UTjFcycsaz
	rAW41FEZ5vqxcumsg5Dxa6RWoQqIuaXHEeVhK335m8esZb6Kbg9nITnHIFFUYhPL6WV6suhmLkL8f
	A/fZQodfb5QXRa0S2ERKCt0bsRd1k0AEYmyIHqhyeohM4CyuQl4000vs0Ds123okr/yTrUcCFq+qI
	hwcT7s92G4GZlqnXzFEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6V6W-00000007ADP-3bVO;
	Tue, 15 Sep 2026 15:29:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6V6U-00000007ADE-3LKe
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 15:29:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 095B5600C8;
	Tue, 15 Sep 2026 15:29:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 638B71F000FF;
	Tue, 15 Sep 2026 15:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789486189;
	bh=g7E3IRdSmE6bbSpE4F3SLx8H1rPl9b5lusNYTmhNErk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IKrDROPZq/R5n9mUlPuE9F8TuN7AEpO/Y4eUOSGXNsoZYISPsMjvz2ZAQ8d3Zbzwd
	 C9JZFddjEp5GzsmivTtOY/Oqx4JSEhuRVhmbvM7/ZHVIqwS9LCKkAkoQMHZTusvO/V
	 fEeooEin7PhmrrPV82TZ1ymK99kCa2Htl41MbJb65NNJUI/yluAVlkTDb38ZPKW8GU
	 1CH4+0LxcrOK7nIdlzuZ6DE8Y4Eeb6lUgBEUke5uzI5Ir69u0mSKf4wRUvsr6m4XiB
	 ArJN5xlPM5+ToSwBPsVONMY9Ew1g828xPBKL6qUb1QFnZFRmBfs/Wya8UUh7kf1HCh
	 QkNjhRbUvusBQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/5] usb: dwc3: rockchip: fix USB-C reconnect in gadget
 mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, vkoul@kernel.org
In-Reply-To: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
References: <20260915-b4-rockchip-dwc3-rockchip-glue-v1-0-763bb546824e@collabora.com>
 <20260915-b4-rockchip-dwc3-rockchip-glue-v1-5-763bb546824e@collabora.com>
Date: Tue, 15 Sep 2026 15:29:48 +0000
Message-Id: <20260915152949.638B71F000FF@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHVzYjogZHdjMzogbWlz
c2luZyBydW50aW1lIFBNIHJlc3VtZSBpbiByb2xlIGNoYW5nZSBjYWxsYmFjawotIFtIaWdoXSB1
c2I6IGR3YzM6IHVzZS1hZnRlci1mcmVlIGluIGR3YzNfcm9ja2NoaXBfdmJ1c19oYW5kbGVyIGR1
ZSB0byBsb2NrbGVzcyBhY2Nlc3MKLS0KCmNvbW1pdCA1OGI3YzNkNGVjOWIwNDFiMGI0MGJlODY5
MjlmODcyYzhmMDU1MmE3CkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cgp1c2I6IGR3YzM6IHJvY2tjaGlwOiBmaXggVVNCLUMgcmVjb25u
ZWN0IGluIGdhZGdldCBtb2RlCgpUaGlzIGNvbW1pdCBmaXhlcyBhIGdhZGdldCBtb2RlIHJlY29u
bmVjdGlvbiBpc3N1ZSBieSB1cGRhdGluZyB0aGUgY29ubmVjdGlvbgpzdGF0dXMgYW5kIHRyaWdn
ZXJpbmcgYSBydW50aW1lIFBNIHJlc3VtZSB3aGVuIHRoZSBVU0Igcm9sZSBjaGFuZ2VzLiBUaGUK
cnVudGltZSBQTSByZWZlcmVuY2UgY291bnRlciBpcyB0aGVuIGltbWVkaWF0ZWx5IGRyb3BwZWQg
c28gdGhhdCBhdXRvLXN1c3BlbmQKY2FuIGhhbmRsZSBrZWVwaW5nIHRoZSBkZXZpY2UgYXdha2Uu
Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtcm9ja2NoaXAuYyBiL2RyaXZl
cnMvdXNiL2R3YzMvZHdjMy1yb2NrY2hpcC5jCj4gaW5kZXggN2JkZDZlMmViMjJkMS4uYmVkZWMz
Mjk1YmIxNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtcm9ja2NoaXAuYwo+
ICsrKyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1yb2NrY2hpcC5jCj4gQEAgLTI1LDggKzI1LDE3
IEBAIHN0cnVjdCBkd2MzX3JvY2tjaGlwIHsKPiAgCXN0cnVjdCBkd2MzCQlkd2M7Cj4gIAlzdHJ1
Y3QgZHdjM19ya19waHlfbmIJdXNiM19waHlfbmJbRFdDM19VU0IzX01BWF9QT1JUU107Cj4gIAl1
OAkJCXBoeV9yZXNldF9hY3RpdmU7Cj4gKwllbnVtIHVzYl9yb2xlCQlyb2xlOwo+ICB9Owo+ICAK
PiArc3RhdGljIHZvaWQgZHdjM19yb2NrY2hpcF92YnVzX2hhbmRsZXIoc3RydWN0IGR3YzMgKmR3
YywgYm9vbCBwcmVzZW50KQo+ICt7Cj4gKwlpZiAoIWR3Yy0+Z2FkZ2V0IHx8ICFkd2MtPmdhZGdl
dF9kcml2ZXIpCj4gKwkJcmV0dXJuOwo+ICsKPiArCXVzYl91ZGNfdmJ1c19oYW5kbGVyKGR3Yy0+
Z2FkZ2V0LCBwcmVzZW50KTsKCltTZXZlcml0eTogSGlnaF0KQ291bGQgdGhpcyBsZWFkIHRvIGEg
dXNlLWFmdGVyLWZyZWUgaWYgaXQgcmFjZXMgd2l0aCBhIGdhZGdldCB1bmJpbmQ/CgpCZWNhdXNl
IHRoaXMgbG9ja2xlc3NseSBjaGVja3MgYW5kIGRlcmVmZXJlbmNlcyBkd2MtPmdhZGdldCwgYW5k
IGNhbiBiZQpjYWxsZWQgYXN5bmNocm9ub3VzbHkgZnJvbSB0aGUgUEhZIG5vdGlmaWVyIChkd2Mz
X3VzYjNfcGh5X25vdGlmeSksIGl0IHNlZW1zCnBvc3NpYmxlIHRoYXQgZHdjLT5nYWRnZXQgY291
bGQgYmUgZnJlZWQgYnkgZHdjM19nYWRnZXRfZXhpdCgpIHJpZ2h0IGFmdGVyCnRoZSBpZi1jaGVj
ayBwYXNzZXMgYnV0IGJlZm9yZSB1c2JfdWRjX3ZidXNfaGFuZGxlcigpIGV4ZWN1dGVzLgoKWyAu
Li4gXQo+IEBAIC0xMzAsNyArMTQ0LDE2IEBAIHN0YXRpYyBpbnQgZHdjM19ya19waHlfcmVnaXN0
ZXJfbm90aWZpZXJzKHN0cnVjdCBkd2MzICpkd2MpCj4gIAlyZXR1cm4gZGV2bV9hZGRfYWN0aW9u
X29yX3Jlc2V0KGR3Yy0+ZGV2LCBkd2MzX3JrX3BoeV91bnJlZ2lzdGVyX25vdGlmaWVycywgZHdj
X3JrKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgZHdjM19yb2NrY2hpcF9zZXRfcm9sZShzdHJ1
Y3QgZHdjMyAqZHdjLCBlbnVtIHVzYl9yb2xlIHJvbGUpCj4gK3sKPiArCXN0cnVjdCBkd2MzX3Jv
Y2tjaGlwICpkd2NfcmsgPSBjb250YWluZXJfb2YoZHdjLCBzdHJ1Y3QgZHdjM19yb2NrY2hpcCwg
ZHdjKTsKPiArCj4gKwlkd2NfcmstPnJvbGUgPSByb2xlOwo+ICsJZHdjM19yb2NrY2hpcF92YnVz
X2hhbmRsZXIoZHdjLCByb2xlID09IFVTQl9ST0xFX0RFVklDRSk7Cj4gK30KCltTZXZlcml0eTog
SGlnaF0KV2VyZSB0aGUgcnVudGltZSBQTSBjYWxscyBhY2NpZGVudGFsbHkgb21pdHRlZCBoZXJl
PwoKVGhlIGNvbW1pdCBtZXNzYWdlIHN0YXRlcyB0aGUgZml4IGludm9sdmVzIHRyaWdnZXJpbmcg
YSBydW50aW1lIFBNIHJlc3VtZQp3aGVuIHRoZSByb2xlIGNoYW5nZXMsIGFuZCBpbW1lZGlhdGVs
eSBkZWNyZWFzaW5nIHRoZSByZWZlcmVuY2UgY291bnRlcgphZnRlcndhcmQuIEhvd2V2ZXIsIHRo
ZXJlIGFyZSBubyBjYWxscyB0byBwbV9ydW50aW1lX2dldF9zeW5jKCkgb3IKcG1fcnVudGltZV9w
dXRfYXV0b3N1c3BlbmQoKSBpbiB0aGlzIGNhbGxiYWNrLiBXaXRob3V0IHRoZW0sIGl0IHNlZW1z
IHRoZQpVU0IgY29udHJvbGxlciB3b3VsZCBpbmNvcnJlY3RseSByZW1haW4gc3VzcGVuZGVkIGFu
ZCB0aGUgb3JpZ2luYWwgaXNzdWUKbWlnaHQgcGVyc2lzdC4KCi0tIApTYXNoaWtvIEFJIHJldmll
dyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTUtYjQtcm9ja2NoaXAt
ZHdjMy1yb2NrY2hpcC1nbHVlLXYxLTAtNzYzYmI1NDY4MjRlQGNvbGxhYm9yYS5jb20/cGFydD01
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
