Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12414CD5BB0
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 09:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mikkD87jezxfXgykkaRFy6W5nADU/Xpr8gHsugAxSfo=; b=Xl+1IHJYpQYuEo
	qUqv7NtSBcKcbfbc3PC87BbzKyg4VcYPwSUKbiN63lAeI5a3pNkIdHXRDk20CIvN5cjRzOPprX3sG
	NDmIdLu7zyr0nh9gGICwiliTA74NH/OJ8kxSed2F3iA7H3pqUHgvg788OI00rR9e7HQ4tSUZTBTFm
	ltaAZ7xcP6mRUGGVeAuiR6hlvwsAPYJnkkZubMw7/wzhr7LaHE7mVK9mhwIN87X4IrHHRg7vGuWCD
	Q726Y1MiKZo+pAsAGCp8xwzXfZc1xC1wCot+ZFrEEVWsHYawD5S1msEpZoW+RoFIOkoQLt7tIZwJP
	USKJaLX3DIG6XFYkA01w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMH8-0000000ALLM-3U17;
	Fri, 22 May 2026 09:34:38 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMH6-0000000ALKh-20vr
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 09:34:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B82F54321A;
	Fri, 22 May 2026 09:34:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52DA21F00A3D;
	Fri, 22 May 2026 09:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779442475;
	bh=d9bS89oK+UjXnScKjNKal9P8++sXJPMjaVc1kiQg8kk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=CDHBymJLlgnExl5TG8Flz96IVNGe7x0hY1pjq5nVbdbyCMqlgkmcV4LMCHBefoly/
	 6rBsekCBNTRJSpHh5QjmA5+oZ+1Lu3/vbHCumMKIXkYuJY+nghfCcvBZvIzQorVLjp
	 zqLs4I5NoPbQFuACvKMTY24wSvxuLhrbZYP+ouQjK5wSbSadW+lDOut/8LoLv54aO4
	 GdCtSJU4UnGDBUslBrepTRk5WRFP+2DOt4yl4D2J5a/rVNzhrrF9wQ+7f5k2LwBlvn
	 Vi2UwfzgQQUMk7l39dlTnRV0Hf0x4WdjdntHDOyxu6CgRM+0z8RDOgUWfFmbWeEkhe
	 09+HAdYqtrf5w==
Message-ID: <c751f5f9-f9c2-4575-a029-0be4148e1aee@kernel.org>
Date: Fri, 22 May 2026 11:34:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] PCI: qcom: Add Support for Eliza
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
References: <20260521-eliza-v1-0-97cdbe88389d@oss.qualcomm.com>
 <20260521-eliza-v1-3-97cdbe88389d@oss.qualcomm.com>
 <20260522-discerning-sympathetic-moth-daa9e7@quoll>
 <5593d136-569e-4ba9-9a2f-e635125899aa@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <5593d136-569e-4ba9-9a2f-e635125899aa@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_023436_561288_7349FD94 
X-CRM114-Status: GOOD (  15.90  )
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

