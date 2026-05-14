Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 728EACD4F21
	for <linux-phy@archiver.kernel.org>; Thu, 14 May 2026 01:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22/0SKHgL5UUctFK5nCdcXaFATjIWGGWxpeD9IGYhWo=; b=XNL47XNnwnaN9O
	CVgJJEVXKJz0+wFKwQXXT7VmTm0U2MJVkqbZN1dF3U0FmKvGHukBIq9RrOESZLwN89GD2HFAfBSM9
	AkyKb2iLQmD4C9yq+jfDcCLwo02Ye+W/bs9MaFt7jR3otyFQiSLsrzxqdAf+fFVfSGUepdnGvjfEE
	gJuND3B/fpTgMNWSRZzdB2Qx274DvTR0JMRsu8icPTzT3v3rVJbQYvVT/7YbfGOeMQp6f0EvevyEi
	ICnlME5trAgVfcQaLpv1Y0FKdiF+jGFFCcVd92HxvJF9OGRasr0kAb/EjjsriUG6e2dchlVqI6Aab
	CflPUqvzLekYsi8l0lkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNL6H-00000004INX-44Ei;
	Thu, 14 May 2026 01:42:57 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNL6G-00000004IN2-1N2S
	for linux-phy@lists.infradead.org;
	Thu, 14 May 2026 01:42:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7F7AC40DF9;
	Thu, 14 May 2026 01:42:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35F06C19425;
	Thu, 14 May 2026 01:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778722975;
	bh=oBhCuHah8JcJzRxbSplEMoBSn9c7+hDNbVI06xJE8n0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LUQEggTAnbX4mghOtvtXKy799oS38unx1v4B51VTgl0oxzaZHIsTAk+Ry6m2ICAjM
	 wuw0qSH0EwNXwcWMmVOf5X7kiasv6J0sX73J3K2IbLorAOx1KyIpASgpQMO4lpMRFE
	 1855QjA+/cHbABktGQpZ0j14oMOIDBq4PAV73j+WRSUU4eraKAR4mtxxPFqzH2c+pm
	 //n86azelmDEacVYHBeumOhiBw3QOBqA4YibPkhizu4H6x7KWZiYmpeiQ3Q1YkgGSG
	 ZAhLaPm/eegbbHtNhauBtVT0viC+mYbmzzq7l9BXpOzcneBho3WnJaOtsgA3FZvkyN
	 50leu6uVsOc9w==
Date: Thu, 14 May 2026 09:42:49 +0800
From: "Peter Chen (CIX)" <peter.chen@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-tegra@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v1 2/6] usb: chipidea: tegra: Avoid controller/PHY init
 if bus is externally controlled
Message-ID: <agUomUMW9Yu3n7ZK@nchen-desktop>
References: <20260511135703.62470-1-clamor95@gmail.com>
 <20260511135703.62470-3-clamor95@gmail.com>
 <agJ/T8nBGWEoblmd@nchen-desktop>
 <CAPVz0n173syW9rXy7Qt_N=mChe6WBRLvjRDypcJEC50hPL4OMQ@mail.gmail.com>
 <agLb6mgP45jHjvNt@nchen-desktop>
 <CAPVz0n2yGALm1Z0j0j6_MaqAOZGL+a8EgCWYQpW0QN1YVf96EQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPVz0n2yGALm1Z0j0j6_MaqAOZGL+a8EgCWYQpW0QN1YVf96EQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_184256_406348_BFE8EAD2 
X-CRM114-Status: GOOD (  23.69  )
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

