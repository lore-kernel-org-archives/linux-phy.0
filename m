Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E993606A32D
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 08:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zWeU4eAq;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bf3Y7QzX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=0LJdDnQEehLPL0dNLBsp4QJR6GX0S9cXPg7Q/ewQWxY=; b=zWeU4eAqzzuDJUt2LETxSB8DUv
	42KnLzXIWYCnLvyh+Wk4e9HHJuHaqgnrNBWdQGse6IFZ/QydO73y6bP0hvJYcMoINSxJ5suVGY4eT
	uTW050HqbnfLNdBvW3eJnfkYsD/sAKZAii2Su2i2FTWT7M8qKOoPVdf+VBgMQxkUpg1amhXaEQV2d
	NVKgDubNySbiB01M0b/wOA4tg6C0cG3QFnm8W/HHrfp9qk3feFlTS8TIXfPnBOmburMyTB7DkiekG
	SdTHFgO46Qw2SSrUV22SRgpW9RZGAN2OCT+6VTGL5pS4nY1g/6IuinpLU8cmSdGZtiQv26bgEP+ZG
	sYKJkF+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQSX-00000009E6G-0lBD;
	Thu, 12 Nov 2026 08:47:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQSS-00000009E5p-2RA6
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 08:47:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 23F91409BA;
	Thu, 12 Nov 2026 08:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB1151F00A05;
	Thu, 12 Nov 2026 08:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794473220;
	bh=z5KhhWx50YT4D4+QTlT8f1O8p6aTMvwTja+x7Ah6E6w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bf3Y7QzXI2Do7hiimUm1aKIIAOJi1HvtpWdxIbQQ9RwvzsKMgH+LgmGTcuvwrfqHy
	 7JrkSqfFgqOqTIgpKdlVUMQka6DOW91j4RZfRbB6oQAYYDzzALGrRfiCsoAeW4pkIv
	 FrZ+2xHZk+yZuew4D1Rkl6QfxMMKXtkJyadnyRRSfOTiPXwuwfWvLQmKzP4X776mgf
	 dctLtvqKqBbZbklRogLi9rMd0VHVxLlm3CzMHe9b/5XGI1q1cTYFP8SgXoRledqfZk
	 hCnq4McPB1pkQL424FemiNvWrNuWdB9LYEGq2aWLaIgogkxACGEEjc/4HLdrukAVEk
	 JgKDebSN3Sjkg==
Message-ID: <sashiko-outbox-210782@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] phy: qualcomm: phy-qcom-eusb2-repeater: Fix SMB
 Power leakage issue
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
References: <20261112-smb-repeater-power-leakage-v2-1-0f8ee55c4962@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 08:46:59 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gcGh5OiBxY29tOiBldXNiMi1y
ZXBlYXRlcjogbWlzc2luZyBGaXhlcyB0cmFpbGVyIGZvcgogIGV1c2IyX3JlcGVhdGVyX2V4aXQo
KQotLQoKY29tbWl0IDU4NmYyYzhiZmY5OWMzNGQyNmI0Yjg5MWYyZGRhYjU1ZjAwMGM2OGYKQXV0
aG9yOiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+
Cgo+IHBoeTogcXVhbGNvbW06IHBoeS1xY29tLWV1c2IyLXJlcGVhdGVyOiBGaXggU01CIFBvd2Vy
IGxlYWthZ2UgaXNzdWUKPgo+IE9uIEdseW11ciwgaXQgaXMgb2JzZXJ2ZWQgdGhhdCBhbHRob3Vn
aCB0aGUgZXhpdCBjYWxsIGlzIGRvbmUsIHRoZXJlIGlzIGEKPiBwb3dlciBsZWFrYWdlIHNlZW4g
b24gU01CMjM3MCBjaGFyZ2VyICh3aGljaCBlbWJlZHMgdGhlIGVVU0IyIG1vZHVsZSBhcwo+IHdl
bGwpLiBBcyBwZXIgcmVjb21tZW5kYXRpb24gb2YgSFcgdGVhbSwgZGlzYWJsZSB0aGUgcmVwZWF0
ZXIgZHVyaW5nIHRoZQo+IGV4aXQgY2FsbCB0byBwcmV2ZW50IHRoaXMgcG93ZXIgbGVha2FnZS4K
Pgo+IFJldmlld2VkLWJ5OiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29t
bS5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5z
YWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cj4gUmV2aWV3ZWQtYnk6IEFiZWwgVmVzYSA8YWJl
bC52ZXNhQG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBLdXJhcGF0
aSA8a3Jpc2huYS5rdXJhcGF0aUBvc3MucXVhbGNvbW0uY29tPgoKW1NldmVyaXR5OiBMb3ddClNp
bmNlIGV1c2IyX3JlcGVhdGVyX2V4aXQoKSBoYXMgbGVmdCBFVVNCMl9FTl9DVEwxIGVuYWJsZWQg
c2luY2UgdGhlCmRyaXZlciB3YXMgaW50cm9kdWNlZCwgc2hvdWxkIHRoaXMgaW5jbHVkZSBhIEZp
eGVzIHRhZz8KCiAgRml4ZXM6IDU2ZDc3YzlhMTBkOSAoInBoeTogcWNvbTogQWRkIFFDT00gU05Q
UyBlVVNCMiByZXBlYXRlciBkcml2ZXIiKQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBz
Oi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MTExMi1zbWItcmVwZWF0ZXItcG93ZXItbGVh
a2FnZS12Mi0xLTBmOGVlNTVjNDk2MkBvc3MucXVhbGNvbW0uY29tP3BhcnQ9MQoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
