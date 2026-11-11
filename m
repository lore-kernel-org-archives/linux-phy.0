Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94E80606A31C
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 10:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FfFQQjOD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fNnTUGZH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SNmgnptdfn7W385oybAkOYctJgRC6RV3rJixyhAkAgw=; b=FfFQQjODDnFHnt7Cbcnkll1OhP
	aH9yVVGwY3LVe4MLBJVj3S0cUuPmisjsd8/a/bFKzgUnkOqFZNoi4pJzsVXRAZ+M+cxVR1l84hKpQ
	pqI4MWuwO69ibEi9PaldsqeDQaH+fblEiMbisMl4YMd02WWVNZUEieVOukBdyWas7eXlMyVh+hB5M
	7qyrYg+536OXFyxUuXL5LhPIYMVl9G3IKOmyGfPXLA0GJO47x7Qzbt3D/dUdKZcOBovEOSr6wCICJ
	2EYT2hx3bFSSkR2CuCjCQjCxthIVOFNZ7GentwZ7t8M3VXu7jkfEnvZd5AvN0BPNX76CDBS8oZcs5
	vvP02L4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR629-00000006OuO-1RP1;
	Wed, 11 Nov 2026 10:58:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR628-00000006OuD-0Hn8
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 10:58:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3632963000;
	Wed, 11 Nov 2026 10:58:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 976761F00A05;
	Wed, 11 Nov 2026 10:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794394706;
	bh=EnYsD0a4kS9tzKhB3SVsnrlBjDBKM5vQ4H4Ua+5YLj8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fNnTUGZH3kNBBlcSvUFzsdLEtP49pw8PhNxevKvkQ5CXCprjHJ1PvZqzJKcPh9JoD
	 RnHUOu7qeglC9i2vbF8hWALSkcr86SUoJARkSk3xHzksdQqgSx8zQArqmZzkrPQocU
	 LJcAQ/Nv6ThcwdkYH44cQWpVPjawuGZtlQi/59DoOOd02sXR1UOk2iaokLZ+sscu5S
	 j4OGucudyztwg1oBXSXbO9un4QJQjCRbh3bjjQoA9qpb7379af/OhVtLPheFxu5o/e
	 Vm1iG9Kb0GimiDuzPBGUmqaCo44rX28YDYXH6NrajfVZxVtxnXuZm4QodSXOHQXXsK
	 CpCqgCq9b+BFw==
Message-ID: <sashiko-outbox-208838@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] drm/msm/dp: continue link training downgrade
 when cable is still plugged
