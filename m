Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 385D0C61DBD
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 14:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogbBpYwckwkBjDOod2UBkhJFyJ0EVIPrRVlwcUCO128=; b=bmNdeP2w7FQohG
	Bq+3BojTmsvyxZeenaT3q1hgZz74PhKWaaZ9X9649iWGsUry97mRN51tBwFl5eOe0zFeUGmS6d81R
	u9tQyyLRB0izH8bC+9LjbeHvAKb1YaXhYW30s84HvhUGj6W2/CJabcnG3iER7SlZprqmLtmpfKrMO
	s1GSoG/m9BpzEe4kTQFLZ7sPxONekKboMdJ+2g/QTOV/tvzpekcuLPJeGkw5YQm2QaTpspp4swUd0
	tiMX32CUEh/CVNVWaTljzo19FkXWVuPEKg/LqBJpLI1VqbmrSQNmuW3MGogeLnJQ1Csz7Ct0vUHfl
	aqog1C9mzcXKJvyiCgQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxJh-00000005xG6-3vq9;
	Fri, 28 Aug 2026 14:12:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxJg-00000005xFl-2h95
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 14:12:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DEE9D60200;
	Fri, 28 Aug 2026 14:12:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BF821F000E9;
	Fri, 28 Aug 2026 14:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787926343;
	bh=ewEW/PbNGvzn1mLO4IM8foHLLqLhEziZuJ945iu1y9o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Z95+DI1kY1t1hEizLC77OsvXF2Y2MZ7xNPwX96xPqJZsokkQKDSoicQqhVRv+5uAr
	 39N8h5wKR7kAHr9y2b6TLyf4w2RuqBJVGDPJcco6zBG5joE5+cdIAsRNWjxsgxJfwo
	 SdSZIxisppc7eBGDehEe20RZQ4jzvV5Zblxj7bFsgRy1/cPlqyhiFNpuh0Dl6MOabS
	 Pe9lT4u5GAlQXdPbEMwhpemfbjzQr29oO2DHol4Ecc6n6tB57ljpYK6BP2RhfcDnUO
	 CmxK4520PxhL0/ydcXRj82Gxu2zh6tnkUOuDLkf1xBVPFInnWC3cG6OKr8gvqgcVdX
	 TT4c/NToXeTbg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC/DO NOT MERGE 05/12] dt-bindings: display/msm: hdmi:
 Add Eliza HDMI TX
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>
Cc: olteanv@gmail.com, robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260828-drm-msm-hdmi-eliza-v1-5-67843277de17@oss.qualcomm.com>
References: <20260828-drm-msm-hdmi-eliza-v1-0-67843277de17@oss.qualcomm.com>
 <20260828-drm-msm-hdmi-eliza-v1-5-67843277de17@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:12:22 +0000
