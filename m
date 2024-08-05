Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1728EC3DA7F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 13:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSN4V16iYOCDPHwVEN6Q+6RTbidHUOeIL+5RbW7GGX0=; b=Lgbm+vnUHdVfGR
	T+nPC+nsV9ILpSnqdnuIkY+G+jwcJq3ogoQ1vI1BMD9eejMTrYCwJD0yMixAHf25yDxOnTKSltXHW
	bJErkFe53cla/0hmA96R3yJnJjEIrPTqSbl750w2RCjSrB9pT91wD9iEldgPQyjE54+Ve2V9I4dK4
	V040hbr9CXenSsq84jtawAQ3iW5V84gBiv6RJw3ZL2fDrpGLMkd6iLMKZk8uQgkW9Gv8Sz3cK0cyB
	qSkFQoCCV+1iMGJJ8/TBwXOr+FpMYH7PVAmkQDgWCoqfgbum+rdp+IA43d8cLIKUo5qzuVNXkGJbl
	m/aTtoBoVB1/Ovhdlk8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saxw1-0000000FyhN-3Fyk;
	Mon, 05 Aug 2024 13:39:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saxvP-0000000FyP9-2Rnj;
	Mon, 05 Aug 2024 13:39:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5700060C2B;
	Mon,  5 Aug 2024 13:38:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAE86C32782;
	Mon,  5 Aug 2024 13:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722865138;
	bh=g1dCieRZT/8ioAasjt6NPS4q5QhCHkiqp7M3N96vvNY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EuBWbuxzrkE37dkjRsoxMicV/Pg0+voGCSQuF3Cb5+bfyuLHgCjJRjhBtrJ49FBD3
	 Km2Zty1izzASV3xEcqzoxIqffNWW7TcR5ZDWYlVymlwx0WCLvUN15a06aU6JZ0wm3M
	 Ff68eRRrgst1XU8B3pGKVyM479Dx2k9e9A4k7jHDianG1lxl+mpmpZyB3diCL3oC2L
	 2EAYZt30KaX5KLVvvw6pvIUuxArpzaBWNR7u9bCOIzMmU9fKNJYioeh3ob5tTPGrx1
	 Ro/fIj67qNWd4cKJ9Qgm/2JutT502irCYnbs3ppR+RqT1+t6czww6H7SqJtvkV/sLK
	 IQCWAwGPdkmoQ==
Message-ID: <df81f36d-ca61-4fbd-8399-ac97a7fa898f@kernel.org>
Date: Mon, 5 Aug 2024 15:38:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] clk: samsung: exynos7885: Update CLKS_NR_FSYS after
 bindings fix
To: David Virag <virag.david003@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Sam Protsenko <semen.protsenko@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <20240804215458.404085-1-virag.david003@gmail.com>
 <20240804215458.404085-7-virag.david003@gmail.com>
 <bd7c76a6-b7a5-4f8d-8081-95b6cdb39186@kernel.org>
 <5af8048741215bdafa5d8f7bf6ab8dec3cd7aed0.camel@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <5af8048741215bdafa5d8f7bf6ab8dec3cd7aed0.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_063900_054590_F404CE0C 
X-CRM114-Status: GOOD (  17.49  )
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

T24gMDUvMDgvMjAyNCAxNDo0NCwgRGF2aWQgVmlyYWcgd3JvdGU6Cj4gSGkgS3J6eXN6dG9mLAo+
IAo+IE9uIE1vbiwgMjAyNC0wOC0wNSBhdCAwNzo0OSArMDIwMCwgS3J6eXN6dG9mIEtvemxvd3Nr
aSB3cm90ZToKPj4gT24gMDQvMDgvMjAyNCAyMzo1MywgRGF2aWQgVmlyYWcgd3JvdGU6Cj4+PiBV
cGRhdGUgQ0xLU19OUl9GU1lTIHRvIHRoZSBwcm9wZXIgdmFsdWUgYWZ0ZXIgYSBmaXggaW4gRFQg
YmluZGluZ3MuCj4+PiBUaGlzIHNob3VsZCBhbHdheXMgYmUgdGhlIGxhc3QgY2xvY2sgaW4gYSBD
TVUgKyAxLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFZpcmFnIDx2aXJhZy5kYXZpZDAw
M0BnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IMKgZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9z
Nzg4NS5jIHwgMiArLQo+Pgo+PiBUaGlzIG5lZWRzIGZpeGVzIGFuZCBDYy1zdGFibGUgdGFnLCBz
YW1lIGFzIHRoZSBiaW5kaW5nLgo+IAo+IFdvdWxkIGl0IGZpeCBlZjQ5MjNjOGUwNTIgKCJjbGs6
IHNhbXN1bmc6IGV4eW5vczc4ODU6IGRvIG5vdCBkZWZpbmUgbnVtYmVyIG9mIGNsb2NrcyBpbiBi
aW5kaW5ncyIpPwo+IE9yIHdvdWxkIGl0IGZpeCBjZDI2OGUzMDljMjkgKCJkdC1iaW5kaW5nczog
Y2xvY2s6IEFkZCBiaW5kaW5ncyBmb3IgRXh5bm9zNzg4NSBDTVVfRlNZUyIpPwo+IAo+IEknbSBn
dWVzc2luZyB0aGUgZm9ybWVyLCBidXQgdGVjaG5pY2FsbHkgdGhlIGxhdHRlciBpbnRyb2R1Y2Vk
Cj4gdGhlIHByb2JsZW0gYW5kIHRoZSBmb3JtZXIgdHJhbnNmZXJyZWQgaXQgdG8gdGhlIGNsayBk
cml2ZXIuCj4gCj4gRm9yIGtlcm5lbCA2LjEsIHRoaXMgZml4IHdvdWxkbid0IHdvcmssIGFzIHdl
J2QgbmVlZCBhIGZpeCBpbiB0aGUKPiBkdC1iaW5kaW5ncyBpbnN0ZWFkIChwZXJoYXBzIHRoZSBk
dC1iaW5kaW5ncyBmaXggc2hvdWxkIGluY2x1ZGUKPiB0aGlzIGZpeCB0aGVyZSkuCj4gCj4gSG93
IHdvdWxkIHRoaXMgd29yaz8KCkkgd291bGQgc2F5IHRoaXMgZml4ZXMgdGhlIGxhdHRlciAtIGJp
bmRpbmdzIGNvbW1pdCB3aGljaCBpbnRyb2R1Y2VkCmR1cGxpY2F0ZWQgSUQuIElmIHlvdXIgYmlu
ZGluZ3MgcGF0Y2ggaXMgYmFja3BvcnRlZCwgdGhlbiB0aGUgbnVtYmVyIG9mCklEcyBkbyBub3Qg
bWF0Y2ggYW55bW9yZSBudW1iZXIgb2YgY2xvY2tzLgoKV2l0aG91dCB5b3VyIGJpbmRpbmdzIGZp
eCwgZXZlcnl0aGluZyBtYXRjaGVzIGV2ZW4gdGhvdWdoIGl0IGlzIG5vdAp0ZWNobmljYWxseSBj
b3JyZWN0LgoKVGhlIGJpbmRpbmdzIGZpeCBhbHNvIG5lZWRzIENjLXN0YWJsZS4KCkJlc3QgcmVn
YXJkcywKS3J6eXN6dG9mCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
