Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3006C531C9
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8jqFlx+vKKOqnPWc/E8a/paXUx8ICoxkP6XepO2y4IQ=; b=gF9gIrNfS7LEjV
	jxI/SDeW3K6/G6cpG171VrPwPKSuq+U+FAkKQEOtz7HRQdYrgqNW3L2T8F3MXaqJsWR7YlOu/elbg
	EGsPDGr0N78WzJiKmmiQr0VxkfUwOCaWraI1p6+Gyof/gNcR1ieNMQNte0RD9XYnY67+zHPvUk5+A
	g1/krwraHaAcOCx9peGqMuct12oo1tspLyFaMuUZYxQfaI/08BHNrQCPp1TjZB0ZY5jSm2hT6FLnC
	kSknEK+x9ifOC8VgaRkKh9P0DwxCj7gPyVwNljUR/51GTrvXJ05XMdeSsyfkUwRfbCCqaADfdtI0/
	cuYGMGuqc3+4OqD4AhBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmiuX-0000000DCH8-1YdW;
	Thu, 23 Jul 2026 02:11:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmiuW-0000000DCGz-3vnK
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:11:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4EEA3601E0;
	Thu, 23 Jul 2026 02:11:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B7401F00A3A;
	Thu, 23 Jul 2026 02:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784772704;
	bh=H4511Nvs/uentpgewY8YJ4DdEM2VZy4+YdTkGDt8pIk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WdTcvSwo75hZPYtRHQkOevVN5JVX068/PMACpjkG+28L/OvZXhMYAWlEcQbgU7ECE
	 z1+XBTdppu1cLmkLR2U2Tmc/+ckUdR7ovumLZHit+0x4Cr5rMA4grkrAG6Fh0VpPtt
	 CLf2jTupTEOk5GvNyp9ZYDsL31MjL9/GEj2lbuEnh9gFi0X6RnVKEm4ZI7QejbQmea
	 bCUTTwLyj3o2BdTMopD8a3IRwu6FxD9ndLA7sUgSZMofIHRnlPjqXkFQL/cFM67yUi
	 5qK2btfFP6DNa/foQPJn38Ndsbc3qlmci2gLKBadcHH+G4bj0G3mxXwPqoCyP7j6gz
	 s97IDHf1nzqDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: qmp-combo: Add SM8475 support
To: "Esteban Urrutia" <esteuwu@proton.me>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260722-sm8475-bup-usbss-v3-2-0dd5da218ab2@proton.me>
References: <20260722-sm8475-bup-usbss-v3-0-0dd5da218ab2@proton.me>
 <20260722-sm8475-bup-usbss-v3-2-0dd5da218ab2@proton.me>
