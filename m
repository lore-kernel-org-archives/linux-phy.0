Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66BB3C79FBF
	for <linux-phy@archiver.kernel.org>; Thu, 10 Sep 2026 09:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27ViuQtwqTi3avcbsxIQ1CkcylaICWNCf3qJavvN4BA=; b=1l6vTInZ4zS643
	O5YY4APkeUCn67kYHLBRpF+pUOx5lXQTv1uAmApKiVS58qbj0h4e4FHsz2rq5qpng7OleImyioBZn
	37rbIWkiwvayCYjXekSazHA33N2eaaab1+O3BJKBCNMnF/hnxfn4qj3cUHagKlQvt0BjHrzZPLWv2
	k15mdWNl6E3GfU4sBalDS5yiC7fSbqtzhaegzPw3tIwI54RvHoSiWVxeEcCVVHllvFvlqVkyZMQd+
	MxUoX9Qu6bcq6Y/8E8oIDtX4kt7bbAG0TvLNM+FN+9/stcQ+PoXwASqGdsgtZc7avWJysTyC4mOD2
	Clxu+nsPSFvkSZUs280A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4b75-0000000DtRe-0SUy;
	Thu, 10 Sep 2026 09:30:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4b73-0000000DtQ2-0QPZ
	for linux-phy@lists.infradead.org;
	Thu, 10 Sep 2026 09:30:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D764C4056F;
	Thu, 10 Sep 2026 09:30:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 441001F000FF;
	Thu, 10 Sep 2026 09:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789032632;
	bh=jayYXqGma6vMHe6SCZAyaJDURj3XtLml7LBm53wVlS0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ENW7Fq2omFFVROv71erfPeZgs8Wh7lE8p+rPSbDxQbX3tGgtjzibJKM54HPtPwIoR
	 jKnqXGKWD0otqUNhEXrPkjgsUbgr/3h9SzlVkfaL79P3qieygYglkHgtOIBk5JpR3F
	 LQxw+3/Ee+Jn6SO/MQgg4ruVAHirI4r7qIR1LJdiQ5dafJ5EvXI1LmKKEsIyWLxAVe
	 Khck0HkOaDyzPGmUUAs3BSmzFQVaKXiy4F7GRq60IIUCMj6llLl9qXRSL8D9rgTMNL
	 2CJKR2QJWx1xHhFaAAu8hLSt8CtIHAZhAXjOZ68uord5zoup9VoB4FMSQ4NhesoqFc
	 P2bI70aJ9CypA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 06/12] phy: phy-mtk-dp: Support set_lanes in
 configure and properly cleanup
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260910092038.48291-7-angelogioacchino.delregno@collabora.com>
References: <20260910092038.48291-1-angelogioacchino.delregno@collabora.com>
 <20260910092038.48291-7-angelogioacchino.delregno@collabora.com>
