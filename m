Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EB5BC61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 15:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4hPtDvcCWjEbIwcQbcSQq87vhEhHVzTWcBAefrB9LA=; b=lmkFnXp9IaWEh2
	tc+oylrKfjRjL0/qmrVBu3ocVa2hcthxi3NdSzYwtBlYN1hhBgBJC3R+zT5LEQOh/Smp1dA9qQqi4
	4Ndw/qjMMO8R95Vqy8oZCvwVaaxBgMKL+sEoqHK1ZKNejLgz77K2mWqBJ+gXm++KQnQN7aPHcditl
	N9GeiKmBPfU667wbs8QcZlL8JamsMdnH2vyT32pp/PI4uqUXBhZmxv8+NiANQGEnyUeP+Hi83e5Bi
	BZNDsSvzKsJM69faNQsb1UuyEV5TupCCXrr0H6PHB1BEsbp/dnLujwzSA1xTw3JuDCotqox4FRnpO
	rsTtfCwjkFKuWcun7Fqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QtT-0000000CbiX-1Shf;
	Tue, 01 Sep 2026 15:59:27 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QtS-0000000CbiE-0jIK
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 15:59:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 824C943588;
	Tue,  1 Sep 2026 15:59:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08F9D1F000E9;
	Tue,  1 Sep 2026 15:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788278365;
	bh=iGBf8TyscxcHunYRJOHUVhrx6LQnH+hAUFAZp0UWao0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P7cOKILJ7jbmoo69Y87XRF93iNi/blbN33QK3bPL0Pa4MUTtgkg6eMeBLslTbWaGP
	 hCb9fGbd7zFEGR/Rbq1XfKPzfP6pccMLdyYatKSrosAlFI2PzJs8u7mJuWx5A4tl/o
	 bnW3hh/9Pjuh3r/8uBUxfjBnVlqsZeESwnqMbPH/mk1hY6bK7Tue/ecVkHMgk3lHn1
	 zC2m6u+ynl4JkAyDfUFVjXqP195jutojkEQCdA/NJl6AMqp6YcmT9ofQaiMbaz4VHm
	 lednBKQnlTt1VvAR+9LAGkSSR9aQutRAd897bAsMI1Ao43Q5CwjlNF956Eb70Bizsd
	 ziJE4p2XBC+9g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 07/24] scsi: ufs: mediatek: Rework 0.9V regulator
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-scsi@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260901-mt8196-ufs-v11-7-dbd007704490@collabora.com>
References: <20260901-mt8196-ufs-v11-0-dbd007704490@collabora.com>
 <20260901-mt8196-ufs-v11-7-dbd007704490@collabora.com>
