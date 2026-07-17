Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC22EC4451B
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 07:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEq3ehlyzgzdVx6bMc5I5NovscYZwn5e19Al7aqTlzk=; b=hQUoBsDJdgyTlc
	CJRsfiO9Jxuy1AEcBtUPg5XV+UnzqF2INtwyfUeS2Em7EP6bMxcMep+Y/8pDev4zTtCrAVpw1udJe
	FlGG4oTgO8zZbv2s648A6qWwAGptJMwdT6mQcktMnAAaYTGhQ/zZgnpWoTsnNN+AfaFuW1SVugsP4
	ACwZJJeNVlYmSzTfzkbGcVCHlJoMK7v72qKsubxKVhUfleDmgEQLCiRDoSLRj5sOi4kOrooRu4YvK
	QW27LnNCEQmweoEdaJ9HpGNECAtoJUDDKZAYGI58NS8fV46hMqfpJmuU2qiVAYDFkzigz8KFFWshw
	MPWGLJbKAJHa4GfI0QsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkd4N-00000001T98-2FKo;
	Fri, 17 Jul 2026 07:33:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkd4L-00000001T7Q-2IqP
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 07:33:13 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2316F43935;
	Fri, 17 Jul 2026 07:33:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB331F00A3A;
	Fri, 17 Jul 2026 07:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784273593;
	bh=mdIEkZeC84PdXzOvpRfi+ovbwMjSaaPCZZFU6v1KpG8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K41Fx4v90rb/3ei7KVNAqSIiqvElhlSDsDEX5yvOGSfSRP9739es2B73N0Ea1uNhC
	 39CBRR2JOTRCMYcRLYA29Vkr1ltV1gd7HRUOeAXCly9lqINZ++KvxJeRFPu3W3tP8u
	 lK97tvyjePyk8ymk+bH1YrFjMDdf0C1MSrPNcgcUCU4hfiIGk8m4tf4j62cYVfUpet
	 IM3ukhMgPhnRj44dowxuDRMYYChf9VBx6tNcNpanryC67Qexv9kdv50Iwn/rOwlDX7
	 YR6ydCZgITi2O8arwPNKepeoWPROvuFl9iQWV4EyqS5+y1keMw6WHxV+iIvjOEBhBJ
	 HJbHujV8mtYTQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/5] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, olteanv@gmail.com
In-Reply-To: <20260717072323.96-3-kernel@airkyi.com>
References: <20260717072323.96-1-kernel@airkyi.com>
 <20260717072323.96-3-kernel@airkyi.com>
Date: Fri, 17 Jul 2026 07:33:12 +0000
Message-Id: <20260717073312.ADB331F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFVuYmFsYW5jZWQgYG9m
X25vZGVfcHV0KClgIGluIGBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKWAgYW5k
IGBkcm1fYXV4X2JyaWRnZV9yZWxlYXNlKClgIGNhdXNlcyBhIHJlZmVyZW5jZSBjb3VudCB1bmRl
cmZsb3cgZm9yIHRoZSBwcm92aWRlZCBgZGV2aWNlX25vZGVgLgotLQoKLS0tIFBhdGNoIFsyXTog
W1BBVENIIHYzIDIvNV0gZHJtL2JyaWRnZTogYXV4OiBBZGQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0
ZXJfZnJvbV9ub2RlKCkgLS0tCmNvbW1pdCBiMmI2Njk3MjIwMGJkYzRiNjU0MWNhNDFmOGFlNDRj
MDhkODFhOTY0CkF1dGhvcjogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29t
PgoKZHJtL2JyaWRnZTogYXV4OiBBZGQgZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2Rl
KCkKClRoZSBkcm1fYXV4X2JyaWRnZV9yZWdpc3RlcigpIHVzZXMgdGhlIGRldmljZS0+b2Zfbm9k
ZSBhcyB0aGUgYnJpZGdlLT5vZl9ub2RlLgpUaGlzIHBhdGNoIGFkZHMgZHJtX2F1eF9icmlkZ2Vf
cmVnaXN0ZXJfZnJvbV9ub2RlKCkgdG8gYWxsb3cgc3BlY2lmeWluZyB0aGUKb2Zfbm9kZSBjb3Jy
ZXNwb25kaW5nIHRvIHRoZSBicmlkZ2UuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL2F1eC1icmlkZ2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYXV4LWJyaWRnZS5j
Cj4gaW5kZXggMWVkMjFhODcxM2JmZC4uMDZhMTQ2NmY0OWJkMiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2F1eC1icmlkZ2UuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvYXV4LWJyaWRnZS5jClsgLi4uIF0KPiBAQCAtNjIsNyArNjMsMTAgQEAgaW50IGRybV9h
dXhfYnJpZGdlX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKnBhcmVudCkKPiAgCWFkZXYtPmRldi5w
YXJlbnQgPSBwYXJlbnQ7Cj4gIAlhZGV2LT5kZXYucmVsZWFzZSA9IGRybV9hdXhfYnJpZGdlX3Jl
bGVhc2U7Cj4gIAo+IC0JZGV2aWNlX3NldF9vZl9ub2RlX2Zyb21fZGV2KCZhZGV2LT5kZXYsIHBh
cmVudCk7Cj4gKwlpZiAobnApCj4gKwkJZGV2aWNlX3NldF9ub2RlKCZhZGV2LT5kZXYsIG9mX2Z3
bm9kZV9oYW5kbGUobnApKTsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGNhdXNlIGEgcmVm
ZXJlbmNlIGNvdW50IHVuZGVyZmxvdyBmb3IgdGhlIGRldmljZSBub2RlPwoKVW5saWtlIGRldmlj
ZV9zZXRfb2Zfbm9kZV9mcm9tX2RldigpIHdoaWNoIHNhZmVseSBhY3F1aXJlcyBhIHJlZmVyZW5j
ZSB0byB0aGUKb2Zfbm9kZSwgZGV2aWNlX3NldF9ub2RlKCkganVzdCBhc3NpZ25zIHRoZSBwb2lu
dGVyIHdpdGhvdXQgY2FsbGluZwpvZl9ub2RlX2dldCgpLgoKSWYgYXV4aWxpYXJ5X2RldmljZV9p
bml0KCkgZmFpbHMsIHRoZSBlcnJvciBwYXRoIGJlbG93IHVuY29uZGl0aW9uYWxseSBjYWxscwpv
Zl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSkuIFNpbWlsYXJseSwgdGhlIHByZS1leGlzdGlu
Zwpkcm1fYXV4X2JyaWRnZV9yZWxlYXNlKCkgY2FsbGJhY2sgZHJvcHMgYSByZWZlcmVuY2Ugd2hl
biB0aGUgZGV2aWNlIGlzCmRlc3Ryb3llZC4KCkNvdWxkIHRoaXMgY2F1c2Ugb2Zfbm9kZV9wdXQo
KSB0byBkcm9wIGEgcmVmZXJlbmNlIHRoYXQgd2FzIG5ldmVyIGFjcXVpcmVkPwoKPiArCWVsc2UK
PiArCQlkZXZpY2Vfc2V0X29mX25vZGVfZnJvbV9kZXYoJmFkZXYtPmRldiwgcGFyZW50KTsKPiAg
Cj4gIAlyZXQgPSBhdXhpbGlhcnlfZGV2aWNlX2luaXQoYWRldik7Cj4gIAlpZiAocmV0KSB7Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwNzE3MDcyMzIzLjk2LTEta2VybmVsQGFpcmt5aS5jb20/cGFydD0yCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
