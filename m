Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1F03C53200
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 06:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CRINY23Ug/D0sLZ++m7aaWX6ka4UFNzfCzmvrKyv28=; b=qE/czBYew199hC
	Y9knCNMjIDp7ReZKgbd0BHRplfi/qvmoyophDsouCdnljI1qnpFuUeUBVUtFKdc0g2/jaWXf99Vol
	QZMyWMSrPefg58fr5dtEFYkXMdaBbPGtRtYBTe3Gd+Eu5W3i2+gMVSXphdjuP/FkH7I5AjZdbkBHY
	CB32i1xSDeaLHJF5/rNzImrtd0PKxQ8PK97PTfpJmKVZpBNpom+x8gUv+VuzXagCA7l6v1/4HDqZk
	wohyhuO5EVWdQa5MdKo+bl/XPQy2BVQj7pUFQ7XFVstgrkXUcOso5Dowd4onMjchrnRm3CEyq0Jlx
	Mu3tP8XIE21madchvaGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woy4l-000000073uB-0Kd9;
	Wed, 29 Jul 2026 06:47:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woy4j-000000073tq-2BZK
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 06:47:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id F104960A5E;
	Wed, 29 Jul 2026 06:47:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B8F41F000E9;
	Wed, 29 Jul 2026 06:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785307652;
	bh=kzvLLWQWWWYvpjpHQI8WPcq5zaOYMxZaJrIgJ7DIBas=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=U7PSJc0d/xznvHYkV6sIKoa/hl/GVCYQbGiwZTPklfYvaqbkjUt/gfA7euh8zT+L3
	 6mzAAIBD0F3nAuQBh02RJCO0d1mBVSN+a0wO5JFwzf/k3b6vaLncEY0btcQbc3G0wT
	 5RGfGq2atqel+iUpRE2wXcHno641LFCLlaeBG2ci5D3+OlnKEJl4YVGr1iBw4ZDnqL
	 q5/nO7J5lM50r1nkW5PAKwdNkxWKMp25fOzsMYA7cjz7y+qO9xkGXakk6y7CqlGasK
	 wU5plAVqC/YBGuZ3VKsK3dE71PxiCwgbrJS2N3CzOVSS4rXh/yI3x/N6Kyq5SCXg8x
	 cFZ3JQCCN/yrA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/6] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: neil.armstrong@linaro.org, imx@lists.linux.dev, vkoul@kernel.org, Frank.Li@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260729-imx8mp-usb-phy-improvement-v7-1-c385ee40ade6@nxp.com>
References: <20260729-imx8mp-usb-phy-improvement-v7-0-c385ee40ade6@nxp.com>
 <20260729-imx8mp-usb-phy-improvement-v7-1-c385ee40ade6@nxp.com>
