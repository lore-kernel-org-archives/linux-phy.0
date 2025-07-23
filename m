Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 427DEC83F25
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 08:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiOQcooOGcR1QACmSZTcpOVEvMVew2y8/CtQD/acIGE=; b=TBOjBPuJE+p/+D
	zmhfg6vshLlan2hjNdyef4aFiOz1nWvB1WXS3dRlAdpqUbQ4MTqUI5KF9tHF9wGO8lJQa6wxqMiYQ
	hdXH0UdWjHhhaz3gOTvpvxbcOn5PWwOUFeXXDCDXzliK9y2M+KlDwjlVFWpNPHodwZWZr6aa4UmYD
	d9ZuUrpl5a2MCfRqO04kY6pVCyP6rYntk+T+oiM+/qBhJ/bdqm8U+e47HjhmPsb4WP+RmxyzCXaCv
	6M+8T7QpxJouvPCEYqk32cjnhiq9GyoWzrhMQBlIPPYESJI2Waanmaqi16oUceOHvlEUKM3oh+n80
	FhGknByCNruUDcj5pYQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUjK-00000004MWt-3zvO;
	Wed, 23 Jul 2025 08:21:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueUSS-00000004Jrk-0nVK;
	Wed, 23 Jul 2025 08:04:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5EB695C593F;
	Wed, 23 Jul 2025 08:04:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A6BAC4CEE7;
	Wed, 23 Jul 2025 08:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753257851;
	bh=5G0MzIPGQyVzSDEfSUskutOnD5XbLYr6VIzJy8hOBhA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TvK5C2/fwmiSxXzWTRkggiNfcnyKIjny40VwN1Iu+CBZ1S39waBVQlHolf1xIA0Xt
	 TK5zIgXYTW8ZuXP2B+q48VTDm5AmPwfzuIc/4N3oQPphbF+AaEOf1g4FJIdL3JARUy
	 qyhtk6UgCl6sPP4PmVreb+IpEEpXpxBx94fmxIHGjaA+yUsR9Gt3fKGw3/A2v85Q84
	 FtmhCs70ViIr6RsOPpzQKp5yfDSd+tLJgqKTyKp+QBARrdCgfxEfA4dFP73MJAGWmB
	 uQQJl2gW580fJJXyZJ97+j7n2gpNTZRiN7P/A8lPx3GU7npGE+dSKb3NrLMjLFtO8r
	 Eig/hwOm4gQnQ==
Date: Wed, 23 Jul 2025 13:34:01 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, =?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, kernel-team@android.com, 
	William Mcvicker <willmcvicker@google.com>
Subject: Re: [PATCH v2 1/2] phy: add new phy_notify_pmstate() api
Message-ID: <yaz4ozb55t3pkwd2gj4l4d2hdspdcsqjm2dfsux7lfdxy6lxjl@uae2qz2vjo64>
References: <20250703-phy-notify-pmstate-v2-0-fc1690439117@linaro.org>
 <20250703-phy-notify-pmstate-v2-1-fc1690439117@linaro.org>
 <e2lhm237c3xtbdjux2wuesq5fwu7nky3w7oq2fnsgn2pqcg5kh@xhxktriooyes>
 <aICKM-ebp9SMAkZ_@vaman>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aICKM-ebp9SMAkZ_@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_010412_317960_7F6413B9 
X-CRM114-Status: GOOD (  27.52  )
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

