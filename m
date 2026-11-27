Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99A2606A321
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 07:35:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qGTLEc0b;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=YIDulSOK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cQmbsqBauffrRrgXl0M44fG4s29T/2XNw9DNs+wBStk=; b=qGTLEc0bZRfT36hSgYqHIqDesW
	0M4LsgGNlpqwcMVcrdmxgMUusi/ERV9m5dp/E5fc/QdfOZzNPu4+MlwBKMQ9knZplFaG/cOleB46/
	8aK6oJWDBsOSjyHh6iZVfLRBtsstgsRVZ9ZzHHV8cAM9jlsP5AwA11/YxZu3K/Nk0xsu1CIIio2VL
	5PqYw7/cBay4/5gC2/vlC/CUNJf3FkEmlQ772BBV9JXJA8IXDOx5kaHCyF06zWq0vMtDoQY0NyPFT
	CySWqugwcm/OBxLhvv7/7SlZ/7uLs+bRtmgoLL3856HN6GyHzgG1F54VyUiGPSaztbXoPLCYDw6EE
	Q1RIlIfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqUV-0000000F8iY-2WVG;
	Fri, 27 Nov 2026 07:35:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWqUU-0000000F8iG-0CJR
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 07:35:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5AA49454B8;
	Fri, 27 Nov 2026 07:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8151F00898;
	Fri, 27 Nov 2026 07:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795764929;
	bh=gzlsOM3j+CyftA+oag0y/h90CkyJtN0Wnr9LmkhdeVQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=YIDulSOKR/VuPyccJLD3TDxEvFXseotmlMG/o+UNjeCjPvGhZZ91YJN8bfydM/RWl
	 KTMCu3yLQlG6kc95rcv/GkRvOuk6xXbkbVitl1vWhB0lJ78Wbm9a4lXLKTEbKw985w
	 D9h02jG9+4tt3usfPlUhKgY7Y1TYKKdTWPMPaR+YnKyjJ0kr+P+uKRr2oECJnRqzvM
	 0dGsKdFBUcrF1HhudcDje7XR15FKH9lqWjjDBYGJr3wU6N/u9a3u+grWCb3O6vehZw
	 pLZArTLzwY7dHS8CKTPRAmOnDo/fPU59p8BEmewRgcQ9Cvddt7ZuIEWG/4fqbNQMG4
	 PGBlb8Z5HKp2Q==
