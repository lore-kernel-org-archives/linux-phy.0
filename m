Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A72CDCD4F5B
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 10:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qahe3itK+bmoY9ZVSHB6J+mEMpPo++xYZvUWTq9DgT8=; b=gAkcWhsX9E/B8u
	BQWDMBYNBwhNmLuLgyaIBfwWHKTEXq1LqmVweXa3CoFik4i1PyQs009f9EMfp63xxsdBbBx1d9/wx
	oIaxwWP9sJ13fDXWXB0Hxs7NHhkXB2BKvcpd5xDioU5+54WrPs3xDaXT84ve1WMbNvxsUJVINIQwp
	5e6lCjGVOCMR5/M+mpKlIOnlk30MUdKw40QVF989IQ5Z7STkVXTl6DC6Anniri2mDJF1cKiqx1uXD
	rWQR/Dcp5SQYBshFjXG38skHZAJDWlZJ7rJmkhTfinHVaCuBto8E+75aanRpoqU+POIiAhII6AwEu
	ZUM2/+1WUqzGrNGIG4ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNQu-0000000AY7V-0dMi;
	Fri, 22 May 2026 10:48:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNQs-0000000AY6y-1AU5
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 10:48:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2642E41A7E;
	Fri, 22 May 2026 10:48:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2F311F000E9;
	Fri, 22 May 2026 10:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779446925;
	bh=eqZr+JkwzdyzcnYR6I/UAnzovl7km+jx4iQEiQDf/cA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Xud1kdC/PGZEyJaRTC+AuAVlV9dRxzX6Lo1citWWwict+JeHSiPg8NhrjUr0HOlY2
	 2UDNVWGDUbA6XeY2a1MLWNxlWhuZop7GmSbervMupgddB2OHqwarxbtWdEgoWGx0Wm
	 PYOhPoOJP4loaMJUmYWDPg2hW2D7aecENzrYMvXDkqJ0qIQtWqkkI5jDy3olLjupPx
	 uEY9JdnfIKOY9ePxrUJDQfAfsY8gwdp95JAzsbZirKTThm6ya3H4HlkfUHysElZlez
	 uvLpXjpGEDUh8usVvVXArdYas/JdrXiRUXqc9Qa38mlsZmbzCJOtjyPsvL/yjVSxQ1
	 6q9iD8+9EPUSw==
Date: Fri, 22 May 2026 16:18:35 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/4] PCI: qcom: Add Support for Eliza
Message-ID: <t6wljnlnz77dvthbohlr7v4qlhsqzvykhcm6evmtnvkgtqk34w@o7sl6nq5lkbi>
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
 <20260522-discerning-sympathetic-moth-daa9e7@quoll>
 <5593d136-569e-4ba9-9a2f-e635125899aa@oss.qualcomm.com>
 <c751f5f9-f9c2-4575-a029-0be4148e1aee@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c751f5f9-f9c2-4575-a029-0be4148e1aee@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_034846_355573_8011EF84 
X-CRM114-Status: GOOD (  18.83  )
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

