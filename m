Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEB87C982DA
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 05:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLjFra96Su9eDYI2IlX/QrtQrk2TZWWOb0JBLsaSjiw=; b=PAFlrYYdbyEXHB
	OrFgMbgrlt3731G3AdpjvmX/SsEtFF9TovmwAbsnYzLptiHLFftj3gdgCUAEqcPVmPSYMFqMCMlkx
	mXJfF4hvRDMGbdBImb5TbqnhYbqh+o5OW0w/pZU49XeEiRElckPf4j0eu8c7Nd1bENVufNe86OY/u
	xrUYBfKLKFroeqhWUreAHunuX1HFir1tGllWdBWl8mnD/73nUKwDff9ODUIrWa+29qsZ8TZc7k6aJ
	5JvpzRJN8g6mvxGJFpz2Hq9c90OvZr51MrXbrs8UY9LMZ+sFHSVyOYVTQ515WvS05LsyvbKm7ckeN
	DuzjrwiJ1BKmzXfgkt2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WtN-00000000xnV-1ojq;
	Mon, 21 Sep 2026 05:48:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8WtL-00000000xnK-2O4r
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 05:48:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5442143C18;
	Mon, 21 Sep 2026 05:48:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB7201F000FF;
	Mon, 21 Sep 2026 05:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789969719;
	bh=SA6nxX+JUVKT1zZ5uXHnnmcttjZ30G41Ui3mYtPxDNQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mD8a4zwpNKOOL/TtLZ1KMnWO7jrOcjYqqRoR0d4RN5tityLyMJegOSxaT/NxxMwQQ
	 wvCCK/G8TTfhnO/vISDi0FmotXUqPE78Z2xa948Q/uvey+n/hCAZMt71oDUju20tZz
	 txTcw0oyT4NL+JBFipTOVXSwP7XqP4OelZVqQHcdWWwrF3xQEyCnHmV4CVC20r+14g
	 HB0P0QekIB+y/okzKnby4Xo1cmUxKv77G78jHi8qoMj8+K+DUSHt470UKs3rhOkGam
	 7SzEy8WVeyOnZ8OP4AhEY3FBEt2fa7DSBTC54qlLXn2mQeqFb7+5zZbF4uFZp6jpet
	 a0ITtT6nhjpnA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-pcie: Refactor common multiphy
 handling
