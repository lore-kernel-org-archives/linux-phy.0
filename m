Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0D5606A331
	for <linux-phy@archiver.kernel.org>; Thu, 19 Nov 2026 08:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xxxbhxaF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=An17owlk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=f+ymB9S4okKuFN4hHoViDidxbMoPlcFq23MPydwa1Yk=; b=xxxbhxaFXYYLvC2lyFcmg0x986
	b/4pxv4wgCjZ6kdLFDXrLUScgDf2VHxXol3gC4B9DdKJCX8es/5lG4IQf1ZElpTNCLvTlNkH+b+C/
	RklkxTKnJCCGHatDKDXRiw5UHXX03STlX6wuCOXB3xCZe4yaqotyZhx6pcjExwLHOso05DjRJkNWT
	+ZzVpv3a7ZUNaMlzUUQG8Dpi3x6gayT3wSN/SxYsrOHZUhycwRa151w6mtWVXUlCp0ATOVEIwnKdf
	u6as3qJbOkKsoPdb+0634VQeVNs3pwB+Qr737EtvcFPFYV7MB1DFpbflFYoMA6oQi+mwAqS6ga42P
	psQzKuFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTxQN-0000000BAgT-0NIy;
	Thu, 19 Nov 2026 08:23:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTxQL-0000000BAgN-2Qip
	for linux-phy@lists.infradead.org;
	Thu, 19 Nov 2026 08:23:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B462E60EFD;
	Thu, 19 Nov 2026 08:23:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E0761F000C5;
	Thu, 19 Nov 2026 08:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795076596;
	bh=XR+HimQH0IAaS44Ld4EjEMYe22Kbo27KSEC6V5SAs4o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=An17owlk9Szv2dCeGOOo+OKsuFkk/KU3m3LHNJGRwMQsbZWS70XjtPiBbRKui8rsj
	 V4rvBdotjfUSNY3S9ruZ8PeA5GoicIbnEQHVYPkJNXtmm/S1JDaeCKIqsTWe2daHDR
	 Cv/dg0Nlwa1GJ1JyRGqnxmJvcIoeEN4Ck5kCSTiEEqTU5eioqT0gI2u54kvP+dcvR1
	 O7kEc73x01y4o2XQlU4ecCp6UvBDrdcIGZS/7aYUYEv0Cp471kqNKJTikR5YQnddl0
	 pKrZIE7w+V2tBuxzgHr688o5UoYAxQ13X+hBNBvr0CrUFTqjdJDYnR9SzlD9Q2JxO5
	 eBxWO8Sbkkh2g==
