Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 704F1CD4846
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 01:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOjE0W2luRBl/ExEbNsPVNT5dQFzX87S4aUfiyJ39N8=; b=Ie8zCq8Kw6me3P
	FtjXiMW74Kg+ve48+qoVAuk+an9OgXAYM+gJnf+PFiV6QGwtHtQFu6ZLk8XKHgYHLcSSi5FsfCgZG
	KAEVrGk8YAmM6TQq44fY35XgCu8fPeY2k7YGDC4rwB+Vfkl59RlDsjVc3jZUUS/XuyTymtTa1nat0
	hb5EtY3hCEAN+na0+pdM95UC0RgiYOAsNyEc6XqRq/cBuWfiyO/CJGCNPRmsx4hLGP2EeYBsyslky
	11ONPGkarKSaBjkEXgNcyIPa5Ow43PZ4LdS+PFtaBX/CO1XMNOcUMNgJmLn6mnkbitjjmxFWfiTCL
	lLwyFJfouQi8PWu2iYGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMcNm-0000000FDf4-3fDB;
	Tue, 12 May 2026 01:58:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMcNl-0000000FDem-23Vb
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 01:58:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9BC4260055;
	Tue, 12 May 2026 01:58:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05451C2BCB0;
	Tue, 12 May 2026 01:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778551080;
	bh=iqfO3wV8DsHY1dpGc1L13UmMbSWjqtruKM7buvHZzX0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=k2a+evZc/ifufqH453KYkwVxGudkfqNcVzQB88SOlp/79tKNmFRPfjSuSnBiT1/cn
	 kglSf8DlIFoDpyOApN9sqlkUTigDhDjiyvSydw2VoT7JbfoBdNfu9vFBPglQMQmw2L
	 C05BO+/tvswrswWYqCaTEgx2RNoF3Z9Bgtcy5xAh98WbNqNDJHCWF0zu/d73HIc6Zq
	 nDme0u+UnNViEr/SXiEXkpCEOWsV/V+TUn1i5t5HOnjkppJRLr36jAmrUa8GoffOv7
	 stTOEN0ARC6WOodSAepybg9tnAWmO99DqEJSsINq3YSGNEV3VH94Bb3otXmh3I39gv
	 ne83yGLSHbntQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v8 04/10] spmi: Implement
 spmi_subdevice_alloc_and_add() and devm variant
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260511100805.121432-5-angelogioacchino.delregno@collabora.com>
References: <20260511100805.121432-5-angelogioacchino.delregno@collabora.com>
Date: Tue, 12 May 2026 01:57:59 +0000
Message-Id: <20260512015800.05451C2BCB0@smtp.kernel.org>
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
Reply-To: sashiko@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gQ29tbWl0IG1lc3Nh
Z2UgY2xhaW1zIHRvIGFkZCBzcG1pX3N1YmRldmljZV9wdXRfYW5kX3JlbW92ZSgpIGJ1dCBpdCBp
cyBtaXNzaW5nCi0gW01lZGl1bV0gTWlzc2luZyByZWZlcmVuY2UgY291bnQgb24gU1BNSSBjb250
cm9sbGVyIGNhdXNlcyBwb3RlbnRpYWwgVXNlLUFmdGVyLUZyZWUgKFVBRikKLSBbTG93XSBGb3Jt
YXQgc3RyaW5nIHR5cGUgbWlzbWF0Y2ggZm9yIGNvbnRyb2xsZXIgbnVtYmVyIGluIGRldmljZSBu
YW1lCi0tCgpjb21taXQgNDgxZDdjNDc5NGYzYjU4MGEwZTBkNDIyZDFhNWNjOGI2YTNiMTQ2NgpB
dXRob3I6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJl
Z25vQGNvbGxhYm9yYS5jb20+CgpzcG1pOiBJbXBsZW1lbnQgc3BtaV9zdWJkZXZpY2VfYWxsb2Nf
YW5kX2FkZCgpIGFuZCBkZXZtIHZhcmlhbnQKClRoaXMgY29tbWl0IGludHJvZHVjZXMgc3BtaV9z
dWJkZXZpY2VfYWxsb2NfYW5kX2FkZCgpIGFuZCBhIGRldnJlcyB2YXJpYW50CnRvIG1hbmFnZSBj
b21wbGV4IHN1Yi1kZXZpY2VzIG9uIHRoZSBTUE1JIGJ1cy4gSXQgYWxsb3dzIFBNSUMgY29tcG9u
ZW50cwpzaGFyaW5nIGEgc2luZ2xlIFNJRCB0byBiZSByZXByZXNlbnRlZCBhcyBzdWItZGV2aWNl
cy4gVGhlIG5ldyBleHBvcnRzCmFyZSBwbGFjZWQgaW4gdGhlICJTUE1JIiBuYW1lc3BhY2UuCgo+
IEFkZCBuZXcgZnVuY3Rpb25zIGFpbWVkIGF0IG1hbmFnaW5nIHN1Yi1kZXZpY2VzIG9mIGEgU1BN
SSBkZXZpY2UKPiBzcG1pX3N1YmRldmljZV9hbGxvY19hbmRfYWRkKCkgYW5kIGEgc3BtaV9zdWJk
ZXZpY2VfcHV0X2FuZF9yZW1vdmUoKQoKVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHRoZSBjb21taXQg
bWVzc2FnZSBtZW50aW9ucwpzcG1pX3N1YmRldmljZV9wdXRfYW5kX3JlbW92ZSgpLCB3aGlsZSB0
aGUgaW1wbGVtZW50ZWQgZnVuY3Rpb24gaXMKYWN0dWFsbHkgbmFtZWQgc3BtaV9zdWJkZXZpY2Vf
cmVtb3ZlKCkuIFNob3VsZCB0aGUgY29tbWl0IG1lc3NhZ2UgYmUKdXBkYXRlZCB0byBtYXRjaCB0
aGUgY29kZT8KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BtaS9zcG1pLmMgYi9kcml2ZXJzL3Nw
bWkvc3BtaS5jCj4gaW5kZXggOTFhNDBlYTgwMzFhZC4uY2RmM2U5OTE5NGM0YyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3NwbWkvc3BtaS5jCj4gKysrIGIvZHJpdmVycy9zcG1pL3NwbWkuYwoKWyAu
Li4gXQoKPiArc3RydWN0IHNwbWlfc3ViZGV2aWNlICpzcG1pX3N1YmRldmljZV9hbGxvY19hbmRf
YWRkKHN0cnVjdCBzcG1pX2RldmljZSAqc3BhcmVudCkKPiArewo+ICsJc3RydWN0IHNwbWlfc3Vi
ZGV2aWNlICpzdWJfc2RldjsKPiArCXN0cnVjdCBzcG1pX2RldmljZSAqc2RldjsKPiArCWludCBy
ZXQ7Cj4gKwo+ICsJc3ViX3NkZXYgPSBremFsbG9jKHNpemVvZigqc3ViX3NkZXYpLCBHRlBfS0VS
TkVMKTsKPiArCWlmICghc3ViX3NkZXYpCj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4g
Kwo+ICsJc2RldiA9ICZzdWJfc2Rldi0+c2RldjsKPiArCXNkZXYtPmN0cmwgPSBzcGFyZW50LT5j
dHJsOwoKRG9lcyB0aGlzIG1pc3NpbmcgcmVmZXJlbmNlIGNvdW50IG9uIHRoZSBjb250cm9sbGVy
IGludHJvZHVjZSBhIHBvdGVudGlhbAp1c2UtYWZ0ZXItZnJlZSByZWdyZXNzaW9uPwoKSWYgdGhl
IHBhcmVudCBQTUlDIGRldmljZSBpcyByZW1vdmVkIGFuZCBkcm9wcyBpdHMgcmVmZXJlbmNlIHRv
IHRoZSBjb250cm9sbGVyLApjb3VsZCB0aGUgc3ViZGV2aWNlIG91dGxpdmUgaXQgYW5kIHN0aWxs
IGhvbGQgYSBkYW5nbGluZyBwb2ludGVyIHRvCnNkZXYtPmN0cmw/IFNob3VsZCB0aGlzIGluaXRp
YWxpemF0aW9uIHRha2UgYSByZWZlcmVuY2UgdmlhCmdldF9kZXZpY2UoJnNkZXYtPmN0cmwtPmRl
dik/Cgo+ICsJc2Rldi0+dXNpZCA9IHNwYXJlbnQtPnVzaWQ7Cj4gKwo+ICsJcmV0ID0gaWRhX2Fs
bG9jKCZzcG1pX3N1YmRldmljZV9pZGEsIEdGUF9LRVJORUwpOwo+ICsJaWYgKHJldCA8IDApIHsK
PiArCQlrZnJlZShzdWJfc2Rldik7Cj4gKwkJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiArCX0KPiAr
CXN1Yl9zZGV2LT5kZXZpZCA9IHJldDsKPiArCj4gKwlkZXZpY2VfaW5pdGlhbGl6ZSgmc2Rldi0+
ZGV2KTsKPiArCXNkZXYtPmRldi5wYXJlbnQgPSAmc3BhcmVudC0+ZGV2Owo+ICsJc2Rldi0+ZGV2
LmJ1cyA9ICZzcG1pX2J1c190eXBlOwo+ICsJc2Rldi0+ZGV2LnR5cGUgPSAmc3BtaV9zdWJkZXZf
dHlwZTsKPiArCj4gKwlyZXQgPSBkZXZfc2V0X25hbWUoJnNkZXYtPmRldiwgIiVkLSUwMnguJWQu
YXV0byIsCj4gKwkJCSAgIHNkZXYtPmN0cmwtPm5yLCBzZGV2LT51c2lkLCBzdWJfc2Rldi0+ZGV2
aWQpOwoKVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGNvdWxkIHRoZSBmb3JtYXQgc3BlY2lmaWVyIGZv
ciBzZGV2LT5jdHJsLT5ucgpjYXVzZSBhIHR5cGUgbWlzbWF0Y2ggd2FybmluZz8gTG9va2luZyBh
dCBzdHJ1Y3Qgc3BtaV9jb250cm9sbGVyLCBuciBpcwphbiB1bnNpZ25lZCBpbnQsIHNvIHNob3Vs
ZCB0aGlzIHVzZSAldSBpbnN0ZWFkIG9mICVkPwoKPiArCWlmIChyZXQpCj4gKwkJZ290byBlcnJf
cHV0X2RldjsKPiArCj4gKwlyZXQgPSBkZXZpY2VfYWRkKCZzZGV2LT5kZXYpOwo+ICsJaWYgKHJl
dCkgewo+ICsJCWRldl9lcnIoJnNkZXYtPmRldiwgIkNhbid0IGFkZCBkZXZpY2UsIHN0YXR1cyAl
cGVcbiIsIEVSUl9QVFIocmV0KSk7Cj4gKwkJZ290byBlcnJfcHV0X2RldjsKPiArCX0KPiArCj4g
KwlyZXR1cm4gc3ViX3NkZXY7CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTExMTAwODA1LjEyMTQzMi0xLWFuZ2Vsb2dpb2FjY2hp
bm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT9wYXJ0PTQKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
