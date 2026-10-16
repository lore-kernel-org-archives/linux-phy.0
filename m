Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6651CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 12:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlSXzmxOCig8qX3OD/o3UwezotKPctj1GxvSEtl2gmg=; b=Rz/11qV6mR/12T
	SqeMNzb4xVGqylf39H5vMDxQfWtvTT3mBQMQnHMSIwneceakI1crvV8JZ64LNCdlfK/FL7gv2dOJk
	CnGiyh5yUws5ReAWE1NcktxE9dRftdMWb9b1gKZBSVKJ/8Q4iUZqFeoCXR9lph+Ucm3YwXKVZIELq
	Z/p3KXFQxeU4ztvI8y3LSemCi0Yn+uZSE2AWSUKE0NDsMw+mXh/o3/6+TsFewstdfFHJHGcm3s6LT
	JFpGdCvCLpvXucO8wVvrONfwczizwtHFp8JM6PH1BCMsEm7OZQLrBUJpDMyRgvQgcOuFpbO6UzmuS
	1NzQfvynyTZPbS0nV+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhKC-00000002x1d-1tmx;
	Fri, 16 Oct 2026 12:46:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHhKA-00000002x1G-1vYw
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 12:46:14 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E3E3F600D4;
	Fri, 16 Oct 2026 12:46:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F9E21F000C4;
	Fri, 16 Oct 2026 12:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792154773;
	bh=bZSVr67GOzjeDO8RwnHXv1RMNVjexZQSBUgX5FXEjxg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PWgcn4EmdDe/Fa6k6JRuVHophhopTjcTt7CJ9NxAJGbVnYhjpbQnfYa5dzqmwe8zQ
	 DZPpHcQ8+2JE94hsgHS8mE+EWup/kp0IOlsGipMrjRkab+a3SHO4yUYYT2/Uj2MKlw
	 MkMzKzT6hkjj7EgoOR4yS9onitIunKYp0AURRutkNWzQIpCnvDxhBxLSJo7/oLu4RB
	 PyQf9up/JWObkE+JOGeqdF58QR9Is2/KJtvfehDNr4OqkQLExOg7dGqdkcy7yNWsZo
	 7GxxYFwiq0kh6jGY7CT9zy6lsPGaI3DOfWiCiFd9v6t/3He5wVQqhVZHCjPKOAnM69
	 +MtvLaTGfNUbA==
Message-ID: <sashiko-outbox-174332@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 05/23] phy: mediatek: ufs: Add support for resets
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261016-mt8196-ufs-v14-5-e8d565e0cd45@collabora.com>
References: <20261016-mt8196-ufs-v14-0-e8d565e0cd45@collabora.com>
 <20261016-mt8196-ufs-v14-5-e8d565e0cd45@collabora.com>
