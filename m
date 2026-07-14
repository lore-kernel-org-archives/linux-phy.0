Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711AAC43458
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 20:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3gp+ac3Wr0UdBXWdsR/JKWmo/riVaa8Qa8LyftFtc0=; b=dyfAk8qgGUlfaf
	qCxpStlwc3Si/2dSfbAoHkuLxWPypMgy7tkqCGJUx0AXbWa/Z8bip7gzG+ivN8GpnKdCLPArZktBz
	EaRDT9lqJPhW6PkPOAUd5ZolGlZdYZzBqvTePVe8WqCHC7xKEPONOwLBVzaJB10DEH1OropN+vBY3
	W1kBlkv9ERMQjYlyzCIcZRNKYXBXF7AWm4+7cEYtPWLR/T84R2aoQ0toNgidZTXIc4RU8Ancc56gM
	ZmAgmyN2FFmlLgTiEGc/ln3fqoV75x3PEMAdlZDJs9tZ9XzPF7SzX5lxXruPTAK+8hxB2h9KC8AEn
	ZnuTiJUrLBAY4ptZNMlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjaM-0000000DDJb-0hyS;
	Tue, 14 Jul 2026 20:18:34 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjjaK-0000000DDJK-24wr
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 20:18:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9AE04601D9;
	Tue, 14 Jul 2026 20:18:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7BD11F000E9;
	Tue, 14 Jul 2026 20:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784060311;
	bh=8hbwMHL0hv3QRuegcydzd3LFE/jUCard0s2EiWa2pME=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R+Pna2mKrGLZM7Rnh4kMW6mYjK/FmQp2XfOC7SoVD2pRFE0ldAhW1HfCxwp86tVeM
	 vnDA6BjasG1mq3Zc9tw+R5nzVq9mCfp2X1ZNJ4PucpxWrf4c4WRdRaJuJoKNz4lWSl
	 1vs6dlN2gWBCZO8+mMtcHqTMFjLQRGmlP+VCvnUhriXp0TS3aSwfDwznQBbC+jU/2C
	 McOPCI2xGIqTeGnB7qm0fLsMWDFc+mMzmxaT3t2oA2FRcIAi7i4+VElDns9D4yNkrn
	 mwJHUwIHgIPHOl7uyFg0gibfeEInasU3iZ7phY3ITZmxsJyOGoFz/aHcE2vH4PUDBx
	 CklvUCpHl3/Jg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v13 32/35] phy: rockchip: usbdp: Rename mode to hw_mode
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, vkoul@kernel.org
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-32-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
 <20260714-rockchip-usbdp-cleanup-v13-32-6cb3e769d4c5@collabora.com>