Date: Thu, 10 Sep 2026 09:30:31 +0000
Message-Id: <20260910093032.441001F000FF@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIG10a19kcF9waHlfZGlz
YWJsZV9hbGxfbGFuZXMoKSBpZ25vcmVzIHRoZSByZXR1cm4gdmFsdWUgb2YgcmVnbWFwX3JlYWQo
KSBhbmQgdW5jb25kaXRpb25hbGx5IHJldHVybnMgMCwgbGVhZGluZyB0byB1bmluaXRpYWxpemVk
IG1lbW9yeSB1c2UgYW5kIGRlYWQgY29kZS4KLS0KCmNvbW1pdCA5NjIzN2I5NTQ4OTgwZDA5NjNi
OTI1ZGE1ZmJhZTlmZWM1NTRiZWI2CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8g
PGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KU3ViamVjdDogcGh5OiBw
aHktbXRrLWRwOiBTdXBwb3J0IHNldF9sYW5lcyBpbiBjb25maWd1cmUgYW5kIHByb3Blcmx5IGNs
ZWFudXAKClRoaXMgY29tbWl0IGFkZHMgc3VwcG9ydCBmb3IgY29uZmlndXJpbmcgYSBzcGVjaWZp
YyBudW1iZXIgb2YgbGFuZXMKdmlhIHRoZSAuY29uZmlndXJlKCkgY2FsbGJhY2suIEl0IGFsc28g
aW50cm9kdWNlcyBmdW5jdGlvbmFsaXR5IHRvCmRpc2FibGUgYWxsIGxhbmVzIGR1cmluZyBwb3dl
ci1vZmYgYW5kIHJlc2V0IHRvIGVuc3VyZSBwcm9wZXIgaGFyZHdhcmUKc3RhdGUgY2xlYW51cC4K
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYyBiL2RyaXZl
cnMvcGh5L21lZGlhdGVrL3BoeS1tdGstZHAuYwo+IGluZGV4IDQyNDc1MDZjZWI5OTYuLjI3NjM5
MWQ5OTFhYWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5j
Cj4gKysrIGIvZHJpdmVycy9waHkvbWVkaWF0ZWsvcGh5LW10ay1kcC5jCgpbIC4uLiBdCgo+IEBA
IC0yNTQsMTIgKzI3MiwzOSBAQCBzdGF0aWMgaW50IG10a19kcF9waHlfcG93ZXJfb24oc3RydWN0
IHBoeSAqcGh5KQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgbXRrX2RwX3Bo
eV9kaXNhYmxlX2FsbF9sYW5lcyhzdHJ1Y3QgbXRrX2RwX3BoeSAqZHBfcGh5KQo+ICt7Cj4gKwlj
b25zdCBzdHJ1Y3QgbXRrX2RwX3BoeV9wZGF0YSAqcGRhdGEgPSBkcF9waHktPnBkYXRhOwo+ICsJ
Y29uc3QgdTggKnJlZ3MgPSBwZGF0YS0+cmVnc19kaWdfZ2xiOwo+ICsJaW50IHJldDsKPiArCXUz
MiB2YWw7Cj4gKwo+ICsJLyogR2V0IG1hc2sgb2YgY3VycmVudGx5IGVuYWJsZWQgbGFuZSAqLwo+
ICsJcmVnbWFwX3JlYWQoZHBfcGh5LT5yZWdtYXAsIHBkYXRhLT5vZmZfZGlnX2dsYiArIHJlZ3Nb
RFBfUEhZRF9UWF9DVExfMF0sICZ2YWwpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRoaXMgY29k
ZSBoYW5kbGUgdGhlIHBvc3NpYmlsaXR5IG9mIHJlZ21hcF9yZWFkKCkgZmFpbGluZz8KCklmIHJl
Z21hcF9yZWFkKCkgcmV0dXJucyBhbiBlcnJvciAoZS5nLiwgaWYgdGhlIHVuZGVybHlpbmcgYnVz
IG9yIGNsb2NrIGlzIGluCmFuIGludmFsaWQgc3RhdGUpLCBpdCB3aWxsIG5vdCBpbml0aWFsaXpl
IHZhbC4gSW4gdGhpcyBzY2VuYXJpbywgdGhlIHN1YnNlcXVlbnQKb3BlcmF0aW9ucyB3b3VsZCB1
c2UgdW5pbml0aWFsaXplZCBzdGFjayBtZW1vcnksIHBvdGVudGlhbGx5IGxlYWRpbmcgdG8gcmFu
ZG9tCmxhbmVzIGJlaW5nIGRpc2FibGVkIGJhc2VkIG9uIGdhcmJhZ2UgZGF0YS4KCj4gKwl2YWwg
PSBGSUVMRF9HRVQoUEhZRF9UWF9MTl9FTiwgdmFsKTsKPiArCWlmICh2YWwgPT0gMCkKPiArCQly
ZXR1cm4gMDsKPiArCj4gKwkvKiBEaXNhYmxlIGFsbCBsYW5lcyAobmVlZHMgdG8gYmUgZG9uZSBv
bmUgYnkgb25lLCBmcm9tIGxhc3QgdG8gZmlyc3QpICovCj4gKwlkbyB7Cj4gKwkJdTMyIGxhbmVf
bnVtID0gZmxzKHZhbCkgLSAxOwo+ICsJCXZhbCAmPSB+QklUKGxhbmVfbnVtKTsKPiArCj4gKwkJ
cmVnbWFwX2NsZWFyX2JpdHMoZHBfcGh5LT5yZWdtYXAsCj4gKwkJCQkgIHBkYXRhLT5vZmZfZGln
X2dsYiArIHJlZ3NbRFBfUEhZRF9UWF9DVExfMF0sCj4gKwkJCQkgIEZJRUxEX1BSRVAoUEhZRF9U
WF9MTl9FTiwgQklUKGxhbmVfbnVtKSkpOwo+ICsJfSB3aGlsZSAodmFsKTsKPiArCj4gKwlyZXR1
cm4gMDsKCltTZXZlcml0eTogSGlnaF0KU2hvdWxkIHRoaXMgZnVuY3Rpb24gcmV0dXJuIHRoZSBl
cnJvciBzdGF0ZSBmcm9tIHRoZSByZWdtYXAgb3BlcmF0aW9ucz8KCkl0IGRlY2xhcmVzIGEgcmV0
IHZhcmlhYmxlIGJ1dCBuZXZlciB1c2VzIGl0LCBhbmQgdW5jb25kaXRpb25hbGx5IHJldHVybnMg
MC4KCj4gK30KPiArCj4gIHN0YXRpYyBpbnQgbXRrX2RwX3BoeV9wb3dlcl9vZmYoc3RydWN0IHBo
eSAqcGh5KQo+ICB7Cj4gIAlzdHJ1Y3QgbXRrX2RwX3BoeSAqZHBfcGh5ID0gcGh5X2dldF9kcnZk
YXRhKHBoeSk7Cj4gIAljb25zdCBzdHJ1Y3QgbXRrX2RwX3BoeV9wZGF0YSAqcGRhdGEgPSBkcF9w
aHktPnBkYXRhOwo+ICAJY29uc3QgdTggKnJlZ3NfZGlnID0gcGRhdGEtPnJlZ3NfZGlnX2dsYjsK
PiAgCWNvbnN0IHU4ICpyZWdzX2FuYSA9IHBkYXRhLT5yZWdzX2FuYV9nbGI7Cj4gKwlpbnQgcmV0
Owo+ICAKPiAgCXJlZ21hcF9zZXRfYml0cyhkcF9waHktPnJlZ21hcCwKPiAgCQkJcGRhdGEtPm9m
Zl9hbmFfZ2xiICsgcmVnc19hbmFbRFBfUEhZQV9HTEJfRk9SQ0VfQ1RSTF8xXSwKPiBAQCAtMjY5
LDYgKzMxNCwxMiBAQCBzdGF0aWMgaW50IG10a19kcF9waHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkg
KnBoeSkKPiAgCXJlZ21hcF93cml0ZShkcF9waHktPnJlZ21hcCwKPiAgCQkgICAgIHBkYXRhLT5v
ZmZfZGlnX2dsYiArIHJlZ3NfZGlnW0RQX1BIWURfQVVYX1JYX0NUTF0sIDApOwo+ICAKPiArCXJl
dCA9IG10a19kcF9waHlfZGlzYWJsZV9hbGxfbGFuZXMoZHBfcGh5KTsKPiArCWlmIChyZXQpIHsK
PiArCQlkZXZfZXJyKGRwX3BoeS0+ZGV2LCAiQ291bGQgbm90IGRpc2FibGUgbGFuZXMgZm9yIHBv
d2Vyb2ZmIVxuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KCltTZXZlcml0eTogSGlnaF0KU2lu
Y2UgbXRrX2RwX3BoeV9kaXNhYmxlX2FsbF9sYW5lcygpIHVuY29uZGl0aW9uYWxseSByZXR1cm5z
IDAsIHRoaXMgZXJyb3IKaGFuZGxpbmcgYmxvY2sgYXBwZWFycyB0byBiZSBkZWFkIGNvZGUsIHBy
ZXZlbnRpbmcgdGhlIGRyaXZlciBmcm9tIHByb3Blcmx5CmRldGVjdGluZyBoYXJkd2FyZSBzdGF0
ZSBmYWlsdXJlcyBkdXJpbmcgY2xlYW51cC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRw
czovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA5MTAwOTIwMzguNDgyOTEtMS1hbmdlbG9n
aW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20/cGFydD02CgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
