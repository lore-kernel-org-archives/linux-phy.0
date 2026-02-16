Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 953C9E81A25
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 15:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PW9CKyeHVSPdmXhd1gF2DxsSLTvzXMst59ugf5lf7/8=; b=EJjI5E4vmnJUf8
	2E9AsQbVIJJDLwn4s4GprnhuEwbtmgNYGRS5pKteV3sch3UTHeGKy3NLIezMrUMGjJJXbnlHmcrBu
	+uvopMFtyNEbP/q2AWvzOfNogYYzYhFl/4pLnP/A9wk35m4URsF9A6UaiQH1JsqtEg7gp1ffrYNnB
	23Ne3pzMBTDzOc4lG8PDbs8o2dOxZ4Y/9Lza4evmsP9wPu65p2W6uDzLoqw5Zyw2+3dv+0oC41rt8
	ATiu+krVo0jXBbVMFJI7AlXTtkyThX0fcqwxdN3Pyl6O9ST/21KesN+Xb6WY0tIR7o/1qkw1A2nRU
	RP60Tvitx3ZG/m2MRaXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0DZ-00000006qs7-1NaX;
	Mon, 16 Feb 2026 15:08:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0DX-00000006qrm-1tTg
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 15:08:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B01F340A53;
	Mon, 16 Feb 2026 15:08:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3C46C19424;
	Mon, 16 Feb 2026 15:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771254534;
	bh=dc3qZ6MngsLfirs8y1/jUoXbmuh9O84XNbto5LTFwUE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SbAPFS8mDbZ9iVT5nWfBiuJ+cU1efDYuqfs5j9ofssHGRXO7oM73CCq3RmnKe2uaH
	 PhSAZQJ7jEJnlUY9LHuaLpGAApYnphKYblHchNOHVHAa5CHVA6uUbe3/4EjzLSUEun
	 zmevWDRBWNX/To/POy6KG5WnodsKVKVNtRsE+W0fiegFiYfYQmbUzwYjrcuyCy3GEb
	 axuiFqm2k9zTwJVeTpmUhUyUH+awdTmGDm5qox12bHI3+uQqwnEGIEKIHqpvYqjGYo
	 mZgcMlO938xHdQUhcorlbe2+QR+cQ1t/k+5lqGbD4IDmqg0mOwnwX8HUhK80UbJOO2
	 nnYtpWD6LKxbA==
Date: Mon, 16 Feb 2026 20:38:39 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 4/5] PCI: qcom: Add link retention support
Message-ID: <xifiwzkg7bscg2ueqlbhpe53km2shhl7npmqvmdc2xwxhh56c6@x5vfuhablrsf>
References: <20260109-link_retain-v1-0-7e6782230f4b@oss.qualcomm.com>
 <20260109-link_retain-v1-4-7e6782230f4b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260109-link_retain-v1-4-7e6782230f4b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_070855_552833_031B820F 
