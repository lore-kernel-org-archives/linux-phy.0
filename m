Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ABCCE784B7
	for <linux-phy@archiver.kernel.org>; Mon,  2 Oct 2023 14:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCn4xTZuOt4pCMCqI8fHeA12cA9tW8K9ECv2sLLt8JU=; b=mVkcvryisFKJYN
	selDlnvPifyWKASwZF8s0e4u8bkkX1Z+CtHdfBdYVx7BP3XFyKI46/YN5WoEW4wN5oNwnQtiBw+eZ
	ljDjqDsTopTe4INL+wmfGyLKVXNYhdB06GMbPR1xOZLIOKOWKYa+6fmqbQVGe6Mni2a+nfhXNwYsr
	fh150ASqOyZ2FHHyvSOenOMx/jY9gzrhoI95ptP1B/FaG68b65RAsNpVecVoOHeOSqDPjuK5dDPe2
	qLc5IVroZMS+ktZxGCzeDidMlX//E2xyYPOa7Ws6xusFguKKAmgULQ8N4q6lilv7T8/W59Zj8Ak4h
	nal2EM4ov6o6NiIblpwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnK27-00Cte8-0S;
	Mon, 02 Oct 2023 14:36:27 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnK24-00Ctd2-02
	for linux-phy@lists.infradead.org;
	Mon, 02 Oct 2023 14:36:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 38B5AB80B8E;
	Mon,  2 Oct 2023 14:36:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 114F3C433C7;
	Mon,  2 Oct 2023 14:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696257381;
	bh=N0bjWFh/ivsmoCYQtXEL5H33a73c76bfBhkj9oFwP9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rXmIWfER8Fxc/ipUxtpCtDviSFoTG9oiaZjA5WmwM+EiknGI/Gq9SUqummvXw0G0X
	 QqAgoHdb2pHvwo8MbTxAF3ag2DJyW8fnZtXjV9hlYuZJ9BmW735ny3ngZLhgkdBj4L
	 wqdytAXfpe9d1KfWejOaN1xrhs2cO3mhRH2TGI65AaYp6caL0Gu653xFHj0IOvJzG6
	 2JdIwBgWlumVgcSXJZZYFfl6i/WXeQSdGkZsf+SnAwZ3S6xYIRnAMAGQeMxkReWO1X
	 9qgj2HstuQpxJniKTVrZnBaU3F8FnkNLyxwd9UBD9TGQC/JX5HWSmmdoFMgjTZK7V7
	 UeGSe4NGjC8/A==
Received: (nullmailer pid 1674615 invoked by uid 1000);
	Mon, 02 Oct 2023 14:36:19 -0000
Date: Mon, 2 Oct 2023 09:36:19 -0500
From: Rob Herring <robh@kernel.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
Message-ID: <20231002143619.GA1651295-robh@kernel.org>
References: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_073624_343022_5C751D1D 
X-CRM114-Status: GOOD (  20.87  )
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

