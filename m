Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0554DCA9ED0
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 16:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aNIOPu6IryZFBeaoQ90YZ+JoV2lW5YIP6odMTGSj0A=; b=GsAs5ABxkTRZR8
	E5VG6ukAnyq+oIsI3wEFNR32du7J7/x51SmKDM6fxq206+NbWjWOmT8jX5pkrlUyhn5ycJdFs7xn7
	oywses03bZ7fuUXgLEhG0hqTuMkEIwg8yjCbUzVMyHKaqhgXPH91CgKdLGTJnQQgZfy/lEX+qVfQu
	YHbQEerbQlm+E0tz4leOBIXEqpIv2UGxdnzBThzQPy+kpSzSaaWS8mxNREeIKo0exF2xvbE/psxhz
	7DS6MSwbEy28ggWEMr2NSB7LIyiNf+nMQJyCoqQfKJWfi5zrkxuFfI5eiG6EOIQYhUEJY86K84ZUS
	FoXANUrUnFM+TCZhm46g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIbI-0000000AvJ0-135f;
	Mon, 12 Oct 2026 16:10:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGIbG-0000000AvIp-2Pbt
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 16:10:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 028274046C;
	Mon, 12 Oct 2026 16:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 119031F0089B;
	Mon, 12 Oct 2026 16:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791821405;
	bh=7KAK9Ha46yxLOafPMgOcsQUsdwCoqPNAXO5r2ANiEQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Z2kIGQLb7uS/hU7K6MupmDTHy6YNB2rPp8yAil8KxKP8Tn44p84DOTVQjndtMwRhk
	 NriywCKuuT8jALq9NWpLq60bLDOZlcF4HnVWbUZfmHqKHnpB83P4ee1fY8YAi0fxpy
	 OfYEb+7Gv3MXbkNddTfJTRT9K6tXi1hfdCmhdAX8ONT5ZSIgRDJcpWmRhAqQC2XYfM
	 9ek4nOX5ol/A6C56sVB3mkdGKXIkrdJzNzWjDHtNebez1yluWQW/0zIPr8JqzLF2AE
	 nH9LOROEhdqFmFcQJ7ZE6LllAawk5JnZXqBw+Nxfm3npb262e302DBhKerCGXh2PVY
	 drOQx2Ubi924g==
Date: Mon, 12 Oct 2026 21:39:58 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Wentao Liang <vulab@iscas.ac.cn>
Cc: linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	mchehab+huawei@kernel.org, neil.armstrong@linaro.org, vkoul@kernel.org, 
	stable@vger.kernel.org
Subject: Re: [PATCH] phy: HiSilicon: Fix device node reference leak in
 hi3670_pcie_get_resources_from_pcie()
Message-ID: <as0GUIYPYYoyq00T@debian>
References: <20260917134144.2153731-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260917134144.2153731-1-vulab@iscas.ac.cn>
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

T24gVGh1LCBTZXAgMTcsIDIwMjYgYXQgMDE6NDE6NDRQTSArMDAwMCwgV2VudGFvIExpYW5nIHdy
b3RlOgo+IGhpMzY3MF9wY2llX2dldF9yZXNvdXJjZXNfZnJvbV9wY2llKCkgb2J0YWlucyB0aGUg
InBjaWUiIGNoaWxkIG5vZGUKPiB3aXRoIG9mX2dldF9jaGlsZF9ieV9uYW1lKCksIHdoaWNoIHRh
a2VzIGEgcmVmZXJlbmNlIG9uIHRoZSBub2RlLCBidXQKPiBuZXZlciByZWxlYXNlcyBpdDogYm90
aCB0aGUgIkRpZG4ndCBmaW5kIHBjaWUgZGV2aWNlIiBhbmQgdGhlICJGYWlsZWQKPiB0byBnZXQg
QVBCIHJlZ21hcCIgZXJyb3IgcGF0aHMsIGFzIHdlbGwgYXMgdGhlIHN1Y2Nlc3MgcGF0aCwgcmV0
dXJuCj4gd2l0aG91dCBjYWxsaW5nIG9mX25vZGVfcHV0KCkuCj4gCj4gVGhlIG5vZGUgaXMgb25s
eSBuZWVkZWQgZm9yIHRoZSBkZXZpY2UgbG9va3VwLCBzbyBkcm9wIHRoZSByZWZlcmVuY2UKPiBy
aWdodCBhZnRlciBidXNfZmluZF9kZXZpY2VfYnlfb2Zfbm9kZSgpLgo+IAo+IEZpeGVzOiA3MzA3
NTAxMWZmZmYgKCJwaHk6IEhpU2lsaWNvbjogQWRkIGRyaXZlciBmb3IgS2lyaW4gOTcwIFBDSWUg
UEhZIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IFdlbnRh
byBMaWFuZyA8dnVsYWJAaXNjYXMuYWMuY24+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
