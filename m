Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F774CD6E55
	for <linux-phy@archiver.kernel.org>; Wed,  3 Jun 2026 13:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXQoSNdqGWM6uHGTGyMdYlGQxg10+wgZVPQS8JiySEA=; b=MzBGKWGmLwsQ7d
	V7ZZJFiiHrwsZjqjIr3q5ofnds1NPselKpKIzi9cg/tOhCgfAsGGc2gdvUxonsL5ySSRS6UqcSchq
	E6RSgFJj3jUTxqRQSLoqKyQV9P7zUewS6xHn77tMAvpyPobhgQZeGY16WJ3H90X3NwgQkKmwcAjyO
	gO6Jz+1YU3p5Orvt3g4jiDBcN89/fCOSSykhtukebyRho2WlqUIcZaOiW+tq17KDrPiIreRuwdoJt
	rpsuu7Ne8EGi+r6Tv5qTQYryHH9txhMU5Lw4YQ5sogtQcHU5+qyck9PgLvZwVYYd5LJBOgNXLcFX0
	NNDOm491tw0nrQN4RaIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUljH-0000000FBHr-24ov;
	Wed, 03 Jun 2026 13:33:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUljE-0000000FBGo-09B8
	for linux-phy@lists.infradead.org;
	Wed, 03 Jun 2026 13:33:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7600E43614;
	Wed,  3 Jun 2026 13:33:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FA271F00893;
	Wed,  3 Jun 2026 13:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780493631;
	bh=rf2E9prqrL8aqRMvl7nVjS6YDnGr6PghVVVhphnS4lA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k71CKX4FWp5Fr47ZRqNVsR7dFi3/eltyROPQqTjkI0GksY7PTj+aMuwCtCyEb1u8f
	 29UFIPP/iEzlbEffF6FnzeJZXG89gqsO/+17scEuRWySfeoBp7HGi3y3kiu/sSVvfu
	 Qu0tZ0zgeFiuzakTHyGjKoV28waH2pwLr8cCMyCnhqkOEQiBgE/k+l0gn52sh3c2je
	 bNxE3a08uF4zVrlWMjOTZjWc+pQI0UR24DEdueU05Bl33w4UuyU9YuCpk/zpsmXXam
	 0+Q/570UGY/y5HFNwhgeJXjnRxz5rRcsBZ+o6+x6v0bZxv3QL5xIsyHDwiczY0jDKQ
	 pem2nWzpNaSwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 phy-next 14/16] dt-bindings: phy: lynx-10g: initial
 document
