Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A70ECD343F
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 04:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ew8FFFuIMzDxqvxjftLWwc8ipI8eWK9POUeP9NXLmLk=; b=RD/FJuZjjnvihy
	Qi0UIgkCP1gNEiPg/7DHR4tfznNZlNdwe7qjugdXcST71eUwx93hP2Cygveg5sgfgGYvTRn4rRmzp
	GU27yVWyiHmyuHMiFo/z5cgLOR+OG3mjWb5ZJq4wCO0+zJqXpAZfysBr+gsCsWEAvw69z0eflmutU
	naAjG7wfvfn3B+/eU+NWSPcmolGV6bB9u+7ld2DvuUNyxRaM6uARwojOG/ntbKx8sq89U/RBYcHJK
	ZjrdDcSgYHgO5UqBVp0pIRBsQu133ze9zYnZzGC/eNCmAINdXP3mAdpLEfIszrY6sgThdS/0K4VTr
	eiuTDYWayKTeTKTf1d1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPvPg-00000006hD6-3s3U;
	Thu, 21 May 2026 04:53:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPvPg-00000006hCq-1WXG
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 04:53:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 79CEB60212;
	Thu, 21 May 2026 04:53:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED1CE1F000E9;
	Thu, 21 May 2026 04:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779339219;
	bh=DDxGr6mP0NMWNK+ZmMKzBHpmbTwdgu6AUtNiCFwSl6I=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jxOC71QNiTVxB7rIqWR7kJhsK/7GamBUvuezSQw0QFerjfEVqbhvFC9jR1t/5ZJho
	 H5Rb2Q0A9Sy1taeopQ9w6eyrg4fzV8OeJo+4VLy0jXh2iDaROHdmfm1Tmq2cs5bmDw
	 23jT9ObZdZT0Npp6CzQpubof4TG8jlvFm7hfXXJdD26ZESDZHdz0vcgKza6ky008CQ
	 jkoFJDHCERlTn+qxiTp/Jq2tTbdsU3pS0QQ33+gYfvt7Ig5G/n9I+ded+yppRDLpH2
	 HNedHyqMRmpx3fweDJ/qoXl15qLs/k8YUFR/AoJodgiDSYePj1ortGAWFP431gczvE
	 LbbdUcbwCdY6w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] drm/bridge: aux: Add
 drm_aux_bridge_register_from_node()
