Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4CDECD5BA4
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJBHz6AH8IRpNbB8Yp+PQbQYx2uIFi3RWHjd2UaqunA=; b=nuEqKkOX1PHIfM
	t05ruDiRQvMtwQ8kgZNtX+mRTbYIM8fgOmm60X+tTN75bptXvYgkJStr0Ed+wm68vobGdgogGAKHD
	7xHx+NsvIcgothcQa2dpYcSPgLiAAe9MUjNb5aOZ8GxYZ3qBdMJeqalRM+ysRetnXPXpr2PRxzl2B
	+2+eYAlNyiQZPUlLNDBJ0pm9tVNwwC3CDwn1h3J5frN/ITKhdcFU7fM3YESb1cuf+Ra8edee80mZJ
	VsqVk+ZmENt0U5320/UySpGO1uqgqVCBVPTFyRfakokfqabihKilwQrcbZVoz0XY8SM3NeXb1PyHJ
	vqlOkoe1jCrIZzmXWO8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2UC-00000007j15-45Y4;
	Thu, 21 May 2026 12:26:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ2UB-00000007j0z-1lCE
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:26:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 81D6860172;
	Thu, 21 May 2026 12:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EF9B1F000E9;
	Thu, 21 May 2026 12:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779366406;
	bh=OvDFq5XEEgMTnKGhPgesSQVIRyh9hqz8jmzhcbLDZqI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BfhaboA9O5hT66o8hn3f4B3T/UvTFzCMsJMkFWz5u2RZkOft9wc72aqxLq+GoK4B9
	 gCY2+nypfPJUto+co8QP8eHQG0sa7wkmoKftIi6WIfYrYj4xOmq2MXXhHJSeTyqSYI
	 d+gXWwlvv7t9NdElVkxrID+Fe2ZGB21nY514poQgPMqYW/hEWK7baqU9SRgt+7bzzT
	 LNDmFfe7K3PRZqGxcS76Tg8DhktLEg5weNX8OHEGXK86OcIZiUOx6wIIaVYHt5tnbU
	 FlC+u+DmGGYjfW6aJDtjNbaGx2+KnTkzwxxDUdyMMTkpR5/4yFXqzEL0THwqhymQsZ
	 hU+6d1Y3V13NA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY
 schema