T24gV2VkLCBKdWwgMjMsIDIwMjUgYXQgMTI6Mzc6MzFQTSBHTVQsIFZpbm9kIEtvdWwgd3JvdGU6
Cj4gT24gMjItMDctMjUsIDIyOjA0LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBP
biBUaHUsIEp1bCAwMywgMjAyNSBhdCAwMjowMzoyMlBNIEdNVCwgUGV0ZXIgR3JpZmZpbiB3cm90
ZToKPiA+ID4gQWRkIGEgbmV3IHBoeV9ub3RpZnlfcG1zdGF0ZSgpIGFwaSB0aGF0IG5vdGlmaWVz
IGFuZCBjb25maWd1cmVzIGEgcGh5IGZvciBhCj4gPiA+IGdpdmVuIFBNIGxpbmsgc3RhdGUgdHJh
bnNpdGlvbi4KPiA+ID4gCj4gPiA+IFRoaXMgaXMgaW50ZW5kZWQgdG8gYmUgYnkgcGh5IGRyaXZl
cnMgd2hpY2ggbmVlZCB0byBkbyBzb21lIHJ1bnRpbWUKPiA+ID4gY29uZmlndXJhdGlvbiBvZiBw
YXJhbWV0ZXJzIGR1cmluZyB0aGUgdHJhbnNpdGlvbiB0aGF0IGNhbid0IGJlIGhhbmRsZWQgYnkK
PiA+ID4gcGh5X2NhbGlicmF0ZSgpIG9yIHBoeV9wb3dlcl97b258b2ZmfSgpLgo+ID4gPiAKPiA+
ID4gVGhlIGZpcnN0IHVzYWdlIG9mIHRoaXMgQVBJIGlzIGluIHRoZSBTYW1zdW5nIFVGUyBwaHkg
dGhhdCBuZWVkcyB0byBpc3N1ZQo+ID4gPiBzb21lIHJlZ2lzdGVyIHdyaXRlcyB3aGVuIGVudGVy
aW5nIGFuZCBleGl0aW5nIHRoZSBoaWJlcm5hdGUgbGluayBzdGF0ZS4KPiA+ID4gCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KPiA+
ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3BoeS9waHktY29yZS5jICB8IDI1ICsrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ID4gIGluY2x1ZGUvbGludXgvcGh5L3BoeS5oIHwgMjUgKysrKysrKysr
KysrKysrKysrKysrKysrKwo+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA1MCBpbnNlcnRpb25zKCsp
Cj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYyBiL2RyaXZl
cnMvcGh5L3BoeS1jb3JlLmMKPiA+ID4gaW5kZXggMDRhNWEzNGU3YTk1MGFlOTRmYWU5MTU2NzNj
MjVkNDc2ZmMwNzFjMS4uMGIyOWJjMmM3MDk4OTBkN2ZjMjdkMTQ4MGEzNWNkYTZhODI2ZmQzMCAx
MDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9waHkvcGh5LWNvcmUuYwo+ID4gPiArKysgYi9kcml2
ZXJzL3BoeS9waHktY29yZS5jCj4gPiA+IEBAIC01MjAsNiArNTIwLDMxIEBAIGludCBwaHlfbm90
aWZ5X2Rpc2Nvbm5lY3Qoc3RydWN0IHBoeSAqcGh5LCBpbnQgcG9ydCkKPiA+ID4gIH0KPiA+ID4g
IEVYUE9SVF9TWU1CT0xfR1BMKHBoeV9ub3RpZnlfZGlzY29ubmVjdCk7Cj4gPiA+ICAKPiA+ID4g
Ky8qKgo+ID4gPiArICogcGh5X25vdGlmeV9wbXN0YXRlKCkgLSBwaHkgbGluayBzdGF0ZSBub3Rp
ZmljYXRpb24KPiA+IAo+ID4gJ3Btc3RhdGUnIGRvZXNuJ3QgY29ycmVzcG9uZCB0byAnbGluayBz
dGF0ZScuIFNvIGhvdyBhYm91dCwKPiA+IHBoeV9ub3RpZnlfbGlua19zdGF0ZSgpPwo+ID4gCj4g
PiBzL3BoeS9QSFkgKGhlcmUgYW5kIGJlbG93KQo+ID4gCj4gPiA+ICsgKiBAcGh5OiB0aGUgcGh5
IHJldHVybmVkIGJ5IHBoeV9nZXQoKQo+ID4gPiArICogQHN0YXRlOiB0aGUgbGluayBzdGF0ZQo+
ID4gPiArICoKPiA+ID4gKyAqIE5vdGlmeSB0aGUgcGh5IG9mIHNvbWUgUE0gbGluayBzdGF0ZSB0
cmFuc2l0aW9uLiBVc2VkIHRvIG5vdGlmeSBhbmQKPiA+IAo+ID4gTGluayBzdGF0ZSBjaGFuZ2Ug
aXMgY29tbW9uIGZvciB0aGUgUEhZLiBTbyByZW1vdmUgJ1BNJy4KPiAKPiBJcyBpdCByZWFsbHkg
bGluayBvciBwaHkgc3RhdGU/Cj4gCgpUaGlzIGlzIGEgYml0IG9mIGFtYmlndWl0eS4gQnV0IGFz
IHBlciB0aGUgc3BlYywgSGliZXJuOCBpcyB0aGUgbG93IHBvd2VyIHN0YXRlCm9mIHRoZSBNLVBI
WSBhbmQgVW5pcHJvIGNvbnRyb2xsZXIuCgpNYXliZSwgcGh5X25vdGlmeV9zdGF0ZSgpPwoKPiA+
IAo+ID4gPiArICogY29uZmlndXJlIHRoZSBwaHkgYWNjb3JkaW5nbHkuCj4gPiA+ICsgKgo+ID4g
PiArICogUmV0dXJuczogJTAgaWYgc3VjY2Vzc2Z1bCwgYSBuZWdhdGl2ZSBlcnJvciBjb2RlIG90
aGVyd2lzZQo+ID4gPiArICovCj4gPiA+ICtpbnQgcGh5X25vdGlmeV9wbXN0YXRlKHN0cnVjdCBw
aHkgKnBoeSwgZW51bSBwaHlfbGlua3N0YXRlIHN0YXRlKQo+ID4gCj4gPiBJIHRoaW5rIHlvdSBu
ZWVkIHRvIHVzZSAnaW50IHN0YXRlJyBhbmQgbGV0IGRyaXZlcnMgcGFzcyB0aGVpciBvd24gbGlu
ayBzdGF0ZQo+ID4gdmFsdWVzLiBZb3UgY2Fubm90IGhhdmUgZ2VuZXJpYyBsaW5rIHN0YXRlcyBh
Y3Jvc3MgYWxsIHBlcmlwaGVyYWxzLgo+IAo+IEkgd291bGQgYXZvaWQgdGhhdCwgcGVvcGxlIHN0
YXJ0IG92ZXJsb2FkaW5nIHRoaXMgaWYgd2UgbGV0IGl0IGtlZXAKPiBvcGVuISBJIHdvdWxkIGxp
a2UgdG8gYXZvaWQgdGhlIGFwaSAtKGFiKXVzZQo+IAoKVGhlbiB3ZSB3aWxsIGVuZCB1cCB3aXRo
IHBlcmlwaGVyYWwgc3BlY2lmaWMgZW51bXMgaW4gaW5jbHVkZS9saW51eC9waHkvcGh5LmguCklm
IHlvdSBhcmUgT0sgd2l0aCB0aGF0LCBmaW5lIHdpdGggbWUuCgotIE1hbmkKCi0tIArgrq7grqPg
rr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgt
cGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
