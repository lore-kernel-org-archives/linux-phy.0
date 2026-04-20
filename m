Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CB91F557FA
	for <linux-phy@archiver.kernel.org>; Mon, 20 Apr 2026 09:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3r8VSTF07Gbl2kvo3OU2AfLWs6INYGg5nVd4G7kwOwk=; b=fSjQdDRQ4B1AsF
	YsIfiqotsganGJpehii4REMuWLThipkcYmLVPMJoAJnGnwuIDjS+g/aJxeBYnjgUoiwryli9T9NCw
	Rq2hECd20m9zeaWY7QACIrDLXc5n+Pn3HBGB/Mb+FBjFnCRd3/juxta23E/YGgIwGYIPp98l7Zbks
	pZTqx8lGgru+Sta5G7oHqbRbLlKTwkLmUVYHatTORzB3LMwzZ297pkwEQxCvXaiLTRcyZsHsbZxAV
	X7mzBLJJx5LljGLBTKbypm6pagrp+R8TjBkMdEIGcRv0h/3IY5WiAOb3hECWZ0VpJlJf5zkQMzaDm
	8aYloZ503/vGBldOaSPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wElBX-00000006h1a-382Y;
	Mon, 20 Apr 2026 09:44:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wElBV-00000006h1D-3DBX
	for linux-phy@lists.infradead.org;
	Mon, 20 Apr 2026 09:44:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E914540DEC;
	Mon, 20 Apr 2026 09:44:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B362DC19425;
	Mon, 20 Apr 2026 09:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776678291;
	bh=IyI9kebn34G9+AgwTyzdjdZ0H95XQokI3077RD0pU3U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d7fHaQNzxjwI2FqS/gWT8bYin/RJPLQlm+qzZ5GDGluy6Ep02pT/GWEg+tLpPEpSN
	 CRsiiVI9UFZU044/tUu/T9EwT6ZG212CQI7hdzTYASGV7vZxHAqzd+OUSBJtioR8yR
	 ui9N+bXo7VUkf5bbULMstniuWqJB9uxbdIs6pcAh04XLDNB1Zo8e4JJ9BKedOAchIy
	 9EYk5x7H7u4tYKVnubOdPzdbVMCDsMjpsvEyRg0ibru3N2CLmH7ruxpGy/4Iv2aKY4
	 L2G01P/iloIkkFaoZ4XT1d+BENNUl1w7moMCZCT81ZPb6o0a2o6ykP+FelSFCmr3Aa
	 TMHaC0J6DgoFg==
Date: Mon, 20 Apr 2026 15:14:40 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, 
	konrad.dybcio@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-ufs: Fix kaanapali PHY PLL lock failure
 after SM8650 G4 fix
Message-ID: <lmgcr2iw56ictqkylos75rvdf453votmsieziqr6pgeyc374pb@242cfxs7ihsr>
References: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415104851.2763238-1-nitin.rawat@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_024453_886285_FA76E82B 
X-CRM114-Status: GOOD (  16.38  )
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

