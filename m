Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A39EC55182
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 19:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTIxkzof9UddUfdyVaz2GDJdG/259m0VxqdjVPQmTLg=; b=2I06cnzHGo5EuI
	2w6+YaoSydct4D2oAdJtZax7PRTD2UDFQB+owV4K4u9VSCbVAWHjbhiG7Z4omhlZbTzwRvgG6UrOY
	sGpWgleYEIOPrhMN8hVsSjdYt1y/r/5oXdH9go6lcVmCKfYF4j6655kuBl0d4UMvwfbsF7IeogRxJ
	JD87Ix8lMX0biWo75JohE+hrY/z2Txfx7Moj4ikrUAJw//X4E01rgEu+2E+L5kVWfBvtrJxyOCJJn
	wDWjC07RvknnfPItNGNIHXoAToKac2GZYh7W1G/L8qz4kixu3TmhZYnlitcDtwXR4U1ibGQFild2a
	YTMXvyDdcwZB2giw1YYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyTA-00000000Rlx-0X9j;
	Mon, 03 Aug 2026 19:37:04 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqyT8-00000000Rlq-1a1o
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 19:37:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D26D040BB8;
	Mon,  3 Aug 2026 19:37:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42D331F000E9;
	Mon,  3 Aug 2026 19:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785785821;
	bh=eDJMn/2PLLUFui+gUcVlUtOhN2zFA1mRACkg7Evy3UY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CgtsfD6kk9/QMzW5gNW/bOjIZDycyh06FwRnYxrB6ktj06ajMRVs7FrZ20lzUQmzN
	 oZ/7E1anX17QS3mUqb+TXB6QJ+1VpWo9YFwr1/FubclEcs4oh1BsYElf+V5N6h0xEN
	 /UINkmbGLYY2YLstaFc+klwQQmNMTHTCK40KM+PBgoFu0y6REQhkL13yt7t3Sq2u2v
	 cTOxdrRD5aLVYGsBjoqE8QMexOmko8+dZ5xPkbXF1rPKdLWaE2mHj6GDXelpkVBc/u
	 ben154hnKTsBxJwPiXyn4/iDXaz8J0wVFKj7S2A1UpW1Ef0iHnABx3EYgl8JVse+G0
	 mryiigkCqIdBw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/6] arm64: dts: qcom: lemans-evk: fix SerDes PHY
 regulator supplies
To: "Mohd Ayaan Anwar" <mohd.anwar@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-3-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
 <20260804-b4-sgmiieth_serdes_regulator-v2-3-c4bc688177dd@oss.qualcomm.com>