T24gMjYtMDUtMTMgMjA6MzA6MTAsIFN2eWF0b3NsYXYgUnloZWwgd3JvdGU6Cj4g0LLRgiwgMTIg
0YLRgNCw0LIuIDIwMjbigK/RgC4g0L4gMTA6NTEgUGV0ZXIgQ2hlbiAoQ0lYKSA8cGV0ZXIuY2hl
bkBrZXJuZWwub3JnPiDQv9C40YjQtToKPiA+Cj4gPiBPbiAyNi0wNS0xMiAwOToxMzo0MCwgU3Z5
YXRvc2xhdiBSeWhlbCB3cm90ZToKPiA+ID4g0LLRgiwgMTIg0YLRgNCw0LIuIDIwMjbigK/RgC4g
0L4gMDQ6MTYgUGV0ZXIgQ2hlbiAoQ0lYKSA8cGV0ZXIuY2hlbkBrZXJuZWwub3JnPiDQv9C40YjQ
tToKPiA+ID4gPgo+ID4gPiA+IE9uIDI2LTA1LTExIDE2OjU2OjU3LCBTdnlhdG9zbGF2IFJ5aGVs
IHdyb3RlOgo+ID4gPiA+ID4gSWYgdGhlIFVTQiBjb250cm9sbGVyIGFuZCBQSFkgYXJlIGV4dGVy
bmFsbHkgY29udHJvbGxlZCwgdGhlbiB0aGUKPiA+ID4gPiA+IHJlZ2lzdHJhdGlvbiBvZiB0aGUg
Y29udHJvbGxlciBhbmQgdGhlIFBIWSBpbml0aWFsaXphdGlvbiBzaG91bGQgYmUKPiA+ID4gPiA+
IHNraXBwZWQsIHNpbmNlIHRoZXNlIGNvbmZpZ3VyYXRpb25zIG11c3QgYmUgZG9uZSBieSB0aGUg
ZGV2aWNlIHRoYXQKPiA+ID4gPiA+IGNvbnRyb2xzIHRoZSBidXMgdG8gd29yayBjb3JyZWN0bHku
Cj4gPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gSSBmaW5kIHlvdSBvbmx5IGNvbnRyb2wgVVNCIGNv
bnRyb2xsZXIgZGV2aWNlIGFkZCBhdCBQSFkgZHJpdmVyLCBtb3N0IG9mIFVTQiBkcml2ZXJzCj4g
PiA+ID4gaGFzIFBIWSBjb250cm9sLCBmb3IgY2hpcGlkZWEsIGl0IGhhcyBQSFkgY29udHJvbCBh
dCBjb3JlLmMsIHdvdWxkIHBsZWFzZSB0cnkgdG8KPiA+ID4gPiBhZGFwdCBmb3IgaXQ/Cj4gPiA+
ID4KPiA+ID4KPiA+ID4gVXN1YWxseSB5ZXMsIGJ1dCB0aGlzIGlzIG5vdCB0aGUgY2FzZSBmb3Ig
VGVncmEgdW5mb3J0dW5hdGVseS4gQXMgeW91Cj4gPiA+IGNhbiBzZWUgVGVncmEgc3BlY2lmaWMg
c2VjdGlvbiBvZiBDaGlwaWRlYSBkcml2ZXIgc3BlY2lmaWNhbGx5Cj4gPiA+IGRlc2NyaWJlcyB3
aHkgaXQgaGFzIHRvIHNldCBQSFkgbWFudWFsbHkuCj4gPiA+Cj4gPiA+IC8qCj4gPiA+ICAqIFVT
QiBjb250cm9sbGVyIHJlZ2lzdGVycyBzaG91bGRuJ3QgYmUgdG91Y2hlZCBiZWZvcmUgUEhZIGlz
Cj4gPiA+ICAqIGluaXRpYWxpemVkLCBvdGhlcndpc2UgQ1BVIHdpbGwgaGFuZyBiZWNhdXNlIGNs
b2NrcyBhcmUgZ2F0ZWQuCj4gPiA+ICAqIFBIWSBkcml2ZXIgY29udHJvbHMgZ2F0aW5nIG9mIGlu
dGVybmFsIFVTQiBjbG9ja3Mgb24gVGVncmEuCj4gPiA+ICAqLwo+ID4gPgo+ID4gPiBTbyBpbiBv
cmRlciB0byBwcm92aWRlIGNvcnJlY3Qgd29yayBvZiBVU0Igd2hlbiBzZXQgYnkgYW4gZXh0ZXJu
YWwKPiA+ID4gZGV2aWNlLCBib3RoIFBIWSBhbmQgY29udHJvbGxlciBpbml0L2FkZCBtdXN0IGJl
IHNraXBwZWQuCj4gPgo+ID4gWW91IGNvdWxkIGNhbGwgZ2VuZXJpYyBQSFkgQVBJcyBhdCBjaV9o
ZHJjX3RlZ3JhLmMsIGFmdGVyIFBIWSBpbml0IG9yIHBvd2VyIG9uLAo+ID4gY2FsbCBjb250cm9s
bGVyIGluaXRpYWxpemF0aW9uLgo+ID4KPiAKPiBJIHdhcyB0aW5rZXJpbmcgd2l0aCBDaGlwaWRl
YSBkcml2ZXIgZm9yIFRlZ3JhIGEgYml0LiBJZiB5b3UgbWVhbnQgdG8KPiB1c2UgZmxhZyBvbmx5
IHRvIGNvbnRyb2wgdXNiIGNvbnRyb2xsZXIgZGV2aWNlIGluaXQgYW5kIGxlYXZlIFBIWSB0bwo+
IGJlIGhhbmRsZWQgYnkgY29udHJvbGxlciwgdGhlbiB5ZXMsIHRoYXQgaXMgcG9zc2libGUgYW5k
IHRoYXQgaXMKPiBiZXR0ZXIgYXBwcm9hY2guCj4gCgpZZXMsIHlvdSBtYXkgc3VtbWFyaXplIHRo
ZSBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZSwgYW5kIHNlZSBpZiBwdXQgUEhZCmNvbnRyb2wgYXQg
VGVncmEgZ2x1ZSBsYXllciBvciBhdCBDaGlwaWRlYSBjb3JlLgoKLS0gCgpCZXN0IHJlZ2FyZHMs
ClBldGVyCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