Message-ID: <sashiko-outbox-222663@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: berlin-sata: count available child nodes
To: "Wang Haoran" <wanghr2026@mail.zgclab.edu.cn>
Cc: linux-phy@lists.infradead.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <1795076106646-11-85fca065@mail.zgclab.edu.cn>
References: <1795076106646-11-85fca065@mail.zgclab.edu.cn>
Date: Thu, 19 Nov 2026 08:23:15 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gcGh5OiBiZXJsaW4tc2F0
YTogd3JvbmcgYm91bmRzIGNoZWNrIGluCiAgcGh5X2Jlcmxpbl9zYXRhX3BoeV94bGF0ZSgpCi0t
Cgpjb21taXQgMDUyOWRmOWFlOTQwZjUxYWE3MTI4MzgwNzdlYjZiM2VhZDUwNjY1ZApBdXRob3I6
IFdhbmcgSGFvcmFuIDx3YW5naHIyMDI2QG1haWwuemdjbGFiLmVkdS5jbj4KCnBoeTogYmVybGlu
LXNhdGE6IGNvdW50IGF2YWlsYWJsZSBjaGlsZCBub2RlcwoKVGhpcyBjb21taXQgc2l6ZXMgcHJp
di0+bnBoeXMgd2l0aCBvZl9nZXRfYXZhaWxhYmxlX2NoaWxkX2NvdW50KCkgc28gdGhhdApwcml2
LT5waHlzW10gbWF0Y2hlcyB0aGUgbnVtYmVyIG9mIGF2YWlsYWJsZSBjaGlsZCBub2RlcyBwb3B1
bGF0ZWQgZHVyaW5nCnByb2JlLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvbWFydmVsbC9w
aHktYmVybGluLXNhdGEuYyBiL2RyaXZlcnMvcGh5L21hcnZlbGwvcGh5LWJlcmxpbi1zYXRhLmMK
PiBpbmRleCBjOTBlMjg2NzkwMGMzLi4xZDNhZmMyZWI5NTM1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L21hcnZlbGwvcGh5LWJlcmxpbi1zYXRhLmMKPiArKysgYi9kcml2ZXJzL3BoeS9tYXJ2
ZWxsL3BoeS1iZXJsaW4tc2F0YS5jCj4gQEAgLTIxMiw3ICsyMTIsNyBAQCBzdGF0aWMgaW50IHBo
eV9iZXJsaW5fc2F0YV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYg
KElTX0VSUihwcml2LT5jbGspKQo+ICAJCXJldHVybiBQVFJfRVJSKHByaXYtPmNsayk7Cj4gIAo+
IC0JcHJpdi0+bnBoeXMgPSBvZl9nZXRfY2hpbGRfY291bnQoZGV2LT5vZl9ub2RlKTsKPiArCXBy
aXYtPm5waHlzID0gb2ZfZ2V0X2F2YWlsYWJsZV9jaGlsZF9jb3VudChkZXYtPm9mX25vZGUpOwo+
ICAJaWYgKHByaXYtPm5waHlzID09IDApCj4gIAkJcmV0dXJuIC1FTk9ERVY7CgpbU2V2ZXJpdHk6
IE1lZGl1bV0KRG9lcyBzaHJpbmtpbmcgcHJpdi0+bnBoeXMgdG8gdGhlIGF2YWlsYWJsZSBjaGls
ZCBjb3VudCBicmVhayBsb29rdXBzIG9mClBIWSAxIHdoZW4gUEhZIDAgaXMgZGlzYWJsZWQ/Cgpk
cml2ZXJzL3BoeS9tYXJ2ZWxsL3BoeS1iZXJsaW4tc2F0YS5jOnBoeV9iZXJsaW5fc2F0YV9waHlf
eGxhdGUoKSB7CiAgICAuLi4KCWlmIChXQVJOX09OKGFyZ3MtPmFyZ3NbMF0gPj0gcHJpdi0+bnBo
eXMpKQoJCXJldHVybiBFUlJfUFRSKC1FTk9ERVYpOwoKCWZvciAoaSA9IDA7IGkgPCBwcml2LT5u
cGh5czsgaSsrKSB7CgkJaWYgKHByaXYtPnBoeXNbaV0tPmluZGV4ID09IGFyZ3MtPmFyZ3NbMF0p
CgkJCWJyZWFrOwoJfQogICAgLi4uCn0KCmFyZ3MtPmFyZ3NbMF0gaXMgdGhlIGhhcmR3YXJlIFBI
WSBpbmRleCAoMCBvciAxKSwgd2hpY2ggdGhlIGxvb3AgbWF0Y2hlcwphZ2FpbnN0IHByaXYtPnBo
eXNbaV0tPmluZGV4LiAgV2hlbiBQSFkgMCBpcyBkaXNhYmxlZCBhbmQgUEhZIDEgaXMgZW5hYmxl
ZCwKcHJpdi0+bnBoeXMgaXMgMSBhbmQgcHJpdi0+cGh5c1swXS0+aW5kZXggaXMgMSwgc28gcmVx
dWVzdGluZyBQSFkgMSB0cmlwcwpXQVJOX09OKGFyZ3MtPmFyZ3NbMF0gPj0gcHJpdi0+bnBoeXMp
IGFuZCBmYWlscyB3aXRoIC1FTk9ERVYgYmVmb3JlIHJlYWNoaW5nCnRoZSBsb29rdXAgbG9vcC4K
ClNob3VsZCBwaHlfYmVybGluX3NhdGFfcGh5X3hsYXRlKCkgYm91bmQtY2hlY2sgYXJncy0+YXJn
c1swXSBhZ2FpbnN0CkFSUkFZX1NJWkUocGh5X2Jlcmxpbl9wb3dlcl9kb3duX2JpdHMpLCBtYXRj
aGluZyBwaHlfYmVybGluX3NhdGFfcHJvYmUoKT8KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBo
dHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMTc5NTA3NjEwNjY0Ni0xMS04NWZjYTA2NUBt
YWlsLnpnY2xhYi5lZHUuY24/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