Date: Thu, 23 Jul 2026 02:11:43 +0000
Message-Id: <20260723021143.8B7401F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBzbTg0NzVf
dXNiM2RwcGh5X2NmZ2Agc3RydWN0dXJlIGlzIG1pc3NpbmcgdGhlIGAuY2FsaWJyYXRlX2RwX3Bo
eWAgY2FsbGJhY2sgYXNzaWdubWVudCwgd2hpY2ggaXMgcmVxdWlyZWQgZm9yIHJvYnVzdCBEaXNw
bGF5UG9ydCBsaW5rIHRyYWluaW5nLgotLQoKLS0tIFBhdGNoIFsyXTogW1BBVENIIHYzIDIvMl0g
cGh5OiBxY29tOiBxbXAtY29tYm86IEFkZCBTTTg0NzUgc3VwcG9ydCAtLS0KY29tbWl0IGQxYjRi
ZmIyZDkxZGMwY2RmYTNkMmVkZDFjZGQ1OWZmODEyMjEzNmYKQXV0aG9yOiBFc3RlYmFuIFVycnV0
aWEgPGVzdGV1d3VAcHJvdG9uLm1lPgoKcGh5OiBxY29tOiBxbXAtY29tYm86IEFkZCBTTTg0NzUg
c3VwcG9ydAoKVGhpcyBjb21taXQgYWRkcyBVU0IvRFAgY29tYm8gUEhZIHN1cHBvcnQgZm9yIHRo
ZSBTTTg0NzUgU29DLCBpbnRyb2R1Y2luZwpzcGVjaWZpYyBSWCBhbmQgUENTIFVTQiB0YWJsZXMg
d2hpbGUgcmV1c2luZyBleGlzdGluZyBzZXJkZXMsIFRYLCBhbmQgUENTCnRhYmxlcy4gSXQgYWxz
byBhZGRzIHYxIFBMTCBzdHJ1Y3R1cmVzIHRvIGFkZHJlc3MgbGluayB0cmFpbmluZyBpc3N1ZXMg
Y2F1c2VkCmJ5IHJlZmVyZW5jZSBjbG9jayBkaWZmZXJlbmNlcyBvbiA0bm0tdjEgUExMcy4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1jb21iby5jIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLWNvbWJvLmMKPiBpbmRleCBjZGNmYWQy
ZTg2YjFkLi41MmIwN2RlMmM1MmI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1jb21iby5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLWNvbWJvLmMKClsgLi4uIF0KCj4gQEAgLTI4NDUsNiArMjk2NSw1MSBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnIHNtODM1MF91c2IzZHBwaHlfY2ZnID0gewo+ICAJLmhh
c19wd3Jkbl9kZWxheQk9IHRydWUsCj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFt
cF9waHlfY2ZnIHNtODQ3NV91c2IzZHBwaHlfY2ZnID0gewo+ICsJLm9mZnNldHMJCT0gJnFtcF9j
b21ib19vZmZzZXRzX3YzLAoKWyAuLi4gXQoKPiArCS5kcF9hdXhfaW5pdAkJPSBxbXBfdjRfZHBf
YXV4X2luaXQsCj4gKwkuY29uZmlndXJlX2RwX3R4CT0gcW1wX3Y0X2NvbmZpZ3VyZV9kcF90eCwK
PiArCS5jb25maWd1cmVfZHBfY2xvY2tzCT0gcW1wX3YzX2NvbmZpZ3VyZV9kcF9jbG9ja3MsCj4g
KwkuY29uZmlndXJlX2RwX3BoeQk9IHFtcF92NF9jb25maWd1cmVfZHBfcGh5LAo+ICsKPiArCS5y
ZWdzCQkJPSBxbXBfdjZfdXNiM3BoeV9yZWdzX2xheW91dCwKCltTZXZlcml0eTogTWVkaXVtXQpJ
cyB0aGUgLmNhbGlicmF0ZV9kcF9waHkgY2FsbGJhY2sgbWlzc2luZyBoZXJlPwoKT3RoZXIgdjYg
RFAgUEhZIGNvbmZpZ3VyYXRpb25zIChsaWtlIHNtODU1MCBhbmQgc2FyMjEzMHApIGFzc2lnbiB0
aGlzIHRvCnFtcF92NF9jYWxpYnJhdGVfZHBfcGh5LiBXaXRob3V0IHRoZSBjYWxpYnJhdGlvbiBj
YWxsYmFjaywgY2FsbHMgdG8KcGh5X2NhbGlicmF0ZSgpIGZyb20gdGhlIERSTSBkcml2ZXIgcmV0
dXJuIDAgd2l0aG91dCBhY3R1YWxseSBhZGp1c3RpbmcgdGhlCkRQIEFVWCB0dW5pbmcgcGFyYW1l
dGVycyAoUVNFUkRFU19EUF9QSFlfQVVYX0NGRzEpLgoKQ2FuIHRoaXMgY2F1c2UgRFAgQWx0IE1v
ZGUgbGluayB0cmFpbmluZyB0byBmYWlsIG9uIHN0cmljdGVyIHNpbmsgZGV2aWNlcyBvcgp3aXRo
IG1hcmdpbmFsIGNhYmxlcyB0aGF0IHJlcXVpcmUgYWx0ZXJuYXRpdmUgQVVYIGNhbGlicmF0aW9u
IHZhbHVlcz8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MjItc204NDc1LWJ1cC11c2Jzcy12My0wLTBkZDVkYTIxOGFiMkBwcm90
b24ubWU/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
