Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91604C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 11:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TkyCYU9IaBMx/bpadng4f9AuaZoO0Rd81ceHRbZE3j8=; b=ZdVKH2hooID9dY
	OqMrTj5XdBBsRm+qyXVvXlbtjrO+qVu0Hl3zeYLwUNRXsYVxXueBjNtICRerHW5hsn72AVSQwHRJc
	1KVD9gdp5+a5W7wkzWpfQzq7OfWq18g3E2jxfxmV++1qIGlxFmdO2rf5mqh/6oSnauTgLg9/7UPoA
	DiQQpYP/v3F61iYmjElJLEBWdGSRL4iiSO9kDY9hscobC+G6Ev9Pfvs7SPxGHMEdJT5VqPQ0uZDMN
	/vc3dvUKeI1ck2n+1ZzyHi2HXHwZ03d9Al6fRavyk4I0sNU7RfOvzmGnP8rEZ3Zx1gU97Cw83oZSx
	BcYFrH14jzD20eyOilEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3uy-0000000EqXm-3Lf1;
	Tue, 07 Jul 2026 11:24:49 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh3ux-0000000EqXd-1FyN
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 11:24:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B73A043A98;
	Tue,  7 Jul 2026 11:24:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B1401F000E9;
	Tue,  7 Jul 2026 11:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783423486;
	bh=Hmy6WQsZHmXQAWAVZToqlODESLN0QOVrr4B9sc+e6zw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cKxNb5WvllJ6Mlk3iky3DvrtbhLp291Fh+EbBzpQSif/s52Pt8Aves9wjn8E9lNSK
	 GSjRICVYSfW74VcPq8plgQTdl71QrPSlPdxOQGPdzITZ2I9yMXUIDtXN/F7mQnmQTH
	 RwCK5FtAJ95VwAMZSay/hlMrBMQqIEmZi5PiO3zpgPGkPfdwGVjFvWj6Kl36yoAp8C
	 SGfSGqKyzeF0zaV4YBO8hC0r6spR6kSn/CA7zdydHvYIidbpkqwpe74FkDkJ8f2qdh
	 d96RGFGP5JKOFxcziPobqAWgLfsOtuPXBg16Nbdhw0Y46nv/vTSmYqz7oHQIIFyfWa
	 zYPduV1N2HKKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 11/12] iio: adc: qcom-spmi-iadc: Migrate to
 devm_spmi_subdevice_alloc_and_add()
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260707101821.173319-12-angelogioacchino.delregno@collabora.com>
References: <20260707101821.173319-1-angelogioacchino.delregno@collabora.com>
 <20260707101821.173319-12-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 11:24:45 +0000
