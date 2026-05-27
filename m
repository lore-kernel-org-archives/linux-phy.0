Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F35C0CD4F54
	for <linux-phy@archiver.kernel.org>; Wed, 27 May 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldavq62FslK2TjVmkxbX2Z4Sth3BfuNh8vcHfIuxkS0=; b=msoG5d4/Q26EB4
	GVLq+YC4x+xFXLE5T8n4PhUhSVADDDkDd3+Vrr/7nDpbaipdEts495GIAHjMpayg5ahxOx/14/C12
	e0qHMQ81zyLBBL1tVpl4HID4cVbLYrqk0mMaVHe3ZBXce6TWxyu3DCSwrlVhlQih8dTls3xY11rv/
	SnMXUbA4hgku+RwQu0XXsnD+rJf6/CS3+v66tsNpeiAFHzQ4aB7+/xjb6engkyIGUfkKfMnQ0L78Y
	D2/otY1ssgCiZQoYq6sbC34gnaXxrxZS0lYTxf+h6t/xkz4P9a7msE3GnZEQdDx1LUj2BenmXoQNG
	J94dBOMXIKKMSHftQd+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSHrt-00000004ZSR-0Zmv;
	Wed, 27 May 2026 17:16:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSHrp-00000004ZS1-3U2t
	for linux-phy@lists.infradead.org;
	Wed, 27 May 2026 17:16:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 09E0F4428E;
	Wed, 27 May 2026 17:16:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FE671F000E9;
	Wed, 27 May 2026 17:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779902187;
	bh=fVo3w1d55s41ASEpphnmuEEtqOCEUseak1yesK6LZrw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=f1sSPOjOkDiAdrooohwGe4INXtrl9DFcRzTIUH+FQqUQIgivQez2vFWC2ez0v5Mfa
	 Th4AfZx8elNUvjPoB4TJyB1rarhaPdgCFSrHKiUUVN/eh38c+kdw68nStJBOXUhmX1
	 buzAElG5Pia50B9DldoCx4oWNjiIYtGzWyEShm7SmVxqZwhZXqnjtJ+hu1QnbQyA7f
	 NwP0z2XaEmXFGbQebEUBXOQRUyU2c/iGIRXkwPA+rthx86RpMLcNKkuR8CVQM98G2r
	 W/RPmIzZsqiJwl+1y6lv8M4nE/4uegZ0CEwtoq9EwEGNDJsi2pK+1tzHIrH+LnPJTd
	 AByrNbsVsbYMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: Add Shikra EVK boards
