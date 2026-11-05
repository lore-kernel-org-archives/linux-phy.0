Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36430606EE86
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 11:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qOsp6YuA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IGE+28uN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Jr8QMa4f9H3uqVuJKfoTO4odl+MwwX6Qb7kULYgf6As=; b=qOsp6YuAEfnXMglxABW+NGAZ8N
	50J1rWRMuFjuWjZrNG5LPq27Zq1K4UAH9yeXtza7KnQFnOw2k3stR8H3JuhiH5JHImFEdH2vT4YJ8
	xk1kkvkzO7snivwtjLQRbS0Mdqnm4TVol59Ozae2v9C8HLWP5ikvvm1+hvnHf/Lol5DzV2orEC/5w
	EHTgpFn8SAkJ8FeBO2xWq/dC6w05KrGnDf0ehe0e2Ke3BUaZvD3Fhe4oKodw9eGtCSvccmKITJCld
	7At1fyxpJBdcl+Kq+9gU8h7ZaEFPpkCiSByDOm0wohfE7E6oZHaEjrboENSyng+U4Ti/SJEcJdPhb
	xNhJQ3iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvzm-00000008m5G-3uWq;
	Thu, 05 Nov 2026 11:51:06 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOvzl-00000008m4l-3ItI;
	Thu, 05 Nov 2026 11:51:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 819CD40914;
	Thu,  5 Nov 2026 11:51:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F30D1F000C1;
	Thu,  5 Nov 2026 11:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793879465;
	bh=4OS3i6eFd7tcdMjfachyyV6i3nKbEcsVPS6UTpVoEG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IGE+28uNn0cQzvWb3P23I+Y3Y9vuvK6VC6xP68IsCJD/M64adDVLKoG85s06au+G1
	 J1Obn+d6Gm+CsWIH23qmxfKWtjQ0P9Ul4EIfHSTFHks5si+zlB3BjKVyxqbtJA0KV9
	 RgnOsaRULKxZIRLpHjq28Z6fmqBclgfbuB3hL9AgqZvHVVjxQ7TVuMPDKi00AdIcDH
	 bQxA0WJJEuNowi3dV+k79udSkhT5NK3lPeUH1B7xkzM5iS5szeFaG+IFgr1S6HFqIh
	 U9aksm3FlI1cHrtihxazmZEWUsN4wicDI/UHDHJ39YRlfInMv35rprdxxUrA6/6WPA
	 pHABR9k1OoZLg==
Date: Thu, 5 Nov 2026 12:51:02 +0100
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
Subject: Re: [PATCH v6 0/3] phy: Add CIX Sky1 USB3 PHY support
Message-ID: <20261105-illegal-fervent-swift-3c05c2@quoll>
References: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261105011751.4058411-1-hongliang.yang@cixtech.com>
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gVGh1LCBOb3YgMDUsIDIwMjYgYXQgMDE6MTc6NTZBTSArMDAwMCwgSG9uZ2xpYW5nIFlhbmcg
KOadqOWuj+S6rikgd3JvdGU6Cj4gVGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgVVNC
MyBQSFkgaW50ZWdyYXRlZCBpbiB0aGUgQ0lYIFNreTEKPiBTb0MuCj4gCj4gUGF0Y2ggMSBhZGRz
IHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nLCBwYXRjaCAyIHRoZSBQSFkgZHJpdmVyLCBhbmQKPiBw
YXRjaCAzIHRoZSBTb0Mgbm9kZSBwbHVzIHRoZSBib2FyZCBlbmFibGVtZW50Lgo+IAo+IFRoZSBQ
SFkgcHJvdmlkZXMgdGhlIFN1cGVyU3BlZWQgbGFuZXMgZm9yIHRoZSBDYWRlbmNlIFVTQlNTUAo+
IGNvbnRyb2xsZXJzIG9mIHRoZSBTb0MuIFRoZSBibG9jayBkcml2ZXMgYm90aCBVU0IzIGxhbmVz
OiBpdCBpcwo+IGV4cG9zZWQgYXMgYSBzaW5nbGUgUEhZIHByb3ZpZGVyIHdpdGggI3BoeS1jZWxs
cyA9IDwwPiwgYW5kIGl0cwo+IGluaXQvZXhpdCBjYWxscyBhcmUgcmVmZXJlbmNlIGNvdW50ZWQg
c28gdGhhdCBib3RoIGNvbnRyb2xsZXJzIGNhbgo+IHNoYXJlIGl0Lgo+IAo+IFRlc3RlZCBvbiBS
YWR4YSBPcmlvbiBPNiAoU2t5MSkgdG9nZXRoZXIgd2l0aCB0aGUgVVNCU1NQIGNvbnRyb2xsZXIK
PiBzZXJpZXM6IHRoZSBQSFkgcHJvYmVzIGFuZCBVU0IgMy54IGRldmljZXMgZW51bWVyYXRlIGF0
IFN1cGVyU3BlZWQuCj4gCj4gVGhlIGNvbnRyb2xsZXIgZGV2aWNlIHRyZWUgbm9kZXMgdXNlIHRo
ZSBQSFkgcGhhbmRsZSBhZGRlZCBoZXJlOyB0aGUKPiBVU0JTU1AgY29udHJvbGxlciBzZXJpZXMg
aXMgcG9zdGVkIHNlcGFyYXRlbHkuCj4gCj4gVGhlIHNlcmllcyBhcHBsaWVzIG9uIHRvcCBvZiB2
Ny40LXJjMS4KPiAKPiBDaGFuZ2VzIGluIHY2Ogo+IC0gRHJvcCB0aGUgcGVyLXBvcnQgY2hpbGQg
bm9kZXM7IHRoZSBQSFkgcHJvdmlkZXIgbm9kZSBpdHNlbGYgaXMKPiAgIHJlZmVyZW5jZWQgd2l0
aCAjcGh5LWNlbGxzID0gPDA+IGFuZCB0aGUgZHJpdmVyIGV4cG9ydHMgYSBzaW5nbGUKPiAgIFBI
WSBpbnN0YW5jZSBzaGFyZWQgYnkgYm90aCBjb250cm9sbGVycy4KPiAtIFNlbGVjdCBSRUdNQVAg
aW4gdGhlIFBIWSBLY29uZmlnLgo+IC0gVXNlIGRldl9lcnJfcHJvYmUoKSBmb3IgdGhlIHJlc2V0
LCBjbG9jayBhbmQgcmVnbWFwIGFjcXVpc2l0aW9uCj4gICBmYWlsdXJlcyBpbiB0aGUgcHJvYmUg
cGF0aC4KPiAtIENvcnJlY3RlZCB0aGUgbWFpbCBzZW5kZXIgbmFtZTogdjUgd2FzIHNlbnQgd2l0
aCBhIG5vbi1BU0NJSQo+ICAgZGlzcGxheSBuYW1lIGluIHRoZSBGcm9tIGhlYWRlciwgdjYgdXNl
cyB0aGUgcGxhaW4gQVNDSUkgbmFtZQo+ICAgdGhhdCBtYXRjaGVzIHRoZSBTaWduZWQtb2ZmLWJ5
LgoKTm8sIHlvdSBkaWQgbm90LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