T24gV2VkLCBBcHIgMTUsIDIwMjYgYXQgMDQ6MTg6NTFQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gQ29tbWl0IDgxYWY5ZTQwZTJlNCAoInBoeTogcWNvbTogcW1wLXVmczogRml4IFNNODY1
MCBQQ1MgdGFibGUgZm9yIEdlYXIgNCIpCj4gbW92ZWQgUVBIWV9WNl9QQ1NfVUZTX1BMTF9DTlRM
IHJlZ2lzdGVyIGNvbmZpZ3VyYXRpb24gZnJvbSB0aGUgc2hhcmVkCj4gc204NjUwX3Vmc3BoeV9n
NV9wY3MgdGFibGUgdG8gdGhlIFNNODY1MC1zcGVjaWZpYyBzbTg2NTBfdWZzcGh5X3BjcyBiYXNl
Cj4gdGFibGUgdG8gZml4IEdlYXIgNCBvcGVyYXRpb24gb24gU004NjUwLgo+IAo+IEhvd2V2ZXIs
IHRoaXMgY2hhbmdlIGluYWR2ZXJ0ZW50bHkgYnJva2Uga2FhbmFwYWxpIGFuZCBTTTg3NTAgU29D
cwo+IHdoaWNoIGFsc28gcmVseSBvbiB0aGUgc2hhcmVkIHNtODY1MF91ZnNwaHlfZzVfcGNzIHRh
YmxlIGZvciBHZWFyIDUKPiBjb25maWd1cmF0aW9uIGJ1dCB1c2UgdGhlaXIgb3duIHNtODc1MF91
ZnNwaHlfcGNzIGJhc2UgdGFibGUuIEFmdGVyIHRoZQo+IGNoYW5nZSwga2FhbmFwYWxpIFBIWXMg
YXJlIGxlZnQgd2l0aG91dCB0aGUgcmVxdWlyZWQgUExMX0NOVEwgPSAweDMzCj4gc2V0dGluZywg
Y2F1c2luZyB0aGUgUEhZIFBMTCB0byByZW1haW4gYXQgaXRzIGhhcmR3YXJlIHJlc2V0IGRlZmF1
bHQKPiB2YWx1ZSwgcHJldmVudGluZyBQTEwgbG9jayBhbmQgcmVzdWx0aW5nIGluIERNRV9MSU5L
U1RBUlRVUCB0aW1lb3V0cy4KPiAKPiBGaXggdGhpcyBieSBhZGRpbmcgdGhlIG1pc3NpbmcgUVBI
WV9WNl9QQ1NfVUZTX1BMTF9DTlRMID0gMHgzMyBlbnRyeQo+IHRvIHRoZSBzbTg3NTBfdWZzcGh5
X3BjcyB0YWJsZSwgbWlycm9yaW5nIHdoYXQgdGhlIG9yaWdpbmFsIGNvbW1pdAo+IGFscmVhZHkg
ZGlkIGZvciBzbTg2NTBfdWZzcGh5X3Bjcy4KPiAKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
ZyAjIHY2LjE5LjEyCj4gRml4ZXM6IDgxYWY5ZTQwZTJlNCAoInBoeTogcWNvbTogcW1wLXVmczog
Rml4IFNNODY1MCBQQ1MgdGFibGUgZm9yIEdlYXIgNCIpCj4gU2lnbmVkLW9mZi1ieTogTml0aW4g
UmF3YXQgPG5pdGluLnJhd2F0QG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZh
bm5hbiBTYWRoYXNpdmFtIDxtYW5pQGtlcm5lbC5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYyB8IDEgKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0v
cGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVm
cy5jCj4gaW5kZXggNzcxYmM3YzJhYjUwLi5iODczMTRjODM3OWQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gKysrIGIvZHJpdmVycy9waHkv
cXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gQEAgLTExMTIsNiArMTExMiw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9pbml0X3RibCBzbTg3NTBfdWZzcGh5X3Bjc1tdID0gewo+
ICAJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y2X1BDU19VRlNfTVVMVElfTEFORV9DVFJMMSwgMHgw
MiksCj4gIAlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjZfUENTX1VGU19UWF9NSURfVEVSTV9DVFJM
MSwgMHg0MyksCj4gIAlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjZfUENTX1VGU19QQ1NfQ1RSTDEs
IDB4NDApLAo+ICsJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y2X1BDU19VRlNfUExMX0NOVEwsIDB4
MzMpLAo+ICAJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y2X1BDU19VRlNfVFhfTEFSR0VfQU1QX0RS
Vl9MVkwsIDB4MGYpLAo+ICAJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y2X1BDU19VRlNfUlhfU0lH
REVUX0NUUkwyLCAweDY4KSwKPiAgCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNl9QQ1NfVUZTX1RY
X1BPU1RfRU1QX0xWTF9TNCwgMHgwZSksCj4gLS0KPiAyLjM0LjEKPiAKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