To: =?utf-8?b?QnJ5YW4gTydEb25vZ2h1ZQ==?= <bryan.odonoghue@linaro.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, conor+dt@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org>
References: <20260521-x1e-csi2-phy-v6-1-9d73d9bd7d20@linaro.org>
Date: Thu, 21 May 2026 12:26:44 +0000
Message-Id: <20260521122645.3EF9B1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIHNjaGVtYSB1
bmNvbmRpdGlvbmFsbHkgcmVxdWlyZXMgYGNsb2NrLWxhbmVzYCBmb3IgYHBvcnRAMGAsIHdoaWNo
IGluY29ycmVjdGx5IGJyZWFrcyBDLVBIWSBjb25maWd1cmF0aW9ucy4KLSBbTG93XSBUaGUgZXhh
bXBsZSBkZXZpY2UgdHJlZSBub2RlIGlzIG1pc3NpbmcgcmVxdWlyZWQgYGRhdGEtbGFuZXNgIGFu
ZCBgY2xvY2stbGFuZXNgIHByb3BlcnRpZXMgaW4gdGhlIGBwb3J0QDBgIGVuZHBvaW50LgotLQoK
Y29tbWl0IGJlYzc1MzM1ZmQ1MjE0YTA2NWYwOTBjZWZlYjI4ZjljODk1Y2ZkM2MKQXV0aG9yOiBC
cnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4KCmR0LWJpbmRpbmdz
OiBwaHk6IHFjb206IEFkZCBDU0kyIEMtUEhZL0RQSFkgc2NoZW1hCgpUaGlzIGNvbW1pdCBhZGRz
IGEgbmV3IGJhc2UgZGV2aWNldHJlZSBzY2hlbWEgZm9yIFF1YWxjb21tIE1JUEkgQ1NJMiBQSFkg
CmRldmljZXMsIGluaXRpYWxseSBmb3IgdGhlIHgxZTgwMTAwLiBJdCBzdXBwb3J0cyBDUEhZLCBE
UEhZLCBhbmQgRFBIWSBzcGxpdAptb2RlcyBhY3Jvc3MgdGhyZWUgcG9ydHMsIGFsbG93aW5nIHBl
ci1QSFkgdm9sdGFnZSByYWlscyB0byBiZSBpbmRpdmlkdWFsbHkgCmRlZmluZWQgYW5kIHJlcXVp
cmVkLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9xY29tLHgxZTgwMTAwLWNzaTItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3Fjb20seDFlODAxMDAtY3NpMi1waHkueWFtbAo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwMC4uYzkxMTYyNDZjMWU5ZQo+IC0tLSAvZGV2L251
bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20seDFl
ODAxMDAtY3NpMi1waHkueWFtbApbIC4uLiBdCj4gKyAgICBwcm9wZXJ0aWVzOgo+ICsgICAgICBw
b3J0QDA6Cj4gKyAgICAgICAgJHJlZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvJGRlZnMvcG9ydC1i
YXNlCj4gKyAgICAgICAgZGVzY3JpcHRpb246IFNlbnNvciBpbnB1dC4gQWx3YXlzIHByZXNlbnQu
Cj4gKwo+ICsgICAgICAgIHByb3BlcnRpZXM6Cj4gKyAgICAgICAgICBlbmRwb2ludDoKPiArICAg
ICAgICAgICAgJHJlZjogL3NjaGVtYXMvbWVkaWEvdmlkZW8taW50ZXJmYWNlcy55YW1sIwo+ICsg
ICAgICAgICAgICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKyAgICAgICAgICAgIHBy
b3BlcnRpZXM6Cj4gKyAgICAgICAgICAgICAgZGF0YS1sYW5lczoKPiArICAgICAgICAgICAgICAg
IG1pbkl0ZW1zOiAxCj4gKyAgICAgICAgICAgICAgICBtYXhJdGVtczogNAo+ICsgICAgICAgICAg
ICAgIGNsb2NrLWxhbmVzOgo+ICsgICAgICAgICAgICAgICAgbWF4SXRlbXM6IDEKPiArICAgICAg
ICAgICAgICByZW1vdGUtZW5kcG9pbnQ6IHRydWUKPiArICAgICAgICAgICAgcmVxdWlyZWQ6Cj4g
KyAgICAgICAgICAgICAgLSBkYXRhLWxhbmVzCj4gKyAgICAgICAgICAgICAgLSBjbG9jay1sYW5l
cwoKW1NldmVyaXR5OiBNZWRpdW1dClRoZSBjb21taXQgZGVzY3JpcHRpb24gbWVudGlvbnMgdGhl
IFBIWSBzdXBwb3J0cyBib3RoIEMtUEhZIGFuZCBELVBIWSBtb2Rlcy4KU2luY2UgQy1QSFkgZW1i
ZWRzIHRoZSBjbG9jayBzaWduYWwgd2l0aGluIHRoZSAzLXBoYXNlIGRhdGEgbGFuZXMsIHRoZXJl
IGlzbid0CmEgc2VwYXJhdGUgcGh5c2ljYWwgY2xvY2sgbGFuZS4gRG9lcyByZXF1aXJpbmcgY2xv
Y2stbGFuZXMgdW5jb25kaXRpb25hbGx5CmhlcmUgYnJlYWsgY29uZmlndXJhdGlvbnMgdGhhdCBu
ZWVkIHRvIHVzZSBDLVBIWSBtb2RlPwoKPiArICAgICAgICAgICAgICAtIHJlbW90ZS1lbmRwb2lu
dApbIC4uLiBdCj4gK2V4YW1wbGVzOgo+ICsgIC0gfApbIC4uLiBdCj4gKyAgICAgICAgcG9ydHMg
ewo+ICsgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiArICAgICAgICAgICAgI3Np
emUtY2VsbHMgPSA8MD47Cj4gKwo+ICsgICAgICAgICAgICBwb3J0QDAgewo+ICsgICAgICAgICAg
ICAgICAgcmVnID0gPDA+Owo+ICsgICAgICAgICAgICAgICAgY3NpcGh5MF9pbl9lcDogZW5kcG9p
bnQgewo+ICsgICAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmc2Vuc29yX291
dD47CgpbU2V2ZXJpdHk6IExvd10KVGhlIHNjaGVtYSBkZWZpbml0aW9uIGFib3ZlIGV4cGxpY2l0
bHkgcmVxdWlyZXMgZGF0YS1sYW5lcyBhbmQgY2xvY2stbGFuZXMgdG8KYmUgcHJlc2VudCBpbiB0
aGUgcG9ydEAwIGVuZHBvaW50LiBXaWxsIG9taXR0aW5nIHRoZW0gZnJvbSB0aGlzIGV4YW1wbGUg
Y2F1c2UKYSB2YWxpZGF0aW9uIGZhaWx1cmUgd2hlbiBydW5uaW5nIGR0X2JpbmRpbmdfY2hlY2s/
Cgo+ICsgICAgICAgICAgICAgICAgfTsKPiArICAgICAgICAgICAgfTsKPiArCj4gKyAgICAgICAg
ICAgIHBvcnRAMiB7Cj4gKyAgICAgICAgICAgICAgICByZWcgPSA8Mj47Cj4gKyAgICAgICAgICAg
ICAgICBjc2lwaHkwX291dF9lcDogZW5kcG9pbnQgewo+ICsgICAgICAgICAgICAgICAgICAgIHJl
bW90ZS1lbmRwb2ludCA9IDwmY29udHJvbGxlcl9pbj47Cj4gKyAgICAgICAgICAgICAgICB9Owo+
ICsgICAgICAgICAgICB9Owo+ICsgICAgICAgIH07Cj4gKyAgICB9OwpbIC4uLiBdCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTIx
LXgxZS1jc2kyLXBoeS12Ni0wLTlkNzNkOWJkN2QyMEBsaW5hcm8ub3JnP3BhcnQ9MQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
