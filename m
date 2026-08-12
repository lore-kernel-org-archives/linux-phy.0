Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91F21C5B572
	for <linux-phy@archiver.kernel.org>; Wed, 12 Aug 2026 13:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAAT4SMSge8oQ+vbRZuiU9iNPOUd+k8ZDUgyLobJZoE=; b=SPFk+VwDAyEtlO
	ibqrBe3Hi3VzkAOjm3D5nkptIMHpw3U/hd6x9uiBbaOmT92LVudMysdbEj4Grkk9mqKQhpAUHEhDk
	asmc3OTz2tO1UbPA8daKiTsHObEzxn46pjdKH5KA2B7DsWd+3MlGaHPFS0dSoqn/ccZ84kE8UOYWY
	Nmt+LWEgS8aZiIK8hMuauEANe+yKEJDBZ9tCaABubQAIdWIfbDOJwhCJxaS83y7TeHJ26soJKoJql
	mjK1qkUyGMSv+R1Hmj8Ipq8drCzi9CBs18gnKBXyq4B65/6HD/hhJ4RYA+gnkOI8kwlMsiQc8yGkS
	OF4wehQYwPtyMFdjOpmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu94N-0000000GIT0-1AZy;
	Wed, 12 Aug 2026 13:32:35 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu94L-0000000GIRy-2vu3;
	Wed, 12 Aug 2026 13:32:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1219D6136F;
	Wed, 12 Aug 2026 13:32:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F2E11F000E9;
	Wed, 12 Aug 2026 13:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786541552;
	bh=FHP2adXMKime99fuV2vPCh1LzH4rU7kufd/f7lfaEnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NpavJL8RPxuNJNu1SBs6w918KEO6ukKSW8Yr9b/sBXY1tKAiORrsy8wHkCioJ9mG0
	 AI1YnPz1VkTha8o9/c+ywk6S0XYF+NQ3dEIGv1otvYPcWGlJsiJejKBtCNi/KsmSAn
	 OxtVJdQftYcSEikfEmlG9IQ8XM4mWTuG/99dE//Kns7WWWxNdo+ESzfQ4+Kcl1KFje
	 h0Tm5Y5kT0UDsu+m43ZrLjB8RcextlNlh2hC7VOsTV5DBfMpw/J++D/wl/sgU1YKUO
	 eurYC0DBCLiHBfZBbjxs9LHMumQKPr2NlSaF6mEfbg/7hiVu+CHxB0bp6XL9PdFCAu
	 4aVIYtH4ZL6zQ==
Date: Wed, 12 Aug 2026 15:32:24 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-phy@lists.infradead.org, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek USB3 PHY DRIVER" <linux-mediatek@lists.infradead.org>, 
	"open list:ARM/Mediatek SoC support" <linux-kernel@vger.kernel.org>, 
	"open list:KERNEL HARDENING (not covered by other areas):Keyword:b__counted_by(_le|_be)?b" <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH] phy: mediatek: tphy: simplify main allocation
Message-ID: <djjg6jwpuu6l5wcc7zbxfi7j4n5hircmhivxohdtgufzrp6rlb@l6eyfdyfrxix>
References: <20260304041400.7236-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304041400.7236-1-rosenp@gmail.com>
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

T24gVHVlLCBNYXIgMDMsIDIwMjYgYXQgMDg6MTQ6MDBQTSAtMDgwMCwgUm9zZW4gUGVuZXYgd3Jv
dGU6Cj4gVXNlIGEgZmxleGlibGUgYXJyYXkgbWVtYmVyIHRvIHJlcGxhY2Uga3phbGxvYyArIGtj
YWxsb2Mgd2l0aCBhIHNpbmdsZQo+IGt6YWxsb2MuCj4gCj4gU2h1ZmZsZWQgc29tZSBjb2RlIGFy
b3VuZCBhcyBfX2NvdW50ZWRfYnkgcmVxdWlyZXMgdGhlIGNvdW50aW5nIHZhcmlhYmxlCj4gdG8g
YmUgYXNzaWduZWQgZmlyc3QuCj4gCj4gUmVtb3ZlZCBOVUxMIGNoZWNrIGZyb20gb2ZfZ2V0X21h
dGNoX2RhdGEgYXMgaXQncyBuZXZlciBOVUxMIHBlciB0aGUKPiBkZXZpY2UgdGFibGUuCj4gCgpQ
bGVhc2UgZG8gbm90IGNvbWJpbmUgbXVsdGlwbGUgZml4ZXMgaW4gYSBzaW5nbGUgcGF0Y2guIEFs
c28sIHRoZSBOVUxMIGNoZWNrIGNhbgpiZSBrZXB0IGZvciB0aGUgY2FzZSBvZiBzYW5pdHkgYXMg
aXQgd291bGRuJ3QgaHVydC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCv
jSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
