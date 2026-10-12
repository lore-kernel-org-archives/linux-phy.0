Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6FD5CA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DILEYIRcITt9wOJiYfuU9dQ89sh1393fNQsOGHTRYQ=; b=EfoDjSe40C61aK
	xievgjsUd1cHkEB9ALXKFwz5u8ZJW6J5Wh+T0tcB0hxHS0cOvC+L4edumOVqgbMjC81HK3N3zrx3z
	4Vu470wM33ayB1evxb67iEfKHkh61TPR2BxKtwxBgyKMtY4MQIUU2bBC7GpCfxRWIfHYiiWIkPhD5
	yPccLIKsVR8nXK0FYQPA3IHnUDEz0hvHSVwT0W3LPFObilOHqWtuwvDLFm/lTQRrKa6b65OAQKclH
	W2K95ytVrhTkqNeO+VxY38dW8L3xv5DM5WcfLNN0ggI6gZoahK565UyAmPzfr1Rwksbf9gDb5X1zT
	cPFrXdNEKRj2M2RDmVLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIbr-0000000AvMC-1mFC;
	Mon, 12 Oct 2026 16:10:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIbp-0000000AvLp-3BZQ;
	Mon, 12 Oct 2026 16:10:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 84423433FB;
	Mon, 12 Oct 2026 16:10:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DDD11F0089B;
	Mon, 12 Oct 2026 16:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821441;
	bh=egAWEG+bcu6VYNzUqXMRIjdS7+btc7+MbL6C2aV6SSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mtVRV9EUFgxksJVwh0JMvqSXLlXVHyRMWLkDBXVhdfreiTfFMTdb0e2X87Td9gEZj
	 mwWc17HusNhEKQnUQ2C65paV7NO2Srk51v1zUs8zJBU89805gWgfKE3dH/Gh49djUf
	 LXY2lOlhVlAJrjkMoagIa/E/J/1EOxd1WZLQJfr8QimQAGATBsOH6A6aLn5uqZTRQe
	 qgFlEJxcHrMyCL66BLZb4g0NY5nBy9X1p7AMZma06E6cuGCnggOo+3Aa0xaTQbZuxR
	 XciZyo7h0rvm0Fi/bnEzEVNiMCEqvFn71TcdTcjmSnNG0NyCJljILaOb1Cx9A+qf9w
	 VkxoHG0hWDJXA==
Date: Mon, 12 Oct 2026 21:40:33 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: hpchen0nvt@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, 
	schung@nuvoton.com, vkoul@kernel.org, ychuang3@nuvoton.com, stable@vger.kernel.org
Subject: Re: [PATCH] phy: nuvoton: Fix clock reference leak in
 ma35_usb_phy_probe()
Message-ID: <as0GcwfgjRsI1O8N@debian>
References: <20260917134353.2153788-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917134353.2153788-1-vulab@iscas.ac.cn>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDE6NDM6NTNQTSArMDAwMCwgV2VudGFvIExpYW5nIHdy
b3RlOgo+IG1hMzVfdXNiX3BoeV9wcm9iZSgpIG9idGFpbnMgdGhlIFVTQiBQSFkgY2xvY2sgd2l0
aCBvZl9jbGtfZ2V0KCksIGJ1dAo+IHJldHVybnMgd2l0aG91dCBjYWxsaW5nIGNsa19wdXQoKSB3
aGVuIGRldm1fcGh5X2NyZWF0ZSgpIG9yCj4gZGV2bV9vZl9waHlfcHJvdmlkZXJfcmVnaXN0ZXIo
KSBmYWlscywgbGVha2luZyB0aGUgcmVmZXJlbmNlLiAgVGhlCj4gY2xvY2sgaXMgb25seSBtZWFu
dCB0byBiZSBrZXB0IG9uIHRoZSBzdWNjZXNzIHBhdGgsIHdoZXJlIGl0IGlzIHN0b3JlZAo+IGlu
IHBfcGh5LT5jbGsgYW5kIHVzZWQgYnkgdGhlIFBIWSBvcGVyYXRpb25zLgo+IAo+IERyb3AgdGhl
IHJlZmVyZW5jZSBvbiB0aG9zZSB0d28gZXJyb3IgcGF0aHMuCj4gCj4gRml4ZXM6IGI0OGJhZjY5
ZGI5NyAoInBoeTogbnV2b3RvbjogYWRkIG5ldyBkcml2ZXIgZm9yIHRoZSBOdXZvdG9uIE1BMzUg
U29DIFVTQiAyLjAgUEhZIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1v
ZmYtYnk6IFdlbnRhbyBMaWFuZyA8dnVsYWJAaXNjYXMuYWMuY24+CgpSZXZpZXdlZC1ieTogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNv
bT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXBoeQo=
