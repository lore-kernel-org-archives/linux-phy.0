Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C4BC5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EHd8spUL9OpM0WouhAHfwf/rKtbZT4pepyugW0gcHKE=; b=qc4tKAan2yMgA5
	uW0DpybFKw8wF/XTQryVHq8fEGp93ybY74IQhwe/5Vvh7D9U/vCjcjyGLX5M3wL32/Z34X9kdy8e1
	f2PuK4k0O/9JrPxyEvXOj8MBLi3J+T4DZY6klU2m3bBAApPSBvN2BfSNQCPZFXJlaaufDGbtOviA4
	rkB7PtF9FpusRW0DUr7ithhp8RYQaYBcKBQeldeuMBHuaKGY5Abae/KsGfqhCGwLUBdXRnUYptBm4
	wN06vaLKlnPQ/PsXAO+4BUWiZxpdEwUe3iOdm8ZTxkl8J/zLH+kRqHsu+7M6dKst/ivIkFVzg4u2i
	EfaTOf+vAb/WGt4vH7CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyT2W-0000000GWwm-1xfk;
	Mon, 24 Aug 2026 11:40:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyT2V-0000000GWwd-0qzU
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 11:40:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 858C56013A;
	Mon, 24 Aug 2026 11:40:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1F8B1F000E9;
	Mon, 24 Aug 2026 11:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787571630;
	bh=GwE5uDtGz0EH9Gvdg9euI8g5rfiCsOHRqdpI8yxqBFc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e0KanVjahEqoojMbYWq5DQCPJX4c740wfoTuYxxSBrpxh2WzJXhLqn9zx6DwYNAgD
	 JrdcnSKGzuOPRvFDzykkf27nCESYuxIqQXu/0vJtj5kYMosn2NdW8GRZntH12nI3zK
	 42E2Z+Ya2DXlizicGQTHXMHh3R4ptNNvn4jeTeEprfBv3c2tzFeC8+0y9Vwlh8biTt
	 B7LjmeS+ChXAojFoSaI53tzyH6bTso4d6Aa61aV8gQONFh4hLbtGAJ9ADDvPRxDIqA
	 fom8qBnh4XOFyOHEN1JINlOvA4S4x3OBmJxvfRKHNAPuDdHmOsY4MF8qOhcQ0Q8jy4
	 d5MA9jLSpLWjA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] drm/msm/dp: continue link training downgrade when
 cable is still plugged
