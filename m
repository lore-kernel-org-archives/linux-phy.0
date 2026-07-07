Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B5B8C43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 08:49:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVhffxPOPxXt1Ikq5IYXtC3w3aX9q0Q/hD7JDC8XyZE=; b=Ly5JfVw2m36PNw
	8RNvCGMy+7hsOX0RiqDwSKR5IODwH7v34H6/ri7gIa6Hf3HOVrwNX5P8gZFFmiDH5A+z+Y3KPQEfl
	HIocdeBi+df20iil00a4BFcpfjkfjUM4lVVutB2CCWkOQtWP7bnATEeu36Y7Nfuv0f1gzjz1DEgET
	GCy1W/X5JsP07sTBgU0T7HqdidswDrv4QceXp75L8XwPrQlSr6ocCm3F25scCkAXj3K7Qi6Z8Cghm
	Mh7L8wNUbw/IKUzy1hPaae2EB9sYdSijv7Z0eZa47x5UbRMzifqu1sDm+bw3+Djwps98bPDnthJyX
	TFop7yPmuJf9lDzQJpzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1UN-0000000EXCk-0Z8D;
	Tue, 07 Jul 2026 08:49:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh1UL-0000000EXCD-28XM
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 08:49:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E0CAB43578;
	Tue,  7 Jul 2026 08:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77FF01F000E9;
	Tue,  7 Jul 2026 08:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783414148;
	bh=b4b6CEMxvRAGAWsQGnHrnqr4VKLA9J3O/rgcGK6WLmM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HJ49Gs/P4+O7Abg025+mUusCcIzKdQp76ZNuBymk8L5o4kGSq08++4aAaquNlREH8
	 ARrgWQ2bou1AdXDn65Vscly9ZRKwRoIpRnLB55Gp2OS+byJZ8BzEWtV9Xm0Acn3XnG
	 6drJP++ymO8DhiD1/JA013saurnY6/QtrfAy+ueoU9VXNeu6PNu6wZ9MH65hAFHgkC
	 Cs0iW+WjXWQzfVWlu4p+DIk3NeGCWNIvxEBO69D0YFoCtjFeLId7XwEgF2nHynz3A2
	 Y1W7Df0TTnX41hPxRjCxD2L+dZmdkPt9en5twDT3NmXnG3FuLJNQMQqCdfEyKX740j
	 EfNvoPakdx7Pw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 07/11] power: reset: qcom-pon: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260707083730.33977-8-angelogioacchino.delregno@collabora.com>
References: <20260707083730.33977-1-angelogioacchino.delregno@collabora.com>
 <20260707083730.33977-8-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 08:49:08 +0000