To: "Chaoyi Chen" <kernel@airkyi.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org
In-Reply-To: <20260521032854.103-3-kernel@airkyi.com>
References: <20260521032854.103-3-kernel@airkyi.com>
Date: Thu, 21 May 2026 04:53:38 +0000
Message-Id: <20260521045338.ED1CE1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0NyaXRpY2FsXSBUaGUgYGRybV9h
dXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpYCBmdW5jdGlvbiBmYWlscyB0byBhY3F1aXJl
IGEgcmVmZXJlbmNlIHRvIHRoZSBwcm92aWRlZCBgZGV2aWNlX25vZGVgIChgbnBgKSwgbGVhZGlu
ZyB0byBhIHJlZmVyZW5jZSBjb3VudCB1bmRlcmZsb3cgYW5kIHBvdGVudGlhbCB1c2UtYWZ0ZXIt
ZnJlZSBkdXJpbmcgY2xlYW51cC4KLSBbTG93XSBUaGUga2VybmVsLWRvYyBjb21tZW50IGZvciBg
ZHJtX2F1eF9icmlkZ2VfcmVnaXN0ZXJfZnJvbV9ub2RlKClgIHJldGFpbnMgdGhlIG9sZCBmdW5j
dGlvbiBuYW1lLCBjYXVzaW5nIGEgZG9jdW1lbnRhdGlvbiBidWlsZCB3YXJuaW5nLgotLQoKY29t
bWl0IGE0NDg0Y2VjMTk0ZDI3MzFjOTJlNjI5YTMyYjdlMTdhNzI1NjAxZDcKQXV0aG9yOiBDaGFv
eWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cgpkcm0vYnJpZGdlOiBhdXg6IEFk
ZCBkcm1fYXV4X2JyaWRnZV9yZWdpc3Rlcl9mcm9tX25vZGUoKQoKVGhpcyBwYXRjaCBhZGRzIGRy
bV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZSgpIHRvIGFsbG93CnNwZWNpZnlpbmcgdGhl
IG9mX25vZGUgY29ycmVzcG9uZGluZyB0byB0aGUgYnJpZGdlLgoKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdl
L2F1eC1icmlkZ2UuYwo+IGluZGV4IDFlZDIxYTg3MTNiZmQuLmY1MDI4M2FiZWQ1ZjYgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2F1eC1icmlkZ2UuYwo+IEBAIC0zNSw2ICszNSw3IEBAIHN0YXRp
YyB2b2lkIGRybV9hdXhfYnJpZGdlX3VucmVnaXN0ZXJfYWRldih2b2lkICpfYWRldikKPiAgLyoq
Cj4gICAqIGRybV9hdXhfYnJpZGdlX3JlZ2lzdGVyIC0gQ3JlYXRlIGEgc2ltcGxlIGJyaWRnZSBk
ZXZpY2UgdG8gbGluayB0aGUgY2hhaW4KCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVn
LCBidXQgdGhlcmUncyBhIG1pc21hdGNoIGJldHdlZW4gdGhlIGtlcm5lbC1kb2MgaWRlbnRpZmll
cgphbmQgdGhlIG5ldyBmdW5jdGlvbiBuYW1lLiBTaG91bGQgdGhpcyBiZSB1cGRhdGVkIHRvCmRy
bV9hdXhfYnJpZGdlX3JlZ2lzdGVyX2Zyb21fbm9kZT8KCj4gICAqIEBwYXJlbnQ6IGRldmljZSBp
bnN0YW5jZSBwcm92aWRpbmcgdGhpcyBicmlkZ2UKPiArICogQG5wOiBkZXZpY2Ugbm9kZSBwb2lu
dGVyIGNvcnJlc3BvbmRpbmcgdG8gdGhpcyBicmlkZ2UgaW5zdGFuY2UKClsgLi4uIF0KCj4gQEAg
LTYyLDcgKzYzLDEwIEBAIGludCBkcm1fYXV4X2JyaWRnZV9yZWdpc3RlcihzdHJ1Y3QgZGV2aWNl
ICpwYXJlbnQpCj4gIAlhZGV2LT5kZXYucGFyZW50ID0gcGFyZW50Owo+ICAJYWRldi0+ZGV2LnJl
bGVhc2UgPSBkcm1fYXV4X2JyaWRnZV9yZWxlYXNlOwo+ICAKPiAtCWRldmljZV9zZXRfb2Zfbm9k
ZV9mcm9tX2RldigmYWRldi0+ZGV2LCBwYXJlbnQpOwo+ICsJaWYgKG5wKQo+ICsJCWRldmljZV9z
ZXRfbm9kZSgmYWRldi0+ZGV2LCBvZl9md25vZGVfaGFuZGxlKG5wKSk7CgpbU2V2ZXJpdHk6IENy
aXRpY2FsXQpXaWxsIHRoaXMgY2F1c2UgYSByZWZlcmVuY2UgY291bnQgdW5kZXJmbG93IG9uIHRo
ZSBkZXZpY2Ugbm9kZT8KCklmIG5wIGlzIHByb3ZpZGVkLCBkZXZpY2Vfc2V0X25vZGUoKSBhc3Np
Z25zIHRoZSBmd25vZGUgd2l0aG91dCBpbmNyZW1lbnRpbmcKdGhlIGRldmljZSBub2RlJ3MgcmVm
ZXJlbmNlIGNvdW50LgoKSG93ZXZlciwgYm90aCB0aGUgYXV4aWxpYXJ5X2RldmljZV9pbml0KCkg
ZXJyb3IgcGF0aCAoc2hvd24gYmVsb3cpIGFuZCB0aGUKZGV2aWNlJ3MgcmVsZWFzZSBjYWxsYmFj
ayBkcm1fYXV4X2JyaWRnZV9yZWxlYXNlKCkgdW5jb25kaXRpb25hbGx5IGNhbGwKb2Zfbm9kZV9w
dXQoYWRldi0+ZGV2Lm9mX25vZGUpLgoKU2luY2UgdGhlcmUgaXMgbm8gbWF0Y2hpbmcgb2Zfbm9k
ZV9nZXQoKSwgdGhpcyBjb3VsZCBjb3JydXB0IHRoZSByZWZlcmVuY2UKY291bnQgYW5kIGxlYWQg
dG8gYSB1c2UtYWZ0ZXItZnJlZS4gU2hvdWxkIHdlIGNhbGwgb2Zfbm9kZV9nZXQobnApIGhlcmU/
Cgo+ICsJZWxzZQo+ICsJCWRldmljZV9zZXRfb2Zfbm9kZV9mcm9tX2RldigmYWRldi0+ZGV2LCBw
YXJlbnQpOwo+ICAKPiAgCXJldCA9IGF1eGlsaWFyeV9kZXZpY2VfaW5pdChhZGV2KTsKPiAgCWlm
IChyZXQpIHsKPiAgCQlvZl9ub2RlX3B1dChhZGV2LT5kZXYub2Zfbm9kZSk7CgotLSAKU2FzaGlr
byBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTIxMDMy
ODU0LjEwMy0xLWtlcm5lbEBhaXJreWkuY29tP3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
