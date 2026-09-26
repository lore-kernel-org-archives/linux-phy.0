Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49D26C98318
	for <linux-phy@archiver.kernel.org>; Sat, 26 Sep 2026 04:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6sV1qcQpuKr7FNtOq0EFDnHEhfLovktLwoTlaQiQJM=; b=DTiksjk5vUdqSW
	hMw/C75lRG4bZdKQ3g2RsLMbx5ISY85rW2kGrzogOeSrT4ya5a0R+N372NCfAtZuecKOt2Hnu9SzC
	bW0Qilv+uommpRVi9aJEXFJ+iBwowyxwcoqNzjTf1i04LNS+8rdLWmTK8/3528gHw3gqiAXkx8KWK
	ufOjh1H6djwN6HQcgLHn9xa/rYISNUzMYY/pnbvQwBRqAf+uT8nDmVZAPno3bhy94sAtL292vP1y0
	qaW1jZAvl/vTsgsMir+zZiapStNxlLp/xwef1SR7mY0G1lRAaNpBme61NDOZsBqFhdvD98kuiaaK6
	gCPykDn+A4WUHfnWTT/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAK23-0000000Ex5H-3vUY;
	Sat, 26 Sep 2026 04:29:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAK22-0000000Ex4f-49ne;
	Sat, 26 Sep 2026 04:29:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5AEDC43F9A;
	Sat, 26 Sep 2026 04:29:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB011F000FF;
	Sat, 26 Sep 2026 04:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790396942;
	bh=boCS0SjFdnwWnbkE5+zTwiuOZv4ydq9+oFzVHWADI/0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TKhnyb6h2ZXJuRPB7K6KSjYmrAU0t8F8802JIMaGkYXTN1UnVX95iG270wGedFOFB
	 OjD6OxumDMzEvCVgTvyZ26ktX2/yqIwilYPSa+gJdFsTRSNX5qefzMlMSCnDsx4Vrr
	 +uAhHNZWotyyYVSqsUYxMAIwzgmT58tKMTOIckzCBnOXX67mC61AMhNGAz3EYFtuh8
	 HUWHcMfdFv/MK7sxsB3NmrKeLBbrR2rhwGXD/dfjb6hQmTLr3z0gRdUleI6HYDsorL
	 ypNAdQuwwpqGRNMTC8FgiHLUoqQtzyZXcq6IKLegWdzWoNET0/1BbYubCck+P3poZS
	 YSpwL+UzM0iUg==
Date: Sat, 26 Sep 2026 06:28:42 +0200
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
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 16/16] phy: rockchip: usbdp: Register DP aux bridge
Message-ID: <ti26a3uyhfftlkhojhv56gxi3wzfeo7wj6a6rbm5eyqwgrxyxm@snn2psfln6d2>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-16-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-16-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NTA6MDNQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gQWRkIHN1cHBvcnQgdG8gdXNlIFVTQi1DIGNvbm5lY3RvcnMgd2l0aCB0aGUg
RFAgYWx0bW9kZSBoZWxwZXIgY29kZSBvbgo+IGRldmljZXRyZWUgYmFzZWQgcGxhdGZvcm1zLiBU
byBnZXQgdGhpcyB3b3JraW5nIHRoZXJlIG11c3QgYmUgYSBEUk0KPiBicmlkZ2UgY2hhaW4gZnJv
bSB0aGUgRGlzcGxheVBvcnQgY29udHJvbGxlciB0byB0aGUgVVNCLUMgY29ubmVjdG9yLgo+IEUu
Zy4gb24gUm9ja2NoaXAgUkszNTc2Ogo+IAo+IHJvb3RAcmszNTc2ICMgY2F0IC9zeXMva2VybmVs
L2RlYnVnL2RyaS8wL2VuY29kZXItMC9icmlkZ2VzCj4gYnJpZGdlWzBdOiBkd19kcF9icmlkZ2Vf
ZnVuY3MKPiAgICAgICAgIHJlZmNvdW50OiA3Cj4gICAgICAgICB0eXBlOiBbMTBdIERQCj4gICAg
ICAgICBPRjogL3NvYy9kcEAyN2U0MDAwMDpyb2NrY2hpcCxyazM1NzYtZHAKPiAgICAgICAgIG9w
czogWzB4NDddIGRldGVjdCBlZGlkIGhwZAo+IGJyaWRnZVsxXTogZHJtX2F1eF9icmlkZ2VfZnVu
Y3MKPiAgICAgICAgIHJlZmNvdW50OiA0Cj4gICAgICAgICB0eXBlOiBbMF0gVW5rbm93bgo+ICAg
ICAgICAgT0Y6IC9zb2MvcGh5QDJiMDEwMDAwOnJvY2tjaGlwLHJrMzU3Ni11c2JkcC1waHkKPiAg
ICAgICAgIG9wczogWzB4MF0KPiBicmlkZ2VbMl06IGRybV9hdXhfaHBkX2JyaWRnZV9mdW5jcwo+
ICAgICAgICAgcmVmY291bnQ6IDUKPiAgICAgICAgIHR5cGU6IFsxMF0gRFAKPiAgICAgICAgIE9G
OiAvc29jL2kyY0AyYWM1MDAwMC90eXBlYy1wb3J0Y0AyMi9jb25uZWN0b3I6dXNiLWMtY29ubmVj
dG9yCj4gICAgICAgICBvcHM6IFsweDRdIGhwZAo+IAo+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0
cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92
aWMgPHJveWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9m
Zi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+
CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