T24gU3VuLCBPY3QgMDEsIDIwMjMgYXQgMDM6MDU6NDNQTSArMDIwMCwgRHVqZSBNaWhhbm92acSH
IHdyb3RlOgo+IENvbnZlcnQgdGhlIGJpbmRpbmcgZm9yIHRoZSBNYXJ2ZWxsIFBYQTE5MjggVVNC
IGFuZCBIU0lDIFBIWXMgZnJvbSBUWFQKPiB0byBEVCBzY2hlbWEuCj4gCj4gU2lnbmVkLW9mZi1i
eTogRHVqZSBNaWhhbm92acSHIDxkdWplLm1paGFub3ZpY0Bza29sZS5ocj4KPiAtLS0KPiAgLi4u
L2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLHB4YTE5MjgtaHNpYy1waHkueWFtbCAgICAgfCAzNyArKysr
KysrKysrKysrKysrKwo+ICAuLi4vYmluZGluZ3MvcGh5L21hcnZlbGwscHhhMTkyOC11c2ItcGh5
LnlhbWwgICAgICB8IDQ2ICsrKysrKysrKysrKysrKysrKysrKysKPiAgLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3B4YTE5MjgtdXNiLXBoeS50eHQgICAgfCAxOCAtLS0tLS0tLS0KPiAgMyBm
aWxlcyBjaGFuZ2VkLCA4MyBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tYXJ2ZWxsLHB4
YTE5MjgtaHNpYy1waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvbWFydmVsbCxweGExOTI4LWhzaWMtcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
IGluZGV4IDAwMDAwMDAwMDAwMC4uYTQ3N2FmZDExMzI5Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWFydmVsbCxweGExOTI4LWhz
aWMtcGh5LnlhbWwKPiBAQCAtMCwwICsxLDM3IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4g
KyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvcGh5L21hcnZlbGwscHhhMTkyOC1o
c2ljLXBoeS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hl
bWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBNYXJ2ZWxsIFBYQTE5MjggSFNJQyBQSFkKPiAr
Cj4gK21haW50YWluZXJzOgo+ICsgIC0gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKCk5vLCBz
aG91bGQgYmUgc29tZW9uZSB3aXRoIGhhcmR3YXJlIG9yIGZhbWlsYXIgd2l0aCBpdC4gSSBhZGRl
ZCB0aGlzLCAKYnV0IG5vIGxvbmdlciBoYXZlIGgvdyBvciBkb2N1bWVudGF0aW9uLiBJTU8sIGl0
IHNob3VsZCBwcm9iYWJseSBiZSAKcmVtb3ZlZC4KClRoZSBzY2hlbWFzIGFyZSB0aGUgc2FtZSwg
c28gdGhleSBjb3VsZCBqdXN0IGJlIDEgZG9jdW1lbnQuCgo+ICsKPiArcHJvcGVydGllczoKPiAr
ICAkbm9kZW5hbWU6Cj4gKyAgICBwYXR0ZXJuOiAnXnBoeUBbYS1mMC05XSskJwo+ICsKPiArICBj
b21wYXRpYmxlOgo+ICsgICAgY29uc3Q6ICJtYXJ2ZWxsLHB4YTE5MjgtaHNpYy1waHkiCgpEb24n
dCBuZWVkIHF1b3Rlcy4KCj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsg
IGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgICcjcGh5LWNlbGxzJzoKPiArICAg
IGNvbnN0OiAwCj4gKwo+ICsgIHJlc2V0czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICtyZXF1
aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gY2xvY2tzCj4gKyAgLSAn
I3BoeS1jZWxscycKPiArCj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21hcnZlbGwscHhhMTky
OC11c2ItcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21h
cnZlbGwscHhhMTkyOC11c2ItcGh5LnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMC4uNGFlOTIwMTc2N2VkCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWFydmVsbCxweGExOTI4LXVzYi1waHku
eWFtbAo+IEBAIC0wLDAgKzEsNDYgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9waHkvbWFydmVsbCxweGExOTI4LXVzYi1waHku
eWFtbCMKPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3Jl
LnlhbWwjCj4gKwo+ICt0aXRsZTogTWFydmVsbCBQWEExOTI4IFVTQiBQSFkKPiArCj4gK21haW50
YWluZXJzOgo+ICsgIC0gZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPiArCj4gK3Byb3BlcnRp
ZXM6Cj4gKyAgJG5vZGVuYW1lOgo+ICsgICAgcGF0dGVybjogJ15waHlAW2EtZjAtOV0rJCcKPiAr
Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiAibWFydmVsbCxweGExOTI4LXVzYi1waHki
Cj4gKwo+ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGNsb2NrczoKPiArICAg
IG1heEl0ZW1zOiAxCj4gKwo+ICsgICcjcGh5LWNlbGxzJzoKPiArICAgIGNvbnN0OiAwCj4gKwo+
ICsgIHJlc2V0czoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNv
bXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gY2xvY2tzCj4gKyAgLSAnI3BoeS1jZWxscycKPiAr
Cj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+ICsKPiArZXhhbXBsZXM6Cj4gKyAgLSB8
Cj4gKyAgICBwaHlANzAwMCB7Cj4gKyAgICAgIGNvbXBhdGlibGUgPSAibWFydmVsbCxweGExOTI4
LXVzYi1waHkiOwo+ICsgICAgICByZWcgPSA8MHg3MDAwIDB4ZTA+Owo+ICsgICAgICBjbG9ja3Mg
PSA8JmFwbXVfY2xvY2tzIFBYQTE5MjhfQ0xLX1VTQj47Cj4gKyAgICAgICNwaHktY2VsbHMgPSA8
MD47Cj4gKyAgICB9Owo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3B4YTE5MjgtdXNiLXBoeS50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3B4YTE5MjgtdXNiLXBoeS50eHQKPiBkZWxldGVkIGZpbGUgbW9kZSAxMDA2
NDQKPiBpbmRleCBkYTk0NDI2YWE2OTQuLjAwMDAwMDAwMDAwMAo+IC0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcHhhMTkyOC11c2ItcGh5LnR4dAo+ICsrKyAvZGV2
L251bGwKPiBAQCAtMSwxOCArMCwwIEBACj4gLSogTWFydmVsbCBQWEExOTI4IFVTQiBhbmQgSFNJ
QyBQSFlzCj4gLQo+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+IC0tIGNvbXBhdGlibGU6ICJtYXJ2
ZWxsLHB4YTE5MjgtdXNiLXBoeSIgb3IgIm1hcnZlbGwscHhhMTkyOC1oc2ljLXBoeSIKPiAtLSBy
ZWc6IGJhc2UgYWRkcmVzcyBhbmQgbGVuZ3RoIG9mIHRoZSByZWdpc3RlcnMKPiAtLSBjbG9ja3Mg
LSBBIHNpbmdsZSBjbG9jay4gRnJvbSBjb21tb24gY2xvY2sgYmluZGluZy4KPiAtLSAjcGh5cy1j
ZWxsczogc2hvdWxkIGJlIDAuIEZyb20gY29tbW9uIHBoeSBiaW5kaW5nLgo+IC0tIHJlc2V0czog
cmVmZXJlbmNlIHRvIHRoZSByZXNldCBjb250cm9sbGVyCj4gLQo+IC1FeGFtcGxlOgo+IC0KPiAt
CXVzYnBoeTogcGh5QDcwMDAgewo+IC0JCWNvbXBhdGlibGUgPSAibWFydmVsbCxweGExOTI4LXVz
Yi1waHkiOwo+IC0JCXJlZyA9IDwweDcwMDAgMHhlMD47Cj4gLQkJY2xvY2tzID0gPCZhcG11X2Ns
b2NrcyBQWEExOTI4X0NMS19VU0I+Owo+IC0JCSNwaHktY2VsbHMgPSA8MD47Cj4gLQl9Owo+IC0K
PiAKPiAtLS0KPiBiYXNlLWNvbW1pdDogNjQ2NWUyNjBmNDg3OTA4MDdlZWYwNmI1ODNiMzhjYTk3
ODliNjA3Mgo+IGNoYW5nZS1pZDogMjAyMzEwMDEtcHhhMTkyOC11c2IteWFtbC04MDk1NjQwODIy
NDEKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gLS0gCj4gRHVqZSBNaWhhbm92acSHIDxkdWplLm1paGFu
b3ZpY0Bza29sZS5ocj4KPiAKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
