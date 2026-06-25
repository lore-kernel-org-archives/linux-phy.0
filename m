Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFCFACDE000
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jun 2026 17:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHC4aCDaP3YH79KX6wd/UxJ5li4kkmGErz0Fgakl6GM=; b=DHMbHzpCPqhz6K
	qA+NZ/7ZF2/0+OAQksHKeJKvHgc1H+WmpL2asNbwZFKHrfyXJfRyD01INZ0V2/zG/gAsSMLgB7oty
	YbWubh3cM1A6Af4WrNIloxvcLHcmbbd05eyCHHss5goV1uOomfSQdSd3v+ifQbJ878lgU6UzsKPUZ
	DFLVsJmWtbUDPcZCso4JBCVTQQprHtNvTT7m32I3BRRH90L7Y5mv2rT2vzFM3kio2XzLon/nppSu8
	SdcDPhpd7GHezkd5pzVVhaqR4nOnyBRKDz+P4mzaSIAoD4hqJRO/JjLyJqwEhMUoE0g6W2mzrfKok
	scrxBc73HEEWC9BQPG4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoMG-00000009eSR-21zZ;
	Thu, 25 Jun 2026 17:59:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcoMF-00000009eSL-252h
	for linux-phy@lists.infradead.org;
	Thu, 25 Jun 2026 17:59:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B7ED560098;
	Thu, 25 Jun 2026 17:59:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CFBE1F000E9;
	Thu, 25 Jun 2026 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782410362;
	bh=wNRKfGbwkykkeTi6JG/YbfzW+5TXwQKAO2rb8s1JP0w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nUgsh5uCqvrBlQNa2u1oK1uN6OhjR+/mYkoX4vdwFYIxKTFaLtLPNZojeamVuuHKE
	 xB3YBo9iBzF2mU4JOjD9aBpy4J6tR94LfFrtHIRLktTSlc8lwwRU8pcBOa+y2wt96e
	 h2HQQOsT6WqfqmaiXdvcfThuZRgg2ejledILkvejF4O9wv0QymI5cZBBZjVQq0GN7m
	 rVSEK/B9hf9XOoEwrRxcJmCXWVhP6RDolIEyDDBLfNs66jW9bFrqBQE+M06tHNnm1q
	 xUZfVrG6BpqsWKR3bOfltpwnJJQejXnsyloJfgN3N1xcfbM5LL5dh8Smu8AZmlDvdp
	 hCxLb+cTH3NnQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 05/27] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-5-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
 <20260625-rockchip-usbdp-cleanup-v7-5-38eb3cf654fd@collabora.com>
