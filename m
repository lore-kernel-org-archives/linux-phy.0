Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51B7AC43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 09:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30yiLiOjdRNffWM6uE3eGXKjPM8A7Ckp5g+EPkd1/nA=; b=ayw4fqiFddJwJL
	eLMGpGXQ1Gi/C6rrlKNc878XNp6G4W5WPZaoXbNuDt/8H8Y1Qn0w6AvkCZKhPajeMos9lv2AjK+6S
	E7Rp+pVLwofAkIICshYvHw7eeHlDh/UQ6kRfV48MlGDSWMBWOZNlvoD79IU3qmxfKFPJYLipkVObu
	tLzK1t39LJruy9xHrHsU4TuMayhFSqqkEZIUuEV++SCOR24auDqloO7bYl2VRiStNSmQJvQwdrmdq
	3S5IWU4lpCp57n1TKGZnncugmNrwTgjUoG8spYjybSO9p9KDQaLRk4aLkNG1+e9TYJoTQlcJJgvP3
	UiKIznouqs4G26pEQFTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfE89-000000046FX-48rn;
	Thu, 02 Jul 2026 09:54:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfE88-000000046FL-1Xvh
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 09:54:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 7E42443BA6;
	Thu,  2 Jul 2026 09:54:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1214F1F00A3A;
	Thu,  2 Jul 2026 09:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782986087;
	bh=ro0zTJboIfGrRuxPQGgkKGLyXmwoOATJUe2tUHEOc3E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jFr/BDZSdLoqWm6hw36EvhFoVFrfUrDeIXXO+Z4ntlOlProf9tACD+0UL1jbft8/Z
	 l1GP29NLAM/3AfhrISONIY1E1gSHMEdggALxY0iJz5c/nIZjohPmI9qijGzST7KqkJ
	 b+6baoBRXZho9G+SAswulveCE424eKd1yewVpKCuBkFlCKPCVQjDCNHbF+R/yckyIg
	 RquylLBBk+RXyVfxCCdWgUOjOFh7Nm3NH/viN7H8+piY7EIdcG4NOAjWjlt3/669t8
	 XIll9xr5YJ+HLos/fDPZSdTsK94zFLQEcfWBKG/ABDYm7YJ+lwewXO29UC74aysI2t
	 RfHNnCxSyKuMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 2/5] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260702093812.15918-3-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
 <20260702093812.15918-3-ansuelsmth@gmail.com>
Date: Thu, 02 Jul 2026 09:54:46 +0000
Message-Id: <20260702095447.1214F1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gRW5jb2RpbmcgZml4ZWQg
aW50ZXJuYWwgU29DIHJvdXRpbmcgaW4gdGhlIGRldmljZSB0cmVlIHZpYSB0aGUgYGFpcm9oYSx1
c2IyLW1vbml0b3ItY2xrLXNlbGAgcHJvcGVydHkuCi0tCgpjb21taXQgODJkNzVkNmE4Njk1Yzk2
NzYwNDk4MmY0NWMzZGI5NWVmZTQ1YTc4NApBdXRob3I6IENocmlzdGlhbiBNYXJhbmdpIDxhbnN1
ZWxzbXRoQGdtYWlsLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6IEFkZCBkb2N1bWVudGF0aW9uIGZv
ciBBaXJvaGEgQU43NTgxIFVTQiBQSFkKClRoaXMgY29tbWl0IGFkZHMgZGV2aWNlIHRyZWUgYmlu
ZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgQWlyb2hhIEFONzU4MQpVU0IgUEhZLiBJdCBkZXRh
aWxzIHByb3BlcnRpZXMgZm9yIGNvbmZpZ3VyaW5nIHRoZSBhbHdheXMtc3VwcG9ydGVkIFVTQiAy
LjAKbW9kZSBhbmQgdGhlIG9wdGlvbmFsIFVTQiAzLjAgbW9kZSwgaW5jbHVkaW5nIHNsZXcgcmF0
ZSBjYWxpYnJhdGlvbiBhbmQKU2VyZGVzIGNvbmZpZ3VyYXRpb24uCgo+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Fpcm9oYSxhbjc1ODEtdXNiLXBo
eS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9haXJvaGEsYW43
NTgxLXVzYi1waHkueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAw
MDAwMC4uZjQyZTNkNDlhNjFmZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2Fpcm9oYSxhbjc1ODEtdXNiLXBoeS55YW1sCj4gQEAg
LTAsMCArMSw2MiBAQApbIC4uLiBdCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4g
KyAgYWlyb2hhLHVzYjItbW9uaXRvci1jbGstc2VsOgo+ICsgICAgZGVzY3JpcHRpb246IERlc2Ny
aWJlIHdoYXQgb3NjaWxsYXRvciBhY3Jvc3MgdGhlIGF2YWlsYWJsZSA0Cj4gKyAgICAgIHNob3Vs
ZCBiZSBzZWxlY3RlZCBmb3IgVVNCIDIuMCBTbGV3IFJhdGUgY2FsaWJyYXRpb24uCj4gKyAgICAk
cmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKPiArICAgIGVudW06
IFswLCAxLCAyLCAzXQoKW1NldmVyaXR5OiBMb3ddClNpbmNlIHRoZSBjb21taXQgbWVzc2FnZSBt
ZW50aW9ucyB0aGF0IGVhY2ggcG9ydCBoYXMgb25seSBvbmUgb2YgdGhlIDQgbW9uaXRvcgpjbG9j
a3MgYWN0dWFsbHkgY29ubmVjdGVkIGluIEhXLCBkb2VzIHRoaXMgcHJvcGVydHkgZW5jb2RlIGEg
Zml4ZWQgaW50ZXJuYWwKU29DIHJvdXRpbmcgcmF0aGVyIHRoYW4gYSBib2FyZC1zcGVjaWZpYyBj
b25maWd1cmF0aW9uPwoKQ291bGQgdGhlIGRyaXZlciBkZWR1Y2UgdGhlIGNvcnJlY3QgY2xvY2sg
c2VsZWN0aW9uIGludGVybmFsbHkgKGZvciBleGFtcGxlLApmcm9tIHRoZSBwb3J0J3MgcmVnaXN0
ZXIgYWRkcmVzcykgaW5zdGVhZCBvZiByZXF1aXJpbmcgYSBEVCBwcm9wZXJ0eSBmb3IgYQpmaXhl
ZCBTb0MgaGFyZHdhcmUgY2hhcmFjdGVyaXN0aWM/CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcg
aHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzAyMDkzODEyLjE1OTE4LTEtYW5z
dWVsc210aEBnbWFpbC5jb20/cGFydD0yCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
