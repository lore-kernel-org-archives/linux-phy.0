Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3C58C88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 15:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgBij75h79HwOogjV1+Tdof295Tq7WUphsValu9ExGE=; b=QrBTVqnCv9zybA
	PIx+X7tP/b3EZzE2wijuUg4NZgIsf5Ubk9dX+cnBKC/IWpI+V74sJUoyErOIGBshHETjXJN2S6HFH
	9V3GozMIOO6AxlArRMKBqRGxYKpWrRDdugl275duyT7l68o1sQvT8YFbnhoaIyFjvIJmihKMt4OMB
	hYbk4SrUAJO9kkB78XvArDv4R51I/dviXciNIEUliugXsYqxPK/lr5oYKVnz6tpmWyTZTy8SBqzV0
	Pi5ZPoAiMTty7KgsCcv0SPk0D/z06IohbA+AHkLXO1886/i13THmrC94f0LIm2hVM/9WHFg1bchnl
	ozjD1jHh48hNsveyLKFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7De2-0000000Bctw-0KSe;
	Thu, 17 Sep 2026 15:03:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7De1-0000000Bctp-0ONu
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 15:03:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 680A6600D4;
	Thu, 17 Sep 2026 15:03:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 905751F00898;
	Thu, 17 Sep 2026 15:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789657404;
	bh=c6Xh9/RZRfC8JaJIZ3+JzhDu1OQwyuoUSwvm9vecdts=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=kJ/sL5tpL9e870C4UC4B1yVI+gyStN6BgswvQi68nUIJpAfhibwudS9MzK+IJC94o
	 bJC4b2Xnu7Bmh38PP4TpoSDb8Aw3GeXxRCLTEQ5DxFiFKozpAA+nJzOSyQF2r+E2BM
	 qk+NL9oubfK52CthnAsracmR0pZqH7Qyf39YgyrLJDAs034BUAe3UIfbeGPRAen2ro
	 yoTVMICWaXFHKTu4hW/dsJbmVJqItkLSgSlwmM2TEs4NFhjwqnUpx4KgTQrYVoPzf6
	 74KMqkGZgYGwwt6MisZkI0IokxhbEcf5H2vfSqUlCOXOv6eFcBkCtAC8rtq8wJMmLZ
	 PaL4kkf3TM34Q==
Message-ID: <390980e3-a76c-404e-8adf-7848b31348dc@kernel.org>
Date: Thu, 17 Sep 2026 16:03:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 3/5] phy: core: Add devm_phy_get_by_of_node()
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-0-f85c9103177e@linaro.org>
 <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v18-3-f85c9103177e@linaro.org>
 <9e8ae55f-6d95-48a9-bef1-ab653d0f1c7d@linaro.org>
 <SoUZjCJ-YIM2awWOFNy8m7tNK98LVdRONkFinJqKo0ba7-47wiomayAV2XSXPcx-ZnE8vWrDtCQwamDdeolRbA==@protonmail.internalid>
 <37f182ad-a137-4066-9e94-b06be2cd03da@linaro.org>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-GB
Autocrypt: addr=bod@kernel.org; keydata=
 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
In-Reply-To: <37f182ad-a137-4066-9e94-b06be2cd03da@linaro.org>
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTcvMDkvMjAyNiAxNDoyNywgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxNy8wOS8y
MDI2IDEzOjMyLCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IC3CoMKgwqDCoMKgwqDCoCBkZXZf
ZGJnKGRldiwgImZhaWxlZCB0byBjcmVhdGUgZGV2aWNlIGxpbmsgdG8gJXNcbiIsCj4+PiArwqDC
oMKgwqDCoMKgwqAgZGV2X2VycihkZXYsICJmYWlsZWQgdG8gY3JlYXRlIGRldmljZSBsaW5rIHRv
ICVzXG4iLAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9uYW1lKHBoeS0+ZGV2
LnBhcmVudCkpOwo+Pgo+PiBUaGlzIGNoYW5nZSBiZWxvbmdzIGluIGFub3RoZXIgcGF0Y2guCj4g
Cj4gRG9oIEZyYW5rIGdhdmUgbWUgYSBjb21tZW50IG9uIHRoaXMgYW5kIEkganVzdCBjaGFuZ2Vk
IGl0IHdpdGhvdXQKPiByZWFsaXNpbmcgdGhpcyBpc24ndCBpbiBteSBzZXJpZXMgYXQgYWxsLgo+
IAo+IEknbGwgZHJvcCB0aGlzIGFsdG9nZXRoZXIKPiAKPiAtLS0KPiBib2QKCkhtbSBub3cgSSBz
ZWUsIHRoZXJlJ3MgYW5vdGhlciBkZXZpY2VfbGlua19hZGQgd2hpY2ggZG9lcyBhIGRldl9kYmco
KSBvbiAKZmFpbHVyZSwgdGhlIGZlZWRiYWNrIHdhcyB0byBkZXZfZXJyKCkgd2l0aCB0aGUgcGFy
dCBJJ20gYWRkaW5nIGJlbG93Li4uCgorCWxpbmsgPSBkZXZpY2VfbGlua19hZGQoZGV2LCAmcGh5
LT5kZXYsIERMX0ZMQUdfU1RBVEVMRVNTKTsKKwlpZiAoIWxpbmspCisJCWRldl9kYmcoZGV2LCAi
ZmFpbGVkIHRvIGNyZWF0ZSBkZXZpY2UgbGluayB0byAlc1xuIiwKKwkJCWRldl9uYW1lKHBoeS0+
ZGV2LnBhcmVudCkpOworCgpkZXZpY2VfbGlua19hZGQoKSB3aWxsIHJldHVybiBOVUxMIHdoZW4g
dGhlIHN1cHBsaWVyIHRoZSBQSFkgaXMgYSBjaGlsZCAKb2YgdGhlIGNvbnN1bWVyIHNvICFsaW5r
IGlzIG5vdCBhbiBlcnJvci4KCi0tLQpib2QKCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
