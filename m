Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AA28CD98F2
	for <linux-phy@archiver.kernel.org>; Fri, 19 Jun 2026 16:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJlhxQ/pgvJmZfXNnFsTOmldv2j7R4XsibKCVWr+sDE=; b=pEL0j7rNXjj/iC
	odCbalUxEp6irmDnZRpwFuwdpNiqqa4o+CwiSYVVr7qKfotsldrPxVaWEmS25ygCP1dlwi9V/cMGn
	P/Bbfn1jOl3mXc8tLHeyT7gNO7UihPsiebM4IbBHYN+v5/g0FaaZG7X7v+6IGhMPQeRHPEB+9oJDp
	efnUnIo186b150zkwubDus5R3b+bGmgkw89wtNb7OMNxdl5pQlHwin7o4uhOeeZAyZmqjZj9CQePI
	nsHCYW4c6KdxFGt8w0IOchazB7XRU44JBD7OfPoE+MDQ2LhPNh/kcZQqe9tig98FYOBsHZ+EUZ0Nk
	i3Iu/AgbL3BZ4MgzMqPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabdU-00000002k7S-3cQk;
	Fri, 19 Jun 2026 16:00:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wabdT-00000002k6X-2sNb
	for linux-phy@lists.infradead.org;
	Fri, 19 Jun 2026 16:00:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 235DC601E2;
	Fri, 19 Jun 2026 16:00:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9BA9F1F000E9;
	Fri, 19 Jun 2026 16:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781884802;
	bh=QE2e0FbnZmc268BVIWUqcSPxyLNNKO/HCPWndbYLYAc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Au2s3gnYlLBhxu4qVh7O98BTmpufKM4YlFnQ3CbXe8i+DXNZ/BtiWjL+VjlI+OnFj
	 y62Vl/o60gCp3VtSvx4fv1jji19/7/P+f2Q92B9pGKfjbl3j+pGh+NTkfkfRx3udU+
	 v2wuVmEGz6h9tTB59Wc6BViBh2/gEnY/6mF8j0tPPjdbCtsCwnB0R4wMyYwGu0eTJT
	 7qlM/0gBKtUAPGw9RRffUocUz+wwQNQMewrCsO0s5XeJ8alGMOZotUIZkt+6IcueUj
	 6HwtdvswyUXOSkSukjwUwAzjEdFq8EAUVDX3gkL493ds0kilLHjJ4L73Ez0viLV3TH
	 rXUWKJwQ73zEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 16/23] phy: rockchip: usbdp: Drop DP HPD handling
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: conor+dt@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, linux-phy@lists.infradead.org, vkoul@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-16-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
 <20260619-rockchip-usbdp-cleanup-v6-16-3bb1f54b3f35@collabora.com>
