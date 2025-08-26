Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 901F8CA0FE9
	for <linux-phy@archiver.kernel.org>; Tue, 26 Aug 2025 09:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obqCFSvalWYkcRJwohCkE0hC5Mo/lWYqRRMTj7zmHNU=; b=1sr8l4tNpTYQV8
	BSYaiMd7rfF/X11DDth10z51PZxGzb9M2TTcaGRvbC7GH744QlRjdyztxusaEbutfKZPrlciNuwfx
	rubhFryyBX/YTtQTULEoUr2JK5SDgVwnIQ8YDo+7Ka+f8q6IhaI8orWMl41LRVU61JDeB/NEQxQbt
	ZIDM4kMTQJ6ndcgpSw+L8mD7ewUc7LsMXVg6xiE4BzS+IRaT82He7ZMP3sIDGPBRyQxsHHOoj+7Td
	/TRd81cz3FiUOXfmW0wiKaKJ0tuByUqp/mCIs2+5Qfv6JauCTZnrvFfQseNt+dW//H8rRPCO5mU1c
	e6kWt5F1GTAjra7LMcEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqq4G-0000000BQY9-0goe;
	Tue, 26 Aug 2025 09:34:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpwj-0000000BNTc-0esA
	for linux-phy@bombadil.infradead.org;
	Tue, 26 Aug 2025 09:26:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zpSHl5VOUSgTeQVsX5kCufLVkqyulFoRyxxsalrcK+Q=; b=i0qgvMD7PW1/0zDLL7i/VrLlW0
	MqdAr7LhdCwJ2iXUpltBclyeg04jFpngVC1SXrXQDpLnwaTqlRi26Vj0A/JzYbnaIiiOI6f7eUB94
	sKBNY4m40F7REhRAwVYTyTld8idoemPNgk10eZmbDNJAf7WXUJm8hdvd9sygFQxX9WZJ6xxE7gBnw
	y3yS3CvIVM2vCVk2Q85JX+33IkrcTvhk75dEnSvlZohiggYD0cnyGjvKM7gURsRE8xXIf8H87W4wA
	levO2cKTX+To1nec1emvPsl2l7EyLuk5DJN1s58neV2o6xpa8tg+JojZV3FZWvfTFAXHL0+gDehrX
	hpEP2YUw==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpwf-00000002BVo-2hnY
	for linux-phy@lists.infradead.org;
	Tue, 26 Aug 2025 09:26:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EF29E41B5C;
	Tue, 26 Aug 2025 09:26:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1978C4CEF1;
	Tue, 26 Aug 2025 09:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756200379;
	bh=ZDQPouyh0tXwE4FaqtVS1nMSLMBuymRC8yoZpy2COSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hyoB2UhGzy+dXwciBnB51SUQYNWvcreEx7fJTGIDC4YYg6hUa7VBnSBqw+8bPkgL2
	 8jgtfUJ2pB9dDBGDVgY3nsoqtHvWGTkvGMO+LWTGkTNZ0rh8nTD8KGxccr+m3cqMYD
	 vsLD4jl5j7S4UDN4UY9o04Z1YjXXapJizgnDXWc/Vq1VeNh+1o+s2aV+7hy9dwc0T+
	 RwHf6MuLwRLhwUmswAGeCkX3Yeb3aG8WTPqVhTMA1btcs97tZ7VJbwoEWgx1JpHkxB
	 EsL34mPq/WAvdEnGA2kktNICHam7zmNy5cqqP4tjynOXFNADFVPCAX0lBlrtUqTDEQ
	 9+gzhcMb5tERQ==
Date: Tue, 26 Aug 2025 14:56:03 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com, 
	quic_mrana@quicinc.com
Subject: Re: [PATCH v2 3/3] PCI: qcom: Restrict port parsing only to pci
 child nodes
Message-ID: <p6yacm6hkhp4rgtl2xn677kek24ksczvtuersxnou4kmxmp7go@tmoy7gn4hrhx>
References: <20250826-pakala-v2-0-74f1f60676c6@oss.qualcomm.com>
 <20250826-pakala-v2-3-74f1f60676c6@oss.qualcomm.com>
 <rurdrz3buvb7paqgjjr7ethzvaeyvylezexcwshpj73xf7yeec@i52bla6r5tx7>
 <b7529529-9677-4713-920f-bf36863459ca@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7529529-9677-4713-920f-bf36863459ca@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_102626_187577_5697F023 
X-CRM114-Status: GOOD (  22.37  )
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

