Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D06C61DC6
	for <linux-phy@archiver.kernel.org>; Thu, 27 Aug 2026 13:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxV4Vk5Mg7v8CK/vN+gimQImZ3FzE5ciNJ14Jf3wcgE=; b=Ko1BjtKS7+dEpe
	+kiSxqCw65WU26k6eq3NMagebtnAxT4VQ5FyEweD/zpskY5J2LgUXVTD4K5iMjqI2qNVe/FrnNqnx
	2xSC9krk8RThhxaQPu006vKuVMoi7uC8VeKbopF65AOwZyUjj92LqWmLmt4qASrOaOH6PfF1TlJEE
	cwnye6ip7ISbFuFQJ3vZQIoJ/1QmP9JfSb/zW/lEo0WBZJtoDFvVKVULIFESEtlDBNA5jeh04fYoZ
	54wixzLGpN70g722lSEIG5jjECCHcYzmgybXJnXcFg7DWm4BauHz2ijRqkTkG928C7QcZWbP/Ufqu
	T9spy6ttGZjF3ARJJegA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wza72-0000000439Z-2bKV;
	Thu, 27 Aug 2026 13:25:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wza70-00000004397-2Pqk
	for linux-phy@lists.infradead.org;
	Thu, 27 Aug 2026 13:25:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A9613601F2;
	Thu, 27 Aug 2026 13:25:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ED271F000E9;
	Thu, 27 Aug 2026 13:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787837145;
	bh=pYrE83waRIALS8ZqemhmdSchGWWe64y/PP05TR6d+SQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nZAT5MI4ooJh3Me7SVYdVEYoQw6gK0X8cmABfG0Dnblo2xVSnOCuCzp6WutRMsngu
	 JYbfJEJNQMu5JXNOP9nQef5vWc3C1hp4pkx/4GYfPfxV2R2Ceh91IirLY4kTvXRijg
	 5m/xZRR5KBceBNH1wwk8TTrwmDo5goSV5X/eFYOf5ZXloTFDtDz/9NIe5qCtOEZ2+U
	 wFpGkiTTAfbNxTMiEae2ls8LT0dhRPBpaO77O6f0oUMdqM6QGrtnqPlWmxXgVcSBtQ
	 vAIZW9sHWWqHk5TpZ9PLNYmfG4U5qqcK9jCCqMT0obHQgY8VqCq6KNkdyDr5Tipe/K
	 A6l8/D+pXokUw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: airoha: Document support for
 AN7583 USB PHY
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260827131551.26725-2-ansuelsmth@gmail.com>
References: <20260827131551.26725-1-ansuelsmth@gmail.com>
 <20260827131551.26725-2-ansuelsmth@gmail.com>
