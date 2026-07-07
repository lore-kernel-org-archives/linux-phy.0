Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B9DC43602
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpsEz0MKJnRSYPNMQcXca1AxoMBb6ytqUXOnmFPtbwM=; b=zy4K5z80N3iAFi
	rVzojlGZSI7+5XRufeih6PAnhF9SVewVmuF+6Xvtx+LZYzQftBkhQQqm2toHNmcoDQ6vcrqbrHjhm
	CJYuDizGaUh5V8a97hO8zKgggSJuFPDPVf0lZWGmlKQrAV51CR9HcCtohYUdktUNSAO2NzItvxJR2
	PL2kX8bkbz9do3eeea0YFOre7h5TXn+dCHei5EvAQB6L8YtKOfIQ0a0uKMSY9SwSXfmVpYIFecBUe
	TqhkFWo/F1KPwmVyst9GfzyIES0HgwX8wfbMAk3IXz5lU/fr4ldE4nwRi5JVGpcdu06Cfa5GBOBKG
	uSV2kNOjafwp09t61WCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3jF-0000000EpZi-3Hhs;
	Tue, 07 Jul 2026 11:12:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3jE-0000000EpZa-3hJZ
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:12:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BC9BB618AC;
	Tue,  7 Jul 2026 11:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 321161F000E9;
	Tue,  7 Jul 2026 11:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783422759;
	bh=fivuXmPe3fIDqn7cYLarX9KbFhKFKl34/U+FQyNispA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IyRUxJfXpXjJ+w4805z/v0l6+8n51Do8QdPdBMZKZjPu3Q8Tv9BROtRXGkeD9tZw2
	 6G6XJic77QmrxQ+SylSJq064/05De7x38r4mOlwqcaBIp1zVyS198CW5iqtz+vgamn
	 EhUa7Uvxn5HE6KD5a/4go8hux9S88GWKoJzkYbV40y+GnjErSwsX9M6dyTlOv/AQkC
	 L09lUUA04XjNRuN/D3FxTKHaCn5zLpEAJPGL1Sr4z6wXr9pCeYnyMKNZXdhSuzIISq
	 0J7fp3ukiUaojJ4WDBf3ts4eWr6DR52KEUE00tlzeJfZ4ayGwo//Lmw9MBEXHlD7lE
	 +qmN+Jnm8Hb8g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 09/12] phy: qualcomm: eusb2-repeater: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260707101821.173319-10-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-10-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 11:12:38 +0000
Message-Id: <20260707111239.321161F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFByb2JlIHVuY29uZGl0
aW9uYWxseSBmYWlscyB3aXRoIC1FTk9ERVYgZHVlIHRvIGluY29ycmVjdCBhcmd1bWVudCBwYXNz
ZWQgdG8gc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKCkuCi0tCgotLS0gUGF0Y2ggWzldOiBb
UEFUQ0ggdjExIDA5LzEyXSBwaHk6IHF1YWxjb21tOiBldXNiMi1yZXBlYXRlcjogTWlncmF0ZSB0
byBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQoKSAtLS0KY29tbWl0IDE4NTEzZmFj
Y2M5ODgwNTJjNmE2NGZiMjFjNGJmY2RkYWQyOGY2ZTQKQXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5v
IERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKcGh5
OiBxdWFsY29tbTogZXVzYjItcmVwZWF0ZXI6IE1pZ3JhdGUgdG8gZGV2bV9zcG1pX3N1YmRldmlj
ZV9hbGxvY19hbmRfYWRkKCkKClRoaXMgcGF0Y2ggcmVnaXN0ZXJzIGEgbmV3IFNQTUkgc3ViLWRl
dmljZSBmb3IgdGhlIEVVU0IyIHJlcGVhdGVyIGFuZAppbml0aWFsaXplcyBpdHMgb3duIHJlZ21h
cCB3aXRoIHRoZSBzdWItZGV2aWNlJ3Mgc3BlY2lmaWMgYmFzZSBhZGRyZXNzCmZyb20gdGhlIGRl
dmljZSB0cmVlLCByZXBsYWNpbmcgdGhlIHBhcmVudCBTUE1JIGRldmljZSBzeXNjb24gYXBwcm9h
Y2guCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1ldXNiMi1y
ZXBlYXRlci5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIu
Ywo+IGluZGV4IGVmZWVjNDcwOWExNWQuLmE4NTQyZGEyYjQ2MjQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tZXVzYjItcmVwZWF0ZXIuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLWV1c2IyLXJlcGVhdGVyLmMKWyAuLi4gXQo+IEBAIC0y
NjAsMTUgKzI2NSwyMSBAQCBzdGF0aWMgaW50IGV1c2IyX3JlcGVhdGVyX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAoIXJwdHItPmNmZykKPiAgCQlyZXR1cm4gLUVJ
TlZBTDsKPiAgCj4gLQlycHRyLT5yZWdtYXAgPSBkZXZfZ2V0X3JlZ21hcChkZXYtPnBhcmVudCwg
TlVMTCk7Cj4gLQlpZiAoIXJwdHItPnJlZ21hcCkKPiArCXNwYXJlbnQgPSBzcG1pX2dldF9wYXJl
bnRfc3BtaV9kZXZpY2UoZGV2LT5wYXJlbnQpOwo+ICsJaWYgKCFzcGFyZW50KQo+ICAJCXJldHVy
biAtRU5PREVWOwoKW1NldmVyaXR5OiBIaWdoXQpXaWxsIHRoaXMgY2F1c2UgdGhlIHByb2JlIHRv
IHVuY29uZGl0aW9uYWxseSBmYWlsIHdpdGggLUVOT0RFVj8KClNpbmNlIGRldiBjb3JyZXNwb25k
cyB0byB0aGUgcGxhdGZvcm0gZGV2aWNlICh0aGUgU1BNSSBzdWItZGV2aWNlKSwgYW5kCmRldi0+
cGFyZW50IGlzIHRoZSBQTUlDICh0aGUgYWN0dWFsIFNQTUkgZGV2aWNlKSwgcGFzc2luZyBkZXYt
PnBhcmVudCB0bwpzcG1pX2dldF9wYXJlbnRfc3BtaV9kZXZpY2UoKSBtYWtlcyBpdCBldmFsdWF0
ZSB0aGUgZ3JhbmRwYXJlbnQgb2YgdGhlCnN1Yi1kZXZpY2UsIHdoaWNoIGlzIHRoZSBTUE1JIGNv
bnRyb2xsZXIuCgpCZWNhdXNlIHRoZSBjb250cm9sbGVyJ3MgdHlwZSBpcyBzcG1pX2N0cmxfdHlw
ZSwgdGhlIGludGVybmFsIGNoZWNrIGZvcgpwYXJlbnQtPnR5cGUgPT0gJnNwbWlfZGV2X3R5cGUg
d2lsbCBmYWlsLCByZXR1cm5pbmcgTlVMTC4gCgpTaG91bGQgdGhpcyBwYXNzIGRldiBpbnN0ZWFk
IG9mIGRldi0+cGFyZW50PwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDcwNzEwMTgyMS4xNzMzMTktMS1hbmdlbG9naW9hY2NoaW5v
LmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD05CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
