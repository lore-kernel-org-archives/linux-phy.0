Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93FFE606A909
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 11:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jT+EjFUv;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Yckc27hE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=gmeyaB9VH1Ke1ibqEgyKHHIBUVNSD3ffCVMlsKUxbXo=; b=jT+EjFUvKqqxSb1dtAQwKPQuPF
	NfwOahaKQBVL3OnZJ5Ts0mDi7BJCm5vFbJ/HY9qaNi7OplL5E0pnZPJ66mtwmIWN2DS4ORV1pDt4d
	pIMD5NF2kC7nbXqTI7TK1VBatgc2Bgzfn1hSBf3fH/JQ2+IUs60mxbr14/iDCVfga3dNusQcjdziM
	4Kg0ftq0rVMX2hgh7//fWxfQ82cdlO1dU2C9BepzABScXKJaJSL8QVfNbfVZGo3JjC+58HXBwYnGo
	+fGYHn+IxK6Jid8uCo0pp8S0Fcg9y/w4rFqMxvL2bC+Nc5FmKBFEmEASVUuxnjXMWXwXfrNWzaKPY
	XOkQiERQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOw0v-00000008mDm-1OYt;
	Thu, 05 Nov 2026 11:52:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOw0t-00000008mDY-1wk1;
	Thu, 05 Nov 2026 11:52:15 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 29C0040820;
	Thu,  5 Nov 2026 11:52:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47BAF1F00A1E;
	Thu,  5 Nov 2026 11:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793879535;
	bh=rD8RmJQMPrsB8PneNmgZfAY2EXizpS1GrqOCM57L41Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Yckc27hEL9olUgu869FUQCQ9mLJcNnti/uo61805ZdIL9ud0XP4WrNlW6ZRhmCsDU
	 E7fI3BMRFZxKzMWFrz+MqsJAfTvE+aKYY5tG5+ThqSlFGqfjKbOoPNLncfPdVPHJ70
	 Ll+YnrbD8Dm8KML02lcJH8mGPCH2dXuHorKsjB9C3dD0T6FtRy62uddEWYBIphwU40
	 KCkJuhBECKiW03R5p2mjrlrEa+zWGIRsSYxHg63jVlYW8LYxmMOYcJfRN2Vo8mltbg
	 3VLOZgxgcY+uqNvRDVWTZDpcVtoQpc3u89DhK20bBDTKf3NoJJE1pGgjyXAWRTJk6F
	 0FGz6ZspxCuzg==
Date: Thu, 5 Nov 2026 12:52:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hongliang Yang =?utf-8?B?KOadqOWuj+S6rik=?= <hongliang.yang@cixtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Gary Yang =?utf-8?B?KOadqOaWsOS8nyk=?= <Gary.Yang@cixtech.com>, 
	Fugang Duan =?utf-8?B?KOauteWvjOWImik=?= <fugang.duan@cixtech.com>, "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, cix-kernel-upstream <cix-kernel-upstream@cixtech.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: phy: Add CIX Sky1 USB3 PHY
Message-ID: <20261105-kind-macaque-of-enhancement-ee0365@quoll>
References: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
 <20261105011751.4058411-2-hongliang.yang@cixtech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261105011751.4058411-2-hongliang.yang@cixtech.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBOb3YgMDUsIDIwMjYgYXQgMDE6MTc6NTlBTSArMDAwMCwgSG9uZ2xpYW5nIFlhbmcg
KOadqOWuj+S6rikgd3JvdGU6Cj4gQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZm9yIHRoZSBDSVgg
U2t5MSBVU0IzIFBIWSwgYSBtdWx0aS1wb3J0Cj4gU3VwZXJTcGVlZFBsdXMgUEhZIHN1cHBvcnRp
bmcgdXAgdG8gdHdvIFVTQjMgbGFuZXMuIFRoZSBQSFkgYmxvY2sKPiBkcml2ZXMgYm90aCBsYW5l
cyBhbmQgYWxsIGNvbnN1bWVycyBzaGFyZSB0aGUgc2FtZSBpbml0aWFsaXphdGlvbgo+IHNlcXVl
bmNlLCBzbyB0aGUgUEhZIHByb3ZpZGVyIG5vZGUgaXRzZWxmIGlzIHJlZmVyZW5jZWQgd2l0aCBh
Cj4gc2luZ2xlICNwaHktY2VsbHMgPSA8MD4gc3BlY2lmaWVyLgoKU28gcHJldmlvdXNseSB5b3Ug
aGFkIHR3byBwaHlzLCBub3cgeW91IGhhdmUgb25seSBvbmUuIENvbmZ1c2luZy4gV2hlcmUKZGlk
IHRoZSBzZWNvbmQgcGh5IGdvPwoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBIb25nbGlhbmcgWWFuZyA8
aG9uZ2xpYW5nLnlhbmdAY2l4dGVjaC5jb20+CgpTYW1lIGlzc3VlIGFzIGxhc3QgdGltZS4KCkJl
c3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
