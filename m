Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBED7CD343F
	for <linux-phy@archiver.kernel.org>; Tue, 12 May 2026 23:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIgDXzCBe2c1vENbvEwNTVv0NfEMXrNr8qOGvXulnbY=; b=xk4WOKy4ateHrK
	/lSdX2PwgFJD6Ke2jZGR0n9eV8ZBH7hStW4/f2pAX19pseKfMhEo2mJCA1f81k0s0tbAsDWU2Lfjl
	jvczApnuZNmSMtA+2bDr3W9tC/9ACtumEsV1DID1WJ5L+SIDjPvEAlnjRryMCz2pglKByEqqFvQy0
	vRfrcLmVYHSIkwVsNNdpZD2tRvmE8A7KeS8CAaAetPUoJjicXc5MKbfqj2qggzXmLq3U5x7vbn0yo
	TKfyX579RGBsQNH8rqST4ZDodSMbHeTeT3WGWS6NWP/RoGkzUg8IEnSMxHpDDOvKM0L5s5GYWhUnJ
	eSqxxnWDh5lMIxcF+afQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMwXu-00000000hDv-1I7y;
	Tue, 12 May 2026 23:29:50 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMwXt-00000000hDn-3jS8
	for linux-phy@lists.infradead.org;
	Tue, 12 May 2026 23:29:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id E537D600CB;
	Tue, 12 May 2026 23:29:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0879EC2BCB0;
	Tue, 12 May 2026 23:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778628588;
	bh=hDGHq5g8jROhclV+0ARV69u62kgBnJESy6IHiEclmRo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=X0jk+2CthWs//Zw61HDIEQpMIVsTvYgA3boP0ds0iNk/gS+j2pvWNUbxOSPpRfOAe
	 fEllWHxiSYieYEXiDXCIr10s+Li/GYkGvJNZmrk+JrLRQw63sNCq/J7SClvH3mPZZD
	 H/uO6WbILklRUDw3h+tD4WsbUHJI1M4zvVWrH/OJ8kTxeEaDTwjZr95TETNaHrg6+J
	 1dAlpnQLAZhyLY/SNm56dGDsk8Xa2948zBIL6RASytaM5PSje3Y6KXzWRQugclG+zj
	 XqS5EuJWtw3heDS/kv+MlLPFYjjGfjskUBibGt0diVlyyluxyxR1Yir7wotuS2pKcI
	 38ZxO/e7qKr/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/6] dt-bindings: usb: ci-hdrc-usb2: Document
 nvidia,external-control property
To: "Svyatoslav Ryhel" <clamor95@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, vkoul@kernel.org
In-Reply-To: <20260511135703.62470-2-clamor95@gmail.com>
References: <20260511135703.62470-2-clamor95@gmail.com>
Date: Tue, 12 May 2026 23:29:47 +0000
Message-Id: <20260512232948.0879EC2BCB0@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIHZlbmRvci1zcGVj
aWZpYyBwcm9wZXJ0eSBgbnZpZGlhLGV4dGVybmFsLWNvbnRyb2xgIGlzIG5vdCBjb25zdHJhaW5l
ZCB0byBOVklESUEtY29tcGF0aWJsZSBkZXZpY2VzLgotLQoKY29tbWl0IDJmYzhhODAwYWI5YzE0
MDkyMTdmZDdmNmIzNzBlOTliOWNjNmQzZTcKQXV0aG9yOiBTdnlhdG9zbGF2IFJ5aGVsIDxjbGFt
b3I5NUBnbWFpbC5jb20+CgpkdC1iaW5kaW5nczogdXNiOiBjaS1oZHJjLXVzYjI6IERvY3VtZW50
IG52aWRpYSxleHRlcm5hbC1jb250cm9sIHByb3BlcnR5CiAgICAKVGhpcyBjb21taXQgYWRkcyB0
aGUgbnZpZGlhLGV4dGVybmFsLWNvbnRyb2wgcHJvcGVydHkgdG8gdGhlIGNpLWhkcmMtdXNiMgpi
aW5kaW5nLiBJdCBpcyB1c2VkIHRvIGluZGljYXRlIHRoYXQgdGhlIGNvbnRyb2xsZXIgaXMgY29u
ZmlndXJlZCBleHRlcm5hbGx5LApzdWNoIGFzIGJ5IGEgbW9kZW0gcmVxdWlyaW5nIHByZWNpc2Ug
YnVzIGNvbnRyb2wuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3VzYi9jaS1oZHJjLXVzYjIueWFtbAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91c2IvY2ktaGRyYy11c2IyLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2NpLWhkcmMtdXNiMi55YW1sCgpbIC4uLiBdCgo+IEBA
IC03NSw2ICs3NSwxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgdHlwZTogYm9vbGVhbgo+ICAgICAg
ZGVwcmVjYXRlZDogdHJ1ZQo+ICAKPiArICBudmlkaWEsZXh0ZXJuYWwtY29udHJvbDoKPiArICAg
IGRlc2NyaXB0aW9uOgo+ICsgICAgICBJbmRpY2F0ZXMgdGhhdCB0aGUgY29udHJvbGxlciBpcyBj
b25maWd1cmVkIGV4dGVybmFsbHkgYW5kIHRoYXQgdGhlIGhvc3QKPiArICAgICAgc2hvdWxkIG5v
dCBhdHRlbXB0IHRvIHRvdWNoIGl0LiBVc3VhbGx5IHVzZWQgYnkgYSBtb2RlbSB3aGljaCByZXF1
aXJlcwo+ICsgICAgICBwcmVjaXNlIGJ1cyBjb25maWd1cmF0aW9uLgo+ICsgICAgdHlwZTogYm9v
bGVhbgo+ICsKCkNvdWxkIHRoaXMgcHJvcGVydHkgYmUgY29uc3RyYWluZWQgdG8gTlZJRElBLWNv
bXBhdGlibGUgZGV2aWNlcyB1c2luZyBhbgphbGxPZiBibG9jayB3aXRoIGFuIGlmLXRoZW4gc3Rh
dGVtZW50PwoKQmVjYXVzZSBpdCBpcyBkZWZpbmVkIGF0IHRoZSB0b3AgbGV2ZWwgb2YgdGhlIHNo
YXJlZCBiaW5kaW5nLCB1bnJlbGF0ZWQKZGV2aWNlIG5vZGVzIGNvdWxkIGluY29ycmVjdGx5IGlu
Y2x1ZGUgbnZpZGlhLGV4dGVybmFsLWNvbnRyb2wgYW5kIHN0aWxsCnBhc3Mgc2NoZW1hIHZhbGlk
YXRpb24uCgo+ICAgIHVscGk6Cj4gICAgICB0eXBlOiBvYmplY3QKPiAgICAgIGFkZGl0aW9uYWxQ
cm9wZXJ0aWVzOiBmYWxzZQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlr
by5kZXYvIy9wYXRjaHNldC8yMDI2MDUxMTEzNTcwMy42MjQ3MC0xLWNsYW1vcjk1QGdtYWlsLmNv
bT9wYXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