T24gRnJpLCBNYXkgMjIsIDIwMjYgYXQgMTE6MzQ6MzBBTSArMDIwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAyMi8wNS8yMDI2IDExOjMxLCBLcmlzaG5hIENoYWl0YW55YSBDaHVu
ZHJ1IHdyb3RlOgo+ID4gCj4gPiAKPiA+IE9uIDUvMjIvMjAyNiAxMjoyMSBQTSwgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPiA+PiBPbiBUaHUsIE1heSAyMSwgMjAyNiBhdCAwNzozNTozMVBN
ICswNTMwLCBLcmlzaG5hIENoYWl0YW55YSBDaHVuZHJ1IHdyb3RlOgo+ID4+PiBBZGQgc3VwcG9y
dCBmb3IgRWxpemEgc29jLCB3aGljaCBoYXMgdHdvIFBDSWUgY29udHJvbGxlcnMgY2FwYWJsZQo+
ID4+PiBvZiA4R1QvcyBYMSBhbmQgOEdUL3MgWDIsIHVzaW5nIHRoZSBjZmdfMV85XzAgY29uZmln
dXJhdGlvbi4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1
bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFsY29tbS5jb20+Cj4gPj4+IC0tLQo+ID4+PiAg
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgfCAxICsKPiA+Pj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLXFjb20uYwo+ID4+PiBpbmRleCBhZjZiZjVjY2U2NWIuLjQwZjBhNWYyNDdlYiAx
MDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMK
PiA+Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMKPiA+Pj4g
QEAgLTIxMjMsNiArMjEyMyw3IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX3Jlc3VtZV9ub2lycShz
dHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4+ICBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9p
ZCBxY29tX3BjaWVfbWF0Y2hbXSA9IHsKPiA+Pj4gIAl7IC5jb21wYXRpYmxlID0gInFjb20scGNp
ZS1hcHE4MDY0IiwgLmRhdGEgPSAmY2ZnXzJfMV8wIH0sCj4gPj4+ICAJeyAuY29tcGF0aWJsZSA9
ICJxY29tLHBjaWUtYXBxODA4NCIsIC5kYXRhID0gJmNmZ18xXzBfMCB9LAo+ID4+PiArCXsgLmNv
bXBhdGlibGUgPSAicWNvbSxwY2llLWVsaXphIiwgLmRhdGEgPSAmY2ZnXzFfOV8wIH0sCj4gPj4g
U28gY29tcGF0aWJsZSB3aXRoIHNtODU1MC4gV2h5IGlzbid0IHRoaXMgZXhwbGFpbmVkIGluIGNv
bW1pdCBtc2cgb2YKPiA+PiB0aGUgYmluZGluZz8KPiA+IE5vLCBQQ0llIGNvbnRyb2xsZXIgaXMg
bm90IGNvbXBhdGlibGUgd2l0aCBzbTg1NTAsIHdlIGFyZSBqdXN0IHJlIHVzaW5nIHRoZSBib290
Cj4gPiBzZXF1ZW5jZSB1c2VkIGJ5IHRoZSBzbTg1NTAuCj4gCj4gVGhlbiB3aXRoIHdoYXQgaXQg
aXMgY29tcGF0aWJsZT8gWW91IGNhbm5vdCB1c2Ugc29tZW9uZSBlbHNlJ3MgbWF0Y2gKPiBkYXRh
IGFuZCBjbGFpbSB0aGV5IGFyZSBub3QgY29tcGF0aWJsZS4gVGhpcyBpcyBjb250cmFkaWN0b3J5
IHRvIGl0c2VsZi4KPiAKCidjZmdfMV85XzAnIGlzIHRoZSBtYXRjaCBkYXRhIG9mIGJhc2UgUENJ
ZSBJUCB2MS45LjAsIG5vdCBqdXN0IFNNODU1MC4gVGhlICdvcHMnCmNhbGxiYWNrcyBmb3IgJ2Nm
Z18xXzlfMCcgYXJlIGNvbXBhdGlibGUgd2l0aCBQQ0llIElQcyB1c2VkIGluIG1hbnkgU29DcyBz
dWNoIGFzClNNODU1MCwgU004NDUwLCBTTTgzNTAsIFNNODI1MCwgU004MTUwLCBTRFg1NSwgU0M4
MTgwWCwgYW5kIFNDNzI4MC4gQW5kIEVsaXphIGlzCmFsc28gZmFsbGluZyBpbnRvIHRoZSBzYW1l
IGNhdGVnb3J5LgoKQEtyaXNobmE6IFlvdSBuZWVkIHRvIHJld29yZCB0aGUgY29tbWl0IG1lc3Nh
Z2UgdG8gY2xlYXJseSBzdGF0ZSB0aGUgZmFjdCB0aGF0ClBDSWUgY29udHJvbGxlciBmb3VuZCBp
biBFbGl6YSBTb0MgaXMgY29tcGF0aWJsZSB3aXRoIGJhc2UgSVAgdmVyc2lvbiAxLjkuMCwgc28K
aXQgcmV1c2VzICdjZmdfMV85XzAnIG1hdGNoIGRhdGEuCgotIE1hbmkKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