To: "Saurabh Anand" <saurabh.anand@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, olteanv@gmail.com, neil.armstrong@linaro.org, vkoul@kernel.org
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-4-2825e5bf8a96@oss.qualcomm.com>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-4-2825e5bf8a96@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 11:40:29 +0000
Message-Id: <20260824114029.F1F8B1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpOZXcgaXNzdWVzOgotIFtNZWRpdW1d
IExvY2tsZXNzIHJlYWQgb2YgZHAtPnBsdWdnZWQgaW4gbXNtX2RwX2Rpc3BsYXlfcHJlcGFyZV9s
aW5rKCkgY2F1c2VzIGEgZGF0YSByYWNlLgoKUHJlLWV4aXN0aW5nIGlzc3VlczoKLSBbSGlnaF0g
VGhlIHJldHVybiB2YWx1ZSBvZiBkcm1fZHBfZHBjZF9yZWFkX2xpbmtfc3RhdHVzKCkgaXMgaWdu
b3JlZCwgY2F1c2luZyB1bmluaXRpYWxpemVkIHN0YWNrIG1lbW9yeSB0byBiZSB1c2VkIGlmIHRo
ZSBEUENEIHJlYWQgZmFpbHMuCi0tCgotLS0gUGF0Y2ggWzRdOiBbUEFUQ0ggNC80XSBkcm0vbXNt
L2RwOiBjb250aW51ZSBsaW5rIHRyYWluaW5nIGRvd25ncmFkZSB3aGVuIGNhYmxlIGlzIHN0aWxs
IHBsdWdnZWQgLS0tCmNvbW1pdCBhZDZkMmU5NDllMjJhNDQ4MzQ1ZWJkYjY3ZjM2ZjQyMDIwY2Zm
ODg0CkF1dGhvcjogU2F1cmFiaCBBbmFuZCA8c2F1cmFiaC5hbmFuZEBvc3MucXVhbGNvbW0uY29t
PgoKZHJtL21zbS9kcDogY29udGludWUgbGluayB0cmFpbmluZyBkb3duZ3JhZGUgd2hlbiBjYWJs
ZSBpcyBzdGlsbCBwbHVnZ2VkCgpEdXJpbmcgYSBUeXBlLUMgcmVjb25uZWN0IHRoZSBBVVggY2hh
bm5lbCBtYXkgcmVwb3J0IGxpbmstZGlzY29ubmVjdGVkCnRyYW5zaWVudGx5IHdoaWxlIHRoZSBw
aHlzaWNhbCBjYWJsZSBpcyBzdGlsbCBwcmVzZW50LiBUaGUgbGluayB0cmFpbmluZwpyZXRyeSBs
b29wIGluIG1zbV9kcF9jdHJsX29uX2xpbmsoKSB3YXMgYWJvcnRpbmcgaW1tZWRpYXRlbHkgb24g
YW55Cm1zbV9kcF9hdXhfaXNfbGlua19jb25uZWN0ZWQoKSBmYWlsdXJlLCBwcmV2ZW50aW5nIHRo
ZSByYXRlL2xhbmUgZG93bmdyYWRlCnBhdGggZnJvbSBydW5uaW5nLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmMgYi9kcml2ZXJzL2dwdS9kcm0vbXNtL2Rw
L2RwX2N0cmwuYwo+IGluZGV4IDU5MDcwZjM5OWUyZDMuLmU4ZmQ4ZjRjNzVmZWMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9jdHJsLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vbXNtL2RwL2RwX2N0cmwuYwo+IEBAIC0yMzc5LDcgKzIzNzksNyBAQCBpbnQgbXNtX2Rw
X2N0cmxfb25fbGluayhzdHJ1Y3QgbXNtX2RwX2N0cmwgKm1zbV9kcF9jdHJsLAo+ICAJCQlicmVh
azsKPiAgCQl9IGVsc2UgaWYgKHRyYWluaW5nX3N0ZXAgPT0gRFBfVFJBSU5JTkdfMSkgewo+ICAJ
CQkvKiBsaW5rIHRyYWluXzEgZmFpbGVkICovCj4gLQkJCWlmICghbXNtX2RwX2F1eF9pc19saW5r
X2Nvbm5lY3RlZChjdHJsLT5hdXgpKQo+ICsJCQlpZiAoIW1zbV9kcF9hdXhfaXNfbGlua19jb25u
ZWN0ZWQoY3RybC0+YXV4KSAmJiAhbXNtX2RwX2N0cmwtPnBsdWdnZWQpCj4gIAkJCQlicmVhazsK
PiAgCj4gIAkJCWRybV9kcF9kcGNkX3JlYWRfbGlua19zdGF0dXMoY3RybC0+YXV4LCBsaW5rX3N0
YXR1cyk7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMgYSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1
dCBieSBhbGxvd2luZyB0aGUgbG9vcCB0byBjb250aW51ZSB3aGVuIEFVWAppcyBkaXNjb25uZWN0
ZWQsIGlzIGl0IHBvc3NpYmxlIHdlJ2xsIHBlcmZvcm0gYSBEUENEIHJlYWQgdGhhdCBmYWlscywg
bGVhdmluZwp0aGUgbGlua19zdGF0dXMgc3RhY2sgYXJyYXkgdW5pbml0aWFsaXplZD8KCklmIGRy
bV9kcF9kcGNkX3JlYWRfbGlua19zdGF0dXMoKSBmYWlscyAod2hpY2ggaXMgbGlrZWx5IGlmIHRo
ZSBsaW5rIGlzCmRpc2Nvbm5lY3RlZCksIHRoZSBlcnJvciByZXR1cm4gdmFsdWUgaXMgaWdub3Jl
ZC4gVW5pbml0aWFsaXplZCBzdGFjayBtZW1vcnkgaXMKdGhlbiBldmFsdWF0ZWQgYnkgbXNtX2Rw
X2N0cmxfY2xvY2tfcmVjb3ZlcnlfYW55X29rKCkgYmVsb3cgdG8gbWFrZSBoYXJkd2FyZQpjb25m
aWd1cmF0aW9uIGRlY2lzaW9ucy4KCkRvZXMgdGhpcyBhbHNvIGFmZmVjdCB0aGUgRFBfVFJBSU5J
TkdfMiBjYXNlIGJlbG93LCBhcyB3ZWxsIGFzCm1zbV9kcF9jdHJsX2NoYW5uZWxfZXFfb2soKT8K
ClsgLi4uIF0KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMKPiBpbmRleCAxZjYwYzc4
YTQ2M2RkLi45M2EzN2E0NDI3M2YwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20v
ZHAvZHBfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5
LmMKPiBAQCAtNjQ0LDYgKzY0NCw3IEBAIHN0YXRpYyBpbnQgbXNtX2RwX2Rpc3BsYXlfcHJlcGFy
ZV9saW5rKHN0cnVjdCBtc21fZHBfZGlzcGxheV9wcml2YXRlICpkcCkKPiAgCWlmICghbXNtX2Rw
X2Rpc3BsYXktPnBvd2VyX29uKSB7Cj4gIAkJbXNtX2RwX2Rpc3BsYXlfaG9zdF9waHlfaW5pdChk
cCk7Cj4gIAkJZm9yY2VfbGlua190cmFpbiA9IHRydWU7Cj4gKwkJZHAtPmN0cmwtPnBsdWdnZWQg
PSBkcC0+cGx1Z2dlZDsKCltTZXZlcml0eTogTWVkaXVtXQpJcyBpdCBzYWZlIHRvIHJlYWQgZHAt
PnBsdWdnZWQgaGVyZSB3aXRob3V0IGhvbGRpbmcgdGhlIGRwLT5wbHVnZ2VkX2xvY2sgbXV0ZXg/
CgpUaGlzIGFzc2lnbm1lbnQgcnVucyBpbiBtc21fZHBfZGlzcGxheV9wcmVwYXJlX2xpbmsoKSBk
dXJpbmcgYXRvbWljIGNvbW1pdCwKd2hpY2ggY291bGQgcnVuIGNvbmN1cnJlbnRseSB3aXRoIEhQ
RCBwbHVnL3VucGx1ZyBldmVudHMgdGhhdCBtb2RpZnkKZHAtPnBsdWdnZWQuCgpDb3VsZCB0aGlz
IGxlYWQgdG8gYSBkYXRhIHJhY2Ugd2hlcmUgYSBzdGFsZSB2YWx1ZSBpcyByZWFkPwoKPiAgCX0K
PiAgCj4gIAlyYyA9IG1zbV9kcF9jdHJsX29uX2xpbmsoZHAtPmN0cmwsIGRwLT5wYW5lbCk7Cgot
LSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIw
MjYwODI0LXFjb20tZHAtdHlwZWMtcmVjb25uZWN0LWZpeGVzLXYxLTAtMjgyNWU1YmY4YTk2QG9z
cy5xdWFsY29tbS5jb20/cGFydD00CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