Date: Thu, 27 Aug 2026 13:25:44 +0000
Message-Id: <20260827132545.0ED271F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gTWFsZm9ybWVkIGNo
YXJhY3RlciByYW5nZSBpbiBwYXR0ZXJuUHJvcGVydGllcyByZWdleCBhbGxvd3MgaW52YWxpZCB1
bml0IGFkZHJlc3Nlcy4KLSBbTG93XSBUeXBvIGluIHRoZSBiaW5kaW5nIHRpdGxlIGFuZCBncmFt
bWF0aWNhbCBlcnJvcnMgaW4gdGhlIGRlc2NyaXB0aW9uLgotLQoKY29tbWl0IDRhNWZlODc0ZjVk
MTY4NmQyMTU1NjE5NDkzOTlhMzVhZTRiNWExNWIKQXV0aG9yOiBDaHJpc3RpYW4gTWFyYW5naSA8
YW5zdWVsc210aEBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBhaXJvaGE6IERvY3VtZW50
IHN1cHBvcnQgZm9yIEFONzU4MyBVU0IgUEhZCiAgICAKQWRkcyBkb2N1bWVudGF0aW9uIGZvciB0
aGUgQWlyb2hhIEFONzU4MyBVU0IgUEhZIGZvciB0aGUgVVNCIGNvbnRyb2xsZXIuClRoZSBiaW5k
aW5nIGRldGFpbHMgc3VwcG9ydCBmb3IgdXAgdG8gdHdvIFVTQiAyLjAgcG9ydHMsIG9wdGlvbmFs
IFVTQiAzLjAKbW9kZXMgdmlhIFNlcmRlcyBjb25maWd1cmF0aW9uLCBhbmQgbW9uaXRvciBjbG9j
ayBjYWxpYnJhdGlvbi4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvYWlyb2hhLGFuNzU4My11c2ItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L2Fpcm9oYSxhbjc1ODMtdXNiLXBoeS55YW1sCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAwLi43ZWM2NTUyNTNhOGVmCj4gLS0t
IC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
YWlyb2hhLGFuNzU4My11c2ItcGh5LnlhbWwKPiBAQCAtMCwwICsxLDEzMyBAQAo+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gKyVZQU1M
IDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvYWly
b2hhLGFuNzU4My11c2ItcGh5LnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IEFpcm9oYSBBTjc1ODEgU29D
IFVTQiBQSFkKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgaXMgdGhlIHRp
dGxlIHRhcmdldGluZyB0aGUgY29ycmVjdCBTb0MgdmFyaWFudD8gVGhlCmNvbXBhdGlibGUgc3Ry
aW5nIGFuZCBmaWxlbmFtZSB0YXJnZXQgQU43NTgzLCBidXQgdGhlIHRpdGxlIG1pc3Rha2VubHkK
c2F5cyBBTjc1ODEuCgo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBDaHJpc3RpYW4gTWFyYW5n
aSA8YW5zdWVsc210aEBnbWFpbC5jb20+Cj4gKwo+ICtkZXNjcmlwdGlvbjogPgo+ICsgIFRoZSBB
aXJvaGEgQU43NTgzIFNvQyBVU0IgUEhZIGRlc2NyaWJlcyB0aGUgVVNCIFBIWSBmb3IgdGhlIFVT
QiBjb250cm9sbGVyLi4KCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQgdGhl
cmUgaXMgYSB0eXBvIGhlcmUgd2l0aCB0aGUgZG91YmxlIHBlcmlvZCBhdCB0aGUKZW5kIG9mIHRo
ZSBzZW50ZW5jZS4KClsgLi4uIF0KPiArcGF0dGVyblByb3BlcnRpZXM6Cj4gKyAgJ151c2IyLXBo
eUBbMC05LWEtZl0rJCc6CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIHJlZ2V4IGNvcnJl
Y3RseSByZXN0cmljdCB1bml0IGFkZHJlc3Nlcz8KClRoZSByZWdleCBbMC05LWEtZl0gY29udGFp
bnMgYSBoeXBoZW4gYWZ0ZXIgYSBjb21wbGV0ZWQgcmFuZ2UgKDAtOSksIGNhdXNpbmcKdGhlIGh5
cGhlbiB0byBiZSB0cmVhdGVkIGFzIGEgbGl0ZXJhbCBjaGFyYWN0ZXIgcmF0aGVyIHRoYW4gcGFy
dCBvZiBhIHZhbGlkCmhleCByYW5nZS4gVGhpcyBpbmNvcnJlY3RseSB2YWxpZGF0ZXMgbWFsZm9y
bWVkIGRldmljZSB0cmVlIG5vZGUgbmFtZXMKY29udGFpbmluZyBoeXBoZW5zIGluIHRoZSB1bml0
IGFkZHJlc3MgKGUuZy4sIHVzYjItcGh5QDAtYSkuCgpTaG91bGQgdGhpcyBwYXR0ZXJuIGJlIHVw
ZGF0ZWQgdG8gWzAtOWEtZl0rIHRvIGVuZm9yY2UgcHJvcGVyIGhleCB1bml0CmFkZHJlc3Nlcz8K
Ci0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQv
MjAyNjA4MjcxMzE1NTEuMjY3MjUtMS1hbnN1ZWxzbXRoQGdtYWlsLmNvbT9wYXJ0PTEKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
