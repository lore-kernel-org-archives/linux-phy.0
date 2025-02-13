Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B144DC021A4
	for <linux-phy@archiver.kernel.org>; Thu, 13 Feb 2025 19:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxborNnx3zgO69VsQ3IWRDzHxQ3SjHl0OyFzDpeS1gg=; b=Md4vKPQpm8/47Q
	ha6n84PDQA15717OFAIGHgMWq+jh8O7RLa1EDYr2lQlxkVeTpr91dFvFkdP6iKlv1mdrPdQ1a6wPp
	5lr2Ccs/GZoQNlpZ5+MUcsWZrE6Mav74vNls0kPVX6Lkp2AT8BwUtTbFc5GlIuXgikMIupbFWmUfk
	uGUUevHeSocrex7OQHrr3KcippebtRIubB2havGQwKZMLjECVlKcMBFwB0Srg+sjoai2yh9xzW+dO
	ChbasyIMjVxPTsMwTw2/K6rZ5aThD5DZmLKeClu4lK11nLxBmgAUUf5kuYU/Ypt3FegluS5MPW6Th
	PizHAhSb22uQdiuNUd0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiegC-0000000CMSs-1vxz;
	Thu, 13 Feb 2025 19:15:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tidll-0000000CBmw-1FUR;
	Thu, 13 Feb 2025 18:17:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1B5A3A4285E;
	Thu, 13 Feb 2025 18:15:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CEE0C4CED1;
	Thu, 13 Feb 2025 18:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739470620;
	bh=QLZRApTrn4O2R9Ogb2JhlUkm/5ex8J5sTyiNSk7EKzY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FAvQM0YQ8e1kNEkDs7XTsZeSyNoMSVt2pjlJ7sOfzTT/SCVjI5jgV17A5FCdhmTed
	 8z1F4uT5DPqUR8QRmx/+plKomU8Kx4nzCDjyrQ3/UkimOgannIQBYyFMb6zkepjGOf
	 XDdhZstfdnaKv86qW0+J+MlRPGX7qT9DuzbnZD/SrQGnF5heZOnEwApBCsOXRqsiV1
	 L0pUqS3MEXZA5yFw6K3agIhYwJSnzJ80YHALS76pzL/6IO0U4d/b3T81qeyKXXr9VR
	 islrjn+Ln23J2TlHIe5NsP/QHweIFsy1p9huv2qy7DRo+vnsCxzQlFORW2oK+CVGCG
	 oD5NS+XE8WHZw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
Subject: Re: [PATCH v4 0/7] USB31DRD phy updates for Google Tensor gs101
 (orientation & DWC3 rpm)
Message-Id: <173947061417.294083.6730012157242194658.b4-ty@kernel.org>
Date: Thu, 13 Feb 2025 23:46:54 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250213_101701_399575_0B469376 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Ck9uIEZyaSwgMDYgRGVjIDIwMjQgMTY6MzE6MDAgKzAwMDAsIEFuZHLDqSBEcmFzemlrIHdyb3Rl
Ogo+IFRoaXMgc2VyaWVzIGVuYWJsZXMgVVNCMyBUeXBlLUMgbGFuZSBvcmllbnRhdGlvbiBkZXRl
Y3Rpb24gYW5kCj4gY29uZmlndXJhdGlvbiBvbiBwbGF0Zm9ybXMgdGhhdCBzdXBwb3J0IHRoaXMg
KEdvb2dsZSBnczEwMSksIGFuZCBpdAo+IGFsc28gYWxsb3dzIHRoZSBEV0MzIGNvcmUgdG8gZW50
ZXIgcnVudGltZSBzdXNwZW5kIGV2ZW4gd2hlbiBVREMgaXMKPiBhY3RpdmUuCj4gCj4gRm9yIGxh
bmUgb3JpZW50YXRpb24sIHRoaXMgZHJpdmVyIG5vdyBvcHRpb25hbGx5IChiYXNlZCBvbiBEVCkK
PiBzdWJzY3JpYmVzIHRvIHRoZSBUQ1BDJ3MgbGFuZSBvcmllbnRhdGlvbiBub3RpZmllciBhbmQg
cmVtZW1iZXJzIHRoZQo+IG9yaWVudGF0aW9uIHRvIGxhdGVyIGJlIHVzZWQgZHVyaW5nIHBoeV9p
bml0KCkuCj4gCj4gWy4uLl0KCkFwcGxpZWQsIHRoYW5rcyEKClsxLzddIGR0LWJpbmRpbmdzOiBw
aHk6IHNhbXN1bmcsdXNiMy1kcmQtcGh5OiBhZGQgYmxhbmsgbGluZXMgYmV0d2VlbiBEVCBwcm9w
ZXJ0aWVzCiAgICAgIGNvbW1pdDogNjQyYjFlZDRjZDE4NGQ1YzJlNTgxNGMyMjBiYjkzNDUzNDky
NjQ0ZApbMi83XSBkdC1iaW5kaW5nczogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBoeTogZ3MxMDE6
IHJlcXVpcmUgVHlwZS1DIHByb3BlcnRpZXMKICAgICAgY29tbWl0OiBjMzg1Mjg4MTJjMmU5YjA1
ZmU4YjVmZDFmNjZjZjRjNzU4MzVhMzhlClszLzddIHBoeTogZXh5bm9zNS11c2JkcmQ6IGNvbnZl
cnQgdG8gZGV2X2Vycl9wcm9iZQogICAgICBjb21taXQ6IGVlMDY0MzkwYjgyMzI5ZGY3ZmQ4ZTBj
NDhkYTAzYThmZWU3ZDQ2Y2UKWzQvN10gcGh5OiBleHlub3M1LXVzYmRyZDogZml4IEVEUyBkaXN0
cmlidXRpb24gdHVuaW5nIChnczEwMSkKICAgICAgY29tbWl0OiAyMTg2MGYzNDBiYTc2ZWUwNDJl
NTQzMWZmOTI1MzdmODliYzExNDc2Cls1LzddIHBoeTogZXh5bm9zNS11c2JkcmQ6IGdzMTAxOiBj
b25maWd1cmUgU1MgbGFuZXMgYmFzZWQgb24gb3JpZW50YXRpb24KICAgICAgY29tbWl0OiAwYmNj
ZGNiM2VlYTkzZTA4Nzg4NzAyN2ZmMzc0ZGFjNWMzZGUzNmNkCls2LzddIHBoeTogZXh5bm9zNS11
c2JkcmQ6IHN1YnNjcmliZSB0byBvcmllbnRhdGlvbiBub3RpZmllciBpZiByZXF1aXJlZAogICAg
ICBjb21taXQ6IDA5ZGM2NzQyOTVhMzg4ZTcxMTkyNDMwYjZmOWMzYzVjYjBlYjQ3ZGEKWzcvN10g
cGh5OiBleHlub3M1LXVzYmRyZDogYWxsb3cgRFdDMyBydW50aW1lIHN1c3BlbmQgd2l0aCBVREMg
Ym91bmQgKEU4NTArKQogICAgICBjb21taXQ6IGY0ZmI5YzRkN2Y5NGRhYmVmNGFiZjIyMDljZjg0
MGRkMWM5Y2ExMWUKCkJlc3QgcmVnYXJkcywKLS0gCn5WaW5vZAoKCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
