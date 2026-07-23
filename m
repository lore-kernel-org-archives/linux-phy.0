Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08EF8C4453A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ts1NJZsFyNjdj/MNbom1nYbXTIwcteyQqIdY92CNRec=; b=P9abLV2GmrH/VJ
	XD+j7nnacWPKdhCT1j08mbQpFlsLpkFxC/DRLWBJ8mQ+goTcBnsfQ4Rrab2GtLpc0RgYh8rQUzRAB
	x3T58Q7qCyU7IhUb/Z/n6WbTu4r6uOCWTp2ErHFO3sc3OJbPn1eHmxZk2mgT5K/SnSElu5UGfDhld
	oGjDRIw6HAwqUxwlD0vRjhhfcW5/pdb2moYnEF1nbx2/vttoTGYrpCnognbrxr3w64ZRfjlujQwvJ
	HC9QJDq8qRuDj0d+7p9Rk33Na/Ga37T+6247Ouag3OElfv9YIu1t+++cD1LoBeDdGlEKJ2ZU22rgo
	c/wjqsB54cYYjFrNjaew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjFz-0000000DEdB-2wKe;
	Thu, 23 Jul 2026 02:33:55 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjFy-0000000DEcz-0so6
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:33:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 70865600AB;
	Thu, 23 Jul 2026 02:33:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EBDD1F000E9;
	Thu, 23 Jul 2026 02:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784774033;
	bh=EU4XifvCpsBQeAIJcvv0XwiMg5XX3BEv13uf9UOOfGA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UtGrRKEJXfB6dO+sCd50BrgAxWS+xHix5V72/lEBOhbPt9NozXX2L6Ox8O5JGLHIe
	 LyQOs9L7O7skn3cB4jhczMgCPxUCd4xqM9BCCJAPle9IYSsKYKtC8/c8LhLW7Skz2A
	 ZZ64cdBSZoHp8Qqy1OybpWxTJBKLIDZ8t9B/7m+Ck7d0ozn5svK3uN5d+4EtU8npIR
	 Lja8fr/t5JpznXTIv/v/Cd0tIqwKTIruNdZ0xczbfkc80R2KE0hpKqHxu5qVGx6dob
	 HYD7cTXZlTY3NiEw7zIUm9e6d9iA6GzaAg1miH7vFNIKaZPtYpMnAq8DETL4Q8O/EY
	 MdZKyPybJMlDg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/6] dt-bindings: phy: qcom: Add Glymur QMP PCIe
 multiple link-mode PHY
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
 <20260722-glymur_linkmode_0722-v6-1-bba8156b8cbb@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 02:33:52 +0000
Message-Id: <20260723023352.9EBDD1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbW1pdCBt
ZXNzYWdlIGNsYWltcyB0byBhZGQgdGhlIGZpbGUgYHFjb20sZ2x5bXVyLXFtcC1wY2llLW11bHRp
cGh5LnlhbWxgLCBidXQgdGhlIHBhdGNoIGFjdHVhbGx5IGFkZHMgYHFjb20sZ2x5bXVyLXFtcC1n
ZW41eDgtcGNpZS1waHkueWFtbGAuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFUQ0ggdjYgMS82XSBk
dC1iaW5kaW5nczogcGh5OiBxY29tOiBBZGQgR2x5bXVyIFFNUCBQQ0llIG11bHRpcGxlIGxpbmst
bW9kZSBQSFkgLS0tCmNvbW1pdCBkYWZmOTQyMTFkNzg4MTVlZWU5YTBmYzA3OTZmNGI1ZmIzNzE5
YjU5CkF1dGhvcjogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5k
aW5nczogcGh5OiBxY29tOiBBZGQgR2x5bXVyIFFNUCBQQ0llIG11bHRpcGxlIGxpbmstbW9kZSBQ
SFkKClRoaXMgY29tbWl0IGFkZHMgYSBzdGFuZGFsb25lIGRldmljZSB0cmVlIGJpbmRpbmcgZm9y
IHRoZSBHbHltdXIgR2VuNSBQQ0llClBIWSBoYXJkd2FyZSBibG9jay4gSXQgZGVzY3JpYmVzIGEg
UEhZIGNvbnRyb2xsZXIgc3VwcG9ydGluZyBib3RoIHg4IGFuZAp4NCt4NCBsaW5rIG1vZGVzIHNl
bGVjdGVkIGF0IHJ1bnRpbWUgdmlhIGEgVENTUiBzeXNjb24gcmVnaXN0ZXIuCgo+IGR0LWJpbmRp
bmdzOiBwaHk6IHFjb206IEFkZCBHbHltdXIgUU1QIFBDSWUgbXVsdGlwbGUgbGluay1tb2RlIFBI
WQo+IAo+IEFkZCBxY29tLGdseW11ci1xbXAtcGNpZS1tdWx0aXBoeS55YW1sIGFzIGEgc3RhbmRh
bG9uZSBiaW5kaW5nCj4gZm9yIHRoZSBHbHltdXIgR2VuNSBQQ0llIFBIWSBoYXJkd2FyZSBibG9j
ay4gVGhpcyBibG9jayBzdXBwb3J0cyB0d28KPiBsaW5rIG1vZGVzLCBzZWxlY3RlZCBhdCBydW50
aW1lIHZpYSBhIFRDU1Igc3lzY29uIHJlZ2lzdGVyOgoKW1NldmVyaXR5OiBNZWRpdW1dCkRvZXMg
dGhlIGNvbW1pdCBtZXNzYWdlIHJlZmVyZW5jZSB0aGUgd3JvbmcgZmlsZW5hbWU/IAoKVGhlIG1l
c3NhZ2Ugc3RhdGVzIHRoZSBuZXcgZmlsZSBpcyBuYW1lZCBxY29tLGdseW11ci1xbXAtcGNpZS1t
dWx0aXBoeS55YW1sLApidXQgdGhlIGRpZmYgYWN0dWFsbHkgY3JlYXRlcyBxY29tLGdseW11ci1x
bXAtZ2VuNXg4LXBjaWUtcGh5LnlhbWw6Cgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sZ2x5bXVyLXFtcC1nZW41eDgtcGNpZS1waHkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxnbHltdXItcW1w
LWdlbjV4OC1wY2llLXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAw
MDAwMDAwMDAwLi43NTlmN2Y5NzlkYzZhCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcWNvbSxnbHltdXItcW1wLWdlbjV4OC1wY2ll
LXBoeS55YW1sCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8j
L3BhdGNoc2V0LzIwMjYwNzIyLWdseW11cl9saW5rbW9kZV8wNzIyLXY2LTAtYmJhODE1NmI4Y2Ji
QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
