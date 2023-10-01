Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA12E748E9
	for <linux-phy@archiver.kernel.org>; Sun,  1 Oct 2023 15:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoqevE3MdKrTBVNueWwEM3qmxETiAs0vwLwJQkUV0t0=; b=oIZjlovEkyQCcC
	I+TZFQ//l8B2wFpM+3sJ6Tuj3Qa52tl85r1phCdBeWtGRWi7KBKe757kWcCOXRJW9Dvh8H3/B7QXp
	170JuWQLBAx31SKZOPeKRWGkVpmjY+sCOoV6XqSfiUjp8GLGBCpJlSpFqQ4uPeHinZ96j+uL2X9Dx
	cryco7ZhOQFZnZ0+Yt38LwvyfSuYXqIN885Pzl31T5wmf9z3tC5ugDpQ2QkPTz2hFRjFjbun6QlPM
	AQMx+PpJS4DViqEmEm+a9nXOPriaTgvOAp7Tiv1k3OWk/59W3fSSO2RBCjbscKfMxacw6j6ufu9/u
	AEi1xH32VnBFWG2Z61sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmyGY-00BJ8A-2e;
	Sun, 01 Oct 2023 15:21:54 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmyGV-00BJ5v-0E
	for linux-phy@lists.infradead.org;
	Sun, 01 Oct 2023 15:21:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9FD20CE0B3F;
	Sun,  1 Oct 2023 15:21:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 143A1C433C8;
	Sun,  1 Oct 2023 15:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696173707;
	bh=Pcid93qlZOziU6QAuWsUqgL3T/hz96UA6NSdFcYv2gA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=WFRc6ICXH9pmMNC90RDePARwjYzjp/5Ph4dMMzp4HRjMOtXqMoAELm4sAEfBTDmzM
	 rYAq29O9nxcaLwIyEeu2VtOGd/KN7CEb0Yk9E3MtL0sFkYgAuYr4MGqY7sG/KBZdcb
	 9bSWd5Zu5NwH+PlKkmCNLF/7HzLOtxZeSQCxvkxzloVoAM1XacHvPVW43eK0XaqzOQ
	 VrJ7XuszE3Mwo0+ReEm7WSOIQvquuGRzcC09OvId6JUW3WZpRrX5TehaelTjx/+dd3
	 IOkizea1pa3ET+FmZHCPXTixP/th2w4OUSP5i7CoQ6g6nlHJjqKy1EPvn9NJXjMWye
	 EYm4R6TZbeuSw==
Received: (nullmailer pid 4073099 invoked by uid 1000);
	Sun, 01 Oct 2023 15:21:45 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: =?utf-8?q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
In-Reply-To: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
References: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
Message-Id: <169617370596.4073083.7671485602396327173.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
Date: Sun, 01 Oct 2023 10:21:45 -0500
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231001_082151_361254_3D3D0B1E 
X-CRM114-Status: GOOD (  11.38  )
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

