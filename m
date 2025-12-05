Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 261BED339AE
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 18:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFz+DcVI/veN1UA26wKIj4xEGTXOummDmjNZH3ZB+jI=; b=EesavMggJgF4LY
	zw1YuktSrOflPl5IAkCts9lxLEsxThbQu7mUJPZ0KOuWJP5x3iRAZdZteawn/tn448dHvegxcDX4G
	vj5Woa8Yxt71knfF/a03hrsEtPV9PMeA39LIX5VgkiuS72quZEDMPlJVs0I90oycHLUXBp3mWiZCi
	zdQnZazNwBonTnqa2oeR+lJy75Yc6Mdek2f7zeJfzR8bxAa3wMR5RfA0J8bpM1EYoMWE2T4Zsomod
	W4D4nstFg711yGycM10KO+NT6zZdvAw+Q1ldsQP2nOyA1mnsVn8aOn/DgVd3apGVFHXjsttLsW4s8
	38swp6rwSgCPKUuUx8Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRauy-00000009uQ9-3QOV;
	Fri, 05 Dec 2025 18:52:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRauw-00000009uPf-3fY0;
	Fri, 05 Dec 2025 18:52:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 07D8960053;
	Fri,  5 Dec 2025 18:52:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA16C4CEF1;
	Fri,  5 Dec 2025 18:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764960753;
	bh=PyzkYM65N89XQsns7QJakMQt1WTyKdeHtRc/xzXQ16c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lZy2ip+mdpeBccS/ui2YX3ZWIWMMVKhCqgq2m6wKiMJJzqnXqg33WilPvmWSdX3V7
	 yI1mX0pcid9rTAcQFhBMZ/qnBbu9oNwS/jMcETu4UFtKJ6RpCNwdsNB6tINNl8MxmR
	 4GO1csTkfWyMOOshnrAVihaUic6Qq6MvWqdInRIt30E1QdSep8rrr43tPlbINU56Uv
	 F+bdVhop/lEELpf3OdjcjICtwwqpRWY8tahCwAWaxOOpUclLsPquDqh+e2jYhVV2V1
	 kSQ750p8Fp/xl30kJQ/cja2AlFNL+5qRmRaE7al5nB5Im8bDOWNCSJ+8xOG9R1W65b
	 KDJBlTbmSc0cw==
Message-ID: <f32e0810-56f9-417e-abf6-0cc7b361bd15@kernel.org>
Date: Fri, 5 Dec 2025 19:52:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5 USB
 PHY
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com>
 <20251205-phyb4-v8-1-c59ea80a4458@google.com>
 <18eeb1c5-d21b-4505-b6a4-472f6e191864@kernel.org>
 <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CA+zupgwa+m8Pa=+8shORaOA1OO6zoo6zYEojFS2UDuP0doBq7A@mail.gmail.com>
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

