Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57863C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 16:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdUFdWgB7Q8T9kyxVT6Haqd2Qu0U0v6/zSuHRgCdbEo=; b=Z5XKgqF78wUB6B
	2yYAiGjCcfnNWQ78NG78px0rkg1rzJX/KqxB/uhDiWoXI36R81HuPZcrk76hKQJAnh32j1kPuHUOm
	nm4h9ivc0B9enaAYZUaoI1DgK7jj9DIwLiYWyG3PU5XGJlQiujfECVilaHheBPfzrs/d6YTVRX/7Q
	gZtw741EvpU3B9ovpWezWmdrrzPqqc9bX90iT9+t0dqKPlGAdgo8K7KCNIc4H5Mxi8FpEN1UB9Q3v
	KkfP1eWbJAaigSYopkkuaKqF8xLcd5wQfDeSDSX0LysO78GTKRG7GPRgpX+ozfTZltUuGacr+mxaq
	HsZJwzUE22jusw/k8qLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KwQ-0000000CHL1-3hkL;
	Wed, 09 Sep 2026 16:14:30 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KwP-0000000CHKp-1BQx
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 16:14:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 95A7B601F1;
	Wed,  9 Sep 2026 16:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4AD611F000FF;
	Wed,  9 Sep 2026 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788970467;
	bh=rbdm5hDsbnlk0c+hSr2Azc2QmffaDxhfieJZMMkSDhI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ir0VIni2MAQQSr1ASJW77hBN5FPBDaHBUKiEFwzfpt91x5QMTUtoz+k+7dVYsdvV5
	 wQzX1UqjjskvLtizq+PZ1oCKyLscJB78MXIknFchyDSh8LmYtL9nIBfd+52eD8+qQx
	 EYOmyKRz0ou1ZZIR+7hIN9CHW3mT/y5zh3SQohp1AJTUp6wK+aAWfk+TT9ird3aWcM
	 ZVNi+1/OIiPw7WF3oWfwwJkZbme80yvgowhY833HN7J5bdzQFDAlQdUERF5yQo2OvN
	 m+GoHLWHwGcJFOtQ9zYSqXWz2TdYXCzoV7dOxwrpggKY/P97h+Z9+Ln71MhUGAXGGb
	 WW5SsAJ1k5mRg==
Date: Wed, 9 Sep 2026 18:14:12 +0200
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
Subject: Re: [PATCH v5 5/7] phy: cpcap-usb: add extcon support
Message-ID: <b7m36qi3rute5q3rmrfq4kp2fu5mfohgw64z6biq35aedts7ys@wbuekxxyz4ya>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
 <20260711204210.197144-6-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711204210.197144-6-ivo.g.dimitrov.75@gmail.com>
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

T24gU2F0LCBKdWwgMTEsIDIwMjYgYXQgMTE6NDI6MDhQTSArMDMwMCwgSXZheWxvIERpbWl0cm92
IHdyb3RlOgo+IFJlZ2lzdGVyIGFuIEV4dGNvbiBkZXZpY2UgYW5kIHJlcG9ydCB0aGUgZGV0ZWN0
ZWQgY2FibGUgc3RhdGUuCj4gCj4gVGhlIGRyaXZlciBhbHJlYWR5IGRldGVybWluZXMgdGhlIHR5
cGUgb2YgY2FibGUgYXR0YWNoZWQgZHVyaW5nIFVTQiBjYWJsZQo+IGRldGVjdGlvbi4gRXhwb3J0
IHRoZSBkZXRlY3RlZCBzdGF0ZSB0aHJvdWdoIHRoZSBFeHRjb24gZnJhbWV3b3JrIHNvCj4gb3Ro
ZXIgZHJpdmVycyBjYW4gY29uc3VtZSBpdCB1c2luZyBhIHN0YW5kYXJkIGtlcm5lbCBpbnRlcmZh
Y2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogSXZheWxvIERpbWl0cm92IDxpdm8uZy5kaW1pdHJvdi43
NUBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
