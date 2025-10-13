Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 255DFCCD185
	for <linux-phy@archiver.kernel.org>; Mon, 13 Oct 2025 23:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYP41cU5FLLNbVpiQMcjhTabmY5AL9W121KKFEmIyBQ=; b=XRaL8EQPCC4gMO
	XfOfzTDkJg2OeZzEX55i1tAc1CH2wheHDe0RoIsEsqM7Vvyg5u3NIMntmInz3zW0/g/INGH+k+6Gs
	p+C90eIj6x5yCoJvCYvsTxKTwRamoPza22liZwdNYIwkQ19vwgx8bofnJljyvyOYfbfUy5CdWcQV0
	VdHvHyve2kOXZx9ZFXvNtkOtS/BJLheuU2aBGFDEng546C36VM8XBVyC8kPoyJI80Jq+ovUpmctUx
	S4WuCdhAo3Q+BHV2oGXYveQEJehG6iQFIj60BNyLbn37kHhWgyuyeARa+dOJyD93YQX14c9ZVPtqf
	Str3F+GoN2+r3iwfKUAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8SJN-0000000EmnF-3it2;
	Mon, 13 Oct 2025 23:50:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8SJK-0000000Emmw-40Xx
	for linux-phy@lists.infradead.org;
	Mon, 13 Oct 2025 23:50:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A20444C5A;
	Mon, 13 Oct 2025 23:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B49D5C4CEE7;
	Mon, 13 Oct 2025 23:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760399438;
	bh=dE/OPRA38TANTsV/6O2RDPzvqKfmEzP4hxgn+9uMLO4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YlFFURt+FaJfOzGYPiyY+Zbp4gZ19FFkWlOP3tOvAIqcOWGimcUwLzXneBRFqkbBv
	 CuuyswiV4TooREsqKvergSwdcbhtYdWd8JOkEy5Fg2FzTMJjn3SckJndf4jJ4FZF3o
	 v844p1rIa9H3wuDuovEdfMsoHCIVUf8Cezk7fA+l0XNSx33pX6O809BAYDjAgvtz/X
	 kO4BAOdi1L7r+/tJouK9eiNVmNzqlpAi4aMjYolpDD8jq2Qr1kjTk5JA1OOYpNJr7v
	 49w8cQP1hi4q6qDE3CSkRRD/2LaQ7ZG57E8CXMk5Y8sIX7SjClsuE1NnptyoLJI6Kk
	 Vc+Q1JaK5A1sA==
Message-ID: <387c707e-613d-433b-a76d-16ef10dabc59@kernel.org>
Date: Tue, 14 Oct 2025 01:50:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB
 UNI PHY compatible
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>, krzk+dt@kernel.org,
 conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
 dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
 gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
 <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
 <f5e4ae02-b8fa-4406-b2e0-3602b07b7e23@kernel.org>
 <00408896-2e25-2dd1-6e6e-2195317ee7fb@oss.qualcomm.com>
 <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <14bc2a85-0f1d-3834-9b9c-32654348603a@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_165039_033757_81056D1C 
X-CRM114-Status: UNSURE (   8.37  )
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

T24gMTQvMTAvMjAyNSAwMTo0NiwgV2VzbGV5IENoZW5nIHdyb3RlOgo+Pj4+IMKgwqDCoCAiI2Ns
b2NrLWNlbGxzIjoKPj4+PiDCoMKgwqDCoMKgIGNvbnN0OiAwCj4+Pj4gQEAgLTE1Nyw2ICsxNjAs
MjUgQEAgYWxsT2Y6Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGU6Cj4+Pj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBjb250YWluczoKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBlbnVtOgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHFjb20sZ2x5bXVy
LXFtcC11c2IzLXVuaS1waHkKPj4+PiArwqDCoMKgIHRoZW46Cj4+Pj4gK8KgwqDCoMKgwqAgcHJv
cGVydGllczoKPj4+PiArwqDCoMKgwqDCoMKgwqAgY2xvY2tzOgo+Pj4KPj4+IE1pc3NpbmcgbWlu
SXRlbXMuCj4+Pgo+Pgo+PiBIaSBLcnp5c3p0b2YsCj4+Cj4+IFdvbid0IHRoZSBtaW5JdGVtcyBi
ZSBpbmhlcml0ZWQgYnkgdGhlIGJhc2UgZGVmaW5pdGlvbj8KPj4KPiAKPiBBaC4uLmFyZSB5b3Ug
c2F5aW5nIHRvIGRlZmluZSBtaW5JdGVtcyB0byA1IGFzIHdlbGwsIHNpbmNlIHdlIG5lZWQgdG8g
Cj4gaGF2ZSBhbGwgNSBjbG9ja3MgaGFuZGxlcyBkZWZpbmVkIHRvIHdvcms/CgoKWW91IG5lZWQg
dGhlIG1pbkl0ZW1zIGNvbnN0cmFpbnQgYXMgd2VsbCwgdG8gZGVmaW5lIHRoZSBkaW1lbnNpb24K
YWNjdXJhdGVseS4KCj4gCj4gVGhhbmtzCj4gV2VzbGV5IENoZW5nCj4gCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoCBtYXhJdGVtczogNQo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBjbG9jay1uYW1lczoK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIC0gY29uc3Q6IGF1eAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IGNs
a3JlZgo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJlZgo+Pj4KPj4+IFdo
YXQgaXMgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGVzZSB0d28/IFdoaWNoIGJsb2NrIElOUFVU
cwo+Pj4gKGltcG9ydGFudCEpIHRoZXkgcmVwcmVzZW50Pwo+Pj4KPj4KPj4gY2xrcmVmIGlzIHRo
ZSBUQ1NSIHJlZmVyZW5jZSBjbG9jayBzd2l0Y2gsIGFuZCB0aGUgcmVmIGlzIHRoZSBhY3R1YWwg
Q1hPIAo+PiBoYW5kbGUuCgoKVGhlbiB0aGlzIHNob3VsZCBiZSBuYW1lZCBzb21laG93IGRpZmZl
cmVudGx5LiBDWE8gaXMgY2xvY2suIFJlZmVyZW5jZQpjbG9jayBpcyBjbG9jay4uLiBUbyBtZSBp
dCBmZWVscyBsaWtlIHlvdSBhcmUgZGVzY3JpYmluZyB0aGUgc2FtZSBjbG9jaywKanVzdCBtaXNz
aW5nIHNvbWUgZ2F0ZSBpbiBUQ1NSLiBCdXQgaW4gY2FzZSB0aGVzZSBhcmUgbm90IHRoZSBzYW1l
CmNsb2NrcywgeW91IG5lZWQgdG8gbmFtZSBpdCBhY2N1cmF0ZWx5LgoKCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1waHkK
