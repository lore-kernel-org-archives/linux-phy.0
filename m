Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 880F6C4453A
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 02:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LW2EE42v7IPctanpMd/sVSiCyrQXA/DvD04lqgIkR2Y=; b=Lzoah1/29/EP4z
	qZ3H6QTDP3mtyMgv2tFD8Fqx23kVrazPmm0i17BvDW8YhgziiDzq+HcvyFFzxsibuPcz15IQovfZI
	BTTyUcSEwNv59YSdDGn26R7/BHXMc3KoNEg6f04XguHtlzA2nEaDLr+yXzi02LSRNmIYI1tE27OrS
	dampImjji/wBcEQ9DsyzW6if/apsEKXbv2zaoyXDq7jqPx+tecHuZPvyEYi4mY5fKUuzBaWIXskoo
	Eyx5DwE8EJWZGbkVilJgg4Z5Wvx/6XvaW2pArRdq+6e15CNbTKvb3jiG2bIeluKXStAakwvOQlsZ6
	P/GoCDRSwV1jmy0YQqfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjRe-0000000DFqY-0k5e;
	Thu, 23 Jul 2026 02:45:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmjRc-0000000DFqO-0ni0
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 02:45:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 16EB5600AD;
	Thu, 23 Jul 2026 02:45:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 400FD1F000E9;
	Thu, 23 Jul 2026 02:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784774754;
	bh=tkW1weYwa57KGnVEv5rR7OPZS90dqSWov9q/bvtDZFk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kb6YUxnyikjgUTqDuwxvIW3Gncw+dO+DX/DvJ6WhTnKnBRTOIS/f9BZLc2Wrf037N
	 uXNbbpll/N4CaOCKpac77E9OIo2ER33D3tIrGyvsQwMllusdHLzqf84UVeQwWAuMMt
	 5lUMAT7R747DqndznGwZC1WkIubfypN0odLiJdnrg6MEYIIjL+OGH0LMCGULHzCsPT
	 YOgOb3wE9o/MTRl7TjkQHTyPuzfDXeW0dyqrM8O68lqnV6XEkalrf1VM6Soh7jHTa9
	 NuZeIwimSMUmK68+oO6++UmnaHpEELrL/J9KhiVul1UbHMDTbTXPyrw047i93n1zZR
	 aPuW/8dRVrkDw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: mahua: Replace
 pcie3a/pcie3_phy with dedicated pcie3b_phy
To: "Qiang Yu" <qiang.yu@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260722-glymur_linkmode_0722-v6-5-bba8156b8cbb@oss.qualcomm.com>
References: <20260722-glymur_linkmode_0722-v6-0-bba8156b8cbb@oss.qualcomm.com>
 <20260722-glymur_linkmode_0722-v6-5-bba8156b8cbb@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 02:45:53 +0000
Message-Id: <20260723024554.400FD1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG5ld2x5IGFkZGVk
IGBwY2llM2JfcGh5YCBub2RlIGxhY2tzIHRoZSBgdmRkYS1waHktc3VwcGx5YCBhbmQgYHZkZGEt
cGxsLXN1cHBseWAgcHJvcGVydGllcywgd2hpY2ggd2lsbCB0cmlnZ2VyIGBkdGJzX2NoZWNrYCBl
cnJvcnMuCi0tCgotLS0gUGF0Y2ggWzVdOiBbUEFUQ0ggdjYgNS82XSBhcm02NDogZHRzOiBxY29t
OiBtYWh1YTogUmVwbGFjZSBwY2llM2EvcGNpZTNfcGh5IHdpdGggZGVkaWNhdGVkIHBjaWUzYl9w
aHkgLS0tCmNvbW1pdCA5MTliY2ZjNWE2NmFjODg0OTYyODc5ZGE4ZTU3Zjg1NTk1OTVkY2RmCkF1
dGhvcjogUWlhbmcgWXUgPHFpYW5nLnl1QG9zcy5xdWFsY29tbS5jb20+Cgphcm02NDogZHRzOiBx
Y29tOiBtYWh1YTogUmVwbGFjZSBwY2llM2EvcGNpZTNfcGh5IHdpdGggZGVkaWNhdGVkIHBjaWUz
Yl9waHkKClRoaXMgcGF0Y2ggcmVtb3ZlcyB0aGUgdW51c2VkIHBjaWUzYSBhbmQgc2hhcmVkIHBj
aWUzX3BoeSBub2RlcyBmcm9tIHRoZSAKTWFodWEgZGV2aWNlIHRyZWUsIGFzIGl0IG9ubHkgdXNl
cyBQQ0llM2IuIEl0IHJlcGxhY2VzIHRoZW0gd2l0aCBhIGRlZGljYXRlZCAKcGNpZTNiX3BoeSBu
b2RlIHVzaW5nIHRoZSBleGlzdGluZyBHZW41eDQgUEhZIGNvbXBhdGlibGUsIGFuZCB1cGRhdGVz
IHRoZSAKR0NDIHBpcGUgY2xvY2sgcGFyZW50IGFuZCBQQ0llM2IgcG9ydCBwaHkgcmVmZXJlbmNl
cyBhY2NvcmRpbmdseS4KCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9t
YWh1YS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21haHVhLmR0c2kKPiBpbmRleCAy
MjgyMmI2YjJlOGI5Li4zMjgwZWI5NmQ2MWMwIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcWNvbS9tYWh1YS5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL21h
aHVhLmR0c2kKWyAuLi4gXQo+IEBAIC0xMzQsNiArMTg2LDQzIEBAICZwY2llX3dlc3Rfc2x2X25v
YyB7Cj4gIAljb21wYXRpYmxlID0gInFjb20sbWFodWEtcGNpZS13ZXN0LXNsdi1ub2MiOwo+ICB9
Owo+ICAKPiArJnNvYyB7Cj4gKwlwY2llM2JfcGh5OiBwaHlAMWI5MDAwMCB7Cj4gKwkJY29tcGF0
aWJsZSA9ICJxY29tLGdseW11ci1xbXAtZ2VuNXg0LXBjaWUtcGh5IjsKPiArCQlyZWcgPSA8MHgw
IDB4MDFiOTAwMDAgMHgwIDB4MTAwMDA+OwoKW1NldmVyaXR5OiBMb3ddCkRvZXMgdGhpcyBub2Rl
IG5lZWQgdG8gZGVmaW5lIHZkZGEtcGh5LXN1cHBseSBhbmQgdmRkYS1wbGwtc3VwcGx5PwoKVGhl
IHFjb20sZ2x5bXVyLXFtcC1nZW41eDQtcGNpZS1waHkgY29tcGF0aWJsZSByZXF1aXJlcyB0aGVz
ZSBwcm9wZXJ0aWVzCmFjY29yZGluZyB0byB0aGUgYmluZGluZ3Mgc2NoZW1hLiBXaXRob3V0IHRo
ZW0sIHRoaXMgbWlnaHQgdHJpZ2dlcgpzY2hlbWEgdmFsaWRhdGlvbiBmYWlsdXJlcyBkdXJpbmcg
bWFrZSBkdGJzX2NoZWNrLgoKPiArCj4gKwkJY2xvY2tzID0gPCZnY2MgR0NDX1BDSUVfUEhZXzNC
X0FVWF9DTEs+LApbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNo
aWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIyLWdseW11cl9saW5rbW9kZV8wNzIyLXY2LTAtYmJh
ODE1NmI4Y2JiQG9zcy5xdWFsY29tbS5jb20/cGFydD01CgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
