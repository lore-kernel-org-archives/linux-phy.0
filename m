Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31679C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=id2a0l0N9n/Tfp4Hjkba6dyaoWHtNULH7Mh0TJ4LcHY=; b=vhEfODR5U8hMmR
	GAQs2D7+F9HCfvqSsprX1CjPhZERLuWFFRgY02DrbOn/iJGDgVS8lwlSqNO0q1C9To4tkemadfXme
	6qskAGU89AI2CgusHKZ/bkQZ5khAWil1vTn7cT5OwFUHUrk9zPbs3qCXeyLouqEh49J+j0xBlgT2K
	wGu02A7DrALFNfdAw1lcq0k4ss+dSf0eroe20hfeSVEEOOVZRtBXzYkvhMEqCk62NgeZGKw0dvr4I
	ZQnrdtNR4Ew4iAmzpRSN4bxVc/5eV2OoDeETA5+ZqwwzaIJzPAKt9qGov0+zL0WDFLMeMTT8eew+d
	X1r4ANxW1BtdzvtVWPJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K7I-0000000C82G-3dQP;
	Wed, 09 Sep 2026 15:21:40 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4K7H-0000000C81O-36Zk
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:21:39 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1A6D9601F1;
	Wed,  9 Sep 2026 15:21:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7B9881F00A3D;
	Wed,  9 Sep 2026 15:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788967298;
	bh=uGWFdqzb8bYvyWRbpjTJW+Qyf4vZQkcGd0eHszCLvzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=alH5dShJtqwV9Ubk9DHdNEsuCe6uAI/KFR4g3Z6MYpeWXB2h4QL4DkQm4aoDmM8jr
	 szVG/nzcrMZifEGUU0kphu53+vfKU56XejKoO7a3wb6epPFxRQ5TBbmiquD8drwlMH
	 MIyZMhsb1lAIv2fbxHpxsF8sLm4OOVOwDu8w4YI0Rpln+/e1/wisg8oVn7HLWL8D06
	 c09eLld9OZwLTJh0Nv08R5zWA1ARUG5NkuEINS4s5nRofRj1fPIa5Hp/jy/u3ZT24K
	 jbtAv8hlkSMuWDViRAKZQnVmkbqlvXKhmfLLaybR7OiV8eF3jEECD98dKPsNWEIwz7
	 eyiEuaV04cpRg==
Date: Wed, 9 Sep 2026 17:21:29 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v5 1/7] dt-bindings: phy: motorola,cpcap-usb: add
 chrg_det interrupt
Message-ID: <ac3a277xeybgvkcgo33jaspwp5hvwfysmnhbiy6hy2qfsfsleq@awfomjfn6fdu>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
 <20260711204210.197144-2-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711204210.197144-2-ivo.g.dimitrov.75@gmail.com>
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

T24gU2F0LCBKdWwgMTEsIDIwMjYgYXQgMTE6NDI6MDRQTSArMDMwMCwgSXZheWxvIERpbWl0cm92
IHdyb3RlOgo+IERvY3VtZW50IHRoZSBvcHRpb25hbCBDUENBUCBjaGFyZ2VyIGRldGVjdGlvbiBp
bnRlcnJ1cHQgaW4gdGhlIFVTQiBQSFkKPiBiaW5kaW5nLgo+IAo+IFVwZGF0ZSB0aGUgZXhhbXBs
ZSBEVFMgdG8gaW5jbHVkZSB0aGUgY29ycmVzcG9uZGluZyAiY2hyZ19kZXQiIGludGVycnVwdAo+
IG5hbWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogSXZheWxvIERpbWl0cm92IDxpdm8uZy5kaW1pdHJv
di43NUBnbWFpbC5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