T24gMjIvMDUvMjAyNiAxMTozMSwgS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSB3cm90ZToKPiAK
PiAKPiBPbiA1LzIyLzIwMjYgMTI6MjEgUE0sIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+
IE9uIFRodSwgTWF5IDIxLCAyMDI2IGF0IDA3OjM1OjMxUE0gKzA1MzAsIEtyaXNobmEgQ2hhaXRh
bnlhIENodW5kcnUgd3JvdGU6Cj4+PiBBZGQgc3VwcG9ydCBmb3IgRWxpemEgc29jLCB3aGljaCBo
YXMgdHdvIFBDSWUgY29udHJvbGxlcnMgY2FwYWJsZQo+Pj4gb2YgOEdUL3MgWDEgYW5kIDhHVC9z
IFgyLCB1c2luZyB0aGUgY2ZnXzFfOV8wIGNvbmZpZ3VyYXRpb24uCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogS3Jpc2huYSBDaGFpdGFueWEgQ2h1bmRydSA8a3Jpc2huYS5jaHVuZHJ1QG9zcy5xdWFs
Y29tbS5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFj
b20uYyB8IDEgKwo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFjb20uYyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtcWNvbS5jCj4+PiBpbmRleCBhZjZiZjVjY2U2NWIu
LjQwZjBhNWYyNDdlYiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtcWNvbS5jCj4+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLXFj
b20uYwo+Pj4gQEAgLTIxMjMsNiArMjEyMyw3IEBAIHN0YXRpYyBpbnQgcWNvbV9wY2llX3Jlc3Vt
ZV9ub2lycShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4+PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9k
ZXZpY2VfaWQgcWNvbV9wY2llX21hdGNoW10gPSB7Cj4+PiAgCXsgLmNvbXBhdGlibGUgPSAicWNv
bSxwY2llLWFwcTgwNjQiLCAuZGF0YSA9ICZjZmdfMl8xXzAgfSwKPj4+ICAJeyAuY29tcGF0aWJs
ZSA9ICJxY29tLHBjaWUtYXBxODA4NCIsIC5kYXRhID0gJmNmZ18xXzBfMCB9LAo+Pj4gKwl7IC5j
b21wYXRpYmxlID0gInFjb20scGNpZS1lbGl6YSIsIC5kYXRhID0gJmNmZ18xXzlfMCB9LAo+PiBT
byBjb21wYXRpYmxlIHdpdGggc204NTUwLiBXaHkgaXNuJ3QgdGhpcyBleHBsYWluZWQgaW4gY29t
bWl0IG1zZyBvZgo+PiB0aGUgYmluZGluZz8KPiBObywgUENJZSBjb250cm9sbGVyIGlzIG5vdCBj
b21wYXRpYmxlIHdpdGggc204NTUwLCB3ZSBhcmUganVzdCByZSB1c2luZyB0aGUgYm9vdAo+IHNl
cXVlbmNlIHVzZWQgYnkgdGhlIHNtODU1MC4KClRoZW4gd2l0aCB3aGF0IGl0IGlzIGNvbXBhdGli
bGU/IFlvdSBjYW5ub3QgdXNlIHNvbWVvbmUgZWxzZSdzIG1hdGNoCmRhdGEgYW5kIGNsYWltIHRo
ZXkgYXJlIG5vdCBjb21wYXRpYmxlLiBUaGlzIGlzIGNvbnRyYWRpY3RvcnkgdG8gaXRzZWxmLgoK
Cj4+IEFueXdheSwgZHJvcCB0aGUgY2hhbmdlLCBwb2ludGxlc3MuIExvb2sgaG93IG90aGVyIGRl
dmljZXMgaGFuZGxlIHRoaXMgLQo+PiBkbyB5b3Ugc2VlIGthYW5hcGFsaSBoZXJlPyBOby4KPiBB
cyB3ZSBhcmUgZ29pbmcgdG8gdXNlIGRpZmZlcmVudCBkdHMgc2NoZW1hIGZvciB0aGlzIGNvbnRy
b2xsZXIgd2UgY2FuJ3QKPiByZWFsbHkgcmUtdXNlCj4gbGlrZSBob3cgd2UgaGF2ZSBkb25lIGlu
IGthYW5hcGFsaSBjYXNlLsKgIGthYW5wYWxpIGlzIHJldXNpbmcgc204NTUwIHNjaGVtYSwgd2hl
cmUKPiB0aGlzIGNvbnRyb2xsZXIgY2FuJ3QgdXNlIHNtODU1MCBzY2hlbWEsIGFzIHNvbWUgY2xv
Y2tzIGFyZSBkaWZmZXJlbnQuCgpPSywgc2NoZW1hIGlzIGRpZmZlcmVudCwgdGhhdCdzIGZpbmUg
YW5kIG1pZ2h0IG5lZWQgc29tZSBhZGp1c3RtZW50cy4KSG93ZXZlciB0aGlzIGNvbW1pdCBjbGVh
cmx5IHN0YXRlcyBkZXZpY2VzIGFyZSBjb21wYXRpYmxlIGFuZCB0aGlzIG5lZWRzCnRvIGJlIGZp
eGVkLgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