Date: Wed, 29 Jul 2026 06:47:31 +0000
Message-Id: <20260729064732.4B8F41F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBBIHJhY2UgY29uZGl0aW9uIGR1cmluZyBwcm9iZSBhbGxvd3MgYGlteF9waHktPnRj
YWAgdG8gYmUgZGVyZWZlcmVuY2VkIGJ5IGEgVHlwZS1DIGNvbnN1bWVyIGJlZm9yZSBpdCBpcyBh
Y3R1YWxseSBhc3NpZ25lZCwgbGVhZGluZyB0byBhIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4K
LSBbSGlnaF0gSWYgdGhlIFBIWSBkZXZpY2UgaXMgdW5ib3VuZCB2aWEgc3lzZnMsIGRldm0tbWFu
YWdlZCBzdHJ1Y3R1cmVzIGFyZSBmcmVlZCB3aGlsZSBUeXBlLUMgY29uc3VtZXJzIG1pZ2h0IHN0
aWxsIGhvbGQgcmVmZXJlbmNlcyB0byB0aGUgc3dpdGNoLCBsZWFkaW5nIHRvIGEgVXNlLUFmdGVy
LUZyZWUuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFUQ0ggdjcgMS82XSBwaHk6IGZzbC1pbXg4bXEt
dXNiOiBmaXggdHlwZWMgc3dpdGNoIGxlYWsgb24gcHJvYmUgZXJyb3IgcGF0aCAtLS0KY29tbWl0
IGJkZmI1N2M5N2QwMWM2Y2UzYzkyZTM4OGY1YTZjZjMzNDAxZjBkNTMKQXV0aG9yOiBGZWxpeCBH
dSA8dXN0Yy5ndUBnbWFpbC5jb20+CgpwaHk6IGZzbC1pbXg4bXEtdXNiOiBmaXggdHlwZWMgc3dp
dGNoIGxlYWsgb24gcHJvYmUgZXJyb3IgcGF0aAoKVGhpcyBjb21taXQgZml4ZXMgYSB0eXBlYyBz
d2l0Y2ggbGVhayB0aGF0IG9jY3VycyBvbiB0aGUgcHJvYmUgZXJyb3IgcGF0aC4KSXQgdHJhbnNp
dGlvbnMgdGhlIGNsZWFudXAgbWVjaGFuaXNtIHRvIHVzZSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVz
ZXQoKSwKZW5zdXJpbmcgdGhlIHN3aXRjaCBpcyBwcm9wZXJseSB1bnJlZ2lzdGVyZWQgb24gYm90
aCBwcm9iZSBmYWlsdXJlIGFuZApkcml2ZXIgcmVtb3ZhbC4gVGhlIG1hbnVhbCBpbXg5NV91c2Jf
cGh5X3B1dF90Y2EoKSBjbGVhbnVwIGlzIGNvbXBsZXRlbHkKcmVtb3ZlZC4KCkNjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5
LWZzbC1pbXg4bXEtdXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEt
dXNiLmMKPiBpbmRleCBiMDVkODBlODQ5YTE0Li45YTMzYzA2ZDZmYzM5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwpbIC4uLiBdCj4gQEAgLTI2Niwx
NyArMjY3LDExIEBAIHN0YXRpYyBzdHJ1Y3QgdGNhX2JsayAqaW14OTVfdXNiX3BoeV9nZXRfdGNh
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gIAl0Y2EtPm9yaWVudGF0aW9uID0gVFlQ
RUNfT1JJRU5UQVRJT05fTk9STUFMOwo+ICAJdGNhLT5zdyA9IHRjYV9ibGtfZ2V0X3R5cGVjX3N3
aXRjaChwZGV2LCBpbXhfcGh5KTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlz
dGluZyBpc3N1ZSwgYnV0IGRvZXMgdGhpcyBjcmVhdGUgYSByYWNlIGNvbmRpdGlvbiB3aGVyZQpp
bXhfcGh5LT50Y2EgaXMgZGVyZWZlcmVuY2VkIGJlZm9yZSBpdCBpcyBhc3NpZ25lZD8KCldoZW4g
dGNhX2Jsa19nZXRfdHlwZWNfc3dpdGNoKCkgY2FsbHMgdHlwZWNfc3dpdGNoX3JlZ2lzdGVyKCks
IHRoZSBzd2l0Y2gKZGV2aWNlIGlzIGltbWVkaWF0ZWx5IGV4cG9zZWQgdG8gdGhlIHN5c3RlbS4g
QSBUeXBlLUMgcG9ydCBjb250cm9sbGVyIGNvdWxkCmRpc2NvdmVyIGl0IGFuZCBjYWxsIHR5cGVj
X3N3aXRjaF9zZXQoKSwgd2hpY2ggdHJpZ2dlcnMKdGNhX2Jsa190eXBlY19zd2l0Y2hfc2V0KCku
CgpUaGF0IGNhbGxiYWNrIHJlYWRzIGlteF9waHktPnRjYToKCnRjYV9ibGtfdHlwZWNfc3dpdGNo
X3NldCgpIHsKICAgIC4uLgogICAgc3RydWN0IHRjYV9ibGsgKnRjYSA9IGlteF9waHktPnRjYTsK
CiAgICBpZiAodGNhLT5vcmllbnRhdGlvbiA9PSBvcmllbnRhdGlvbikKICAgIC4uLgp9CgpIb3dl
dmVyLCBpbXhfcGh5LT50Y2EgaXMgbm90IGFzc2lnbmVkIHVudGlsIGlteDk1X3VzYl9waHlfZ2V0
X3RjYSgpCmNvbXBsZXRlcyBhbmQgcmV0dXJucyB0byB0aGUgcHJvYmUgZnVuY3Rpb24sIGxlYXZp
bmcgYSB3aW5kb3cgd2hlcmUgdGhlCmNhbGxiYWNrIG1pZ2h0IGRlcmVmZXJlbmNlIGEgTlVMTCBw
b2ludGVyLgoKPiAtCXJldHVybiB0Y2E7Cj4gLX0KPiAtCj4gLXN0YXRpYyB2b2lkIGlteDk1X3Vz
Yl9waHlfcHV0X3RjYShzdHJ1Y3QgaW14OG1xX3VzYl9waHkgKmlteF9waHkpCj4gLXsKPiAtCXN0
cnVjdCB0Y2FfYmxrICp0Y2EgPSBpbXhfcGh5LT50Y2E7Cj4gLQo+IC0JaWYgKCF0Y2EpCj4gLQkJ
cmV0dXJuOwo+ICsJcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCZwZGV2LT5kZXYsIHRj
YV9ibGtfcHV0X3R5cGVjX3N3aXRjaCwgdGNhLT5zdyk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVy
biBFUlJfUFRSKHJldCk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXNuJ3QgYSBidWcgaW50cm9k
dWNlZCBieSB0aGlzIHBhdGNoLCBidXQgZG9lcyByZWx5aW5nIG9uIGRldm0KYWxsb2NhdGlvbiBm
b3IgaW14X3BoeSBhbmQgdGNhIGxlYWQgdG8gYSB1c2UtYWZ0ZXItZnJlZSBpZiB0aGUgZGV2aWNl
IGlzCnVuYm91bmQ/CgpXaGVuIHRoZSBQSFkgZGV2aWNlIGlzIHVuYm91bmQgdmlhIHN5c2ZzLCBk
ZXZyZXMgYXV0b21hdGljYWxseSBmcmVlcyB0aGUKaW14X3BoeSBhbmQgdGNhIHN0cnVjdHVyZXMu
IEFsdGhvdWdoIHR5cGVjX3N3aXRjaF91bnJlZ2lzdGVyKCkgcmVtb3ZlcyB0aGUKc3dpdGNoIGZy
b20gdGhlIHN5c3RlbSwgVHlwZS1DIGNvbnN1bWVycyB0aGF0IGFscmVhZHkgYWNxdWlyZWQgcmVm
ZXJlbmNlcwooaG9sZGluZyBhIGtyZWYgdmlhIHR5cGVjX3N3aXRjaF9nZXQoKSkgY2FuIHN0aWxs
IGludm9rZSB0aGUgc3dpdGNoCmNhbGxiYWNrLgoKSWYgYSBjb25zdW1lciBjYWxscyB0eXBlY19z
d2l0Y2hfc2V0KCkgYWZ0ZXIgdW5iaW5kLCBpdCB3aWxsIHRyaWdnZXIKdGNhX2Jsa190eXBlY19z
d2l0Y2hfc2V0KCksIHdoaWNoIGFjY2Vzc2VzIHRoZSBmcmVlZCBtZW1vcnk6Cgp0Y2FfYmxrX3R5
cGVjX3N3aXRjaF9zZXQoKSB7CiAgICBzdHJ1Y3QgaW14OG1xX3VzYl9waHkgKmlteF9waHkgPSB0
eXBlY19zd2l0Y2hfZ2V0X2RydmRhdGEoc3cpOwogICAgc3RydWN0IHRjYV9ibGsgKnRjYSA9IGlt
eF9waHktPnRjYTsKICAgIC4uLgp9Cgo+IC0JdGNhX2Jsa19wdXRfdHlwZWNfc3dpdGNoKHRjYS0+
c3cpOwo+ICB9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNzI5LWlteDhtcC11c2ItcGh5LWltcHJvdmVtZW50LXY3LTAtYzM4NWVl
NDBhZGU2QG54cC5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
