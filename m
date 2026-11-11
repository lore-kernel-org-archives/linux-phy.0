Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7215F606A33A
	for <linux-phy@archiver.kernel.org>; Wed, 11 Nov 2026 10:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oAaYh/t5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HbumOmzS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=4SGPeV7v4ZdhmuZGYRNZ4+dL4aIEHnqPqjlWDA3KO9E=; b=oAaYh/t5TiTszxEF1PumDGR5dR
	8/1Sfkfqn1MNzenT6DbJZg+u070QTuz432OEAevgisJDO5xKm/atzbyOEVfju4zD1TT7yIof6uozw
	636FkzIcPtokKigpYbO6xKmemvR4dm6+0VbAF4jkSOvckykt9RJeEHaEq47ntzNNRVI53l6o0kzEt
	okgy66ZDHN0hlJEJZLjyCxleSBsUYVEEUO9Wy8yueHCrhprmLQAbfT7DlZJcIy1psvRpoJdeuMKHX
	mFbArKDCl0v6aA3hQLN7UZ/1EG09ijYH0lFimhPlGkg97WlMhu98Trql16xU0Iu2oiyrHcJbEKJCf
	zxMFZdGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR61Z-00000006OsA-0qTr;
	Wed, 11 Nov 2026 10:57:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xR61Y-00000006Os0-0Xp3
	for linux-phy@lists.infradead.org;
	Wed, 11 Nov 2026 10:57:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 56C4B61844;
	Wed, 11 Nov 2026 10:57:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B56E81F00A05;
	Wed, 11 Nov 2026 10:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794394671;
	bh=xuhnAix/PovpJYTi+noHQXGmLyHH25k4j22HO2e2CdU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HbumOmzSkyQX4G0KZ+I4lOQJrxOALWCDgBMlEVsAahJSALUNpBMhw3lP4mMj6KIDS
	 ap4XliJI5dhtE184xC027IIZtzBOWRnn57SnpnjQF9NuDWNa59Z548ZbW+nV7YSk7Q
	 nF7B4oMs0ju3vi+TkA5LpnSKgiiszVBIejpNORsq3hjRUudSkH/SGmnGUHaO6WprY5
	 x6q3J8OT2iBlLDJPlsZKiw8cwJwurl0XKZnPQxgm73MZh6VBJPpxwzRFsNw+TwBVIs
	 Hfc1CPfq2bbGGM269Yok8UOoiXdX28+04yn/tWSs9B7v580wpZ1RhUvA3GR61a8Ixn
	 PD+JN08Rlvoog==
Message-ID: <sashiko-outbox-208837@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/3] drm/msm/dp: Remove redundant force_link_train
 flag
To: "naidu nama" <naidu.nama@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261111104434.2222182-3-naidu.nama@oss.qualcomm.com>
References: <20261111104434.2222182-1-naidu.nama@oss.qualcomm.com>
 <20261111104434.2222182-3-naidu.nama@oss.qualcomm.com>
Date: Wed, 11 Nov 2026 10:57:50 +0000
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gZHJtL21zbS9kcDogaW5h
Y2N1cmF0ZSBjb21taXQgbWVzc2FnZSBmb3IKICBtc21fZHBfY3RybF9wcmVwYXJlX3N0cmVhbV9v
bigpCi0tCgpjb21taXQgYzA2YTVhNTcxYTZjYWQzN2Y3MDg3ZDE5ZDJjNzFjNjY3N2U4ZmJjNwpB
dXRob3I6IFNhdXJhYmggQW5hbmQgPHNhdXJhYmguYW5hbmRAb3NzLnF1YWxjb21tLmNvbT4KCj4g
ZHJtL21zbS9kcDogUmVtb3ZlIHJlZHVuZGFudCBmb3JjZV9saW5rX3RyYWluIGZsYWcKPgo+IGZv
cmNlX2xpbmtfdHJhaW4gaXMgYWx3YXlzIGZhbHNlIHdoZW4gcGFzc2VkIHRvCj4gbXNtX2RwX2N0
cmxfcHJlcGFyZV9zdHJlYW1fb24oKTogdGhlIGluaXRpYWwgbGluayBpcyB0cmFpbmVkIGJ5Cj4g
bXNtX2RwX2N0cmxfb25fbGluaygpLCBhbmQgdGhlIGZsYWcgaXMgY2xlYXJlZCBiZWZvcmUgc3Ry
ZWFtIHByZXBhcmF0aW9uLgo+IEZvciBhY3RpdmUgc3RyZWFtcywgaXQgaXMgbmV2ZXIgc2V0Lgo+
Cj4gUmVtb3ZlIHRoZSBkZWFkIGZsYWcgYW5kIHBhcmFtZXRlci4gU3RyZWFtIHByZXBhcmF0aW9u
IHN0aWxsIHJldHJhaW5zCj4gd2hlbiBjaGFubmVsIGVxdWFsaXphdGlvbiBpcyBpbmNvbXBsZXRl
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogU2F1cmFiaCBBbmFuZCA8c2F1cmFiaC5hbmFuZEBvc3MucXVh
bGNvbW0uY29tPgoKW1NldmVyaXR5OiBNZWRpdW1dCklzIHRoZSBjb21taXQgbWVzc2FnZSBhY2N1
cmF0ZSBhYm91dCBmb3JjZV9saW5rX3RyYWluIGFsd2F5cyBiZWluZyBmYWxzZT8KCkluIG1zbV9k
cF9kaXNwbGF5X3ByZXBhcmVfbGluaygpLCB3aGVuICFtc21fZHBfZGlzcGxheS0+cG93ZXJfb24g
aG9sZHMgb24KZGlzcGxheSBlbmFibGUsIGZvcmNlX2xpbmtfdHJhaW4gaXMgc2V0IHRvIHRydWUg
YW5kIHBhc3NlZCBkaXJlY3RseSB0bwptc21fZHBfY3RybF9wcmVwYXJlX3N0cmVhbV9vbigpIHdp
dGhvdXQgYmVpbmcgY2xlYXJlZC4gIFJhdGhlciB0aGFuCnJlbW92aW5nIGEgZGVhZCBmbGFnLCB0
aGlzIGNoYW5nZSBzdG9wcyBtc21fZHBfY3RybF9wcmVwYXJlX3N0cmVhbV9vbigpCmZyb20gdW5j
b25kaXRpb25hbGx5IGNhbGxpbmcgbXNtX2RwX2N0cmxfbGlua19yZXRyYWluKCkgYSBzZWNvbmQg
dGltZQpyaWdodCBhZnRlciBtc21fZHBfY3RybF9vbl9saW5rKCkgaGFzIGFscmVhZHkgdHJhaW5l
ZCB0aGUgbGluay4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2
LyMvcGF0Y2hzZXQvMjAyNjExMTExMDQ0MzQuMjIyMjE4Mi0xLW5haWR1Lm5hbWFAb3NzLnF1YWxj
b21tLmNvbT9wYXJ0PTIKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