To: "naidu nama" <naidu.nama@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261111104434.2222182-4-naidu.nama@oss.qualcomm.com>
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-4-naidu.nama@oss.qualcomm.com>
Date: Wed, 11 Nov 2026 10:58:26 +0000
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MiBwb3RlbnRpYWwKaXNzdWVzIHRvIGNvbnNpZGVyOgotIFtNZWRpdW1dIGRybS9tc20vZHA6IHBh
c3MtYnktdmFsdWUgcGx1Z2dlZCBpbiBtc21fZHBfY3RybF9vbl9saW5rKCkKICBicmVha3MgdW5w
bHVnIGFib3J0Ci0gW01lZGl1bV0gZHJtL21zbS9kcDogdW5pbml0aWFsaXplZCBsaW5rX3N0YXR1
cyByZWFkIGluCiAgbXNtX2RwX2N0cmxfb25fbGluaygpCi0tCgpjb21taXQgMDNkNmIyMmFhOTM3
ODQ1OGFiOTRjNjE5M2Y3OWFkNjliMjRjZmUzMgpBdXRob3I6IFNhdXJhYmggQW5hbmQgPHNhdXJh
YmguYW5hbmRAb3NzLnF1YWxjb21tLmNvbT4KCmRybS9tc20vZHA6IGNvbnRpbnVlIGxpbmsgdHJh
aW5pbmcgZG93bmdyYWRlIHdoZW4gY2FibGUgaXMgc3RpbGwgcGx1Z2dlZAoKVGhpcyBjb21taXQg
cGFzc2VzIGRwLT5wbHVnZ2VkIGludG8gbXNtX2RwX2N0cmxfb25fbGluaygpIHNvIHRoZSBsaW5r
CnRyYWluaW5nIHJldHJ5IGxvb3Agb25seSBhYm9ydHMgd2hlbiBib3RoIG1zbV9kcF9hdXhfaXNf
bGlua19jb25uZWN0ZWQoKQphbmQgcGx1Z2dlZCBhcmUgZmFsc2UuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYyBiL2RyaXZlcnMvZ3B1L2RybS9tc20vZHAv
ZHBfY3RybC5jCj4gaW5kZXggNmI5ZDlhNzZiYTA1OS4uZjhhNmJkN2IwZDEwNyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2N0cmwuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9tc20vZHAvZHBfY3RybC5jCgpbIC4uLiBdCgo+IEBAIC0yMzc3LDcgKzIzNzgsNyBAQCBz
dGF0aWMgYm9vbCBtc21fZHBfY3RybF9jaGFubmVsX2VxX29rKHN0cnVjdCBtc21fZHBfY3RybF9w
cml2YXRlICpjdHJsKQo+ICB9Cj4gIAo+ICBpbnQgbXNtX2RwX2N0cmxfb25fbGluayhzdHJ1Y3Qg
bXNtX2RwX2N0cmwgKm1zbV9kcF9jdHJsLAo+IC0JCQlzdHJ1Y3QgbXNtX2RwX3BhbmVsICpwYW5l
bCkKPiArCQkJc3RydWN0IG1zbV9kcF9wYW5lbCAqcGFuZWwsIGJvb2wgcGx1Z2dlZCkKPiAgewo+
ICAJaW50IHJjID0gMDsKPiAgCXN0cnVjdCBtc21fZHBfY3RybF9wcml2YXRlICpjdHJsOwo+IEBA
IC0yNDI3LDcgKzI0MjgsNyBAQCBpbnQgbXNtX2RwX2N0cmxfb25fbGluayhzdHJ1Y3QgbXNtX2Rw
X2N0cmwgKm1zbV9kcF9jdHJsLAo+ICAJCQlicmVhazsKPiAgCQl9IGVsc2UgaWYgKHRyYWluaW5n
X3N0ZXAgPT0gRFBfVFJBSU5JTkdfMSkgewo+ICAJCQkvKiBsaW5rIHRyYWluXzEgZmFpbGVkICov
Cj4gLQkJCWlmICghbXNtX2RwX2F1eF9pc19saW5rX2Nvbm5lY3RlZChjdHJsLT5hdXgpICYmICFw
bHVnZ2VkKQo+ICsJCQlpZiAoIW1zbV9kcF9hdXhfaXNfbGlua19jb25uZWN0ZWQoY3RybC0+YXV4
KSAmJiAhcGx1Z2dlZCkKPiAgCQkJCWJyZWFrOwoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMgcGFz
c2luZyBkcC0+cGx1Z2dlZCBieSB2YWx1ZSBpbnRvIG1zbV9kcF9jdHJsX29uX2xpbmsoKSBwcmV2
ZW50IHRoZQpyZXRyeSBsb29wIGZyb20gZXZlciBicmVha2luZyBvdXQgb24gYW4gdW5wbHVnIGR1
cmluZyBsaW5rIHRyYWluaW5nPwoKQXQgYm90aCBjYWxsZXJzIChtc21fZHBfZGlzcGxheV9wcmVw
YXJlX2xpbmsoKSBhbmQKbXNtX2RwX2Rpc3BsYXlfaGFuZGxlX2lycV9ocGQoKSksIGRwLT5wbHVn
Z2VkIGlzIHRydWUgd2hlbiBsaW5rIHRyYWluaW5nCnN0YXJ0cywgYW5kIG1zbV9kcF9kaXNwbGF5
X3ByZXBhcmVfbGluaygpIGFsc28gcmVhZHMgZHAtPnBsdWdnZWQgd2l0aG91dApob2xkaW5nIGRw
LT5wbHVnZ2VkX2xvY2suICBJZiB0aGUgY2FibGUgaXMgdW5wbHVnZ2VkIHdoaWxlIHRoZSByZXRy
eSBsb29wIGlzCnJ1bm5pbmcsIG1zbV9kcF9ocGRfdW5wbHVnX2hhbmRsZSgpIHNldHMgZHAtPnBs
dWdnZWQgPSBmYWxzZSwgYnV0IHRoZSBsb2NhbApwbHVnZ2VkIHBhcmFtZXRlciBpbiBtc21fZHBf
Y3RybF9vbl9saW5rKCkgc3RheXMgdHJ1ZSBmb3IgZXZlcnkgaXRlcmF0aW9uLApzbyAhcGx1Z2dl
ZCBpcyBhbHdheXMgZmFsc2UgYW5kIGFsbCByZW1haW5pbmcgZG93bnNoaWZ0IHJldHJpZXMgYW5k
IFBIWQpwb3dlci1jeWNsZXMgc3RpbGwgcnVuIG9uIHRoZSBkaXNjb25uZWN0ZWQgbGluay4KCkFs
c28sIHRoZSBjb21taXQgbWVzc2FnZSByZWZlcnMgdG8gbXNtX2RwX2N0cmwtPnBsdWdnZWQsIHdo
aWNoIGRvZXMgbm90CmV4aXN0IGluIHN0cnVjdCBtc21fZHBfY3RybCBvciBzdHJ1Y3QgbXNtX2Rw
X2N0cmxfcHJpdmF0ZS4KCj4gIAo+ICAJCQlkcm1fZHBfZHBjZF9yZWFkX2xpbmtfc3RhdHVzKGN0
cmwtPmF1eCwgbGlua19zdGF0dXMpOwo+IEBAIC0yNDUyLDcgKzI0NTMsNyBAQCBpbnQgbXNtX2Rw
X2N0cmxfb25fbGluayhzdHJ1Y3QgbXNtX2RwX2N0cmwgKm1zbV9kcF9jdHJsLAo+ICAJCQl9Cj4g
IAkJfSBlbHNlIGlmICh0cmFpbmluZ19zdGVwID09IERQX1RSQUlOSU5HXzIpIHsKPiAgCQkJLyog
bGluayB0cmFpbl8yIGZhaWxlZCAqLwo+IC0JCQlpZiAoIW1zbV9kcF9hdXhfaXNfbGlua19jb25u
ZWN0ZWQoY3RybC0+YXV4KSAmJiAhcGx1Z2dlZCkKPiArCQkJaWYgKCFtc21fZHBfYXV4X2lzX2xp
bmtfY29ubmVjdGVkKGN0cmwtPmF1eCkgJiYgIXBsdWdnZWQpCj4gIAkJCQlicmVhazsKPiAgCj4g
IAkJCWRybV9kcF9kcGNkX3JlYWRfbGlua19zdGF0dXMoY3RybC0+YXV4LCBsaW5rX3N0YXR1cyk7
CgpbU2V2ZXJpdHk6IE1lZGl1bV0KV2hlbiBjb250aW51aW5nIHBhc3QgIW1zbV9kcF9hdXhfaXNf
bGlua19jb25uZWN0ZWQoY3RybC0+YXV4KSBpbiB0aGUKRFBfVFJBSU5JTkdfMSBhbmQgRFBfVFJB
SU5JTkdfMiBmYWlsdXJlIHBhdGhzLCBjYW4gdGhpcyByZWFkIHVuaW5pdGlhbGl6ZWQKc3RhY2sg
Ynl0ZXMgZnJvbSBsaW5rX3N0YXR1c1tdPwoKbGlua19zdGF0dXMgaXMgZGVjbGFyZWQgb24gdGhl
IHN0YWNrIHdpdGhvdXQgaW5pdGlhbGl6YXRpb24gaW4KbXNtX2RwX2N0cmxfb25fbGluaygpLiAg
V2hlbiB0aGUgQVVYIGNoYW5uZWwgaXMgdHJhbnNpZW50bHkgZGlzY29ubmVjdGVkIG9yCmEgY29u
Y3VycmVudCB1bnBsdWcgZGlzYWJsZXMgQVVYIHRyYW5zZmVycywgZHJtX2RwX2RwY2RfcmVhZF9s
aW5rX3N0YXR1cygpCmZhaWxzIHdpdGhvdXQgd3JpdGluZyB0byBsaW5rX3N0YXR1cywgYW5kIGl0
cyByZXR1cm4gdmFsdWUgaXMgbm90IGNoZWNrZWQKYmVmb3JlIG1zbV9kcF9jdHJsX2Nsb2NrX3Jl
Y292ZXJ5X2FueV9vaygpIGFuZCBkcm1fZHBfY2xvY2tfcmVjb3Zlcnlfb2soKQppbnNwZWN0IGxp
bmtfc3RhdHVzIHRvIGNob29zZSBiZXR3ZWVuIHJhdGUgZG93bnNoaWZ0LCBsYW5lIGRvd25zaGlm
dCwgYW5kCmFib3J0LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5k
ZXYvIy9wYXRjaHNldC8yMDI2MTExMTEwNDQzNC4yMjIyMTgyLTEtbmFpZHUubmFtYUBvc3MucXVh
bGNvbW0uY29tP3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