T24gMDUvMTIvMjAyNSAxOTo0NywgUm95IEx1byB3cm90ZToKPiBPbiBGcmksIERlYyA1LCAyMDI1
IGF0IDk6MTPigK9BTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdyb3Rl
Ogo+Pgo+PiBPbiAwNS8xMi8yMDI1IDA0OjU0LCBSb3kgTHVvIHdyb3RlOgo+Pj4gRG9jdW1lbnQg
dGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIGZvciB0aGUgVVNCIFBIWSBpbnRlcmZhY2VzIGludGVn
cmF0ZWQKPj4+IHdpdGggdGhlIERXQzMgY29udHJvbGxlciBvbiBHb29nbGUgVGVuc29yIFNvQ3Ms
IHN0YXJ0aW5nIHdpdGggRzUKPj4+IGdlbmVyYXRpb24gKExhZ3VuYSkuIFRoZSBVU0IgUEhZIG9u
IFRlbnNvciBHNSBpbmNsdWRlcyB0d28gaW50ZWdyYXRlZAo+Pj4gU3lub3BzeXMgUEhZIElQczog
dGhlIGVVU0IgMi4wIFBIWSBJUCBhbmQgdGhlIFVTQiAzLjIvRGlzcGxheVBvcnQgY29tYm8KPj4+
IFBIWSBJUC4KPj4+Cj4+PiBEdWUgdG8gYSBjb21wbGV0ZSBhcmNoaXRlY3R1cmFsIG92ZXJoYXVs
IGluIHRoZSBHb29nbGUgVGVuc29yIEc1LCB0aGUKPj4+IGV4aXN0aW5nIFNhbXN1bmcvRXh5bm9z
IFVTQiBQSFkgYmluZGluZyBmb3Igb2xkZXIgZ2VuZXJhdGlvbnMgb2YgR29vZ2xlCj4+PiBzaWxp
Y29ucyBzdWNoIGFzIGdzMTAxIGFyZSBubyBsb25nZXIgY29tcGF0aWJsZSwgbmVjZXNzaXRhdGlu
ZyB0aGlzIG5ldwo+Pj4gZGV2aWNlIHRyZWUgYmluZGluZy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBSb3kgTHVvIDxyb3lsdW9AZ29vZ2xlLmNvbT4KPj4KPj4gV2h5IGludGVudGlvbmFsbHkgZHJv
cHBpbmcgdGhlIHRhZz8gSG93IGFyZSB5b3UgaGFuZGxpbmcgdGhpcyBwYXRjaHNldD8KPj4gUmV3
cml0ZSBldmVyeSB0aW1lIGZyb20gc2NyYXRjaD8KPiAKPiBIaSBLcnp5c3p0b2YsCj4gCj4gSSBk
cm9wcGVkIHRoZSB0YWcgYmVjYXVzZSBhIG5ldyBmaWxlIGlzIGJlaW5nIG1vZGlmaWVkIGluIHRo
aXMgdmVyc2lvbiwKPiBBbHRob3VnaCBpdCdzIGp1c3QgTUFJTlRBSU5FUiBmaWxlIGJ1dCBJIHRo
b3VnaHQgeW91IG1pZ2h0IGFsc28gd2FudAo+IHRvIHRha2UgYSBsb29rLiBJIHdhc24ndCBzdXJl
IGlmIG1vZGlmeWluZyBhIG5ldyBmaWxlIHF1YWxpZmllcyBhcwo+ICJzdWJzdGFudGlhbCIgc28g
SSBlcnJlZCBvbiB0aGUgc2lkZSBvZiBjYXV0aW9uLiBJIHNob3VsZCd2ZSBjYWxsZWQgaXQKPiBv
dXQgc3BlY2lmaWNhbGx5IGluIHRoZSBjaGFuZ2UgbG9nLiBTb3JyeSBmb3IgdGhlIGluY29udmVu
aWVuY2UuCgoxLiBzbyBqdXN0IHNxdWVlemUgdGhhdCBjaGFuZ2UgaW50byBzZWNvbmQgcGF0Y2gg
YW5kIG5vIG5lZWQgdG8gYXNrIGZvcgpyZS1yZXZpZXcKMi4gWW91IGRpZCBub3QgcmVhZCBteSBj
b21wbGFpbiBmdWxseSwgbG9vazoKCj4gCj4gUmVnYXJkcywKPiBSb3kgTHVvCj4gCj4+Cj4+IDxm
b3JtIGxldHRlcj4KPj4gVGhpcyBpcyBhIGZyaWVuZGx5IHJlbWluZGVyIGR1cmluZyB0aGUgcmV2
aWV3IHByb2Nlc3MuCj4+Cj4+IEl0IGxvb2tzIGxpa2UgeW91IHJlY2VpdmVkIGEgdGFnIGFuZCBm
b3Jnb3QgdG8gYWRkIGl0Lgo+Pgo+PiBJZiB5b3UgZG8gbm90IGtub3cgdGhlIHByb2Nlc3MsIGhl
cmUgaXMgYSBzaG9ydCBleHBsYW5hdGlvbjoKPj4gUGxlYXNlIGFkZCBBY2tlZC1ieS9SZXZpZXdl
ZC1ieS9UZXN0ZWQtYnkgdGFncyB3aGVuIHBvc3RpbmcgbmV3IHZlcnNpb25zCj4+IG9mIHBhdGNo
c2V0LCB1bmRlciBvciBhYm92ZSB5b3VyIFNpZ25lZC1vZmYtYnkgdGFnLCB1bmxlc3MgcGF0Y2gg
Y2hhbmdlZAo+PiBzaWduaWZpY2FudGx5IChlLmcuIG5ldyBwcm9wZXJ0aWVzIGFkZGVkIHRvIHRo
ZSBEVCBiaW5kaW5ncykuIFRhZyBpcwo+PiAicmVjZWl2ZWQiLCB3aGVuIHByb3ZpZGVkIGluIGEg
bWVzc2FnZSByZXBsaWVkIHRvIHlvdSBvbiB0aGUgbWFpbGluZwo+PiBsaXN0LiBUb29scyBsaWtl
IGI0IGNhbiBoZWxwIGhlcmUuIEhvd2V2ZXIsIHRoZXJlJ3Mgbm8gbmVlZCB0byByZXBvc3QKPj4g
cGF0Y2hlcyAqb25seSogdG8gYWRkIHRoZSB0YWdzLiBUaGUgdXBzdHJlYW0gbWFpbnRhaW5lciB3
aWxsIGRvIHRoYXQgZm9yCj4+IHRhZ3MgcmVjZWl2ZWQgb24gdGhlIHZlcnNpb24gdGhleSBhcHBs
eS4KPj4KPj4gUGxlYXNlIHJlYWQ6Cj4+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4
L3Y2LjEyLXJjMy9zb3VyY2UvRG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hl
cy5yc3QjTDU3Nwo+Pgo+PiBJZiBhIHRhZyB3YXMgbm90IGFkZGVkIG9uIHB1cnBvc2UsIHBsZWFz
ZSBzdGF0ZSB3aHkgYW5kIHdoYXQgY2hhbmdlZC4KCldoZXJlIGRpZCB5b3UgYWRkcmVzcyB0aGlz
PyBZb3UgZHJvcHBlZCB0aGUgdGFnIHNpbGVudGx5LgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