To: "Krishna Chaitanya Chundru" <krishna.chundru@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com
In-Reply-To: <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 05:48:38 +0000
Message-Id: <20260921054838.BB7201F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIGRldnJlczogVUFGIG9m
IHBhcmVudC1hbGxvY2F0ZWQgcW1wIGluIGNoaWxkJ3MgZGV2cmVzIGFjdGlvbgotLQoKY29tbWl0
IDk1OWNkODg4NWY3ZDk0ODI3MjAzY2ZiNGZhODliY2UyMjRmNzVmYjcKQXV0aG9yOiBLcmlzaG5h
IENoYWl0YW55YSBDaHVuZHJ1IDxrcmlzaG5hLmNodW5kcnVAb3NzLnF1YWxjb21tLmNvbT4KCnBo
eTogcWNvbTogcW1wLXBjaWU6IFJlZmFjdG9yIGNvbW1vbiBtdWx0aXBoeSBoYW5kbGluZwoKUmVm
YWN0b3JzIHRoZSBtdWx0aXBoeSBoYW5kbGluZyB0byByZXVzZSBwb3J0IHJlc291cmNlIGFycmF5
cyBhbmQgYXR0YWNoCnBvd2VyIGRvbWFpbnMgdG8gaW5kaXZpZHVhbCBQSFkgZGV2aWNlcyBpbnN0
ZWFkIG9mIHRoZSBwYXJlbnQgZGV2aWNlLiBJdAphbHNvIHZhbGlkYXRlcyB0aGUgY2xvY2stb3V0
cHV0LW5hbWVzIHByb3BlcnR5IGNvdW50LgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVh
bGNvbW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYyBiL2RyaXZlcnMvcGh5L3F1YWxjb21t
L3BoeS1xY29tLXFtcC1wY2llLW11bHRpcGh5LmMKPiAtLS0gYS9kcml2ZXJzL3BoeS9xdWFsY29t
bS9waHktcWNvbS1xbXAtcGNpZS1tdWx0aXBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNv
bW0vcGh5LXFjb20tcW1wLXBjaWUtbXVsdGlwaHkuYwpbIC4uLiBdCj4gQEAgLTM5OCw0NSArMzg2
LDM5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGh5X29wcyBxbXBfcGNpZV9waHlfb3BzID0gewo+
ICBzdGF0aWMgdm9pZCBxbXBfcGNpZV9wZF9kZXRhY2godm9pZCAqZGF0YSkKPiAgewo+ICAJc3Ry
dWN0IHFtcF9wY2llICpxbXAgPSBkYXRhOwo+IC0JY29uc3Qgc3RydWN0IHFtcF9waHlfY2ZnICpj
ZmcgPSBxbXAtPmNmZzsKPiAgCWludCBpOwo+ICAKPiAtCWZvciAoaSA9IDA7IGkgPCBjZmctPm51
bV9wZHM7IGkrKykgewo+ICsJZm9yIChpID0gMDsgaSA8IHFtcC0+Y2ZnLT5udW1fcGRzOyBpKysp
IHsKPiAgCQlpZiAoIUlTX0VSUl9PUl9OVUxMKHFtcC0+cGRfZGV2c1tpXSkpCj4gIAkJCWRldl9w
bV9kb21haW5fZGV0YWNoKHFtcC0+cGRfZGV2c1tpXSwgdHJ1ZSk7Cj4gIAl9Cj4gIH0KPiAgCj4g
LXN0YXRpYyBpbnQgcW1wX3BjaWVfcGRfaW5pdChzdHJ1Y3QgcW1wX3BjaWUgKnFtcCkKPiArc3Rh
dGljIGludCBxbXBfcGNpZV9wZF9pbml0KHN0cnVjdCBxbXBfcGNpZSAqcW1wLCBzdHJ1Y3QgcGh5
ICpwaHkpCj4gIHsKPiAgCWNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZyAqY2ZnID0gcW1wLT5jZmc7
Cj4gLQlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBxbXAtPmRldjsKPiArCXN0cnVjdCBkZXZpY2UgKnBk
X2RldiA9ICZwaHktPmRldjsKPiAgCWludCBpLCByZXQ7Cj4gIAo+ICAJaWYgKCFjZmctPm51bV9w
ZHMpCj4gIAkJcmV0dXJuIDA7Cj4gIAo+IC0JcW1wLT5wZF9kZXZzID0gZGV2bV9rY2FsbG9jKGRl
diwgY2ZnLT5udW1fcGRzLCBzaXplb2YoKnFtcC0+cGRfZGV2cyksCj4gKwlxbXAtPnBkX2RldnMg
PSBkZXZtX2tjYWxsb2MocGRfZGV2LCBjZmctPm51bV9wZHMsIHNpemVvZigqcW1wLT5wZF9kZXZz
KSwKPiAgCQkJCSAgICBHRlBfS0VSTkVMKTsKPiAgCWlmICghcW1wLT5wZF9kZXZzKQo+ICAJCXJl
dHVybiAtRU5PTUVNOwo+ICAKPiArCXJldCA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldChwZF9k
ZXYsIHFtcF9wY2llX3BkX2RldGFjaCwgcW1wKTsKCltTZXZlcml0eTogSGlnaF0KQ2FuIHRoaXMg
Y29kZSBpbnRyb2R1Y2UgYSB1c2UtYWZ0ZXItZnJlZSByZWdyZXNzaW9uIGR1cmluZyBkZXZpY2Ug
dW5iaW5kPwoKVGhlIHFtcCBzdHJ1Y3R1cmUgaXMgYWxsb2NhdGVkIHZpYSBkZXZtX2tjYWxsb2Mo
KSBhbmQgdGllZCB0byB0aGUgcGFyZW50CnBsYXRmb3JtIGRldmljZSdzIGRldnJlcyAocW1wLT5k
ZXYpIGluIHFtcF9wY2llX211bHRpcGh5X3Byb2JlKCkuCkhvd2V2ZXIsIHRoZSBjbGVhbnVwIGFj
dGlvbiBxbXBfcGNpZV9wZF9kZXRhY2goKSBpcyBub3cgYWRkZWQgdG8gdGhlIGNoaWxkClBIWSBk
ZXZpY2UncyBkZXZyZXMgKHBkX2RldiA9ICZwaHktPmRldikuCgpJZiB0aGUgcGFyZW50IGRldmlj
ZSBpcyB1bmJvdW5kIHdoaWxlIGEgY29uc3VtZXIgaG9sZHMgYSByZWZlcmVuY2UgdG8gdGhlClBI
WSAoZS5nLiwgdmlhIHBoeV9nZXQoKSksIHRoZSBwYXJlbnQncyBkZXZyZXMgZXhlY3V0ZXMgZmly
c3QgYW5kIGZyZWVzCnRoZSBxbXAgYXJyYXkuCgpXaGVuIHRoZSBjb25zdW1lciBsYXRlciByZWxl
YXNlcyB0aGUgUEhZLCB0aGUgY2hpbGQgUEhZIGRldmljZSdzIGRldnJlcwpleGVjdXRlcywgY2Fs
bGluZyBxbXBfcGNpZV9wZF9kZXRhY2goKSBvbiB0aGUgYWxyZWFkeSBmcmVlZCBxbXAgcG9pbnRl
ci4KVGhpcyB3b3VsZCBsZWFkIHRvIGEgdXNlLWFmdGVyLWZyZWUgd2hlbiBhY2Nlc3NpbmcgcW1w
LT5jZmctPm51bV9wZHMuCgo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiAgCWZv
ciAoaSA9IDA7IGkgPCBjZmctPm51bV9wZHM7IGkrKykgewo+IC0JCXFtcC0+cGRfZGV2c1tpXSA9
IGRldl9wbV9kb21haW5fYXR0YWNoX2J5X25hbWUoZGV2LAo+IC0JCQkJCQkJICAgICAgIGNmZy0+
cGRfbmFtZXNbaV0pOwo+IC0JCWlmIChJU19FUlJfT1JfTlVMTChxbXAtPnBkX2RldnNbaV0pKSB7
Cj4gLQkJCXJldCA9IFBUUl9FUlIocW1wLT5wZF9kZXZzW2ldKSA/IDogLUVOT0RBVEE7Cj4gLQkJ
CWdvdG8gZXJyX2RldGFjaDsKPiAtCQl9Cj4gKwkJcW1wLT5wZF9kZXZzW2ldID0gZGV2X3BtX2Rv
bWFpbl9hdHRhY2hfYnlfbmFtZShwZF9kZXYsIGNmZy0+cGRfbmFtZXNbaV0pOwo+ICsJCWlmIChJ
U19FUlJfT1JfTlVMTChxbXAtPnBkX2RldnNbaV0pKQo+ICsJCQlyZXR1cm4gUFRSX0VSUl9PUl9a
RVJPKHFtcC0+cGRfZGV2c1tpXSkgPyA6IC1FTk9EQVRBOwo+ICAJfQo+ICAKPiAtCXJldHVybiBk
ZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoZGV2LCBxbXBfcGNpZV9wZF9kZXRhY2gsIHFtcCk7Cj4g
LQo+IC1lcnJfZGV0YWNoOgo+IC0Jd2hpbGUgKC0taSA+PSAwKQo+IC0JCWRldl9wbV9kb21haW5f
ZGV0YWNoKHFtcC0+cGRfZGV2c1tpXSwgZmFsc2UpOwo+IC0KPiAtCXJldHVybiByZXQ7Cj4gKwly
ZXR1cm4gMDsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MDkyMS1ub3JkLXY0LTAtZWQwNWM2ZTA5MjQwQG9zcy5xdWFsY29t
bS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1waHkK