Date: Tue, 14 Jul 2026 20:18:30 +0000
Message-Id: <20260714201830.D7BD11F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgZXhwbGlj
aXQgc3dpdGNoIGNhc2VzIGZvciBUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFURV9VU0Ig
aW4gcmtfdWRwaHlfc2V0X3R5cGVjX3N0YXRlKCkuCi0tCgotLS0gUGF0Y2ggWzMyXTogW1BBVENI
IHYxMyAzMi8zNV0gcGh5OiByb2NrY2hpcDogdXNiZHA6IFJlbmFtZSBtb2RlIHRvIGh3X21vZGUg
LS0tCmNvbW1pdCAxMDk2NWFmZDZhMzNlNjVmM2RkMjBmYTlhZmU3OTBmNDQxODFkZTFiCkF1dGhv
cjogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cgpw
aHk6IHJvY2tjaGlwOiB1c2JkcDogUmVuYW1lIG1vZGUgdG8gaHdfbW9kZQoKVGhpcyBjb21taXQg
cmVuYW1lcyB0aGUgbW9kZSBmaWVsZCB0byBod19tb2RlIGluIHRoZSBya191ZHBoeSBzdHJ1Y3Qu
IFRoaXMKY2hhbmdlIGNsYXJpZmllcyB0aGF0IHRoZSBmaWVsZCByZXByZXNlbnRzIHRoZSBtb2Rl
cyBjdXJyZW50bHkgc3VwcG9ydGVkIGJ5IHRoZQpoYXJkd2FyZSwgd2hpY2ggYXJlIHNldCBieSB0
aGUgVVNCLUMgc3RhdGUgbWFjaGluZSBvciBkZXZpY2UtdHJlZSByb3V0aW5nLApyYXRoZXIgdGhh
biBzb2Z0d2FyZS1yZXF1ZXN0ZWQgbW9kZXMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYTZmZTYzNDU3NGJiYy4uNDA1YjNkOTQzNjAyMyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+ICsr
KyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCgpbIC4uLiBdCgo+
IEBAIC02MTYsMTIgKzYxNiwxMiBAQCBzdGF0aWMgdm9pZCBya191ZHBoeV9zZXRfdHlwZWNfc3Rh
dGUoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgdW5zaWduZWQgbG9uZyBzdGF0ZQo+ICAJCQl1ZHBo
eS0+bGFuZV9tdXhfc2VsWzJdID0gUEhZX0xBTkVfTVVYX0RQOwo+ICAJCQl1ZHBoeS0+bGFuZV9t
dXhfc2VsWzNdID0gUEhZX0xBTkVfTVVYX0RQOwo+ICAJCX0KPiAtCQltb2RlID0gVURQSFlfTU9E
RV9EUF9VU0I7Cj4gKwkJaHdfbW9kZSA9IFVEUEhZX01PREVfRFBfVVNCOwoKW1NldmVyaXR5OiBI
aWdoXQpJcyBpdCBwb3NzaWJsZSB0aGUgZGVmYXVsdCBicmFuY2ggaW4gdGhpcyBzd2l0Y2ggc3Rh
dGVtZW50IGltcHJvcGVybHkgY2F0Y2hlcwpUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFU
RV9VU0I/CgpJZiB0aGUgVHlwZS1DIGZyYW1ld29yayBzZXRzIHRoZSBzdGF0ZSB0byBUWVBFQ19T
VEFURV9TQUZFICgwKSBvcgpUWVBFQ19TVEFURV9VU0IgKDEpLCBya191ZHBoeV9pc19zdXBwb3J0
ZWRfbW9kZSgpIChhcyBpbnRyb2R1Y2VkIGluIGNvbW1pdAoicGh5OiByb2NrY2hpcDogdXNiZHA6
IFByb3Blcmx5IGhhbmRsZSBUWVBFQ19TVEFURV9TQUZFIGFuZCBUWVBFQ19TVEFURV9VU0IiKQpl
eHBsaWNpdGx5IGFsbG93cyB0aGVzZSBtb2RlcyBhbmQgcGFzc2VzIHRoZW0gdG8gcmtfdWRwaHlf
c2V0X3R5cGVjX3N0YXRlKCkuCgpIb3dldmVyLCB0aGUgc3dpdGNoIHN0YXRlbWVudCBhcHBlYXJz
IHRvIGxhY2sgZXhwbGljaXQgY2FzZXMgZm9yIHRoZW06CgoJY2FzZSBUWVBFQ19EUF9TVEFURV9E
OgoJZGVmYXVsdDoKCQlpZiAodWRwaHktPmZsaXApIHsKCQkuLi4KClRoZXNlIHN0YXRlcyB3b3Vs
ZCBmYWxsIGludG8gdGhlIGRlZmF1bHQgYnJhbmNoIGhlcmUgYW5kIGluY29ycmVjdGx5IGNvbmZp
Z3VyZQpod19tb2RlID0gVURQSFlfTU9ERV9EUF9VU0IgYW5kIHVkcGh5LT5kcF9sYW5lcyA9IDIs
IGluc3RlYWQgb2YgcHVyZSBVU0IgbW9kZS4KCkNvdWxkIHRoaXMgcmVncmVzc2lvbiBsZWF2ZSB0
aGUgRGlzcGxheVBvcnQgaGFyZHdhcmUgYmxvY2tzIHBvd2VyZWQgb24gYW5kCmluY29ycmVjdGx5
IG11eGVkIHdoZW4gRFAgQWx0TW9kZSBpcyBleGl0ZWQgb3IgdGhlIGNhYmxlIGlzIGRpc2Nvbm5l
Y3RlZD8KCj4gIAkJdWRwaHktPmRwX2xhbmVzID0gMjsKPiAgCQlicmVhazsKPiAgCX0KPiAgCj4g
LQlya191ZHBoeV9tb2RlX3NldCh1ZHBoeSwgbW9kZSk7Cj4gKwlya191ZHBoeV9tb2RlX3NldCh1
ZHBoeSwgaHdfbW9kZSk7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nh
c2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MTQtcm9ja2NoaXAtdXNiZHAtY2xlYW51cC12MTMt
MC02Y2IzZTc2OWQ0YzVAY29sbGFib3JhLmNvbT9wYXJ0PTMyCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