Message-Id: <20260707084908.77FF01F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIFNQTUkgcGFy
ZW50IGRldmljZSByZWZlcmVuY2UgYWNxdWlyZWQgYnkgYHNwbWlfZmluZF9kZXZpY2VfYnlfb2Zf
bm9kZSgpYCBpcyBwZXJtYW5lbnRseSBsZWFrZWQgb24gYm90aCBzdWNjZXNzIGFuZCBlcnJvciBw
YXRocy4KLSBbTG93XSBSZXR1cm5pbmcgYSBwb2ludGVyIChgRVJSX1BUUigtRU5PREVWKWApIGZy
b20gYSBmdW5jdGlvbiB3aXRoIGFuIGBpbnRgIHJldHVybiB0eXBlLgotLQoKLS0tIFBhdGNoIFs3
XTogW1BBVENIIHYxMCAwNy8xMV0gcG93ZXI6IHJlc2V0OiBxY29tLXBvbjogTWlncmF0ZSB0byBk
ZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQoKSAtLS0KY29tbWl0IDdhY2RjMDQ0Nzlm
MWVjZGNhYzNhM2Y0ZDJlZjE2YjhkMzM5ZDg0M2QKQXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERl
bCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKcG93ZXI6
IHJlc2V0OiBxY29tLXBvbjogTWlncmF0ZSB0byBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2Fu
ZF9hZGQoKQoKVGhpcyBjb21taXQgbWlncmF0ZXMgdGhlIFF1YWxjb21tIFBPTiBkcml2ZXIgdG8g
cmVnaXN0ZXIgYW4gU1BNSSBzdWItZGV2aWNlCmFuZCBpbml0aWFsaXplIGEgc3BlY2lmaWMgcmVn
bWFwLiBUaGlzIGFsbG93cyB0aGUgZHJpdmVyIHRvIGF2b2lkIG1hbnVhbGx5CmFkZGluZyB0aGUg
YmFzZSBhZGRyZXNzIHRvIGV2ZXJ5IHJlYWQvd3JpdGUgY2FsbC4KCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcG93ZXIvcmVzZXQvcWNvbS1wb24uYyBiL2RyaXZlcnMvcG93ZXIvcmVzZXQvcWNvbS1w
b24uYwo+IGluZGV4IDdlMTA4OTgyYTU4MmUuLmY5NGFhZWNkNmVkNjcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9wb3dlci9yZXNldC9xY29tLXBvbi5jCj4gKysrIGIvZHJpdmVycy9wb3dlci9yZXNl
dC9xY29tLXBvbi5jCgpbIC4uLiBdCgo+IEBAIC00NiwyNyArNDYsNDQgQEAgc3RhdGljIGludCBx
Y29tX3Bvbl9yZWJvb3RfbW9kZV93cml0ZShzdHJ1Y3QgcmVib290X21vZGVfZHJpdmVyICpyZWJv
b3QsCj4gIAo+ICBzdGF0aWMgaW50IHFjb21fcG9uX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gIHsKClsgLi4uIF0KCj4gKwlpZiAoIWRldi0+cGFyZW50KQo+ICsJCXJldHVy
biAtRU5PREVWOwo+ICAKPiAgCXBvbiA9IGRldm1fa3phbGxvYygmcGRldi0+ZGV2LCBzaXplb2Yo
KnBvbiksIEdGUF9LRVJORUwpOwo+ICAJaWYgKCFwb24pCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4g
IAo+ICAJcG9uLT5kZXYgPSAmcGRldi0+ZGV2Owo+ICAKPiAtCXBvbi0+cmVnbWFwID0gZGV2X2dl
dF9yZWdtYXAocGRldi0+ZGV2LnBhcmVudCwgTlVMTCk7Cj4gLQlpZiAoIXBvbi0+cmVnbWFwKSB7
Cj4gLQkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGxvY2F0ZSByZWdtYXBcbiIpOwo+
IC0JCXJldHVybiAtRU5PREVWOwo+IC0JfQo+ICsJc3BhcmVudCA9IHNwbWlfZmluZF9kZXZpY2Vf
Ynlfb2Zfbm9kZShkZXYtPnBhcmVudC0+b2Zfbm9kZSk7Cj4gKwlpZiAoIXNwYXJlbnQpCj4gKwkJ
cmV0dXJuIEVSUl9QVFIoLUVOT0RFVik7CgpbU2V2ZXJpdHk6IExvd10KRG9lcyB0aGlzIGNvZGUg
cmV0dXJuIGEgcG9pbnRlciBmcm9tIGEgZnVuY3Rpb24gdGhhdCByZXR1cm5zIGFuIGludGVnZXI/
CgpxY29tX3Bvbl9wcm9iZSgpIGhhcyBhbiBpbnQgcmV0dXJuIHR5cGUsIHNvIHJldHVybmluZyBF
UlJfUFRSKC1FTk9ERVYpCmNhdXNlcyBhbiBpbXBsaWNpdCBwb2ludGVyLXRvLWludGVnZXIgY29u
dmVyc2lvbiBhbmQgYSBidWlsZCB3YXJuaW5nLgpTaG91bGQgdGhpcyBqdXN0IHJldHVybiAtRU5P
REVWPwoKKE5vdGU6IEEgc2ltaWxhciB0eXBlIGNvbnZlcnNpb24gYXBwZWFycyB0byBleGlzdCBp
biBzZGFtX3Byb2JlKCkgaW4KZHJpdmVycy9udm1lbS9xY29tLXNwbWktc2RhbS5jKQoKW1NldmVy
aXR5OiBNZWRpdW1dCkRvZXMgdGhpcyBsZWFrIHRoZSBkZXZpY2UgcmVmZXJlbmNlIGFjcXVpcmVk
IGJ5IHNwbWlfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpPwoKc3BtaV9maW5kX2RldmljZV9ieV9v
Zl9ub2RlKCkgaW5jcmVtZW50cyB0aGUgcmVmZXJlbmNlIGNvdW50IG9mIHRoZSBTUE1JCnBhcmVu
dCBkZXZpY2UsIGJ1dCBpdCBhcHBlYXJzIHB1dF9kZXZpY2UoJnNwYXJlbnQtPmRldikgaXMgbmV2
ZXIgY2FsbGVkCm9uIGVpdGhlciB0aGUgc3VjY2VzcyBvciBlcnJvciBwYXRocyB0byByZWxlYXNl
IGl0LgoKKE5vdGU6IFRoaXMgc2FtZSByZWZlcmVuY2UgbGVhayBwYXR0ZXJuIGFsc28gYXBwZWFy
cyB0byBiZSBkdXBsaWNhdGVkIGluCnNkYW1fcHJvYmUoKSBpbiBkcml2ZXJzL252bWVtL3Fjb20t
c3BtaS1zZGFtLmMpCgo+ICAKPiAtCWVycm9yID0gb2ZfcHJvcGVydHlfcmVhZF91MzIocGRldi0+
ZGV2Lm9mX25vZGUsICJyZWciLAo+IC0JCQkJICAgICAmcG9uLT5iYXNlYWRkcik7Cj4gKwlzdWJf
c2RldiA9IGRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZChkZXYsIHNwYXJlbnQpOwoK
WyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MDcwNzA4MzczMC4zMzk3Ny0xLWFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9A
Y29sbGFib3JhLmNvbT9wYXJ0PTcKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