Date: Fri, 16 Oct 2026 12:46:12 +0000
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBtZWRpYXRl
azogdWZzOiB1ZnNfbXRrX3BoeV9jdHJsIHNpbGVudGx5IGlnbm9yZXMgdW5rbm93biBTTUMgZXJy
b3IgY29kZXMKLS0KCmNvbW1pdCBmMjMxMThlNDQ2MzFjOTU0YmM4ODY0MmE5YWJjNWY2MjA4MWMy
M2JmCkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFi
b3JhLmNvbT4KCnBoeTogbWVkaWF0ZWs6IHVmczogQWRkIHN1cHBvcnQgZm9yIHJlc2V0cwoKVGhl
IE1lZGlhVGVrIFVGUyBQSFkgc3VwcG9ydHMgUEhZIHJlc2V0cy4gVW50aWwgbm93LCB0aGV5J3Zl
IGJlZW4KaW1wbGVtZW50ZWQgaW4gdGhlIFVGUyBob3N0IGRyaXZlci4gU2luY2UgdGhleSB3ZXJl
IG5ldmVyIGRvY3VtZW50ZWQgaW4KdGhlIFVGUyBIQ0kgbm9kZSdzIERUIGJpbmRpbmdzLCBhbmQg
bm8gbWFpbmxpbmUgRFQgdXNlcyBpdCwgaXQncyBmaW5lIGlmCml0J3MgbW92ZWQgdG8gdGhlIGNv
cnJlY3QgbG9jYXRpb24sIHdoaWNoIGlzIHRoZSBQSFkgZHJpdmVyLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay11ZnMuYyBiL2RyaXZlcnMvcGh5L21lZGlhdGVr
L3BoeS1tdGstdWZzLmMKPiBpbmRleCBmYzE5ZTBmYThlZDU1Li40NDM5YTllYjZiN2FkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstdWZzLmMKPiArKysgYi9kcml2
ZXJzL3BoeS9tZWRpYXRlay9waHktbXRrLXVmcy5jCgpbIC4uLiBdCgo+IEBAIC0xNDAsOSArMTUx
LDU5IEBAIHN0YXRpYyBpbnQgdWZzX210a19waHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKmdlbmVy
aWNfcGh5KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgdWZzX210a19waHlf
Y3RybChzdHJ1Y3QgdWZzX210a19waHkgKnBoeSwgZW51bSB1ZnNfbXRrX21waHlfb3Agb3ApCj4g
K3sKPiArCXN0cnVjdCBhcm1fc21jY2NfcmVzIHJlczsKPiArCj4gKwlhcm1fc21jY2Nfc21jKE1U
S19TSVBfVUZTX0NPTlRST0wsIFVGU19NVEtfU0lQX01QSFlfQ1RSTCwgb3AsCj4gKwkJICAgICAg
MCwgMCwgMCwgMCwgMCwgJnJlcyk7Cj4gKwo+ICsJc3dpdGNoIChyZXMuYTApIHsKPiArCWNhc2Ug
U01DQ0NfUkVUX05PVF9TVVBQT1JURUQ6Cj4gKwkJcmV0dXJuIC1FT1BOT1RTVVBQOwo+ICsJY2Fz
ZSBTTUNDQ19SRVRfSU5WQUxJRF9QQVJBTUVURVI6Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwlk
ZWZhdWx0Ogo+ICsJCXJldHVybiAwOwoKW1NldmVyaXR5OiBNZWRpdW1dCkluIHVmc19tdGtfcGh5
X2N0cmwoKSwgd2lsbCB0aGlzIGRlZmF1bHQgY2FzZSBzaWxlbnRseSBzd2FsbG93IG90aGVyIGVy
cm9yCmNvZGVzIGZyb20gdGhlIFNNQyBjYWxsIGFuZCB0cmVhdCB0aGVtIGFzIHN1Y2Nlc3M/CgpG
b3IgZXhhbXBsZSwgbXRrX3NpcF9zdmMuaCBkZWZpbmVzIFNJUF9TVkNfRV9JTlZBTElEX1BBUkFN
UyBhcyAtMiBhbmQKU0lQX1NWQ19FX1BFUk1JU1NJT05fREVOSUVEIGFzIC00LiBTdGFuZGFyZCBT
TUNDQyBlcnJvcnMgbGlrZQpTTUNDQ19SRVRfTk9UX1JFUVVJUkVEICgtMikgY291bGQgYWxzbyBi
ZSByZXR1cm5lZC4KCklmIHRoZSBmaXJtd2FyZSByZXR1cm5zIG9uZSBvZiB0aGVzZSBlcnJvcnMs
IHRoZSBkZWZhdWx0IGNhc2Ugd2lsbCByZXR1cm4gMCwKbWFraW5nIHRoZSBkcml2ZXIgYXNzdW1l
IHRoZSBNUEhZIGJhY2t1cCBvciByZXN0b3JlIG9wZXJhdGlvbiBzdWNjZWVkZWQgd2hlbgppdCBh
Y3R1YWxseSBmYWlsZWQuIFNob3VsZCB0aGlzIGV4cGxpY2l0bHkgY2hlY2sgZm9yIHN1Y2Nlc3Mg
KHJlcy5hMCA9PSAwKQphbmQgcmV0dXJuIGFuIGVycm9yIGZvciBhbnkgb3RoZXIgdW5oYW5kbGVk
IGNvZGU/Cgo+ICsJfQo+ICt9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYxMDE2LW10ODE5Ni11ZnMtdjE0LTAtZThkNTY1ZTBjZDQ1
QGNvbGxhYm9yYS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
