Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7510606A6D3
	for <linux-phy@archiver.kernel.org>; Fri, 20 Nov 2026 19:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Vfz2LcvU;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=QlXmtIOy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:
	In-Reply-To:Cc:To:Subject:From:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ADLx9h3KFVnxl46E7YcIXz4IefwoHanvLjYZ4noM9KA=; b=Vfz2LcvUOZrVEsgJ8dvfxgJVRH
	c7Oe5OQbfgec8J3cM5ceZqGUNYC2s8KlEb7CpIZe9jOU0DiB9Z9jMY/3tk5PjHFlrfv5Ah+k9oshX
	Dt4uJMsBqX8rqTgZB6H9zucfi/SbsXimDQ6t89TwtSoXPhsSRt04Td85zR61Is03rqd8RvkVDohu2
	NHr6+5kYVsZQ1g7EunUxJp+KpWVXk2LQPdR4zgtG1xOglMMBz6E76q+JdqVgBmDkdYys9uC1AxstA
	RGKnBbZWuXJfPz5WcYMKPNuzuuyWB2kWl1K6X/77udD0Hal23iBcA0EV0oQsk5/tumImpdrkNM4Xh
	xlhaVpsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUURH-0000000G7Ji-3jfO;
	Fri, 20 Nov 2026 19:38:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUURG-0000000G7Ix-2Nuq
	for linux-phy@lists.infradead.org;
	Fri, 20 Nov 2026 19:38:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id EF20444487;
	Fri, 20 Nov 2026 19:38:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09B2C1F000C4;
	Fri, 20 Nov 2026 19:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795203505;
	bh=BNd/cbS+QEmMiqM4U/E620YfNOWBNBsrFLbzL2Qo/4g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QlXmtIOy/kW1txFTmB2O/gpGBMpnjkv7ItDSFqvRdvNWy+q5/GcmUPFsT5l5AK+gq
	 TgtFF07bbeoSEZ1wGhXrh3y3rytQEmFEkgkPurO9eTgKBfgODn4ygo1zCq3mjXHqqe
	 YTxtFOu3FpVYlHiq6cDUXTys2krBLNJyy2FM0O7z8N7loBnQTAyNmpXzD7P+MK4XPJ
	 9J7S0c+KrOGuei7OsInbvBTMNhSLETpjcYQaRWyv+VqE2h36go8CjxfeUG+e70tXt9
	 EMnyyLyzvUFUTyB93IBN3wCEP1O92ytWVIOkHyOpkNKM74WgIs6s9xzHEstLNxlOEJ
	 uRzQjDh3YfO6w==
Message-ID: <sashiko-outbox-225934@kernel.org>
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/6] dt-bindings: soc: zte: Document zx297520v3 socsys
 controller
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, mfd@lists.linux.dev, linux-phy@lists.infradead.org, robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, lee@kernel.org
In-Reply-To: <20261120-zx29usb-v1-1-b0433258e51b@gmail.com>
References: <20261120-zx29usb-v1-0-b0433258e51b@gmail.com>
 <20261120-zx29usb-v1-1-b0433258e51b@gmail.com>
Date: Fri, 20 Nov 2026 19:38:24 +0000
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
MSBwb3RlbnRpYWwKaXNzdWUgdG8gY29uc2lkZXI6Ci0gW0xvd10gZHQtYmluZGluZ3M6IHNvYzog
enRlOiBtaXNzaW5nIE1BSU5UQUlORVJTIGVudHJ5IGZvciBwb3dlcgogIGJpbmRpbmcgaGVhZGVy
Ci0tCgpjb21taXQgNDg2NWE1ZWEyZjFkZTc4ODZkYjQwMDMwZjZlOWQ5OGViOTBjYWQ4OQpBdXRo
b3I6IFN0ZWZhbiBEw7ZzaW5nZXIgPHN0ZWZhbmRvZXNpbmdlckBnbWFpbC5jb20+CgpkdC1iaW5k
aW5nczogc29jOiB6dGU6IERvY3VtZW50IHp4Mjk3NTIwdjMgc29jc3lzIGNvbnRyb2xsZXIKClRo
aXMgY29tbWl0IGFkZHMgdGhlIERldmljZSBUcmVlIGJpbmRpbmcgc2NoZW1hLCBwb3dlciBkb21h
aW4gaGVhZGVyLCBhbmQKRXRoZXJuZXQgUEhZIHJlc2V0IGNvbnN0YW50IGZvciB0aGUgWlRFIHp4
Mjk3NTIwdjMgc29jc3lzIG1pc2NlbGxhbmVvdXMKc3lzdGVtIGNvbnRyb2xsZXIuCgo+IGRpZmYg
LS1naXQgYS9NQUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gaW5kZXggOWI2YTJkYTI4YWE1YS4u
YWI4Nzk3YjhkMGE1YSAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVSUwo+ICsrKyBiL01BSU5UQUlO
RVJTCj4gQEAgLTQwMzMsNiArNDAzMyw3IEBAIEY6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0venRlLnlhbWwKPiAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2Nsb2NrL3p0ZSx6eDI5NzUyMHYzLWxzcGNybS55YW1sCj4gIEY6CURvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay96dGUsengyOTc1MjB2My1tYXRyaXhjcm0ueWFtbAo+
ICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svenRlLHp4Mjk3NTIw
djMtdG9wY3JtLnlhbWwKPiArRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Nv
Yy96dGUvenRlLHp4Mjk3NTIwdjMtc29jc3lzLnlhbWwKPiAgRjoJYXJjaC9hcm0vYm9vdC9kdHMv
enRlLwo+ICBGOglhcmNoL2FybS9tYWNoLXp0ZS8KPiAgRjoJZHJpdmVycy9jbGsvenRlLwoKW1Nl
dmVyaXR5OiBMb3ddClNob3VsZCB0aGlzIHNlY3Rpb24gYWxzbyBsaXN0IHRoZSBuZXcKaW5jbHVk
ZS9kdC1iaW5kaW5ncy9wb3dlci96dGUsengyOTc1MjB2My1zb2NzeXMuaCBoZWFkZXIgYWRkZWQg
aW4gdGhpcwpwYXRjaCBhbG9uZ3NpZGUgdGhlIGV4aXN0aW5nIGluY2x1ZGUvZHQtYmluZGluZ3Mv
KiBlbnRyaWVzPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYv
Iy9wYXRjaHNldC8yMDI2MTEyMC16eDI5dXNiLXYxLTAtYjA0MzMyNThlNTFiQGdtYWlsLmNvbT9w
YXJ0PTEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