Message-Id: <20260707112446.4B1401F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuY29uZGl0aW9uYWwg
cHJvYmUgZmFpbHVyZSBkdWUgdG8gYW4gaW5jb3JyZWN0IGFyZ3VtZW50IHBhc3NlZCB0byBgc3Bt
aV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKClgLgotLQoKLS0tIFBhdGNoIFsxMV06IFtQQVRDSCB2
MTEgMTEvMTJdIGlpbzogYWRjOiBxY29tLXNwbWktaWFkYzogTWlncmF0ZSB0byBkZXZtX3NwbWlf
c3ViZGV2aWNlX2FsbG9jX2FuZF9hZGQoKSAtLS0KY29tbWl0IGE2NTEzOGMzMjM0NTQ5MjVlNzIy
ZjRkODc4MjE0OWE0NWI2NWYyMjcKQXV0aG9yOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8
YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgoKICAgIGlpbzogYWRjOiBx
Y29tLXNwbWktaWFkYzogTWlncmF0ZSB0byBkZXZtX3NwbWlfc3ViZGV2aWNlX2FsbG9jX2FuZF9h
ZGQoKQoKVGhpcyBjb21taXQgbWlncmF0ZXMgdGhlIFF1YWxjb21tIFNQTUkgSUFEQyBkcml2ZXIg
dG8gdXNlCmRldm1fc3BtaV9zdWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIHRvIHJlZ2lzdGVyIGFu
IFNQTUkgc3ViLWRldmljZS4KSW5zdGVhZCBvZiB0cmVhdGluZyB0aGUgcGFyZW50IFBNSUMgYXMg
YSBzeXNjb24sIGl0IGluaXRpYWxpemVzIGl0cyBvd24KcmVnbWFwIHdpdGggdGhlIHN1Yi1kZXZp
Y2UncyBzcGVjaWZpYyBiYXNlIGFkZHJlc3MsIGFsbG93aW5nIHRoZSByZWdtYXAKQVBJIHRvIGhh
bmRsZSByZWdpc3RlciBiYXNlIG9mZnNldHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9h
ZGMvcWNvbS1zcG1pLWlhZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9xY29tLXNwbWktaWFkYy5jCj4g
aW5kZXggMGVjM2EwYzRiMWRlMC4uNzEwNDljZGMyNzY1MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2lpby9hZGMvcWNvbS1zcG1pLWlhZGMuYwo+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9xY29tLXNw
bWktaWFkYy5jCgpbIC4uLiBdCgo+IEBAIC01MDIsMTggKzUwOCwyNCBAQCBzdGF0aWMgaW50IGlh
ZGNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlhZGMgPSBpaW9fcHJp
dihpbmRpb19kZXYpOwo+ICAJaWFkYy0+ZGV2ID0gZGV2Owo+ICAKPiAtCWlhZGMtPnJlZ21hcCA9
IGRldl9nZXRfcmVnbWFwKGRldi0+cGFyZW50LCBOVUxMKTsKPiAtCWlmICghaWFkYy0+cmVnbWFw
KQo+ICsJc3BhcmVudCA9IHNwbWlfZ2V0X3BhcmVudF9zcG1pX2RldmljZShkZXYtPnBhcmVudCk7
CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBjb2RlIGluYWR2ZXJ0ZW50bHkgcGFzcyB0aGUg
d3JvbmcgYXJndW1lbnQgdG8Kc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKCk/CgpMb29raW5n
IGF0IHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBzcG1pX2dldF9wYXJlbnRfc3BtaV9kZXZpY2UoKToK
CnN0cnVjdCBzcG1pX2RldmljZSAqc3BtaV9nZXRfcGFyZW50X3NwbWlfZGV2aWNlKHN0cnVjdCBk
ZXZpY2UgKmRldikKewoJc3RydWN0IGRldmljZSAqcGFyZW50OwoKCWlmIChkZXYgJiYgZGV2LT5w
YXJlbnQpIHsKCQlwYXJlbnQgPSBkZXYtPnBhcmVudDsKCgkJaWYgKHBhcmVudC0+dHlwZSA9PSAm
c3BtaV9kZXZfdHlwZSkKCQkJcmV0dXJuIHRvX3NwbWlfZGV2aWNlKHBhcmVudCk7Cgl9CglyZXR1
cm4gTlVMTDsKfQoKSWYgd2UgcGFzcyBkZXYtPnBhcmVudCwgdGhlIGhlbHBlciB3aWxsIGV2YWx1
YXRlIHRoZSBncmFuZHBhcmVudCdzIHR5cGUKaW5zdGVhZCBvZiB0aGUgcGFyZW50J3MuIFNpbmNl
IHRoZSBncmFuZHBhcmVudCBpcyB0aGUgU1BNSSBjb250cm9sbGVyCigmc3BtaV9jdHJsX3R5cGUp
LCB0aGlzIGNvbmRpdGlvbiB3aWxsIGZhaWwsIGNhdXNpbmcgc3BhcmVudCB0byBiZSBOVUxMCmFu
ZCBsZWFkaW5nIHRvIGFuIHVuY29uZGl0aW9uYWwgLUVOT0RFViBwcm9iZSBmYWlsdXJlLgoKU2hv
dWxkIHRoaXMgYmUgcGFzc2luZyBkZXYgaW5zdGVhZD8KCj4gKwlpZiAoIXNwYXJlbnQpCj4gIAkJ
cmV0dXJuIC1FTk9ERVY7Cj4gIAo+ICsJc3ViX3NkZXYgPSBkZXZtX3NwbWlfc3ViZGV2aWNlX2Fs
bG9jX2FuZF9hZGQoZGV2LCBzcGFyZW50KTsKPiArCWlmIChJU19FUlIoc3ViX3NkZXYpKQo+ICsJ
CXJldHVybiBQVFJfRVJSKHN1Yl9zZGV2KTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcxMDE4MjEuMTczMzE5LTEtYW5nZWxv
Z2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTEKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