Message-ID: <sashiko-outbox-236812@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] drm/msm/dp: Skip IRQ_HPD handling when PHY is off
To: "naidu nama" <naidu.nama@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261127072055.2144407-1-naidu.nama@oss.qualcomm.com>
References: <20261127072055.2144407-1-naidu.nama@oss.qualcomm.com>
Date: Fri, 27 Nov 2026 07:35:28 +0000
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtIaWdoXSBkcm0vbXNtL2RwOiBtc21f
ZHBfYnJpZGdlX2hwZF9ub3RpZnkoKSBza2lwcyB1bnBsdWcgd2hlbiBQSFkgaXMKICBvZmYKLSBb
TWVkaXVtXSBkcm0vbXNtL2RwOiB1bmxvY2tlZCBzdGF0ZSBjaGVjayBpbgogIG1zbV9kcF9icmlk
Z2VfaHBkX25vdGlmeSgpIHJhY2VzCi0gW0xvd10gZHJtL21zbS9kcDogbWlzc2luZyBGaXhlczog
dHJhaWxlciBvbiBIUEQgaGFuZGxpbmcgYnVnLWZpeAogIGNvbW1pdAotLQoKY29tbWl0IDFhNTdk
NDJjOTNhMTQ4Mjg0ODQzYjBkODQxNDcxNjcxMzNlNTIwYjAKQXV0aG9yOiBuYWlkdSBuYW1hIDxu
YWlkdS5uYW1hQG9zcy5xdWFsY29tbS5jb20+Cgo+IGRybS9tc20vZHA6IFNraXAgSVJRX0hQRCBo
YW5kbGluZyB3aGVuIFBIWSBpcyBvZmYKPgo+IFdoZW4gRFAgaXMgcGx1Z2dlZCwgSVJRX0hQRCBp
cyBkZWxpdmVyZWQgd2hlbiBQSFkgaXMgaW4gdW5pbml0aWFsaXplZAo+IHN0YXRlLCBJbiB0aGlz
IGNhc2UgYXZvaWQgcnVudGltZS1yZXN1bWluZyB0aGUgY29udHJvbGxlciBhbmQKPiBhdHRlbXB0
aW5nIEFVWCBhY2Nlc3MgZm9yIGFuIGFscmVhZHktcGx1Z2dlZCwgd2hpbGUgdGhlCj4gUEhZIGlz
IHVuaW5pdGlhbGl6ZWQgc3RhdGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBuYWlkdSBuYW1hIDxuYWlk
dS5uYW1hQG9zcy5xdWFsY29tbS5jb20+CgpbU2V2ZXJpdHk6IExvd10KVGhpcyBsb29rcyBsaWtl
IGEgYnVnIGZpeCBmb3IgdGhlIEhQRCByZXdvcmsuICBTaG91bGQgdGhpcyBpbmNsdWRlIGEKRml4
ZXM6IHRhZyBmb3IgNTA0MzM1N2U3NWJhICgiZHJtL21zbS9kcDogcmV3b3JrIEhQRCBoYW5kbGlu
ZyIpIG9yCjNlYTJkMWMzZDE1NCAoImRybS9tc20vZHA6IHR1cm4gbGlua19yZWFkeSBpbnRvIHBs
dWdnZWQiKT8KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfZGlzcGxh
eS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5LmMKPiBpbmRleCBjMGMxNTBl
MmM1NzU4Li43OTE2OWMxZjk1YTU3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20v
ZHAvZHBfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9kaXNwbGF5
LmMKPiBAQCAtMTYwNyw2ICsxNjA3LDExIEBAIHZvaWQgbXNtX2RwX2JyaWRnZV9ocGRfbm90aWZ5
KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gIAlzdHJ1Y3QgbXNtX2RwX2Rpc3BsYXlfcHJp
dmF0ZSAqZHAgPSBjb250YWluZXJfb2YobXNtX2RwX2Rpc3BsYXksIHN0cnVjdCBtc21fZHBfZGlz
cGxheV9wcml2YXRlLCBtc21fZHBfZGlzcGxheSk7Cj4gIAl1MzIgaHBkX2xpbmtfc3RhdHVzID0g
MDsKPiAgCj4gKwlpZiAoZHAtPnBsdWdnZWQgJiYgIWRwLT5waHlfaW5pdGlhbGl6ZWQpIHsKPiAr
CQlkcm1fZGJnX2RwKGRwLT5kcm1fZGV2LCAic2tpcHBpbmcgSVJRX0hQRCBpbiBhbiBpbmFjdGl2
ZSBzdGF0ZVxuIik7Cj4gKwkJcmV0dXJuOwo+ICsJfQoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgZWFybHkgcmV0dXJuIGFsc28gZHJvcCB1bnBsdWcgZXZlbnRzIHdoZW4gdGhlIGRpc3BsYXkg
c3RyZWFtIGlzCmRpc2FibGVkPwoKV2hlbiBhbiBleHRlcm5hbCBEUCBvdXRwdXQgaXMgZGlzYWJs
ZWQgd2hpbGUgYSBzaW5rIGlzIHN0aWxsIGNvbm5lY3RlZCwKbXNtX2RwX2Rpc3BsYXlfdW5wcmVw
YXJlKCkgY2FsbHMgbXNtX2RwX2Rpc3BsYXlfaG9zdF9waHlfZXhpdCgpLCBsZWF2aW5nCmRwLT5w
bHVnZ2VkIHNldCB0byB0cnVlIGFuZCBkcC0+cGh5X2luaXRpYWxpemVkIHNldCB0byBmYWxzZS4g
IElmIHRoZSBjYWJsZQppcyB1bnBsdWdnZWQgaW4gdGhhdCBzdGF0ZSwgbXNtX2RwX2JyaWRnZV9o
cGRfbm90aWZ5KCkgaXMgY2FsbGVkIHdpdGgKc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNfZGlz
Y29ubmVjdGVkLCBidXQgdGhpcyBjaGVjayByZXR1cm5zIGJlZm9yZQptc21fZHBfaHBkX3VucGx1
Z19oYW5kbGUoKSBjYW4gcnVuIChldmVuIHRob3VnaCBtc21fZHBfaHBkX3VucGx1Z19oYW5kbGUo
KQpkb2VzIG5vIEFVWCB0cmFuc2FjdGlvbnMpLiAgVGhhdCBsZWF2ZXMgZHAtPnBsdWdnZWQgc3R1
Y2sgYXQgdHJ1ZSwgc2tpcHMKYXVkaW8gYW5kIHN1YmNvbm5lY3RvciBkaXNjb25uZWN0IGNsZWFu
dXAsIGFuZCBsZWFrcyB0aGUgcnVudGltZSBQTQpyZWZlcmVuY2UgYWNxdWlyZWQgYXQgcGx1ZyB0
aW1lLgoKU2hvdWxkIHRoaXMgY2hlY2sgYmUgbGltaXRlZCB0byBJUlFfSFBEIChvciBtb3ZlZCBp
bnRvCm1zbV9kcF9pcnFfaHBkX2hhbmRsZSgpKSBzbyBkaXNjb25uZWN0IG5vdGlmaWNhdGlvbnMg
c3RpbGwgcnVuCm1zbV9kcF9ocGRfdW5wbHVnX2hhbmRsZSgpPwoKW1NldmVyaXR5OiBNZWRpdW1d
CkNhbiByZWFkaW5nIGRwLT5wbHVnZ2VkIGFuZCBkcC0+cGh5X2luaXRpYWxpemVkIHdpdGhvdXQg
ZHAtPnBsdWdnZWRfbG9jawpyYWNlIHdpdGggY29uY3VycmVudCB1bnBsdWcgb3Igc3RyZWFtIHRl
YXJkb3duPwoKQ1BVMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBDUFUxCm1zbV9k
cF9ocGRfdW5wbHVnX2hhbmRsZSgpCiAgbXV0ZXhfbG9jaygmZHAtPnBsdWdnZWRfbG9jaykKICBt
c21fZHBfZGlzcGxheV9ob3N0X3BoeV9leGl0KGRwKQogICAgZHAtPnBoeV9pbml0aWFsaXplZCA9
IGZhbHNlCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbXNtX2RwX2JyaWRn
ZV9ocGRfbm90aWZ5KCkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlm
IChkcC0+cGx1Z2dlZCAmJgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICFkcC0+cGh5X2luaXRpYWxpemVkKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZXR1cm47ICA8LS0gZHJvcHMgSFBEIGV2ZW50CiAgLi4uCiAgZHAtPnBsdWdn
ZWQgPSBmYWxzZQogIG11dGV4X3VubG9jaygmZHAtPnBsdWdnZWRfbG9jaykKCm1zbV9kcF9ocGRf
dW5wbHVnX2hhbmRsZSgpIGNsZWFycyBkcC0+cGh5X2luaXRpYWxpemVkIHVuZGVyCmRwLT5wbHVn
Z2VkX2xvY2sgYmVmb3JlIHBlcmZvcm1pbmcgYXVkaW8gYW5kIHJ1bnRpbWUgUE0gdGVhcmRvd24g
YW5kCmNsZWFyaW5nIGRwLT5wbHVnZ2VkLiAgQ29udmVyc2VseSwgaWYgbXNtX2RwX2Rpc3BsYXlf
dW5wcmVwYXJlKCkgY2FsbHMKbXNtX2RwX2Rpc3BsYXlfaG9zdF9waHlfZXhpdCgpIHJpZ2h0IGFm
dGVyIG1zbV9kcF9icmlkZ2VfaHBkX25vdGlmeSgpCnBhc3NlcyB0aGlzIHVubG9ja2VkIGNoZWNr
LCBtc21fZHBfaXJxX2hwZF9oYW5kbGUoKSB3aWxsIHN0aWxsIHByb2NlZWQgd2l0aApBVVggdHJh
bnNhY3Rpb25zIHdoaWxlIHRoZSBQSFkgaXMgdW5pbml0aWFsaXplZC4KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjExMjcwNzIwNTUu
MjE0NDQwNy0xLW5haWR1Lm5hbWFAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTEKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
