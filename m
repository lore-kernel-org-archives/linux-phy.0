Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 119D0C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fINbzmWAdXBerDmuO376FTcJFAf3wF8p1DN9fc17H5Y=; b=4Gm+8xnZD6njsY
	w6cjcPViu3X5EbD6Z+L9L9wIhR/AIFoXVhr02ImR28NS+Ufssefkmw+Aq/X+Z4YFfHYujZl9sgX4+
	ipp+AzD5LOPI2Z/IVqWwikbX+KjBAuoSP1d66u+H8y012vgoIsoKbHivOEewQT1UPchhCtgndveSz
	LRfMffo94GUkJo3SVNgDz2g+y5wNvmcruxS76r3bNyYN3+/8sDzW+XTGCSGyHfMKuKOIusdF+iN4N
	2hFzPdkD6YtqUuITB9MfmW7nv6yLSg28qNdC602UT+zyXk5qIPrOZX5yzuUyOH1XusBvIVAxz/gCE
	rkkukoM3N+l7CBRHxsfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK7f-000000082aX-3D3N;
	Fri, 07 Aug 2026 12:56:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK7e-000000082a2-1uP2;
	Fri, 07 Aug 2026 12:56:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D5657439FA;
	Fri,  7 Aug 2026 12:56:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73D4B1F00A3A;
	Fri,  7 Aug 2026 12:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786107385;
	bh=o/V/eUIAYvFRAwHyTDwSmmDXMCaDWZ4d4aBd3yJ8PwY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MGTDKLfa4ZMnFnTSJpt1Df6H1O3MtZTpzMiQnrDqlwyWzm0GASnS16+Kku9zLlNVo
	 Aw1ZCwpzEVXw25IJibmhV8sM31m7H2Mde3r3CihGuF0Xdvnt7aJyou1oHgbg6bNEb9
	 LbVv5/hX2jZGHgedeZwyBpKgzI+nADYmBaRbiaqCXgIHubHIOQzWDWILb+BJrYKWHe
	 AdXUuNMVBeW+4JvzFaVPOK65Uf1MkXq8mgrYYRoMKQeE7tNG/E28clImc58mWiTHmu
	 z8tT280+Kba7RWDIpxyn0m6hgwAPhao0xPJkx/ON0rXIOU8DdYMl7pMnWhd/0JUhJW
	 B+Jm5RTb7/xmg==
Date: Fri, 7 Aug 2026 14:56:15 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>, 
	Diederik de Haas <diederik@cknow-tech.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v5 02/10] phy: rockchip: samsung-hdptx: Prevent
 divide-by-zero when computing clk rate
Message-ID: <qe6i5bvrn32xmwncl4zq3f5w6twpwfwvq5alaacsceq3vxn3nt@mbeytagr77j3>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-2-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-2-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NDVQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IENhbGN1bGF0aW5nICdzZG0nIGZyYWN0aW9uIGluIHJrX2hkcHR4X3BoeV9j
bGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZygpCj4gY291bGQgdHJpZ2dlciBhIGRpdmlkZS1ieS16
ZXJvLCBhcyBpdCB1c2VzIGRpdl91NjQoKSB3aXRoIGEgZGVub21pbmF0b3IKPiByZWFkIGRpcmVj
dGx5IGZyb20gaGFyZHdhcmU6IHRoZSB2YWx1ZXMgcm9wbGxfaHcuc2RtX2Rlbm8sCj4gcm9wbGxf
aHcuc2RjX2Rlbm8sIHJvcGxsX2h3LnNkY19uLCBhbmQgcm9wbGxfaHcuc2RjX251bSBhcmUgcG9w
dWxhdGVkCj4gZnJvbSBQTEwgcmVnaXN0ZXJzIHdoaWNoLCBpbiB0aGVvcnksIGNvdWxkIGJlIGxl
ZnQgYnkgdGhlIGJvb3Rsb2FkZXIKPiB1bmluaXRpYWxpemVkL21pc2NvbmZpZ3VyZWQuCj4gCj4g
UHJvdmlkZSB0aGUgbmVjZXNzYXJ5IHNhbml0aXphdGlvbiB0byBhdm9pZCB0cnVzdGluZyB0aGUg
aGFyZHdhcmUgc3RhdGUuCj4gCj4gUmVwb3J0ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28tYm90QGtl
cm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2
MTEtaGRwdHgtY2xrLWZpeGVzLXYzLTAtNjdiMWIwYzAwZTE2QGNvbGxhYm9yYS5jb20/cGFydD0x
Cj4gRml4ZXM6IDM0ODFmYzA0ZDk2OSAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IENv
bXB1dGUgY2xrIHJhdGUgZnJvbSBQTEwgY29uZmlnIikKPiBUZXN0ZWQtYnk6IERpZWRlcmlrIGRl
IEhhYXMgPGRpZWRlcmlrQGNrbm93LXRlY2guY29tPiAgIyBOYW5vUEMtVDYgTFRTCj4gUmV2aWV3
ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNv
bT4KPiBSZXZpZXdlZC1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxh
Ym9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1z
dW5nLWhkcHR4LmMgfCAxMSArKysrKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwo+IGluZGV4IDcxMDYwM2FmZmY4Ni4uNDRlOTkz
NDNmMjQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1z
YW1zdW5nLWhkcHR4LmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
c2Ftc3VuZy1oZHB0eC5jCj4gQEAgLTIyNzAsMTAgKzIyNzAsMTUgQEAgc3RhdGljIHU2NCBya19o
ZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJrX2hkcHR4X3BoeSAq
aGRwdHgpCj4gIAo+ICAJZm91dCA9IFBMTF9SRUZfQ0xLICogcm9wbGxfaHcucG1zX21kaXY7Cj4g
IAlpZiAocm9wbGxfaHcuc2RtX2VuKSB7Cj4gKwkJdmFsID0gMTZVICogcm9wbGxfaHcuc2RtX2Rl
bm8gKgo+ICsJCSAgICAgIChyb3BsbF9ody5zZGNfZGVubyAqIHJvcGxsX2h3LnNkY19uIC0gcm9w
bGxfaHcuc2RjX251bSk7Cj4gKwkJaWYgKCF2YWwpIHsKPiArCQkJZGV2X2RiZyhoZHB0eC0+ZGV2
LCAiSW52YWxpZCBST1BMTCBodyBzdGF0ZTogZGVubyA9PSAwXG4iKTsKCklmIHRoZSBoYXJkd2Fy
ZSBzdGF0ZSBpcyBpbnZhbGlkLCB3aHkgY2FuJ3QgdGhpcyBiZSBhIGhhcmQgZmFpbHVyZT8KCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
