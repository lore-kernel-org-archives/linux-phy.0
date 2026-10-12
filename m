Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06694CA9ED1
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irltmiDNjnytNqQNy6+dumw/AmCjzJVKTqqcUQ1yQAY=; b=iz126K5p+kfBL/
	S8WUjU2gb3LvFl5Oaq2NGf7FPhRQ05WJAO5E9iTbAGbn+Cu9aSQvDg3VPLiZkpzGns4TVSi/ZXCHf
	7xF6fZV0DECTbOJ9Y0t/kiKzL4dudq1hul9xETSxl+1aPR1TxgejEkC8G0v01Dt4fUqXVbrUxnZVU
	ry9JVKfu3cuJDfn9KSE8MQS2pG+ADZOSL+CHgjf7x8uzCSxdKD9g8jspAVbwQN32SUzQZIqw9fiSV
	YCODmqdWlcy+vHlXzvof+Mg/EVUpoJovj4nCeygp7SHTHiovi2ivbdJS0E06Po2hgqeQP5kmgfIzK
	9oF3IUzHCDpIUjH+6xfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIdD-0000000AvXP-2xjX;
	Mon, 12 Oct 2026 16:12:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIdC-0000000AvX8-3a29;
	Mon, 12 Oct 2026 16:12:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9B1D543CDD;
	Mon, 12 Oct 2026 16:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 409281F0089B;
	Mon, 12 Oct 2026 16:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821526;
	bh=dwOf8Dc4TxSx32WOzwSp7Q6nGhu/G9ZRjwK/NvjcHHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BLngqW/i/yi7ouv1qN2l4qytDHWZGEsgW9NgpRR52R9+cyCj/rmsP5IvvkOB+5vQG
	 R484XftbLYU9MiKQ9XKPIewGqbjy8WBgpeGCwosXf9nvFqxtfXY2V7h1uvRYbw/M8U
	 Sxp15CxL6AIr1cVFAkS6AO0wvrFJ1wYIx1ydRFdIjrAHFCmf/5QB2zGf68tf8gq7Jy
	 5OiFbxE/1SqAf4w0i5kg5CY1N1cxunIJUwZj9G4DM/cvLZdkp/nkgzF7aHVUiLEQuJ
	 1OZGsZq3J7G8FOUYnO2yAUWC7fRgyZu3qgMtmFG+lJiggWml6+EAX4lIkXs0JlzgSV
	 7p0q1lM1JO32g==
Date: Mon, 12 Oct 2026 21:41:57 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: bivvy.bi@rock-chips.com, heiko@sntech.de, kishon@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: rockchip: inno-dsidphy: Fix runtime PM leak in
 inno_dsidphy_power_on()
Message-ID: <as0GyAtxP7a0oqrB@debian>
References: <20260917134627.2153845-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917134627.2153845-1-vulab@iscas.ac.cn>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDE6NDY6MjdQTSArMDAwMCwgV2VudGFvIExpYW5nIHdy
b3RlOgo+IGlubm9fZHNpZHBoeV9wb3dlcl9vbigpIHJlc3VtZXMgdGhlIGRldmljZSB3aXRoIHBt
X3J1bnRpbWVfZ2V0X3N5bmMoKSwKPiBidXQgdGhlIGRlZmF1bHQgY2FzZSBvZiB0aGUgbW9kZSBz
d2l0Y2ggcmV0dXJucyAtRUlOVkFMIHdpdGhvdXQKPiBkcm9wcGluZyB0aGF0IHJlZmVyZW5jZS4g
IFRoZSBtYXRjaGluZyBwbV9ydW50aW1lX3B1dCgpIGxpdmVzIGluCj4gaW5ub19kc2lkcGh5X3Bv
d2VyX29mZigpLCB3aGljaCB0aGUgUEhZIGNvcmUgZG9lcyBub3QgcnVuIHdoZW4KPiBwb3dlcl9v
bigpIGZhaWxzLgo+IAo+IFJlbGVhc2UgdGhlIHJ1bnRpbWUgUE0gcmVmZXJlbmNlIGJlZm9yZSBy
ZXR1cm5pbmcuCj4gCj4gRml4ZXM6IGI3NTM1YTNiYzBiYSAoInBoeS9yb2NrY2hpcDogQWRkIHN1
cHBvcnQgZm9yIElubm9zaWxpY29uIE1JUEkvTFZEUy9UVEwgUEhZIikKPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IFdlbnRhbyBMaWFuZyA8dnVsYWJAaXNjYXMu
YWMuY24+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNh
ZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
