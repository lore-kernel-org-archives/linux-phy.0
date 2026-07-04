Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85175C44500
	for <linux-phy@archiver.kernel.org>; Sat,  4 Jul 2026 00:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtkexE2XfAe8Vf98H9Ej0EwMI4rtMIpBRftNNbznkSk=; b=ZmfyH26hd2yhJp
	aXzkktRD39/LEuJW1RRRFyC92SCvcxTid7jYI3cHJEZoQzXt95ggxm846viFxfKz6qROOe9yuRNhO
	l3RZu+T09n4GltE7RjS6B3h1x9eOAySEE+ziAdu7mFIPijScwuoFE2Cm/8IsfVb+hwFcVUz+BG6MI
	/HMBoWevmJHY0OmBTOuWRnPg/eFBhBrs735ov1I/8RXueaZ/sud3APeQ9qqYrlvz6MZJaOQQgbhsq
	YH6FK+/+a6MotrjWWmphhiJK5/tcQ9lBPeK2Lcj3BJ+V+OtvQID+LIzWvEipDvCfHD9TCUtG4LxgF
	SUGmI/4wfjICulsftr4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnze-000000082WQ-0677;
	Sat, 04 Jul 2026 00:12:26 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfnzc-000000082WH-304P
	for linux-phy@lists.infradead.org;
	Sat, 04 Jul 2026 00:12:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ADD65600AF;
	Sat,  4 Jul 2026 00:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E508E1F00A3A;
	Sat,  4 Jul 2026 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783123943;
	bh=Ua5Kp3M4Vt0UXZ4B2mLogiAGsTTUuKKWiWzqRMPI7Y0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HinwGBJVE2SwokcNy+kxORomgveChwUNyK54YmsIvWI8tGypbdvdfiHJrD14NaMgi
	 k7S51y+Hk+PMYseEvutylmuv1UWT12oascXVbwK+nopoFvlwgj+lgR/o1r14uwTrVC
	 C/8wz77fK8+dNbAa1IUT0P/IRw0BtExD9xcT7rK5399GpsqB72BxXQd20lB1OU4+Zr
	 Y0MXbcR8CvxxZ86bnnDd6dkc4ygWUt4+eygFP38JGIO1J0wrJ/SMbbbmk5Ll3+eDf8
	 ti0TcUqFI291iOHIwjD57UzJQlafbQvlOskFo2aBtPMOREMCYPXPwIkLSHxi71cS6U
	 6a7+fy2IKDlrg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 32/36] phy: rockchip: usbdp: Drop -EPROBE_DEFER hack
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-32-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-32-a392711ca8a9@collabora.com>
Date: Sat, 04 Jul 2026 00:12:22 +0000
Message-Id: <20260704001222.E508E1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBjb21taXQgbWVz
c2FnZSBpbmNvcnJlY3RseSBjbGFpbXMgdGhhdCB0aGUgZHJpdmVyIHBlcmZvcm1zIGEgcmVzZXQg
ZHVyaW5nIGl0cyBwcm9iZSByb3V0aW5lLCB3aGljaCBjYW4gbGVhZCB0byBhIHBlcm1hbmVudCBE
V0MzIHByb2JlIGZhaWx1cmUgd2hlbiBpbml0aWFsaXplZCBieSBVLUJvb3QuCi0tCgpjb21taXQg
NmZlMmU5ZjZhZDcyZTEwZGE1NDc4YWJiZTEyOWI0NTI1ZDg5YjI4ZgpBdXRob3I6IFNlYmFzdGlh
biBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKcGh5OiByb2NrY2hp
cDogdXNiZHA6IERyb3AgLUVQUk9CRV9ERUZFUiBoYWNrCgpUaGlzIGNvbW1pdCByZW1vdmVzIHRo
ZSAtRVBST0JFX0RFRkVSIGZhbGxiYWNrIGZyb20gcmtfdWRwaHlfc3RhdHVzX2NoZWNrKCkuCkl0
IHJlbGllcyBvbiBhIGhhcmR3YXJlIHJlc2V0IGluIHRoZSBwcm9iZSByb3V0aW5lIHRvIGF2b2lk
IHRoZSBQTEwgbG9ja2luZwp0aW1lb3V0LgoKPiAgICAgVGhlIGhhY2sgdG8gcmV0dXJuIC1FUFJP
QkVfREVGRVIgd2hlbiB0aGUgbGNwbGwgbG9jayB0aW1lb3V0cyBpcyBubwo+ICAgICBsb25nZXIg
bmVlZGVkLiBUaGUgZHJpdmVyIG5vdyBkb2VzIGEgcmVzZXQgZHVyaW5nIGl0cyBwcm9iZSByb3V0
aW5lCj4gICAgIG1hcmtpbmcgZXZlcnl0aGluZyBhcyBvZmYgYW5kIGxhdGVyIG9uIGRvZXMgYSBy
ZS1pbml0LCB3aGljaCBhdm9pZHMKPiAgICAgdGhlIHByb2JsZW0uCgpbU2V2ZXJpdHk6IEhpZ2hd
CklzIHRoaXMgZGVzY3JpcHRpb24gYWNjdXJhdGU/IExvb2tpbmcgYXQgcmtfdWRwaHlfcHJvYmUo
KSwgdGhlIGhhcmR3YXJlIHJlc2V0CmFwcGVhcnMgdG8gYmUgbWlzc2luZy4KCklmIHRoZSBib290
bG9hZGVyIChVLUJvb3QpIGluaXRpYWxpemVzIGFuZCBsZWF2ZXMgdGhlIFVTQiBQSFkgYWN0aXZl
LCBhbmQKcmtfdWRwaHlfcHJvYmUoKSBmYWlscyB0byBhc3NlcnQgdGhlIGhhcmR3YXJlIHJlc2V0
cywgdGhlIFBIWSByZW1haW5zIGFjdGl2ZS4KV2hlbiBEV0MzIGxhdGVyIHByb2JlcyBhbmQgY2Fs
bHMgcGh5X2luaXQoKSwgaXQgYXR0ZW1wdHMgdG8gcmUtaW5pdGlhbGl6ZSB0aGUKUEhZLgoKQmVj
YXVzZSBEV0MzIHJlZ2lzdGVycyBpdHMgUEhZIG5vdGlmaWVyIGFmdGVyIGNhbGxpbmcgcGh5X2lu
aXQoKSwgaXQgbWlzc2VzCnRoZSBQSFlfTk9USUZZX1BSRV9SRVNFVCBldmVudCBhbmQgZmFpbHMg
dG8gc29mdC1yZXNldCB0aGUgVVNCIE1BQy4gVGhlCmFjdGl2ZSBEV0MzIE1BQyBjYW4gaW50ZXJm
ZXJlIHdpdGggdGhlIFBIWSdzIFBMTCBsb2NrLCBjYXVzaW5nIHRoZQpya191ZHBoeV9zdGF0dXNf
Y2hlY2soKSB0byB0aW1lb3V0LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+IGluZGV4IDVkMTUxZmZmOWVlYmEuLjNmYjZlZWEyOTc5YjkgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IEBAIC03NTAsMTcgKzc1MCw3
IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlfc3RhdHVzX2NoZWNrKHN0cnVjdCBya191ZHBoeSAqdWRw
aHkpCj4gIAkJCQkJICAgICAgICh2YWwgJiBDTU5fQU5BX0xDUExMX0xPQ0tfRE9ORSksIDIwMCwg
MTAwMDAwKTsKPiAgCQlpZiAocmV0KSB7Cj4gIAkJCWRldl9lcnIodWRwaHktPmRldiwgImNtbiBh
bmEgbGNwbGwgbG9jayB0aW1lb3V0XG4iKTsKPiAtCQkJLyoKPiAtCQkJICogSWYgZWFybGllciBz
b2Z0d2FyZSAoVS1Cb290KSBlbmFibGVkIFVTQiBvbmNlIGFscmVhZHkKPiAtCQkJICogdGhlIFBM
TCBtYXkgaGF2ZSBwcm9ibGVtcyBsb2NraW5nIG9uIHRoZSBmaXJzdCB0cnkuCj4gLQkJCSAqIEl0
IHdpbGwgYmUgc3VjY2Vzc2Z1bCBvbiB0aGUgc2Vjb25kIHRyeSwgc28gZm9yIHRoZQo+IC0JCQkg
KiB0aW1lIGJlaW5nIGEgLUVQUk9CRV9ERUZFUiB3aWxsIHNvbHZlIHRoZSBpc3N1ZS4KPiAtCQkJ
ICoKPiAtCQkJICogVGhpcyByZXF1aXJlcyBmdXJ0aGVyIGludmVzdGlnYXRpb24gdG8gdW5kZXJz
dGFuZCB0aGUKPiAtCQkJICogcm9vdCBjYXVzZSwgZXNwZWNpYWxseSBjb25zaWRlcmluZyB0aGF0
IHRoZSBkcml2ZXIgaXMKPiAtCQkJICogYXNzZXJ0aW5nIGFsbCByZXNldCBsaW5lcyBhdCBwcm9i
ZSB0aW1lLgo+IC0JCQkgKi8KPiAtCQkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gKwkJCXJldHVy
biByZXQ7Cj4gIAkJfQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHByb3BhZ2F0aW5nIHRoaXMgdGlt
ZW91dCBpbnN0ZWFkIG9mIHJldHVybmluZyAtRVBST0JFX0RFRkVSIGNhdXNlIHRoZQpEV0MzIHBy
b2JlIHRvIGZhaWwgcGVybWFuZW50bHkgcmF0aGVyIHRoYW4gcmV0cnlpbmc/CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzAzLXJv
Y2tjaGlwLXVzYmRwLWNsZWFudXAtdjEwLTAtYTM5MjcxMWNhOGE5QGNvbGxhYm9yYS5jb20/cGFy
dD0zMgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