Date: Thu, 25 Jun 2026 17:59:21 +0000
Message-Id: <20260625175922.1CFBE1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBVbmNoZWNrZWQgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIHdoZW4gY29tcGFyaW5n
IGNsb2NrIElEcyBmcm9tIG5vbi1jb21wbGlhbnQgRGV2aWNlIFRyZWVzLgotLQoKY29tbWl0IGJl
NzVlNzAwMzBkNmExMTIzMDRiZWFlMTViY2JlOGI5ZDg3MGMyMTQKQXV0aG9yOiBTZWJhc3RpYW4g
UmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCnBoeTogcm9ja2NoaXA6
IHVzYmRwOiBIYW5kbGUgbWlzc2luZyBjbG9jay1uYW1lcyBEVCBwcm9wZXJ0eSBncmFjZWZ1bGx5
CgpUaGlzIHBhdGNoIGFkZHMgYSBjaGVjayB0byBlbnN1cmUgdGhlIGNsb2NrIGlkIHN0cmluZyBp
cyBwcmVzZW50IGJlZm9yZQpjb21wYXJpbmcgaXQsIHByZXZlbnRpbmcgYSBudWxsIHBvaW50ZXIg
ZGVyZWZlcmVuY2Ugd2hlbiBwYXJzaW5nIGEKbm9uLWNvbXBsaWFudCBkZXZpY2UgdHJlZS4KCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCAyODQ1YTAx
MmVhZmNjLi4zZmM4MjIyZmNhZWMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLXVzYmRwLmMKPiBAQCAtNDMyLDYgKzQzMiw5IEBAIHN0YXRpYyBpbnQgcmtfdWRwaHlf
Y2xrX2luaXQoc3RydWN0IHJrX3VkcGh5ICp1ZHBoeSwgc3RydWN0IGRldmljZSAqZGV2KQo+ICAK
PiAgCS8qIHVzZWQgZm9yIGNvbmZpZ3VyZSBwaHkgcmVmZXJlbmNlIGNsb2NrIGZyZXF1ZW5jeSAq
Lwo+ICAJZm9yIChpID0gMDsgaSA8IHVkcGh5LT5udW1fY2xrczsgaSsrKSB7Cj4gKwkJaWYgKCF1
ZHBoeS0+Y2xrc1tpXS5pZCkKPiArCQkJY29udGludWU7Cj4gKwoKW1NldmVyaXR5OiBIaWdoXQpU
aGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhpcyBwYXRjaCwgYnV0IHNpbmNlIHlvdSBh
cmUgZml4aW5nIHRoZQptaXNzaW5nIGNsb2NrLW5hbWVzIGJlaGF2aW9yIGhlcmUsIGNvdWxkIHRo
aXMgc2FtZSB2dWxuZXJhYmlsaXR5IGJlCnByZXNlbnQgaW4gb3RoZXIgZHJpdmVycz8KCkxvb2tp
bmcgYXQgdGhlIHRyZWUsIHNldmVyYWwgb3RoZXIgZHJpdmVycyBhbHNvIGl0ZXJhdGUgb3ZlciBj
bG9ja3MKcmV0dXJuZWQgYnkgZGV2bV9jbGtfYnVsa19nZXRfYWxsKCkgYW5kIHBhc3MgdGhlIGlk
IGZpZWxkIGRpcmVjdGx5IHRvCnN0cmNtcCgpIG9yIHN0cm5jbXAoKSB3aXRob3V0IGNoZWNraW5n
IGlmIGl0IGlzIG51bGwuCgpGb3IgZXhhbXBsZSwgaW4gZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5
LXJvY2tjaGlwLWlubm8tdXNiMi5jOgpyb2NrY2hpcF91c2IycGh5X2NsazQ4MG1fcmVnaXN0ZXIo
KSBkb2VzOgoKICAgIGlmICghc3RybmNtcChycGh5LT5jbGtzW2ldLmlkLCAicGh5Y2xrIiwgNikp
IHsKClNpbWlsYXJseSwgaW4gZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVu
Zy1jb21icGh5LmM6CnJvY2tjaGlwX2NvbWJwaHlfcGFyc2VfZHQoKSBkb2VzOgoKICAgIGlmICgh
c3RybmNtcChwcml2LT5jbGtzW2ldLmlkLCAicmVmIiwgMykpIHsKClRoZXJlIGFwcGVhciB0byBi
ZSBzaW1pbGFyIHVuY2hlY2tlZCB1c2FnZXMgaW46CmRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaS1pbXg2LmM6aW14X3BjaWVfc2V0dXBfcGh5KCkKZHJpdmVycy9zcGkvc3BpLXJ6djJoLXJz
cGkuYzpyenYyaF9yc3BpX3Byb2JlKCkKZHJpdmVycy9jcnlwdG8vcm9ja2NoaXAvcmszMjg4X2Ny
eXB0by5jOnJrX2NyeXB0b19nZXRfY2xrcygpCmRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vbnhwL2lt
eDhtcS1taXBpLWNzaTIuYzppbXg4bXFfbWlwaV9jc2lfZmluZF9lc2NfY2xrKCkKClNob3VsZCB0
aGVzZSBiZSBhdWRpdGVkIGFuZCBwYXRjaGVkIHNpbWlsYXJseSB0byBwcmV2ZW50IGEgcGFuaWMg
d2hlbgpoYW5kbGluZyBtYWxmb3JtZWQgZGV2aWNlIHRyZWVzPwoKPiAgCQlpZiAoIXN0cm5jbXAo
dWRwaHktPmNsa3NbaV0uaWQsICJyZWZjbGsiLCA2KSkgewo+ICAJCQl1ZHBoeS0+cmVmY2xrID0g
dWRwaHktPmNsa3NbaV0uY2xrOwo+ICAJCQlicmVhazsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDC
tyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MjUtcm9ja2NoaXAtdXNiZHAt
Y2xlYW51cC12Ny0wLTM4ZWIzY2Y2NTRmZEBjb2xsYWJvcmEuY29tP3BhcnQ9NQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
