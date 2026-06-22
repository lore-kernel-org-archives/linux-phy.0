Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 630ABCDB46F
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jun 2026 10:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IWY7BJFLsa4mUW5RID2Dh3dZWDcqH55GaCtHiTajN0=; b=Zm+nRIthVumzkn
	LqeQrKVZh3o9DIr4gfAjoT57s+4CnERqzmmoWDOq7xRZh2j+gIwfVrcCERH9D21mn2E9p8mDqjLn/
	dC1Gq+BMpLTFbR0AbwcL9UBZhh9ArhuqKJ5ZWZgyMlS4DsXGVkE3IzyND0QTWXBwOUWPVtbfGn81g
	js+Of5IQmjzoX7A2K8GbZFkU1DbW36bzOeYDMbNl06u2a7Qbf9+SJxZ+cN4qo9qzMtRFvfaG57Mt2
	OxLuMZSRtpSQ+Vq747ihnFpj1cfm4WYPBMkM6QI6zbkwySXcCGuJVU0b2qENw2BwXGj/nEN9QoAmC
	m2BAvb3IQbVjNxZ/F/Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbbl3-00000004ota-0YPD;
	Mon, 22 Jun 2026 10:20:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbbl2-00000004otC-1jls
	for linux-phy@lists.infradead.org;
	Mon, 22 Jun 2026 10:20:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DBA6C43FC8;
	Mon, 22 Jun 2026 10:19:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37DB41F00A3D;
	Mon, 22 Jun 2026 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782123599;
	bh=uB+8/xYtKs/zpkIS0ggeBKEZwfZ03BQcDIPMLSVgWLI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d0P3xeOVRrLhAms83k3Yr+cnZZk7fbdt/9E1yzW3v4RNTYnDjGbC3AkOv/ojKKR3I
	 G6xFhX+4BD5vdXJJUqK/oEzv7coDHGfo7/1WKkCYsCjLTobpIKZckWPQI5eCjAlEg9
	 zeFxuzKQtT2oNXCx1YUBRX6FicFPInSSTv7xyG+lNY5G8swQxuu/kVEoYQvwISNEJN
	 cQEf11YWKEIhnhD+fWFkx5wFQdGg6sG6Nm7AI5krAweLbIb16Z3z4EJ5g0mJJMkl1W
	 wMgP8rKu1+OPe14h1M8Oci3cU14qb3WTRoCe8tFG+fInGw+HLVizCTsiHF5LbOpzVw
	 FkdYObqda67Kw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: Drop incorrect usage of double '::'
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260622101606.485961-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260622101606.485961-4-krzysztof.kozlowski@oss.qualcomm.com>
Date: Mon, 22 Jun 2026 10:19:58 +0000
Message-Id: <20260622101959.37DB41F00A3D@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVW5pbnRlbmRlZCByZXBs
YWNlbWVudCBvZiBCTkYgbm90YXRpb24gYDo6PWAgd2l0aCBgOj1gLgotLQoKY29tbWl0IGE5ZmRk
MGIwNjVlYjViNjM5NGE5YzMzZmZiYTBmZDUxOTRlODAxMTUKQXV0aG9yOiBLcnp5c3p0b2YgS296
bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+CgpkdC1iaW5kaW5n
czogRHJvcCBpbmNvcnJlY3QgdXNhZ2Ugb2YgZG91YmxlICc6OicKClRoaXMgY29tbWl0IGNsZWFu
cyB1cCBkZXZpY2UgdHJlZSBiaW5kaW5nIHNjaGVtYXMgYnkgcmVtb3ZpbmcgdGhlIHJlZHVuZGFu
dApkb3VibGUgY29sb25zIGF0IHRoZSBlbmQgb2YgZGVzY3JpcHRpb25zIGluc2lkZSBZQU1MIGxp
dGVyYWwgc3R5bGUgYmxvY2tzLgoKTGluazogaHR0cHM6Ly95YW1sLm9yZy9zcGVjLzEuMi4yLyNs
aXRlcmFsLXN0eWxlIFsxXQoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL211eC9tdXgtY29uc3VtZXIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tdXgvbXV4LWNvbnN1bWVyLnlhbWwKPiBpbmRleCA5ZTJkNzhhNzhlNDA5Li43
NjkyNDNhMmJmMDQ2IDEwMDY0NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9tdXgvbXV4LWNvbnN1bWVyLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbXV4L211eC1jb25zdW1lci55YW1sCj4gQEAgLTEzLDggKzEzLDggQEAgZGVz
Y3JpcHRpb246IHwKPiAgICBNdXggY29udHJvbGxlciBjb25zdW1lcnMgc2hvdWxkIHNwZWNpZnkg
YSBsaXN0IG9mIG11eCBjb250cm9sbGVycyB0aGF0IHRoZXkKPiAgICB3YW50IHRvIHVzZSB3aXRo
IGEgcHJvcGVydHkgY29udGFpbmluZyBhICdtdXgtY3RybC1saXN0JzoKPiAgCj4gLSAgICBtdXgt
Y3RybC1saXN0IDo6PSA8c2luZ2xlLW11eC1jdHJsPiBbbXV4LWN0cmwtbGlzdF0KPiAtICAgIHNp
bmdsZS1tdXgtY3RybCA6Oj0gPG11eC1jdHJsLXBoYW5kbGU+IFttdXgtY3RybC1zcGVjaWZpZXJd
Cj4gKyAgICBtdXgtY3RybC1saXN0IDo9IDxzaW5nbGUtbXV4LWN0cmw+IFttdXgtY3RybC1saXN0
XQo+ICsgICAgc2luZ2xlLW11eC1jdHJsIDo9IDxtdXgtY3RybC1waGFuZGxlPiBbbXV4LWN0cmwt
c3BlY2lmaWVyXQoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyB1bmludGVudGlvbmFsbHkgY2hh
bmdlIHRoZSBzdGFuZGFyZCBCYWNrdXMtTmF1ciBGb3JtIChCTkYpIDo6PQpvcGVyYXRvciB0byA6
PT8gSXQgbG9va3MgbGlrZSBhIGdsb2JhbCBzZWFyY2gtYW5kLXJlcGxhY2UgZm9yIDo6IG1pZ2h0
CmhhdmUgYWNjaWRlbnRhbGx5IGNhdWdodCB0aGVzZSBCTkYgcHJvZHVjdGlvbiBydWxlcy4KCi0t
IApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAy
NjA2MjIxMDE2MDYuNDg1OTYxLTMta3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29t
P3BhcnQ9MgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