Date: Fri, 19 Jun 2026 16:00:01 +0000
Message-Id: <20260619160001.9BA9F1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBQb3RlbnRpYWwgVXNlLUFmdGVyLUZyZWUgb2YgdGhlIGB1ZHBoeWAgc3RydWN0IHdo
ZW4gdGhlIGRyaXZlciBpcyB1bmJvdW5kLCB0cmlnZ2VyZWQgYnkgYWN0aXZlIFR5cGUtQyBjb25z
dW1lcnMuCi0tCgpjb21taXQgNzA5NDUyZWIxMDk3NDM1NTYzZDI2NDJlYjg4ZWQ4MWFlNTQzNjFm
MgpBdXRob3I6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEu
Y29tPgoKcGh5OiByb2NrY2hpcDogdXNiZHA6IERyb3AgRFAgSFBEIGhhbmRsaW5nCgpUaGlzIHBh
dGNoIGRyb3BzIHRoZSBIUEQgaGFuZGxpbmcgbG9naWMgZnJvbSB0aGUgVVNCRFAgUEhZLiBUaGUg
cmVnaXN0ZXJzCmludm9sdmVkIHJlcXVpcmUgdGhlIGRpc3BsYXkgY29udHJvbGxlciBwb3dlciBk
b21haW4gYmVpbmcgZW5hYmxlZCBhbmQgdGh1cwp0aGUgSFBEIHNpZ25hbCBzaG91bGQgYmUgaGFu
ZGxlZCBieSB0aGUgZGlzcGxheXBvcnQgY29udHJvbGxlciBpdHNlbGYuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYyBiL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jCj4gaW5kZXggYjc1YzE5MGE0MzExZi4uMzgz
ZTY4YjI0NTA2MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtdXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2Jk
cC5jCgpbIC4uLiBdCgo+IEBAIC0xMzMzLDYgKzEyOTEsMTQgQEAgc3RhdGljIGludCBya191ZHBo
eV90eXBlY19tdXhfc2V0KHN0cnVjdCB0eXBlY19tdXhfZGV2ICptdXgsCj4gIAlzdHJ1Y3Qgcmtf
dWRwaHkgKnVkcGh5ID0gdHlwZWNfbXV4X2dldF9kcnZkYXRhKG11eCk7Cj4gIAl1OCBtb2RlOwo+
ICAKPiArCS8qCj4gKwkgKiBJZ25vcmUgbXV4IGV2ZW50cyBub3QgaW52b2x2aW5nIERQIEFsdE1v
ZGUsIGJlY2F1c2UKPiArCSAqIHRoZSBtb2RlIGZpZWxkIGlzIGJlaW5nIHJldXNlZCwgZS5nLiBz
dGF0ZS0+bW9kZSA9PSA0Cj4gKwkgKiBjb3VsZCBiZSBlaXRoZXIgVFlQRUNfTU9ERV9VU0I0IG9y
IFRZUEVDX0RQX1NUQVRFX0MuCj4gKwkgKi8KPiArCWlmICghc3RhdGUtPmFsdCB8fCBzdGF0ZS0+
YWx0LT5zdmlkICE9IFVTQl9UWVBFQ19EUF9TSUQpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAJbXV0
ZXhfbG9jaygmdWRwaHktPm11dGV4KTsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1l
eGlzdGluZyBpc3N1ZSwgYnV0IGNvdWxkIHRoaXMgY29kZSBsZWFkIHRvIGEgdXNlLWFmdGVyLWZy
ZWUKb2YgdGhlIHVkcGh5IHN0cnVjdCB3aGVuIHRoZSBkcml2ZXIgaXMgdW5ib3VuZD8KClRoZSB1
ZHBoeSBzdHJ1Y3R1cmUgaXMgYWxsb2NhdGVkIHVzaW5nIGRldm1fa3phbGxvYygpIGluIHJrX3Vk
cGh5X3Byb2JlKCksCnR5aW5nIGl0cyBsaWZldGltZSB0byB0aGUgZGV2aWNlJ3MgYmluZGluZyBs
aWZlY3ljbGUuCgpPbiBkcml2ZXIgdW5iaW5kLCBkZXZyZXMgY2FsbHMgdHlwZWNfbXV4X3VucmVn
aXN0ZXIoKSBhbmQKdHlwZWNfc3dpdGNoX3VucmVnaXN0ZXIoKSwgd2hpY2ggcnVuIGRldmljZV91
bnJlZ2lzdGVyKCksIGFuZCB0aGVuIGZyZWVzCnVkcGh5LgoKSG93ZXZlciwgZGV2aWNlX3VucmVn
aXN0ZXIoKSBvbmx5IGRyb3BzIHRoZSBjb3JlIHJlZmVyZW5jZS4gSWYgYSBUeXBlLUMKY29uc3Vt
ZXIgKGxpa2UgdGhlIHRjcG0gcG9ydCBkcml2ZXIpIGhvbGRzIGEgcmVmZXJlbmNlIHRvIHRoZXNl
IFR5cGUtQwpkZXZpY2VzIHZpYSBmd25vZGVfdHlwZWNfbXV4X2dldCgpLCB0aGUgbXV4X2RldiBh
bmQgc3dfZGV2IG9iamVjdHMgc3RheQphbGl2ZS4KClRoZSBjb25zdW1lciBjYW4gc3RpbGwgYXN5
bmNocm9ub3VzbHkgaW52b2tlIHJrX3VkcGh5X3R5cGVjX211eF9zZXQoKSBvcgpya191ZHBoeV9v
cmllbl9zd19zZXQoKSBhZnRlciB0aGUgcGh5IGRyaXZlciBoYXMgYmVlbiB1bmJvdW5kLgoKQmVj
YXVzZSB1ZHBoeSBoYXMgYWxyZWFkeSBiZWVuIGZyZWVkIGJ5IGRldnJlcywgZG9lcyB0aGlzIG1l
YW4gYW55CnN1YnNlcXVlbnQgY2FsbCB3aWxsIGRlcmVmZXJlbmNlIHRoZSBmcmVlZCB1ZHBoeSBw
b2ludGVyIHdoZW4gYXR0ZW1wdGluZyB0bwpsb2NrIHVkcGh5LT5tdXRleCBoZXJlLCBwb3RlbnRp
YWxseSByZXN1bHRpbmcgaW4gbWVtb3J5IGNvcnJ1cHRpb24/CgotLSAKU2FzaGlrbyBBSSByZXZp
ZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjE5LXJvY2tjaGlwLXVz
YmRwLWNsZWFudXAtdjYtMC0zYmIxZjU0YjNmMzVAY29sbGFib3JhLmNvbT9wYXJ0PTE2CgotLSAK
bGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
czovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
