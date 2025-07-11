Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F25C8303C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Jul 2025 07:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGiy9zkcUltJi89966hcj+AAgaIcafnqOYoaolhNIMc=; b=V2cCzEPosGkNZy
	8tWaYIH5wc+str6GoGG30ZU+NVkBykyd3DxuccjIaq/Fz5f1x2/JvEhKgrmzf3xBL8BKOs6evtlFd
	SMJqdOCbRsBEXFVrJJ0NjerbG8wQTiH1dnPXlZjQB8rvl71dmh2CPaHev6AZSW57xPDD3+friFU81
	ZZZBafyvimG5ORhO/bavAV8DuvX/8V+oRuALpgKzeGt1d8C6NKHgmVEmvjmJwQRnCDws0jT+dm6lI
	YtjEH637TbOW+TVyZHV/sDplIF3jf2dRqVb5BEaPyLYv58H9lEe6RLk4BW5CqFMoNKUhr9SzTAByy
	p/2uLviFUFmBf5/604vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua7t7-0000000Dv0r-2mik;
	Fri, 11 Jul 2025 07:09:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua7t4-0000000DuzJ-1M81
	for linux-phy@lists.infradead.org;
	Fri, 11 Jul 2025 07:09:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 85EC844896;
	Fri, 11 Jul 2025 07:09:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEBA3C4CEED;
	Fri, 11 Jul 2025 07:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752217777;
	bh=AeM9nVKzaPE89Cup3Ni/lGPwJYkloERSY2Zx0y+Xh8U=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MOlib49w8X1PdWLJJBlPK7mbTvJKLRvwi36EoQuxmGgInD/9aX1GXSKU1ehsqcdJr
	 K38dpoPKQY+3836c+uSIpmZS+PXtZuVsf2bdMaw2QNRMQrIiDWxSHj5eqTeCQ5h/my
	 dts/Hc2hpJjN1lNe3jhvtNESt4H9mJjiMIsC7ks0g6TdlrxYNoS8aygPaEFp2d6TTt
	 omEIvMRIgy810g0RPQsA0FN3hTi7oBwh+8oNCxE4vmEw0UBOY1SoU3D1HEKw2rXXve
	 5xhKqduC9TGURPrlAV0NdhhxVgDzbxHWfJtv8AEGz+VcMgkAH6np6c9JVtyLJWxSG5
	 qbrMlkG4c7+Pg==
Message-ID: <1a4f27e3-49e7-4499-acad-c33d5cfec7a8@kernel.org>
Date: Fri, 11 Jul 2025 09:09:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] phy: dw-dphy-rx: Add dt bindings for Synopsys MIPI
 D-PHY RX
To: "Poduval, Karthik" <kpoduval@lab126.com>
Cc: "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "Xiong, Jason" <jyxiong@amazon.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "robh@kernel.org" <robh@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Anish Kumar, FNU" <anishkmr@amazon.com>,
 "miguel.lopes@synopsys.com" <miguel.lopes@synopsys.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "kishon@kernel.org" <kishon@kernel.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>
References: <cover.1752106239.git.kpoduval@lab126.com>
 <7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com>
 <20250710-dainty-tarsier-from-hyperborea-ecf9d3@krzk-bin>
 <1c135aa4989f7a49cc58a092986e27712210d662.camel@lab126.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <1c135aa4989f7a49cc58a092986e27712210d662.camel@lab126.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250711_000938_398400_24326B53 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
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

T24gMTAvMDcvMjAyNSAyMzoyNCwgUG9kdXZhbCwgS2FydGhpayB3cm90ZToKPj4+ICttYWludGFp
bmVyczoKPj4+ICvCoCAtIEthcnRoaWsgUG9kdXZhbCA8a3BvZHV2YWxAbGFiMTI2LmNvbT4KPj4+
ICvCoCAtIEphc29uIFhpb25nIDxqeXhpb25nQGFtYXpvbi5jb20+Cj4+PiArwqAgLSBNaWd1ZWwg
TG9wZXMgPG1pZ3VlbC5sb3Blc0BzeW5vcHN5cy5jb20KPj4+ICsKPj4+ICtkZXNjcmlwdGlvbjog
fAo+Pj4gK8KgIFRoZXNlIGFyZSB0aGUgYmluZGluZ3MgZm9yIFN5bm9wc3lzIERlc2lnbndhcmUg
TUlQSSBEUEhZIFJYIHBoeQo+Pj4gZHJpdmVyLgo+Pj4gK8KgIEN1cnJlbnRseSBvbmx5IHN1cHBv
cnRlZCBwaHkgdmVyc2lvbiBpcyB2MS4yLgo+Pj4gKwo+Pj4gK3Byb3BlcnRpZXM6Cj4+PiArwqAg
Y29tcGF0aWJsZToKPj4+ICvCoMKgwqAgY29uc3Q6IHNucHMsZHctZHBoeS0xcDIKPj4KPj4gWW91
IHNob3VsZCByYXRoZXIgdXNlIFNvQyBjb21wYXRpYmxlcy4KPiBJZiBzaW1pbGFyIFN5bm9wc3lz
IEQtUEhZIGlzIHVzZWQgaW4gbXVsdGlwbGUgU29DcyB3aXRoIHNsaWdodAo+IHZhcmlhdGlvbnMs
IHNob3VsZCBlYWNoIFNvQyBoYXZlIGl0cyBvd24gRC1QSFkgZHJpdmVyIG9yIGlzIGl0IGJldHRl
cgoKWW91ciBpbmNvcnJlY3Qgc3ViamVjdCBwcm9iYWJseSBtaXNsZWFkIHlvdSwgYnV0IHRoaXMg
aXMgbm90IGEgZHJpdmVyCnBhdGNoLiBUaGVzZSBhcmUgRFQgYmluZGluZ3MuCgpTb0Mgc3BlY2lm
aWMgY29tcGF0aWJsZXMgYXJlIGFsbW9zdCBhbHdheXMgcHJlZmVycmVkLgoKPiB0byBoYXZlIGEg
Y29tbW9uIG9uZSB0aGF0IHdvcmtzIGZvciBhbGwgU29DcyBsaWtlIGFybSxzbW11LXYzIG9yIGxp
a2UKPiB0aGUgRUVQUk9NIGRyaXZlciBiZWxvdyA/wqAKPiBodHRwczovL2dpdC5rZXJuZWwub3Jn
L3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJz
L21pc2MvZWVwcm9tL2VlcHJvbV85M3h4NDYuYz9oPXY2LjE2LXJjNSNuMzkxCj4gd2hlcmUgZHJp
dmVyIHNwZWNpZmljIGRyaXZlcl9kYXRhIGNvdWxkIHN1cHBvcnQgbXVsdGlwbGUgdmVyc2lvbnMg
b3IKPiBTb0MgdmFyaWF0aW9ucy4gCj4gT3VyIHRlYW0gdGhvdWdodCBvZiB0aGUgY29tbW9uIGRy
aXZlciBhcHByb2FjaCBob3dldmVyIGxvb2tpbmcgZm9yCj4gZ2VuZXJhbCBndWlkYW5jZSBmcm9t
IFBIWSBzdWJzeXN0ZW0gbWFpbnRhaW5lcnMgYW5kIGNvbnRyaWJ1dG9ycy4KCldlIGRvbid0IGRp
c2N1c3MgaGVyZSBkcml2ZXIuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