To: "Komal Bajaj" <komal.bajaj@oss.qualcomm.com>
Cc: neil.armstrong@linaro.org, devicetree@vger.kernel.org, robh@kernel.org, vkoul@kernel.org, linux-phy@lists.infradead.org, olteanv@gmail.com, conor+dt@kernel.org
In-Reply-To: <20260527-shikra-dt-v4-5-b5ca1fa0b392@oss.qualcomm.com>
References: <20260527-shikra-dt-v4-5-b5ca1fa0b392@oss.qualcomm.com>
Date: Wed, 27 May 2026 17:16:26 +0000
Message-Id: <20260527171627.8FE671F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_101629_892637_52F69701 
X-CRM114-Status: GOOD (  10.55  )
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIHNoaWtyYS1jcXMtZXZr
LmR0cyBpbmNvcnJlY3RseSBpbmNsdWRlcyBzaGlrcmEtY3FtLXNvbS5kdHNpIGFuZCBpcyBtaXNz
aW5nIGl0cyBkZWRpY2F0ZWQgc2hpa3JhLWNxcy1zb20uZHRzaSBmaWxlLgotIFtMb3ddIGVNTUMg
KGBzZGhjXzFgKSBjb25maWd1cmF0aW9uIGlzIGVycm9uZW91c2x5IHBsYWNlZCBpbiBFVksgY2Fy
cmllciBib2FyZCBgLmR0c2AgZmlsZXMgaW5zdGVhZCBvZiB0aGUgU29NIGAuZHRzaWAgZmlsZXMu
Ci0tCgpjb21taXQgMTZjYThkYjRmYTM2YjM3ZWZlMTU0ODM5OTc2NmE3ZGZkY2E3OTRkYQpBdXRo
b3I6IEtvbWFsIEJhamFqIDxrb21hbC5iYWphakBvc3MucXVhbGNvbW0uY29tPgphcm02NDogZHRz
OiBxY29tOiBBZGQgU2hpa3JhIEVWSyBib2FyZHMKClRoaXMgcGF0Y2ggaW50cm9kdWNlcyBkZXZp
Y2UgdHJlZXMgZm9yIHRoZSBTaGlrcmEgRVZLIHBsYXRmb3JtLCBzdXBwb3J0aW5nIAp0aGUgQ1FN
LCBDUVMsIGFuZCBJUVMgU29NIHZhcmlhbnRzLiBJdCBjb21iaW5lcyBlYWNoIG9mIHRoZXNlIG1v
ZHVsZXMgd2l0aCAKYSBjb21tb24gY2FycmllciBib2FyZCBkZWZpbml0aW9uIHRvIGVuYWJsZSB0
aGUgcmVzcGVjdGl2ZSBFVksgaGFyZHdhcmUuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc2hpa3JhLWNxbS1ldmsuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NoaWtyYS1jcW0tZXZrLmR0cwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gLS0tIC9kZXYvbnVs
bAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zaGlrcmEtY3FtLWV2ay5kdHMKWyAu
Li4gXQo+ICsmc2RoY18xIHsKPiArCXZtbWMtc3VwcGx5ID0gPCZwbTQxMjVfbDIwPjsKPiArCXZx
bW1jLXN1cHBseSA9IDwmcG00MTI1X2wxND47Cj4gKwo+ICsJcGluY3RybC0wID0gPCZzZGMxX3N0
YXRlX29uPjsKPiArCXBpbmN0cmwtMSA9IDwmc2RjMV9zdGF0ZV9vZmY+Owo+ICsJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IiwgInNsZWVwIjsKPiArCj4gKwlub24tcmVtb3ZhYmxlOwo+ICsJc3Vw
cG9ydHMtY3FlOwo+ICsJbm8tc2RpbzsKPiArCW5vLXNkOwo+ICsKPiArCXN0YXR1cyA9ICJva2F5
IjsKPiArfTsKCltTZXZlcml0eTogTG93XQpTaG91bGQgdGhpcyBlTU1DIGNvbmZpZ3VyYXRpb24g
YmUgbW92ZWQgaW50byB0aGUgcmVzcGVjdGl2ZSBTb00gZHRzaSBmaWxlcz8KU2luY2UgdGhlIGNv
bmZpZ3VyYXRpb24gaXMgZHVwbGljYXRlZCBhY3Jvc3MgdGhlIEVWSyBmaWxlcyBhbmQgZGlmZmVy
cyBvbmx5IApieSB0aGUgcG93ZXIgc3VwcGxpZXMgdGllZCB0byB0aGUgUE1JQyBvbiBlYWNoIG1v
ZHVsZSwgaXQgc3VnZ2VzdHMgdGhlIGVNTUMgCmhhcmR3YXJlIHBoeXNpY2FsbHkgcmVzaWRlcyBv
biB0aGUgU29NIHJhdGhlciB0aGFuIHRoZSBjYXJyaWVyIGJvYXJkLgoKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NoaWtyYS1jcXMtZXZrLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9zaGlrcmEtY3FzLWV2ay5kdHMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2hpa3JhLWNx
cy1ldmsuZHRzClsgLi4uIF0KPiArL2R0cy12MS87Cj4gKwo+ICsjaW5jbHVkZSAic2hpa3JhLWNx
bS1zb20uZHRzaSIKPiArI2luY2x1ZGUgInNoaWtyYS1ldmsuZHRzaSIKPiArCj4gKy8gewo+ICsJ
bW9kZWwgPSAiUXVhbGNvbW0gVGVjaG5vbG9naWVzLCBJbmMuIFNoaWtyYSBDUVMgRVZLIjsKPiAr
CWNvbXBhdGlibGUgPSAicWNvbSxzaGlrcmEtY3FzLWV2ayIsICJxY29tLHNoaWtyYS1jcXMtc29t
IiwgInFjb20sc2hpa3JhIjsKCltTZXZlcml0eTogSGlnaF0KRG9lcyB0aGlzIGJvYXJkIGluY2x1
ZGUgdGhlIGluY29ycmVjdCBTb00gZmlsZT8gVGhlIGNvbW1pdCBtZXNzYWdlIG5vdGVzCnRoYXQg
Q1FTIHBhaXJzIHdpdGggdGhlIENRMjM5MFMgU29NLCBidXQgdGhpcyBpbmNsdWRlIHB1bGxzIGlu
IApzaGlrcmEtY3FtLXNvbS5kdHNpIGluc3RlYWQuIEFkZGl0aW9uYWxseSwgaXQgYXBwZWFycyB0
aGUgcmVxdWlyZWQgCnNoaWtyYS1jcXMtc29tLmR0c2kgZmlsZSBpcyBlbnRpcmVseSBtaXNzaW5n
IGZyb20gdGhpcyBwYXRjaC4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hp
a28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA1Mjctc2hpa3JhLWR0LXY0LTAtYjVjYTFmYTBiMzkyQG9z
cy5xdWFsY29tbS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