Message-Id: <20260828141223.1BF821F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gVGhlIGNvbmRpdGlv
bmFsIGBpZmAgYmxvY2sgZm9yIHRoZSBuZXcgRWxpemEgSERNSSBUWCBkZXZpY2UgdXNlcyBhbiBp
bmNvcnJlY3QgY29tcGF0aWJsZSBzdHJpbmcgd2l0aCBhIGR1cGxpY2F0ZWQgdmVuZG9yIHByZWZp
eCAoJ3Fjb20scWNvbSxlbGl6YS1oZG1pLXR4JyksIHByZXZlbnRpbmcgdGhlIHNjaGVtYSBjb25z
dHJhaW50cyBmcm9tIGJlaW5nIGFwcGxpZWQuCi0tCgpjb21taXQgOTU4MzZmNjhkZjUyNDViN2Rj
MTIxNDM3YjZjM2RmMzQ0MmI1ZTRmOApBdXRob3I6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlz
enRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4KCmR0LWJpbmRpbmdzOiBkaXNwbGF5L21z
bTogaGRtaTogQWRkIEVsaXphIEhETUkgVFgKClF1YWxjb21tIEVsaXphIFNvQyBjb21lcyB3aXRo
IEhETUkgSVAgYmxvY2ssIGJ1aWx0IG9uIHRvcCBvZiBvbmUKcHJldmlvdXNseSBwcmVzZW50IGlu
IE1TTTg5OTguICBUaGVyZSBhcmUganVzdCBhIGZldyBkaWZmZXJlbmNlcyBpbgpoYXJkd2FyZSwg
bW9zdGx5IGFib3V0IGhhbmRsaW5nIGNsb2NrIHJlcGFyZW50aW5nLCBidXQgbW9yZSBub3RhYmxl
IHRoZQpvbGQgYmluZGluZyBsb29rZWQgaW5jb21wbGV0ZSwgdGh1cyBkZXZpY2VzIGNvdWxkIG5v
dCBiZSBjb25zaWRlcmVkCmNvbXBhdGlibGUuCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tc20vaGRtaS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2hkbWkueWFtbAo+IGluZGV4IDAyZDI3
Y2NhZDAyNDcuLjZhZGFhMDk1Yjc0NzMgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbXNtL2hkbWkueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21zbS9oZG1pLnlhbWwKWyAuLi4gXQo+IEBA
IC0xNTksNiArMTgwLDQ0IEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAtIGNvbnN0OiBidXMKPiAg
ICAgICAgICAgICAgLSBjb25zdDogbW5vYwo+ICAgICAgICAgICAgICAtIGNvbnN0OiBpZmFjZV9t
bXNzCj4gKyAgICAgICAgcmVnLW5hbWVzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDEKPiArICAg
ICAgICAgIGl0ZW1zOgo+ICsgICAgICAgICAgICAtIGNvbnN0OiBjb3JlX3BoeXNpY2FsCj4gKyAg
ICAgICAgICAgIC0gY29uc3Q6IHFmcHJvbV9waHlzaWNhbAo+ICsgICAgICAgICAgICAtIGNvbnN0
OiBoZGNwX3BoeXNpY2FsCj4gKwo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gKyAg
ICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAgICBl
bnVtOgo+ICsgICAgICAgICAgICAgIC0gcWNvbSxxY29tLGVsaXphLWhkbWktdHgKCltTZXZlcml0
eTogTWVkaXVtXQpEb2VzIHRoaXMgY29tcGF0aWJsZSBzdHJpbmcgY29udGFpbiBhIGR1cGxpY2F0
ZWQgInFjb20sIiB2ZW5kb3IgcHJlZml4PwoKSXQgYXBwZWFycyB0aGF0IHRoaXMgc2hvdWxkIGJl
ICJxY29tLGVsaXphLWhkbWktdHgiIHRvIG1hdGNoIHRoZSBjb21wYXRpYmxlCnN0cmluZyBkZWZp
bmVkIGluIHRoZSBwcm9wZXJ0aWVzIHNlY3Rpb24gYW5kIHRoZSBleGFtcGxlLiBXaXRoIHRoZSBk
dXBsaWNhdGVkCnByZWZpeCwgdGhpcyBjb25kaXRpb25hbCBibG9jayB3aWxsIG5vdCBtYXRjaCwg
Y2F1c2luZyB0aGUgY29uc3RyYWludHMgZm9yIHRoZQpjbG9ja3MsIHJlZywgYW5kIHJlcXVpcmVk
IHByb3BlcnRpZXMgZGVmaW5lZCBpbiB0aGUgInRoZW4iIGJsb2NrIHRvIGJlCmJ5cGFzc2VkIGR1
cmluZyBkdGJzIHNjaGVtYSB2YWxpZGF0aW9uLgoKPiArICAgIHRoZW46Cj4gKyAgICAgIHByb3Bl
cnRpZXM6Cj4gKyAgICAgICAgY2xvY2tzOgo+ICsgICAgICAgICAgbWluSXRlbXM6IDYKPiArICAg
ICAgICAgIG1heEl0ZW1zOiA2CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwODI4LWRybS1tc20taGRtaS1lbGl6YS12MS0wLTY3ODQz
Mjc3ZGUxN0Bvc3MucXVhbGNvbW0uY29tP3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
