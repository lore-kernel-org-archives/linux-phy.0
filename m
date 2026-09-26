Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53133C9831E
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eP/q5AAqqGjwSVo464aUrURwLrr2DVeiwsk+iSr01E=; b=rYHnAw1767v7Vf
	IcsQn7pPewf31KhNWx+zLRU+7vTrTE2bK3TemFDbL1kgugLabEqhvTRpl12iCgedXb1AaGkM4ginG
	H80UqUlJH4i8G5oT7ncFi8E9ZEveSj1NcHHsnJSGhcUTbEBKsLXkQ7kPhzXqT9IzAV+5BM8mW907N
	rMyqT9Nx51Qpb8Ia6Mvl8qrpcKQ15jAmKy8bEH/bvlSOxkusWOj0iNqPph4gC8Tz8KM+ICTeRCwUf
	ja358eEE9tSU1CST9Q20e1g6H1tj1sR6zmyWvID2GOiZ3uzOWSmJS/kzamzj3agK+1CY1yKmWrG8I
	Y9vLHuRBBb/3nT8lsqzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJ9v-0000000EuX9-3RWG;
	Sat, 26 Sep 2026 03:33:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJ9t-0000000EuWN-1bY9;
	Sat, 26 Sep 2026 03:33:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C1388424AD;
	Sat, 26 Sep 2026 03:33:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B8821F000FF;
	Sat, 26 Sep 2026 03:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790393584;
	bh=xBq0wqS8ZLPavDCOyvU1lYPGX/xfQxgO7HPGHAPjgcI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MQuT/BjpuMRR8WZUmnI1eSoCv4GzAzAxru3zpCWCe69TcZwZLABAurhbK0B+eXlTt
	 27BYP7L3jvDgZ81ZDbgiS7bgjaNuV3TKANREe+B9HXka3inU2OPnTAksQGq8FvsJqy
	 y26kClKs6fySMLvAq3/+UKYmRXVJ+hxiqBVlQFCm5uNzDfSNPv2C1+NzvEpTsRK/12
	 pkzCm37Ey8SIDxgNnFvgvaJeWxaasfn69g/LviacM1v+rW/EDtw9aX2qdWFdBxhBGY
	 XUrJbo371T+EsKNjJYY7etEKwCtvZNaX4bRlFtjvQ+B38LNg5YmZqIAxxAr5Qrux02
	 YMkY+Wn74m3zw==
Date: Sat, 26 Sep 2026 05:32:46 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
Subject: Re: [PATCH v15 05/16] phy: rockchip: usbdp: Handle missing
 clock-names DT property gracefully
Message-ID: <pfqtqhvssmsxd23n5i3hps5nimqaqe7y65lakzmm2tc26lxc5o@zd2tvlp7vyuu>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-5-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-5-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTJQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVGhlIHJrX3VkcGh5X2Nsa19pbml0KCkgZnVuY3Rpb24gd291bGQgY3VycmVu
dGx5IHRyeSB0byBkbyBhIHN0cm5jbXAgZm9yCj4gYSBOVUxMIHBvaW50ZXIsIGlmIERUIHNwZWNp
ZmllcyAnY2xvY2tzJyBwcm9wZXJ0eSwgYnV0IG5vICdjbG9jay1uYW1lcycKPiBwcm9wZXJ0eS4g
Rml4IHRoaXMgYnkgbWFraW5nIHN1cmUgdGhlIGNsb2NrIGhhcyBhbiBpZCBzdHJpbmcgc2V0Lgo+
IAo+IE5vdGUgdGhhdCBEVCBiaW5kaW5nIHJlcXVpcmVzIHNldHRpbmcgY2xvY2stbmFtZXMsIHNv
IHRoaXMgaXMgb25seSBhCj4gcHJvYmxlbSB3aGVuIGJvb3RpbmcgYSBub24tY29tcGxpYW50IGRl
dmljZSB0cmVlLgo+IAo+IEZpeGVzOiAyZjcwYmJkZGViNDUgKCJwaHk6IHJvY2tjaGlwOiBhZGQg
dXNiZHAgY29tYm8gcGh5IGRyaXZlciIpCj4gUmVwb3J0ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28t
Ym90QGtlcm5lbC5vcmc+Cj4gQ2xvc2VzOiBodHRwczovL3Nhc2hpa28uZGV2LyMvbWVzc2FnZS8y
MDI2MDYxOTE1NDM0OS4wNzEzMjFGMDAwRTklNDBzbXRwLmtlcm5lbC5vcmcKPiBUZXN0ZWQtYnk6
IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVz
Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNv
bGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
