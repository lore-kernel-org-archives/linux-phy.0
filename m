Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 253D5C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 15:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxTZftPnrxGw1S8muesY9n5LQGbpkIEWOBr4f11YIa0=; b=xsrGnu0RP04o6H
	vAQ/Tg4CSMuO5Q5gtx/NLHncyf+hlXAzB8mlkKahbU76e+4cxZr7WfvqYmNMwO698oZ5QtfZExNhs
	DSmKFBqWtA59xDPKOii7gi48arC8phNBZcLxRXdularRl+LMQ8UsX4zLfRF1ktIiYDekh6XSKrxGs
	YZVE1j3yr6OvJTbP0F+GXEwXxNqlRyjHE3D3N7SRYaTF1bknQF42zWgc69zHKPQRqvhLt68SVO6Pr
	d8OLUnckCCU/BQ/EIaXUPcvk4OmB4qMr/vhPxYzVVQNPCQISchbPqq2ecg5CNZo5wsgn40lXBe3b5
	44WBdkE+Bl9iFAPdEWvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh89s-0000000FPQK-30GS;
	Tue, 07 Jul 2026 15:56:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh89r-0000000FPPR-1Lqo
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 15:56:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D619641A99;
	Tue,  7 Jul 2026 15:56:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E68ED1F000E9;
	Tue,  7 Jul 2026 15:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783439784;
	bh=BR+iQpZJepEmz0MopDypdDGqAeRtQkbVo5FSmYXDYTw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ibq+mNhdF/OXAgu5Ou+Mm2q8Wgm5ue+pmOuErVVJcCjnib+lNS+R+K+c43Vpr1UO5
	 pZN1S2YVFWxrbPHjed6P1ZLnLNayIpTahyWzkDoyRZjsAtNOrYiGxvYhX0TmkUQNnk
	 t4WBT+Er/phINwAZsgdxxIGUcR89nVrJwxxvxEYqEkrAnWT8eZ43eYS2VpRmGVjww7
	 G7rJvCws3rrOO8TDetOeKJLrs3y7CIG1MaeTdMipAAP13w5XG8rSgjv7fZ3az4OhNr
	 rA2565nPjCA8dS1XXQUFJQZGW4qNZIoTQ05kXhCIFaWSmjyzOoG/kNOem+vTldwPRi
	 6qiwYTTb+dTaw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 06/12] phy: phy-mtk-dp: Support set_lanes in
 configure and properly cleanup
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260707154245.198361-7-angelogioacchino.delregno@collabora.com>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-7-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 15:56:23 +0000
Message-Id: <20260707155623.E68ED1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gSW5jb25zaXN0ZW50IHVz
ZSBvZiBkZXZpY2UgcG9pbnRlcnMgZm9yIGVycm9yIGxvZ2dpbmcgaW4gYG10a19kcF9waHlfcG93
ZXJfb2ZmYCBhbmQgYG10a19kcF9waHlfcmVzZXRgLgotLQoKLS0tIFBhdGNoIFs2XTogW1BBVENI
IHYzIDA2LzEyXSBwaHk6IHBoeS1tdGstZHA6IFN1cHBvcnQgc2V0X2xhbmVzIGluIGNvbmZpZ3Vy
ZSBhbmQgcHJvcGVybHkgY2xlYW51cCAtLS0KY29tbWl0IGNhYjMwOTU1N2FjNGZjYjQ2MmM1Yjg5
NzhhOGNkNjYwYWNhYjFlYzEKQXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5n
ZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKcGh5OiBwaHktbXRrLWRwOiBT
dXBwb3J0IHNldF9sYW5lcyBpbiBjb25maWd1cmUgYW5kIHByb3Blcmx5IGNsZWFudXAKClRoaXMg
Y29tbWl0IGFkZHMgc3VwcG9ydCBmb3IgZW5hYmxpbmcgYSBzcGVjaWZpY2FsbHkgcmVxdWVzdGVk
IG51bWJlciBvZgpsYW5lcyBpbiB0aGUgLmNvbmZpZ3VyZSgpIGNhbGxiYWNrLiBJdCBhbHNvIHVw
ZGF0ZXMgdGhlIHBvd2VyIG9mZiBhbmQgcmVzZXQKY2FsbGJhY2tzIHRvIGRpc2FibGUgYWxsIGxh
bmVzIGZvciBwcm9wZXIgaGFyZHdhcmUgY2xlYW51cC4KCj4gLS0tIGEvZHJpdmVycy9waHkvbWVk
aWF0ZWsvcGh5LW10ay1kcC5jCj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1k
cC5jClsgLi4uIF0KPiBAQCAtMjYzLDMxICsyODEsNjggQEAgc3RhdGljIGludCBtdGtfZHBfcGh5
X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKWyAuLi4gXQo+ICBzdGF0aWMgaW50IG10a19kcF9w
aHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IG10a19kcF9waHkg
KmRwX3BoeSA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+ICAJY29uc3Qgc3RydWN0IG10a19kcF9w
aHlfcGRhdGEgKnBkYXRhID0gZHBfcGh5LT5wZGF0YTsKPiAgCWNvbnN0IHU4ICpyZWdzX2RpZyA9
IHBkYXRhLT5yZWdzX2RpZ19nbGI7Cj4gIAljb25zdCB1OCAqcmVnc19hbmEgPSBwZGF0YS0+cmVn
c19hbmFfZ2xiOwo+IC0JaW50IHJldF9ja3R4LCByZXRfYXV4Owo+ICsJaW50IHJldF9ja3R4LCBy
ZXRfYXV4LCByZXQ7Cj4gIAo+ICAJcmV0X2NrdHggPSByZWdtYXBfc2V0X2JpdHMoZHBfcGh5LT5y
ZWdtYXAsCj4gIAkJCQkgICBwZGF0YS0+b2ZmX2FuYV9nbGIgKyByZWdzX2FuYVtEUF9QSFlBX0dM
Ql9GT1JDRV9DVFJMXzFdLAo+ICAJCQkJICAgQ0tNX0NLVFgwX0VOX0ZPUkNFX01PREUpOwo+ICsJ
aWYgKHJldF9ja3R4KQo+ICsJCWRldl9lcnIoJnBoeS0+ZGV2LCAiQ291bGQgbm90IGRpc2FibGUg
Q0tUWDA6ICVkXG4iLCByZXRfY2t0eCk7ClsgLi4uIF0KPiArCXJldCA9IG10a19kcF9waHlfZGlz
YWJsZV9hbGxfbGFuZXMoZHBfcGh5KTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRwX3Bo
eS0+ZGV2LCAiQ291bGQgbm90IGRpc2FibGUgbGFuZXMgZm9yIHBvd2Vyb2ZmIVxuIik7CgpbU2V2
ZXJpdHk6IExvd10KU2hvdWxkIHRoaXMgdXNlICZwaHktPmRldiBpbnN0ZWFkIG9mIGRwX3BoeS0+
ZGV2IGZvciBlcnJvciBsb2dnaW5nPwoKVGhlIGFkamFjZW50IGVycm9yIGhhbmRsZXJzIGZvciBD
S1RYIGFuZCBBVVggaW4gdGhpcyBzYW1lIGZ1bmN0aW9uIGxvZyAKZXJyb3JzIHVzaW5nICZwaHkt
PmRldi4gTWl4aW5nIGRldmljZSBwb2ludGVycyBtaWdodCBsZWFkIHRvIGluY29uc2lzdGVudCAK
ZGV2aWNlIG5hbWVzIGluIHRoZSBrZXJuZWwgbG9nLgoKPiArCQlyZXR1cm4gcmV0Owo+ICAJfQpb
IC4uLiBdCj4gQEAgLTMwNyw2ICszNjMsMTEgQEAgc3RhdGljIGludCBtdGtfZHBfcGh5X3Jlc2V0
KHN0cnVjdCBwaHkgKnBoeSkKWyAuLi4gXQo+ICAJLyogU2V0dGluZyBiaXRzIG1lYW5zIGdvIG91
dCBvZiByZXNldCAqLwo+ICAJcmVnbWFwX3NldF9iaXRzKGRwX3BoeS0+cmVnbWFwLCBwZGF0YS0+
b2ZmX2RpZ19nbGIgKyByZWdfcnN0LCBEUF9HTEJfU1dfUlNUX1BIWUQpOwo+ICAKPiArCS8qIERp
c2FibGUgYWxsIGxhbmVzIGFuZCBjb250aW51ZSByZXNldCBldmVuIGlmIHRoaXMgZmFpbHMsIGJ1
dCBub3RpZnkgKi8KPiArCXJldCA9IG10a19kcF9waHlfZGlzYWJsZV9hbGxfbGFuZXMoZHBfcGh5
KTsKPiArCWlmIChyZXQpCj4gKwkJZGV2X2VycihkcF9waHktPmRldiwgIkNvdWxkIG5vdCBkaXNh
YmxlIGxhbmVzIGR1cmluZyByZXNldCFcbiIpOwoKW1NldmVyaXR5OiBMb3ddClNpbWlsYXJseSBo
ZXJlLCB3b3VsZCBpdCBiZSBiZXR0ZXIgdG8gdXNlICZwaHktPmRldiBmb3IgY29uc2lzdGVuY3kg
d2l0aCAKdGhlIHJlc3Qgb2YgdGhlIEFQSSBpbXBsZW1lbnRhdGlvbj8KCj4gKwo+ICAJcmV0dXJu
IDA7Cj4gIH0KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MDcxNTQyNDUuMTk4MzYxLTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdu
b0Bjb2xsYWJvcmEuY29tP3BhcnQ9NgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