T24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMTA6Mjg6NTFBTSBHTVQsIEtyenlzenRvZiBLb3psb3dz
a2kgd3JvdGU6Cj4gT24gMjYvMDgvMjAyNSAwODoxNywgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIHdy
b3RlOgo+ID4gT24gVHVlLCBBdWcgMjYsIDIwMjUgYXQgMTA6NDg6MTlBTSBHTVQsIEtyaXNobmEg
Q2hhaXRhbnlhIENodW5kcnUgd3JvdGU6Cj4gPj4gVGhlIHFjb21fcGNpZV9wYXJzZV9wb3J0cygp
IGZ1bmN0aW9uIGN1cnJlbnRseSBpdGVyYXRlcyBvdmVyIGFsbCBhdmFpbGFibGUKPiA+PiBjaGls
ZCBub2RlcyBvZiB0aGUgUENJZSBjb250cm9sbGVyJ3MgZGV2aWNlIHRyZWUgbm9kZS4gVGhpcyBj
YW4gbGVhZCB0bwo+ID4+IGF0dGVtcHRzIHRvIHBhcnNlIHVucmVsYXRlZCBub2RlcyBsaWtlIE9Q
UCBub2RlcywgcmVzdWx0aW5nIGluIHVubmVjZXNzYXJ5Cj4gPj4gZXJyb3JzIG9yIG1pc2NvbmZp
Z3VyYXRpb24uCj4gPj4KPiA+IAo+ID4gV2hhdCBlcnJvcnM/IEVycm9ycyB5b3UgYXJlIHNlZWlu
ZyBvbiB5b3VyIHNldHVwIG9yIHlvdSBlbnZpc2lvbj8KPiA+IAo+ID4+IFJlc3RyaWN0IHRoZSBw
YXJzaW5nIGxvZ2ljIHRvIG9ubHkgY29uc2lkZXIgY2hpbGQgbm9kZXMgbmFtZWQgInBjaWUiIG9y
Cj4gPj4gInBjaSIsIHdoaWNoIGFyZSB0aGUgZXhwZWN0ZWQgbm9kZSBuYW1lcyBmb3IgUENJZSBw
b3J0cy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEgQ2hhaXRhbnlhIENodW5kcnUg
PGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgo+ID4gCj4gPiBTaW5jZSB0aGlzIGlz
IGEgZml4LCAnRml4ZXMnIHRhZyBpcyBuZWVkZWQuCj4gPiAKPiA+PiAtLS0KPiA+PiAgZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAyICsrCj4gPj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtcWNvbS5jCj4gPj4gaW5kZXggMjk0YmFiZTE4MTZlNGQwYzJiMjM0M2ZlMjJkODlhZjcyYWZj
ZDZjZC4uNWRiZGI2OWZiZGQxYjliNzhhM2ViYmEzY2Q1MGQ3ODE2OGYyZDU5NSAxMDA2NDQKPiA+
PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYwo+ID4+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gPj4gQEAgLTE3NDAsNiAr
MTc0MCw4IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX3BhcnNlX3BvcnRzKHN0cnVjdCBxY29tX3Bj
aWUgKnBjaWUpCj4gPj4gIAlpbnQgcmV0ID0gLUVOT0VOVDsKPiA+PiAgCj4gPj4gIAlmb3JfZWFj
aF9hdmFpbGFibGVfY2hpbGRfb2Zfbm9kZV9zY29wZWQoZGV2LT5vZl9ub2RlLCBvZl9wb3J0KSB7
Cj4gPj4gKwkJaWYgKCEob2Zfbm9kZV9uYW1lX2VxKG9mX3BvcnQsICJwY2llIikgfHwgb2Zfbm9k
ZV9uYW1lX2VxKG9mX3BvcnQsICJwY2kiKSkpCj4gPiAKPiA+IE1heSBJIGtub3cgd2hpY2ggcGxh
dGZvcm0gaGFzICdwY2knIGFzIHRoZSBub2RlIG5hbWUgZm9yIHRoZSBicmlkZ2Ugbm9kZT8gQUZB
SUssCj4gPiBhbGwgcGxhdGZvcm1zIGRlZmluaW5nIGJyaWRnZSBub2RlcyBoYXZlICdwY2llJyBh
cyB0aGUgbm9kZSBuYW1lLgo+IAo+IEl0IGRvZXMgbm90IG1hdHRlci4gSWYgSSBuYW1lIG15IG5v
ZGUgbmFtZSBhcyAicGMiIGl0IHN0b3BzIHdvcmtpbmc/Cj4gCj4gTm8sIFF1YWxjb21tIGNhbm5v
dCBpbnRyb2R1Y2Ugc3VjaCBoaWRkZW4gQUJJLgoKVGhlcmUgaXMgbm8gaGlkZGVuIEFCSSB0aGF0
IFFjb20gaXMgaW50cm9kdWNpbmcuIFdlIGFyZSBqdXN0IHRyeWluZyB0byByZXVzZSB0aGUKc3Rh
bmRhcmQgbm9kZSBuYW1lcyBkb2N1bWVudGVkIGluIHRoZSBkZXZpY2V0cmVlIHNwZWMuIFNvIHlv
dSBhcmUgc2F5aW5nIHRoYXQKd2Ugc2hvdWxkIG5vdCByZWx5IG9uIGl0IGV2ZW4gdGhvdWdoIGl0
IGlzIGRvY3VtZW50ZWQ/IE1heWJlIGJlY2F1c2UsIHRoZSBkdAp0b29saW5nIGlzIG5vdCB5ZXQg
c2NyZWFtaW5nIGlmIHBlb3BsZSBwdXQgbm9uLXN0YW5kYXJkIG5hbWVzIGluIERUPwoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