Ck9uIFN1biwgMDEgT2N0IDIwMjMgMTU6MDU6NDMgKzAyMDAsIER1amUgTWloYW5vdmnEhyB3cm90
ZToKPiBDb252ZXJ0IHRoZSBiaW5kaW5nIGZvciB0aGUgTWFydmVsbCBQWEExOTI4IFVTQiBhbmQg
SFNJQyBQSFlzIGZyb20gVFhUCj4gdG8gRFQgc2NoZW1hLgo+IAo+IFNpZ25lZC1vZmYtYnk6IER1
amUgTWloYW5vdmnEhyA8ZHVqZS5taWhhbm92aWNAc2tvbGUuaHI+Cj4gLS0tCj4gIC4uLi9iaW5k
aW5ncy9waHkvbWFydmVsbCxweGExOTI4LWhzaWMtcGh5LnlhbWwgICAgIHwgMzcgKysrKysrKysr
KysrKysrKysKPiAgLi4uL2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLHB4YTE5MjgtdXNiLXBoeS55YW1s
ICAgICAgfCA0NiArKysrKysrKysrKysrKysrKysrKysrCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9weGExOTI4LXVzYi1waHkudHh0ICAgIHwgMTggLS0tLS0tLS0tCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgODMgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4gCgpNeSBib3QgZm91
bmQgZXJyb3JzIHJ1bm5pbmcgJ21ha2UgRFRfQ0hFQ0tFUl9GTEFHUz0tbSBkdF9iaW5kaW5nX2No
ZWNrJwpvbiB5b3VyIHBhdGNoIChEVF9DSEVDS0VSX0ZMQUdTIGlzIG5ldyBpbiB2NS4xMyk6Cgp5
YW1sbGludCB3YXJuaW5ncy9lcnJvcnM6CgpkdHNjaGVtYS9kdGMgd2FybmluZ3MvZXJyb3JzOgpF
cnJvcjogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLHB4YTE5
MjgtdXNiLXBoeS5leGFtcGxlLmR0czoyMS4zNC0zNSBzeW50YXggZXJyb3IKRkFUQUwgRVJST1I6
IFVuYWJsZSB0byBwYXJzZSBpbnB1dCB0cmVlCm1ha2VbMl06ICoqKiBbc2NyaXB0cy9NYWtlZmls
ZS5saWI6NDE5OiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21hcnZlbGws
cHhhMTkyOC11c2ItcGh5LmV4YW1wbGUuZHRiXSBFcnJvciAxCm1ha2VbMl06ICoqKiBXYWl0aW5n
IGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCm1ha2VbMV06ICoqKiBbL2J1aWxkcy9yb2JoZXJyaW5n
L2R0LXJldmlldy1jaS9saW51eC9NYWtlZmlsZToxNDI3OiBkdF9iaW5kaW5nX2NoZWNrXSBFcnJv
ciAyCm1ha2U6ICoqKiBbTWFrZWZpbGU6MjM0OiBfX3N1Yi1tYWtlXSBFcnJvciAyCgpkb2MgcmVm
ZXJlbmNlIGVycm9ycyAobWFrZSByZWZjaGVja2RvY3MpOgoKU2VlIGh0dHBzOi8vcGF0Y2h3b3Jr
Lm96bGFicy5vcmcvcHJvamVjdC9kZXZpY2V0cmVlLWJpbmRpbmdzL3BhdGNoLzIwMjMxMDAxLXB4
YTE5MjgtdXNiLXlhbWwtdjEtMS05MzA5YThjMGMwM2ZAc2tvbGUuaHIKClRoZSBiYXNlIGZvciB0
aGUgc2VyaWVzIGlzIGdlbmVyYWxseSB0aGUgbGF0ZXN0IHJjMS4gQSBkaWZmZXJlbnQgZGVwZW5k
ZW5jeQpzaG91bGQgYmUgbm90ZWQgaW4gKnRoaXMqIHBhdGNoLgoKSWYgeW91IGFscmVhZHkgcmFu
ICdtYWtlIGR0X2JpbmRpbmdfY2hlY2snIGFuZCBkaWRuJ3Qgc2VlIHRoZSBhYm92ZQplcnJvcihz
KSwgdGhlbiBtYWtlIHN1cmUgJ3lhbWxsaW50JyBpcyBpbnN0YWxsZWQgYW5kIGR0LXNjaGVtYSBp
cyB1cCB0bwpkYXRlOgoKcGlwMyBpbnN0YWxsIGR0c2NoZW1hIC0tdXBncmFkZQoKUGxlYXNlIGNo
ZWNrIGFuZCByZS1zdWJtaXQgYWZ0ZXIgcnVubmluZyB0aGUgYWJvdmUgY29tbWFuZCB5b3Vyc2Vs
Zi4gTm90ZQp0aGF0IERUX1NDSEVNQV9GSUxFUyBjYW4gYmUgc2V0IHRvIHlvdXIgc2NoZW1hIGZp
bGUgdG8gc3BlZWQgdXAgY2hlY2tpbmcKeW91ciBzY2hlbWEuIEhvd2V2ZXIsIGl0IG11c3QgYmUg
dW5zZXQgdG8gdGVzdCBhbGwgZXhhbXBsZXMgd2l0aCB5b3VyIHNjaGVtYS4KCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
