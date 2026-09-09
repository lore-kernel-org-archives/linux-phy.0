Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5F00C79FB7
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 16:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0NpaLtzrggkbn0ulYkT/ymxgTzy740AAeezGJjb0Rk=; b=SS2Cm+opdY4VHS
	Q9y+Boq9F5uKy+cHURNmDu3onz8ZYGCTPcu2MFNgyQGrMkSg0hucuD8tkSwaTqN1JVRWAWafpxdvZ
	P4qQful4NNikKAmFS5kpgtoivaHyHNcWy3+9MqLydSBOIU6lYQcYrPIHPfQLpDKEFPGGHJj60Dh2R
	CG2IKvY9J3XTtLN8CnPFxaytal9uMRvYpIgoaQVvALrRP0uOcKxwHHrr5FVj9iFVhOgPyA5/9OIeY
	nrapM1wb5x01GA8Ig7CXCk1zmJ6umCfQvc2Ea0Ua726T5dI93cedO41c2pXOjHWfvVjCSBtDsy4xO
	1XJUsvfEs6+nXbAOWhLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LWn-0000000COSu-2LqQ;
	Wed, 09 Sep 2026 16:52:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4LWm-0000000COSH-2ozX;
	Wed, 09 Sep 2026 16:52:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 08948600CB;
	Wed,  9 Sep 2026 16:52:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 573181F000FF;
	Wed,  9 Sep 2026 16:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788972723;
	bh=HgC9sEOwgkiHFo9nm8IwcHna7p/hR9fCjHKYivIfM14=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=CfC+MCc0nrX7sMf/aBoff2VzQK24psnb39s3VkoDRq+ZhH3P6alsK7j92SN649FA2
	 tUPITzXgmaBspYY1PWbUV0Xe+VvZbGNMPtCQMuPYziiEtX6wORnCfKwQUu3mfaqvNC
	 xVjLr2LssKMqtTMNkIc8gK+Ls02og5sFm/2iZVlAr686Dwx/qUGgseOBLqXw2RRMFo
	 Y+A6ZRAKwJJAwo9StOnlUkdJLHDJ5Du4eSU5yr0OBveWL3Wwr/JBHZiM47stWgtTQ+
	 x9tv2u5sEyTUYm2gHMCBe9ere+sf4Ji91HsSBzcj8YAl8glI4XJJ+raDv2lGkpojQu
	 X1hp2a542rnZg==
Date: Wed, 9 Sep 2026 18:51:54 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunfeng.yun@mediatek.com, vkoul@kernel.org, neil.armstrong@linaro.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, justin.yeh@mediatek.com, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, kernel@collabora.com
Subject: Re: [PATCH v3 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
Message-ID: <flb6ugxd5ssocnrxqs7vtjfvtjschvscoputms6bruw2uelpf3@xp2eumt5pwmk>
References: <20260707154245.198361-1-angelogioacchino.delregno@collabora.com>
 <20260707154245.198361-2-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260707154245.198361-2-angelogioacchino.delregno@collabora.com>
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDU6NDI6MzRQTSArMDIwMCwgQW5nZWxvR2lvYWNjaGlu
byBEZWwgUmVnbm8gd3JvdGU6Cj4gVGhpcyBhZGRzIGJpbmRpbmdzIGZvciB0aGUgRGlzcGxheVBv
cnQgYW5kIEVtYmVkZGVkIERpc3BsYXlQb3J0Cj4gUEhZcyBmb3VuZCBpbiB0aGUgTWVkaWFUZWsg
TVQ4MTk1IFNvQyAoYW5kIHZhcmlhbnRzIG9mKSBhbmQgZm9yCj4gdGhlIEVtYmVkZGVkIERpc3Bs
YXlQb3J0IGZvdW5kIGluIHRoZSBNVDgxOTYgU29DIChhbmQgdmFyaWFudHMpLgo+IAo+IFRoaXMg
UEhZIHN1cHBvcnRzIHZhcnlpbmcgaW1wZWRhbmNlIGNhbGlicmF0aW9ucyBmb3IgdGhlIHZhcmlv
dXMKPiBzaWduYWxzIHRvIHJlYWNoIGFuIG9wdGltYWwgRVlFIHNpZ25hbCBwYXR0ZXJuIGZvciBh
bnkgc3BlY2lmaWMKPiBib2FyZChzKSwgZXNwZWNpYWxseSB1c2VmdWwgZm9yIHZlcnkgaGlnaCBi
aXRyYXRlcyBzdWNoIGFzIEhCUjMKPiBhbmQgaGlnaGVyLCBkZXBlbmRpbmcgb24gYm9hcmQgZGVz
aWduLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdl
bG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