X-CRM114-Status: GOOD (  27.46  )
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMTI6NTE6MDlQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiBTb21lIHBsYXRmb3JtcyBrZWVwIHRoZSBQQ0llIGxpbmsgYWN0
aXZlIGFjcm9zcyBib290bG9hZGVyIGFuZCBrZXJuZWwKPiBoYW5kb2ZmLiBSZWluaXRpYWxpemlu
ZyB0aGUgY29udHJvbGxlciBhbmQgdG9nZ2xpbmcgUEVSU1QjIGluIHN1Y2ggY2FzZXMKPiBpcyB1
bm5lY2Vzc2FyeSBpZiBkcml2ZXIgZG9lc24ndCB3YW50IHRvIGRvIGxpbmsgdHJhaW5pbmcgYWdh
aW4uCj4gCj4gSW50cm9kdWNlIGxpbmtfcmV0YWluIGluIGJvdGggcWNvbV9wY2llX2NmZyBhbmQg
cWNvbV9wY2llIHRvCj4gaW5kaWNhdGUgd2hlbiBsaW5rIHJldGVudGlvbiBpcyBzdXBwb3J0ZWQu
IER1cmluZyBpbml0aWFsaXphdGlvbiwgY2hlY2sKPiB0aGUgTFRTU00gc3RhdGUsIGlmIHRoZSBs
aW5rIGlzIGFscmVhZHkgaW4gTDAgb3IgTDEgaWRsZSBhbmQgTFRTU00gaXMKPiBlbmFibGVkLCBz
ZXQgcHAubGlua19yZXRhaW4gYW5kIHNraXAgY29udHJvbGxlciByZXNldCwgUEVSU1QjIHRvZ2ds
aW5nLAo+IGFuZCBvdGhlciBwb3N0LWluaXQgc3RlcHMuCj4gCj4gSWYgdGhlcmUgaXMgYSBkZXZp
Y2V0cmVlIHByb3BlcnR5IHRvIHJlc3RyaWN0IFBDSWUgZGF0YSByYXRlIGFuZCBsYW5lCj4gd2lk
dGggZ28gd2l0aCB0aGUgbm9ybWFsIGV4ZWN1dGlvbiBpbnN0ZWFkIG9mIGxpbmsgcmV0YW50aW9u
IGxvZ2ljLgo+IAoKTWVudGlvbiB0aGUgcHJvcGVydGllcyBoZXJlIGFuZCBhbHNvIG1ha2UgaXQg
Y2xlYXIgdGhhdCB0aGUgbGluayB3aWxsIG5vdCBiZQpyZXRhaW5lZCBpZiB0aGUgdmFsdWVzIGRv
IG5vdCBtYXRjaCBib290bG9hZGVyIHByb2dyYW1tZWQgb25lcy4KCj4gQ29uZmlndXJlIERCSSBh
bmQgQVRVIGJhc2UgaW4gdGhpcyBzY2VuZXJpbywgc2luY2UgYm9vdGxvYWRlciBEQkkgJiBBVFUK
PiBiYXNlIG1heSBkaWZmZXIgZnJvbSBITE9TIG9uZS4gU28gdXNlIHRoZSBEQkkgJiBBVFUgcHJv
dmlkZWQgZnJvbSB0aGUKPiBkZXZpY2V0cmVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyaXNobmEg
Q2hhaXRhbnlhIENodW5kcnUgPGtyaXNobmEuY2h1bmRydUBvc3MucXVhbGNvbW0uY29tPgo+IC0t
LQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyB8IDUwICsrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtcWNvbS5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1x
Y29tLmMKPiBpbmRleCA5MzQyZjljNzVmMWMzMDE3YjU1NjE0MDY5YTdhYTgyMWE2ZmI4ZGE3Li5i
ZGQ1YmRiNDYyYzVmNjgxNGM4MzExYmU5NjQxMTE3MzQ1NmI2YjE0IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4gKysrIGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiBAQCAtMjU5LDEyICsyNTksMTQgQEAgc3RydWN0
IHFjb21fcGNpZV9vcHMgewo+ICAgICogQG92ZXJyaWRlX25vX3Nub29wOiBPdmVycmlkZSBOT19T
Tk9PUCBhdHRyaWJ1dGUgaW4gVExQIHRvIGVuYWJsZSBjYWNoZQo+ICAgICogc25vb3BpbmcKPiAg
ICAqIEBmaXJtd2FyZV9tYW5hZ2VkOiBTZXQgaWYgdGhlIFJvb3QgQ29tcGxleCBpcyBmaXJtd2Fy
ZSBtYW5hZ2VkCj4gKyAgKiBAbGlua19yZXRhaW46IFNldCBpZiBjb250cm9sbGVyIHN1cHBvcnRz
IGxpbmsgcmV0YWluIGZyb20gYm9vdGxvYWRlcgoKcy8ibGluayByZXRhaW4iLyJyZXRhaW5pbmcg
bGluayIKCj4gICAgKi8KPiAgc3RydWN0IHFjb21fcGNpZV9jZmcgewo+ICAJY29uc3Qgc3RydWN0
IHFjb21fcGNpZV9vcHMgKm9wczsKPiAgCWJvb2wgb3ZlcnJpZGVfbm9fc25vb3A7Cj4gIAlib29s
IGZpcm13YXJlX21hbmFnZWQ7Cj4gIAlib29sIG5vX2wwczsKPiArCWJvb2wgbGlua19yZXRhaW47
Cj4gIH07Cj4gIAo+ICBzdHJ1Y3QgcWNvbV9wY2llX3BvcnQgewo+IEBAIC05NjUsNiArOTY3LDM1
IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX2dldF9yZXNvdXJjZXNfMl83XzAoc3RydWN0IHFjb21f
cGNpZSAqcGNpZSkKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgYm9vbCBxY29tX3Bj
aWVfY2hlY2tfbGlua19yZXRhaW4oc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPiArewo+ICsJdTMy
IGNhcCwgc3BlZWQsIHZhbCwgbHRzc20sIHdpZHRoOwo+ICsJc3RydWN0IGR3X3BjaWUgKnBjaSA9
IHBjaWUtPnBjaTsKPiArCXU4IG9mZnNldDsKPiArCj4gKwl2YWwgPSByZWFkbChwY2llLT5wYXJm
ICsgUEFSRl9MVFNTTSk7Cj4gKwlsdHNzbSA9IHZhbCAmIDB4MWY7Cj4gKwlpZiAoKHZhbCAmIExU
U1NNX0VOKSAmJgo+ICsJICAgIChsdHNzbSA9PSBEV19QQ0lFX0xUU1NNX0wwIHx8IGx0c3NtID09
IERXX1BDSUVfTFRTU01fTDFfSURMRSkpIHsKPiArCQlxY29tX3BjaWVfY29uZmlndXJlX2RiaV9h
dHVfYmFzZShwY2llKTsKPiArCj4gKwkJb2Zmc2V0ID0gZHdfcGNpZV9maW5kX2NhcGFiaWxpdHko
cGNpLCBQQ0lfQ0FQX0lEX0VYUCk7Cj4gKwkJY2FwID0gZHdfcGNpZV9yZWFkbF9kYmkocGNpLCBv
ZmZzZXQgKyBQQ0lfRVhQX0xOS0NBUCk7Cj4gKwkJc3BlZWQgPSBGSUVMRF9HRVQoUENJX0VYUF9M
TktDQVBfU0xTLCBjYXApOwo+ICsJCXdpZHRoID0gZHdfcGNpZV9saW5rX2dldF9tYXhfbGlua193
aWR0aChwY2kpOwo+ICsKPiArCQlpZiAocGNpLT5tYXhfbGlua19zcGVlZCA+IDAgJiYgc3BlZWQg
PCBwY2ktPm1heF9saW5rX3NwZWVkKQo+ICsJCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJCWlmIChw
Y2ktPm51bV9sYW5lcyA+IDAgJiYgd2lkdGggPiBwY2ktPm51bV9sYW5lcykKPiArCQkJcmV0dXJu
IGZhbHNlOwoKSUlVQywgdGhlc2UgY2hlY2tzIGFyZSBpbiBwbGFjZSB0byBvdmVycmlkZSB0aGUg
bGluayByZXRlbnRpb24gaWYgdGhlIHVzZXJzIHdhbnQKdG8gY2hhbmdlIHRoZSBsYW5lL3dpZHRo
IGNvdW50IHRoYW4gd2hhdCB3YXMgYWxyZWFkeSBwcm9ncmFtbWVkIGJ5IHRoZQpib290bG9hZGVy
LgoKSWYgc28sIHBsZWFzZSBhZGQgY29tbWVudCBvbiB0b3Agb2YgdGhpcyBoZWxwZXIgdG8gbWFr
ZSBpdCBleHBsaWNpdC4KCj4gKwo+ICsJCXJldHVybiB0cnVlOwo+ICsJfQo+ICsKPiArCXJldHVy
biBmYWxzZTsKPiArfQo+ICsKPiAgc3RhdGljIGludCBxY29tX3BjaWVfaW5pdF8yXzdfMChzdHJ1
Y3QgcWNvbV9wY2llICpwY2llKQo+ICB7Cj4gIAlzdHJ1Y3QgcWNvbV9wY2llX3Jlc291cmNlc18y
XzdfMCAqcmVzID0gJnBjaWUtPnJlcy52Ml83XzA7Cj4gQEAgLTk4Myw2ICsxMDE0LDE0IEBAIHN0
YXRpYyBpbnQgcWNvbV9wY2llX2luaXRfMl83XzAoc3RydWN0IHFjb21fcGNpZSAqcGNpZSkKPiAg
CWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gZXJyX2Rpc2FibGVfcmVndWxhdG9yczsKPiAgCj4gKwlp
ZiAocGNpZS0+Y2ZnLT5saW5rX3JldGFpbikgewo+ICsJCXBjaS0+cHAubGlua19yZXRhaW4gPSBx
Y29tX3BjaWVfY2hlY2tfbGlua19yZXRhaW4ocGNpZSk7Cj4gKwkJaWYgKHBjaS0+cHAubGlua19y
ZXRhaW4pIHsKPiArCQkJZGV2X2luZm8oZGV2LCAiRW5hYmxpbmcgbGluayByZXRhaW5cbiIpOwoK
IlJldGFpbmluZyBQQ0llIGxpbmsiCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