Date: Mon, 03 Aug 2026 19:37:00 +0000
Message-Id: <20260803193701.42D331F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBJbmNvbXBsZXRlIGZpeCBmb3IgU0dNSUkgU2VyRGVzIFBIWSByZWd1bGF0b3Igc3Vw
cGxpZXMgbGVhdmluZyBkb3duc3RyZWFtIGJvYXJkcyBicm9rZW4uCi0tCgotLS0gUGF0Y2ggWzNd
OiBbUEFUQ0ggdjIgMy82XSBhcm02NDogZHRzOiBxY29tOiBsZW1hbnMtZXZrOiBmaXggU2VyRGVz
IFBIWSByZWd1bGF0b3Igc3VwcGxpZXMgLS0tCmNvbW1pdCAwNmMzMTgzMjBmNGYxMjE3OGUxMDdh
YTA4ZTNiNTQzNWRlMjYxZDUwCkF1dGhvcjogTW9oZCBBeWFhbiBBbndhciA8bW9oZC5hbndhckBv
c3MucXVhbGNvbW0uY29tPgoKYXJtNjQ6IGR0czogcWNvbTogbGVtYW5zLWV2azogZml4IFNlckRl
cyBQSFkgcmVndWxhdG9yIHN1cHBsaWVzCgpUaGlzIGNvbW1pdCBmaXhlcyB0aGUgU2VyRGVzIFBI
WSByZWd1bGF0b3Igc3VwcGxpZXMgZm9yIHRoZSBsZW1hbnMtZXZrIGJvYXJkCmFuZCBpdHMgSUZQ
IG1lenphbmluZSBvdmVybGF5LiBJdCByZXBsYWNlcyB0aGUgaW5jb3JyZWN0IHBoeS1zdXBwbHkg
d2l0aAp2ZGRhLTBwOS1zdXBwbHkgYW5kIHZkZGEtMXAyLXN1cHBseS4KClsgLi4uIF0KCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9sZW1hbnMtZXZrLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9sZW1hbnMtZXZrLmR0cwo+IGluZGV4IDBjNTM2NDBjNDJhNjUu
LjVjMDQ2YjliZmIzY2QgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xl
bWFucy1ldmsuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL2xlbWFucy1ldmsu
ZHRzCgpbIC4uLiBdCgo+IEBAIC05NzgsNyArOTc4LDggQEAgJnNkaGMgewo+ICB9Owo+ICAKPiAg
JnNlcmRlczAgewo+IC0JcGh5LXN1cHBseSA9IDwmdnJlZ19sNWE+Owo+ICsJdmRkYS0wcDktc3Vw
cGx5ID0gPCZ2cmVnX2w0YT47Cj4gKwl2ZGRhLTFwMi1zdXBwbHkgPSA8JnZyZWdfbDFjPjsKCltT
ZXZlcml0eTogSGlnaF0KVGhpcyBpc24ndCBhIGJ1ZyBpbnRyb2R1Y2VkIGJ5IHRoaXMgcGF0Y2gs
IGJ1dCBzaG91bGQgdGhpcyBmaXggYmUgYXBwbGllZCB0bwpvdGhlciBib2FyZHMgdXNpbmcgdGhp
cyBQSFk/CgpJdCBsb29rcyBsaWtlIHNldmVyYWwgb3RoZXIgZGV2aWNlIHRyZWVzIHN0aWxsIGRl
ZmluZSB0aGUgZGVwcmVjYXRlZApwaHktc3VwcGx5IHByb3BlcnR5LCBzdWNoIGFzIGluCmFyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9sZW1hbnMtcmlkZS1jb21tb24uZHRzaToKCiZzZXJkZXMwIHsK
CXBoeS1zdXBwbHkgPSA8JnZyZWdfbDVhPjsKCXN0YXR1cyA9ICJva2F5IjsKfTsKCkFuZCBzaW1p
bGFybHkgaW4gYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3FjczgzMDAtcmlkZS5kdHMsIAphcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vbW9uYWNvLW1vbnphLXNvbS5kdHNpLCBhbmQgCmFyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9tb25hY28tZXZrLmR0cy4KCkJvb3RpbmcgdGhlc2UgdW5tb2RpZmll
ZCBib2FyZHMgY291bGQgcmVzdWx0IGluIHRoZSBQSFkgZHJpdmVyIGVpdGhlciBmYWlsaW5nCnRv
IHByb2JlIG9yIGZhbGxpbmcgYmFjayB0byBkdW1teSByZWd1bGF0b3JzIGFuZCBmYWlsaW5nIGNh
bGlicmF0aW9uLCBicmVha2luZwpTR01JSSBFdGhlcm5ldCBjb25uZWN0aXZpdHkuCgpDb3VsZCB0
aGUgZml4IGJlIGV4dGVuZGVkIHRvIGNvdmVyIHRoZXNlIG90aGVyIGJvYXJkcyBhcyB3ZWxsIHRv
IGVuc3VyZSB0aGV5CnJlY2VpdmUgYm90aCByZXF1aXJlZCB2b2x0YWdlIHN1cHBsaWVzPwoKPiAg
Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0
cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODA0LWI0LXNnbWlpZXRoX3NlcmRlc19y
ZWd1bGF0b3ItdjItMC1jNGJjNjg4MTc3ZGRAb3NzLnF1YWxjb21tLmNvbT9wYXJ0PTMKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
