Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 229DDCD4F4A
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 17:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shy4VQTsrhPxb07/HKVcnF142nyP64YICCtMilafyec=; b=gnfGEbhEOw8gpG
	PwWG5PJke1A2pVFozhQPQdtkeAWeh0YgEhZzgE4H8X9QdkFCSuXX+sbCUlO2rhgWN5rhEa0ul/l2A
	vire55GbMddrrfqjS83iDcQNKpCcOI6oIm72jhPJAr0/JCAV/WDX70mTi5I5VWUZ4AiV4t91mGrmt
	I/YtSwdIRMKfjh1rD8jmTMynnbHv+iIX/E/RFV76jbfq4DRY0N077bWDH6caMac8lPYbV4yIyWk8G
	7zh3OpNf11VZuDB3YlVvRJdCyF1fY50YeNUgEJjqufAUFdQkKoJU1EblzB1WZAfAl5XDi8oIc+hkZ
	UHBW6BweBGZB5WKeK4qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1mn-0000000GPYW-2Mwv;
	Mon, 18 May 2026 17:29:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1ml-0000000GPYB-0Z1y
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 17:29:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id AFC00600CB;
	Mon, 18 May 2026 17:29:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 657FFC2BCB7;
	Mon, 18 May 2026 17:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779125385;
	bh=MT5hotBsGBvGo6ebLCh0/y2UPVnF0qNyMVgDULEhvWA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=X961oXhFdoMlepy2QzXoDEWGbenkjr9FqAYrpd5emjqgJ2BZxxSeHT/ZKNG1i+oLT
	 EYn6bs/n9JiIgrNAfiBwsgwVcXcdhaOd5q4xnfOFp/HPpU14M9/CAu+JKhJhRIb+PA
	 DPu97NF5LUkIXg8luzhtdQC3bLrG4phPP4t4ldRSzyolS763hM70yBIvwibNvjumfC
	 HjdRRDhr1uU9uWp6MKfzF7nT7SemMHlg5cgDSEXAOtBxEYFTflymKBgu4sHOTNul4M
	 9YhhSaGiPNwCGUUlt1vpZtPOCKheZuNwCs701OYah9VxzJtk1adnPVoVe1Yzp5mJD1
	 G3p+J+9lR6v4w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V1 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: palash.kambar@oss.qualcomm.com
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260518165346.1732548-4-palash.kambar@oss.qualcomm.com>
References: <20260518165346.1732548-4-palash.kambar@oss.qualcomm.com>
Date: Mon, 18 May 2026 17:29:43 +0000
Message-Id: <20260518172944.657FFC2BCB7@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIE1pc3NpbmcgVUZTIEhT
LUc0IGdlYXIgY29uZmlndXJhdGlvbiBvdmVybGF5IGZvciB0aGUgSGF3aSBQSFkgd2lsbCBsZWF2
ZSBjcml0aWNhbCBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgdW5pbml0aWFsaXplZCBkdXJpbmcgRzQg
bmVnb3RpYXRpb24uCi0tCgpjb21taXQgYTBkODNkZmU4YTMyMDNiNTA2ZDQ1ZDVjODI2MmY3ZjBi
MTRkODEwYQpBdXRob3I6IFBhbGFzaCBLYW1iYXIgPHBhbGFzaC5rYW1iYXJAb3NzLnF1YWxjb21t
LmNvbT4KCnBoeTogcWNvbS1xbXAtdWZzOiBBZGQgVUZTIFBIWSBzdXBwb3J0IG9uIEhhd2kKCkFk
ZHMgdGhlIGluaXRpYWxpemF0aW9uIHNlcXVlbmNlIHRhYmxlcyBhbmQgY29uZmlndXJhdGlvbiBm
b3IgdGhlIFVGUwpRTVAgUEhZIGZvdW5kIGluIHRoZSBIYXdpIFNvQy4KCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyBiL2RyaXZlcnMvcGh5L3F1
YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3Bo
eS1xY29tLXFtcC11ZnMuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFt
cC11ZnMuYwpbIC4uLiBdCj4gQEAgLTE4NDQsNiArMTg2OCwxMTkgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBxbXBfcGh5X2NmZyBzbTg3NTBfdWZzcGh5X2NmZyA9IHsKWyAuLi4gXQo+ICtzdGF0aWMg
Y29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgaGF3aV91ZnNwaHlfZzVfcGNzW10gPSB7Cj4g
KwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19QTExfQ05UTCwgMHgzYiksCj4gKwlR
TVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19UWF9IU0dFQVJfQ0FQQUJJTElUWSwgMHgw
NSksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19SWF9IU0dFQVJfQ0FQQUJJ
TElUWSwgMHgwNSksCj4gK307Cj4gKwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
IGhhd2lfdWZzcGh5X2NmZyA9IHsKPiArCS5sYW5lcwkJCT0gMiwKPiArCj4gKwkub2Zmc2V0cwkJ
PSAmcW1wX3Vmc19vZmZzZXRzX3Y3LAo+ICsJLm1heF9zdXBwb3J0ZWRfZ2Vhcgk9IFVGU19IU19H
NSwKPiArCj4gKwkudGJscyA9IHsKPiArCQkuc2VyZGVzCQk9IGhhd2lfdWZzcGh5X3NlcmRlcywK
PiArCQkuc2VyZGVzX251bQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfc2VyZGVzKSwKPiArCQku
dHgJCT0gaGF3aV91ZnNwaHlfdHgsCj4gKwkJLnR4X251bQkJPSBBUlJBWV9TSVpFKGhhd2lfdWZz
cGh5X3R4KSwKPiArCQkucngJCT0gaGF3aV91ZnNwaHlfcngsCj4gKwkJLnJ4X251bQkJPSBBUlJB
WV9TSVpFKGhhd2lfdWZzcGh5X3J4KSwKPiArCQkucGNzCQk9IGhhd2lfdWZzcGh5X3BjcywKPiAr
CQkucGNzX251bQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfcGNzKSwKPiArCX0sCj4gKwo+ICsJ
LnRibHNfaHNfb3ZlcmxheVswXSA9IHsKPiArCQkucGNzCQk9IGhhd2lfdWZzcGh5X2c1X3BjcywK
PiArCQkucGNzX251bQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfZzVfcGNzKSwKPiArCQkubWF4
X2dlYXIJPSBVRlNfSFNfRzUsCj4gKwl9LAo+ICsKCklzIHRoZXJlIGEgbWlzc2luZyBVRlMgSFMt
RzQgZ2VhciBjb25maWd1cmF0aW9uIG92ZXJsYXkgZm9yIHRoZSBIYXdpIFBIWSBoZXJlPwoKV2hl
biB0aGUgVUZTIGNvbnRyb2xsZXIgbmVnb3RpYXRlcyBIUy1HNCAoZS5nLiwgY29ubmVjdGVkIHRv
IGEgRzQtb25seQpkZXZpY2Ugb3IgZHVyaW5nIGZhbGxiYWNrKSBhbmQgcmVxdWVzdHMgdGhlIFBI
WSB0byBvcGVyYXRlIGF0IEc0LApxbXBfdWZzX2dldF9nZWFyX292ZXJsYXkoKSB3aWxsIGZhaWwg
dG8gZmluZCBhIG1hdGNoaW5nIGNvbmZpZ3VyYXRpb24uCgpJbiBxbXBfdWZzX2dldF9nZWFyX292
ZXJsYXkoKSwgaXQgaW5pdGlhbGl6ZXMgZmxvb3JfbWF4X2dlYXIgdG8gNS4KSXQgdGhlbiBjaGVj
a3MgdGhlIG9ubHkgYXZhaWxhYmxlIHRhYmxlIHdoZXJlIG1heF9nZWFyIGlzIDUuClNpbmNlIHN1
Ym1vZGUgKDQpID09IG1heF9nZWFyICg1KSBpcyBmYWxzZSwgYW5kIG1heF9nZWFyICg1KSA8CmZs
b29yX21heF9nZWFyICg1KSBpcyBhbHNvIGZhbHNlLCBpdCByZXR1cm5zIC1FSU5WQUwuCgpCZWNh
dXNlIHFtcF91ZnNfZ2V0X2dlYXJfb3ZlcmxheSgpIHJldHVybnMgLUVJTlZBTCwKcW1wX3Vmc19p
bml0X3JlZ2lzdGVycygpIHdpbGwgc2tpcCBhcHBseWluZyBhbnkgb3ZlcmxheS4gVGhpcyBtZWFu
cwpjYXBhYmlsaXRpZXMgbGlrZSBRUEhZX1Y3X1BDU19VRlNfVFhfSFNHRUFSX0NBUEFCSUxJVFkg
YXJlIG5ldmVyCnByb2dyYW1tZWQgZHVyaW5nIEc0IG9wZXJhdGlvbi4KCk90aGVyIEc1LWNhcGFi
bGUgUEhZcyAobGlrZSBzbTg3NTApIHNlZW0gdG8gcHJvdmlkZSBib3RoIEc0IGFuZCBHNSBvdmVy
bGF5czoKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgc204NzUwX3Vmc3BoeV9jZmcg
PSB7ClsgLi4uIF0KCS50YmxzX2hzX292ZXJsYXlbMF0gPSB7CgkJLnBjcwkJPSBzbTg3NTBfdWZz
cGh5X2c0X3BjcywKCQkucGNzX251bQk9IEFSUkFZX1NJWkUoc204NzUwX3Vmc3BoeV9nNF9wY3Mp
LAoJCS5tYXhfZ2Vhcgk9IFVGU19IU19HNCwKCX0sCgkudGJsc19oc19vdmVybGF5WzFdID0gewoJ
CS5wY3MJCT0gc204NjUwX3Vmc3BoeV9nNV9wY3MsCgkJLnBjc19udW0JPSBBUlJBWV9TSVpFKHNt
ODY1MF91ZnNwaHlfZzVfcGNzKSwKCQkubWF4X2dlYXIJPSBVRlNfSFNfRzUsCgl9LApbIC4uLiBd
Cn07CgpXaWxsIGxlYXZpbmcgdGhlc2UgdW5pbml0aWFsaXplZCBjYXVzZSBsaW5rIGluc3RhYmls
aXR5IG9yIGluaXRpYWxpemF0aW9uCmZhaWx1cmUgb24gZGV2aWNlcyBmYWxsaW5nIGJhY2sgdG8g
SFMtRzQ/Cgo+ICsJLnZyZWdfbGlzdAkJPSBoYXdpX3Vmc3BoeV92cmVnX2wsCj4gKwkubnVtX3Zy
ZWdzCQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfdnJlZ19sKSwKPiArCS5yZWdzCQkJPSB1ZnNw
aHlfdjdfcmVnc19sYXlvdXQsCj4gK307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTE4MTY1MzQ2LjE3MzI1NDgtMS1wYWxhc2gu
a2FtYmFyQG9zcy5xdWFsY29tbS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
