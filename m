Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72F46C982E6
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 14:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OpkI1o4IT1fYtO/Crqjvwn1SXX/zJaPklfqU4wg5OFE=; b=DTIpYFlT4nb0zZ
	mDVyLInOHfAxm3fZEHCiCZYvcIWGBfLxQyRjSn3MJCDutCNQlDiQaMl3xPuD+jd4IY/cIkekIL7r2
	4JxqdhD/gzG4d5SlYgsaFCspxybGZDn5/qoJR2WDKw3TeqGUw+cua4OmPUSARwY9JuForvj7QQhua
	GrDTh0H3XBM3I5BAs+CMPyAggWwSV1sKALdAVQpXv6Z57HvCDgDJn7g6eKOYKaglEoNqn0hFTGF+g
	WeQFeL+QKga09y7rCur3up1kxoCI6pHt72cWHVwq3PO4EyxTSGjznnEi6+TMFrJI3y/8UNDa2Fq3Z
	O76+/xuHSyvjgx2UABsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8euD-00000002NWI-3SFF;
	Mon, 21 Sep 2026 14:22:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8euC-00000002NVq-2QAm
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 14:22:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 043A243B83;
	Mon, 21 Sep 2026 14:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74DA91F000FF;
	Mon, 21 Sep 2026 14:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790000523;
	bh=IPcq77QX0NTqIoaHT7a8zV0H98ql6yqJ9jBJGLMq+nQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=jr8y0P00QCHikPGH9mrS+LiVaVeS6Jn/p4s4OdwToAf3f7BcOGAS/VNaueHf5QALA
	 dbvdnAI/ibIooyC6SiEwhEChTRYu8hWRLaBUCOxWITYrGHTxSa6f1hDzNGtVjQ3y7g
	 UXal5SLqarkTnZs0JJKI/QoWRqfn+QNdEegE6EKASlF/9Uhs6Cb30g0qF/lOek9rQe
	 Fj0/8x4/3KVpdqPQqzqiOCMjr8y7+nm2Mhh8CI0ZuMioy/8ogDGHKrOE6Cb/2oAcF3
	 OOcsYZMNJTFgdKCw5B28DBPwUrEmHs2IdWPT1bm8F7GWhKl53SS11GkqCOyoi0g4Nb
	 Po7k7JV8UTcvw==
Message-ID: <ebca2e35-6c4f-45ed-a9de-d9b52651717d@kernel.org>
Date: Mon, 21 Sep 2026 16:21:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom,shikra-pcie: Document the
 Shikra PCIe Controller
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
 Bartosz Golaszewski <brgl@kernel.org>, Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com>
 <20260831-shikra-upstream-v2-2-406661d75afa@oss.qualcomm.com>
 <20260901-silent-pearl-shrew-c63a16@quoll>
 <7b5bec8a-87ed-4363-ac62-3e14f7619f13@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <7b5bec8a-87ed-4363-ac62-3e14f7619f13@oss.qualcomm.com>
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

T24gMjEvMDkvMjAyNiAxNTo0NywgU3VzaHJ1dCBTaHJlZSBUcml2ZWRpIHdyb3RlOgo+IAo+IE9u
IDkvMS8yMDI2IDI6MTIgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+IE9uIE1vbiwg
QXVnIDMxLCAyMDI2IGF0IDEyOjU2OjAyUE0gKzA1MzAsIFN1c2hydXQgU2hyZWUgVHJpdmVkaSB3
cm90ZToKPj4+IEFkZCBhIGRlZGljYXRlZCBzY2hlbWEgZm9yIHRoZSBQQ0llIGNvbnRyb2xsZXIg
Zm91bmQgb24gdGhlIFNoaWtyYQo+Pj4gcGxhdGZvcm0uCj4+Pgo+Pj4gU2hpa3JhIGNvbnRyb2xs
ZXIgc3VwcG9ydHMgdXB0byBQQ0llIEdlbjMgYnV0IHRoZSBQSFkgaXMKPj4+IG9ubHkgY2FwYWJs
ZSBvZiBHZW4yLCBoZW5jZSB0aGUgbWF4IGxpbmsgc3BlZWQgIGlzIGxpbWl0ZWQKPj4+IHRvIEdl
bjIgdG8gYXZvaWQgbGluay11cCBmYWlsdXJlcy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTdXNo
cnV0IFNocmVlIFRyaXZlZGkgPHN1c2hydXQudHJpdmVkaUBvc3MucXVhbGNvbW0uY29tPgo+Pj4g
LS0tCj4+PiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9xY29tLHNoaWtyYS1wY2llLnlh
bWwgIHwgMjE4ICsrKysrKysrKysrKysrKysrKysrKwo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMjE4
IGluc2VydGlvbnMoKykKPj4+Cj4+IFdoYXQgaXMgdGhlIGRpZmZlcmVuY2UgaW4gdGhlIGJpbmRp
bmcgYWdhaW5zdCBFbGl6YT8gSU9XLCB3aHkgZG9lcyB0aGlzCj4+IG5lZWQgYSBzZXBhcmF0ZSBm
aWxlIHVubGlrZSBFbGl6YT8KPiBTaGlrcmEgZG9lcyBub3QgaGF2ZSB0aGUgQ29uZmlnIE5vQyBB
WEkgY2xvY2sgdW5saWtlIHNtODU1MCAvIGVsaXphLiBBcGFydAo+IGZyb20gdGhhdCwgbWluSXRl
bXMgZm9yIHJlZ8KgIGFuZCBpbnRlcnJ1cHRzIG5lZWQgdG8gYmUgdXBkYXRlZC4gSSBhY3R1YWxs
eQoKUmVhbGx5PyBEaWQgeW91IGV2ZW4gY2hlY2s/IEkgbG9va2VkIGF0IEVsaXphIGFuZCBpdCBo
YXMgNiBtaW5JdGVtcyBmb3IKcmVnLiBZb3VyIHBhdGNoIGRlZmluZXMgaG93IG1hbnkgZXhhY3Rs
eT8KCkkgZGlkIG5vdCBjaGVjayB0aGUgcmVzdCBvZiB0aGUgYXJndW1lbnRzIGJlY2F1c2UgaXQg
aXMgbm90IGEgZ2FtZSAiSQp3aWxsIHNheSB3aGF0ZXZlciBhbmQgbWFpbnRhaW5lciB3aWxsIG5l
ZWQgdG8gdmVyaWZ5IGVhY2ggb2YgbXkgY2xhaW1zIi4KSSBmaW5kIG9uZSBmYWxzZSBjbGFpbSBh
bmQgdGhhdCBkcm9wcyB0aGlzIGZyb20gUGF0Y2h3b3JrLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0
b2YKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