To: "Vladimir Oltean" <vladimir.oltean@nxp.com>
Cc: robh@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, olteanv@gmail.com
In-Reply-To: <20260603132059.503527-1-vladimir.oltean@nxp.com>
References: <20260603132059.503527-1-vladimir.oltean@nxp.com>
Date: Wed, 03 Jun 2026 13:33:50 +0000
Message-Id: <20260603133350.9FA271F00893@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063352_462870_AE341514 
X-CRM114-Status: UNSURE (   8.85  )
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGBpZmAgY29u
ZGl0aW9uIGZvciBlbmZvcmNpbmcgdGhlIGBiaWctZW5kaWFuYCBwcm9wZXJ0eSBpbmNvcnJlY3Rs
eSBtYXRjaGVzIHRoZSBgY29tcGF0aWJsZWAgc3RyaW5nIGFycmF5IGRpcmVjdGx5IGFnYWluc3Qg
YW4gYGVudW1gLCB3aGljaCB3aWxsIGFsd2F5cyBldmFsdWF0ZSB0byBmYWxzZSBhbmQgY2F1c2Ug
dGhlIHJlcXVpcmVtZW50IHRvIHNpbGVudGx5IGZhaWwuCi0tCgpjb21taXQgOGJkMzk4MmE4OTcy
MmIyMGEzNjg2ZTQyZDRhYjNiOWYwNzExYWUxMQpBdXRob3I6IFZsYWRpbWlyIE9sdGVhbiA8dmxh
ZGltaXIub2x0ZWFuQG54cC5jb20+CgpkdC1iaW5kaW5nczogcGh5OiBseW54LTEwZzogaW5pdGlh
bCBkb2N1bWVudAoKVGhpcyBjb21taXQgYWRkcyB0aGUgc2NoZW1hIGZvciB0aGUgMTBHIEx5bngg
U2VyRGVzIHVzZWQgb24gbW9zdCBRb3JJUSBhbmQKTGF5ZXJzY2FwZSBTb0NzLiBJdCBkZWZpbmVz
IHRoZSB2YWxpZCBjb21wYXRpYmxlIHN0cmluZ3MsIFBIWSBjZWxsIHJlcXVpcmVtZW50cywKYW5k
IGVuZm9yY2VzIFNvQy1zcGVjaWZpYyBjb25zdHJhaW50cyBzdWNoIGFzIGxhbmUgY291bnRzIGFu
ZCBlbmRpYW5uZXNzLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BoeS9mc2wsbHlueC0xMGcueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvZnNsLGx5bngtMTBnLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGlu
ZGV4IDAwMDAwMDAwMDAwMDAuLjhjZjYwMjdhNzViOTEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9mc2wsbHlueC0xMGcueWFtbAoK
WyAuLi4gXQoKPiArYWxsT2Y6Cj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVydGllczoKPiArICAg
ICAgICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGVu
dW06Cj4gKyAgICAgICAgICAgICAgLSBmc2wsbHMxMDI4YS1zZXJkZXMKPiArICAgICAgICAgICAg
ICAtIGZzbCxsczEwNDZhLXNlcmRlczEKPiArICAgICAgICAgICAgICAtIGZzbCxsczEwNDZhLXNl
cmRlczIKPiArICAgICAgICAgICAgICAtIGZzbCxsczEwODhhLXNlcmRlczEKPiArICAgICAgICAg
ICAgICAtIGZzbCxsczEwODhhLXNlcmRlczIKPiArICAgIHRoZW46Cj4gKyAgICAgIHBhdHRlcm5Q
cm9wZXJ0aWVzOgo+ICsgICAgICAgICJecGh5QFswLTddJCI6Cj4gKyAgICAgICAgICBwcm9wZXJ0
aWVzOgo+ICsgICAgICAgICAgICByZWc6Cj4gKyAgICAgICAgICAgICAgbWluaW11bTogMAo+ICsg
ICAgICAgICAgICAgIG1heGltdW06IDMKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+
ICsgICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBlbnVtOgo+ICsgICAgICAgICAgICAt
IGZzbCxsczEwNDZhLXNlcmRlczEKPiArICAgICAgICAgICAgLSBmc2wsbHMxMDQ2YS1zZXJkZXMy
CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIGNvbmRpdGlvbmFsIGNvcnJlY3RseSBlbmZv
cmNlIHRoZSBiaWctZW5kaWFuIHByb3BlcnR5PyAKClNpbmNlIHRoZSBjb21wYXRpYmxlIHByb3Bl
cnR5IGlzIGEgc3RyaW5nIGFycmF5IGluIGRldmljZSB0cmVlcywgZXZhbHVhdGluZyBpdApkaXJl
Y3RseSBhZ2FpbnN0IGFuIGVudW0gYWx3YXlzIHJldHVybnMgZmFsc2UuIFNob3VsZCB0aGlzIHVz
ZSAiY29udGFpbnM6IiAKd2l0aCB0aGUgZW51bSwgc2ltaWxhciB0byB0aGUgcHJlY2VkaW5nIGlm
IGJsb2NrLCBzbyBkdF9iaW5kaW5nX2NoZWNrIApjb3JyZWN0bHkgZW5mb3JjZXMgdGhlIHJlcXVp
cmVtZW50PwoKPiArICAgIHRoZW46Cj4gKyAgICAgIHJlcXVpcmVkOgo+ICsgICAgICAgIC0gYmln
LWVuZGlhbgo+ICsKPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjAzMTMxOTE0
LjUwMzA1My0xLXZsYWRpbWlyLm9sdGVhbkBueHAuY29tP3BhcnQ9MTQKCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