Date: Tue, 01 Sep 2026 15:59:24 +0000
Message-Id: <20260901155925.08F9D1F000E9@smtp.kernel.org>
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
IFtIaWdoXSBTdGF0ZSBkZXN5bmNocm9uaXphdGlvbiBhbmQgbWlzc2luZyBlcnJvciBoYW5kbGlu
ZyBpbiBgdWZzX210a19tcGh5X3Bvd2VyX29uYCBjYW4gcGVybWFuZW50bHkgYnJlYWsgUEhZIHBv
d2VyIHN0YXRlLgotLQoKY29tbWl0IDJiOWM1NzQ2MDNkY2I2OTUyZThhOTNlMjQyYTA5ZWQzMGZi
NDg4YmYKQXV0aG9yOiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xs
YWJvcmEuY29tPgoKc2NzaTogdWZzOiBtZWRpYXRlazogUmV3b3JrIDAuOVYgcmVndWxhdG9yCiAg
ICAKVGhlIG1lZGlhdGVrIFVGUyBob3N0IGRyaXZlciBkb2VzIHNvbWUgcHJldHR5IGJhZCBzdHVm
ZiB3aXRoIHJlZ2FyZHMgdG8KdGhlIDAuOVYgcmVndWxhdG9yLiBJbnN0ZWFkIG9mIGp1c3QgY2hl
Y2tpbmcgZm9yIHRoZSBwcmVzZW5jZSBvZiB0aGUKcmVndWxhdG9yLCBpdCBhZGRzIGEgY2FwIGlm
IGl0J3MgdGhlcmUsIGFuZCB0aGVuIGNoZWNrcyBmb3IgdGhlIGNhcC4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvdWZzL2hvc3QvdWZzLW1lZGlhdGVrLmMgYi9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1t
ZWRpYXRlay5jCj4gaW5kZXggODBjNmJhM2QwMjZkMi4uZWI3YTBjYzQ2NGY0MyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jCj4gKysrIGIvZHJpdmVycy91ZnMv
aG9zdC91ZnMtbWVkaWF0ZWsuYwpbIC4uLiBdCj4gQEAgLTUwOCw0NCArNTEwLDcwIEBAIHN0YXRp
YyBpbnQgdWZzX210a193YWl0X2xpbmtfc3RhdGUoc3RydWN0IHVmc19oYmEgKmhiYSwgdTMyIHN0
YXRlLAo+ICBzdGF0aWMgaW50IHVmc19tdGtfbXBoeV9wb3dlcl9vbihzdHJ1Y3QgdWZzX2hiYSAq
aGJhLCBib29sIG9uKQo+ICB7Cj4gIAlzdHJ1Y3QgdWZzX210a19ob3N0ICpob3N0ID0gdWZzaGNk
X2dldF92YXJpYW50KGhiYSk7Cj4gIAlzdHJ1Y3QgcGh5ICptcGh5ID0gaG9zdC0+bXBoeTsKPiAt
CXN0cnVjdCBhcm1fc21jY2NfcmVzIHJlczsKPiAtCWludCByZXQgPSAwOwo+ICsJaW50IHJldDsK
PiAgCj4gLQlpZiAoIW1waHkgfHwgIShvbiBeIGhvc3QtPm1waHlfcG93ZXJlZF9vbikpCj4gKwlp
ZiAoIW1waHkgfHwgb24gPT0gaG9zdC0+bXBoeV9wb3dlcmVkX29uKQo+ICAJCXJldHVybiAwOwo+
ICAKPiAgCWlmIChvbikgewo+IC0JCWlmICh1ZnNfbXRrX2lzX3ZhMDlfc3VwcG9ydGVkKGhiYSkp
IHsKPiAtCQkJcmV0ID0gcmVndWxhdG9yX2VuYWJsZShob3N0LT5yZWdfdmEwOSk7Cj4gLQkJCWlm
IChyZXQgPCAwKQo+IC0JCQkJZ290byBvdXQ7Cj4gLQkJCS8qIHdhaXQgMjAwIHVzIHRvIHN0YWJs
aXplIFZBMDkgKi8KPiAtCQkJdXNsZWVwX3JhbmdlKDIwMCwgMjEwKTsKPiAtCQkJdWZzX210a192
YTA5X3B3cl9jdHJsKHJlcywgMSk7Cj4gLQkJfQo+ICsJCXJldCA9IHVmc19tdGtfMDl2X29uKGhv
c3QpOwo+ICsJCWlmIChyZXQpCj4gKwkJCXJldHVybiByZXQ7Cj4gIAkJcGh5X3Bvd2VyX29uKG1w
aHkpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzbid0IGEgYnVnIGludHJvZHVjZWQgYnkgdGhp
cyBwYXRjaCwgYnV0IGRvZXMgaWdub3JpbmcgdGhlIHJldHVybiB2YWx1ZQpvZiBwaHlfcG93ZXJf
b24oKSByaXNrIGRlc3luY2hyb25pemluZyB0aGUgcG93ZXIgc3RhdGU/CgpJZiBwaHlfcG93ZXJf
b24oKSBmYWlscyAoZm9yIGV4YW1wbGUsIGlmIGEgY2xvY2sgZW5hYmxlIGZhaWxzIGluIHRoZQp1
bmRlcmx5aW5nIGltcGxlbWVudGF0aW9uKSwgdGhpcyBmdW5jdGlvbiB3aWxsIHN0aWxsIHJldHVy
biBzdWNjZXNzIGFuZCB1cGRhdGUKaG9zdC0+bXBoeV9wb3dlcmVkX29uID0gdHJ1ZS4gVGhpcyBj
b3VsZCBjYXVzZSBzdWJzZXF1ZW50IFVGUyBvcGVyYXRpb25zIHRvCmhhbmcgb3IgdHJpZ2dlciBh
IHN5bmNocm9ub3VzIGV4dGVybmFsIGFib3J0IHdoZW4gYWNjZXNzaW5nIHVuY2xvY2tlZCBQSFkK
cmVnaXN0ZXJzLgoKPiAgCX0gZWxzZSB7Cj4gIAkJcGh5X3Bvd2VyX29mZihtcGh5KTsKPiAtCQlp
ZiAodWZzX210a19pc192YTA5X3N1cHBvcnRlZChoYmEpKSB7Cj4gLQkJCXVmc19tdGtfdmEwOV9w
d3JfY3RybChyZXMsIDApOwo+IC0JCQlyZXQgPSByZWd1bGF0b3JfZGlzYWJsZShob3N0LT5yZWdf
dmEwOSk7Cj4gLQkJfQo+IC0JfQo+IC1vdXQ6Cj4gLQlpZiAocmV0KSB7Cj4gLQkJZGV2X2luZm8o
aGJhLT5kZXYsCj4gLQkJCSAiZmFpbGVkIHRvICVzIHZhMDk6ICVkXG4iLAo+IC0JCQkgb24gPyAi
ZW5hYmxlIiA6ICJkaXNhYmxlIiwKPiAtCQkJIHJldCk7Cj4gLQl9IGVsc2Ugewo+IC0JCWhvc3Qt
Pm1waHlfcG93ZXJlZF9vbiA9IG9uOwo+ICsJCXJldCA9IHVmc19tdGtfMDl2X29mZihob3N0KTsK
PiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0OwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlz
IGEgcHJlLWV4aXN0aW5nIGlzc3VlLCBidXQgaWYgdWZzX210a18wOXZfb2ZmKCkgZmFpbHMgaGVy
ZSwgdGhlCmZ1bmN0aW9uIGV4aXRzIGVhcmx5IGFuZCBsZWF2ZXMgaG9zdC0+bXBoeV9wb3dlcmVk
X29uIGluY29ycmVjdGx5IHNldCB0byB0cnVlLgoKQmVjYXVzZSBwaHlfcG93ZXJfb2ZmKCkgd2Fz
IGFscmVhZHkgY2FsbGVkLCB0aGUgUEhZIGlzIHBoeXNpY2FsbHkgc2h1dCBkb3duLgpXaGVuIGF0
dGVtcHRpbmcgdG8gcG93ZXIgdGhlIFBIWSBvbiBhZ2FpbiwgdGhlIGNoZWNrCihvbiA9PSBob3N0
LT5tcGh5X3Bvd2VyZWRfb24pIGF0IHRoZSBzdGFydCBvZiB1ZnNfbXRrX21waHlfcG93ZXJfb24o
KSB3aWxsCmV2YWx1YXRlIHRvIHRydWUgYW5kIGJ5cGFzcyB0aGUgcG93ZXItb24gc2VxdWVuY2Ug
ZW50aXJlbHksIGxlYXZpbmcgdGhlIFBIWQpwZXJtYW5lbnRseSB1bmluaXRpYWxpemVkLgoKQ291
bGQgd2UgbWFrZSBzdXJlIGhvc3QtPm1waHlfcG93ZXJlZF9vbiByZW1haW5zIGNvbnNpc3RlbnQg
ZXZlbiBvbiBlYXJseQpleGl0cz8KCj4gIAl9Cj4gIAo+IC0JcmV0dXJuIHJldDsKPiArCWhvc3Qt
Pm1waHlfcG93ZXJlZF9vbiA9IG9uOwo+ICsKPiArCXJldHVybiAwOwo+ICB9CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwOTAxLW10
ODE5Ni11ZnMtdjExLTAtZGJkMDA3NzA0NDkwQGNvbGxhYm9yYS5jb20/cGFydD03CgotLSAKbGlu
dXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
