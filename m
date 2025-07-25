Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F807C87FCA
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 20:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVIpP9owz1T3GojpEQyrhrxZH0FgDsJNnY2Gnx3gASA=; b=ljxis2nCXQ6EB3
	SDp6pNmeYTQMAP8cMzm/tyXwz3vPxpJznYLVp1lfw5ZxgIQBNFcg2sm7HhIfQTAOWKtgDv5X57KWq
	x/kdcVeWBhgECYtRno/QGaurclqrRJLfsGUy6dFATlgaKHiGX3wUaIrPHzIgW0hmk+Slk2qMkLVbv
	oxYn1coXrFm+hZACWg3XcfJxYeqo4ZaYmsrem9cR3eXGyRyIoOltCoO1ufK0+vKV+6toaLul/tZw2
	H5pFsv8pXJGngypDOyV7AJT+Py94GWiOeiaQvNg/BI/CTsDdvoRq4gVxv4ptFuu4ijCqOn7GgwqEq
	Gku5h56ghmVyE1AQjtIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP0Q-0000000AdVb-3YJ5;
	Fri, 25 Jul 2025 20:27:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufP0M-0000000AdUl-1Ik9;
	Fri, 25 Jul 2025 20:26:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5FBE15C6415;
	Fri, 25 Jul 2025 20:26:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD53CC4CEE7;
	Fri, 25 Jul 2025 20:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753475217;
	bh=gwiksp3J4bGpqvzDaXhOxRpN1GcS86ZmMLM2DmIXBlI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hGN9Hi1imKljswG6X/DBWlkd92MGaNXkl7nCpM96OQLcPyU/TkuYmNgKqvYkbtIVR
	 9dckup9w/GKbTvNcPaRj1rQ77iwFaIjwjQJQaekWBHEzdCiBLNfF+qnHajVK1zC8T2
	 fEvTe7JTB/wj79CyGw4A/ansr+AR4VppgZXBymyhe5oAQt0Z2tmwxe0DngswssY1h+
	 /kyUy6w2NxgYSmTlvqwU4n4bVhYX9RCEZ0BaoTO9ElMI5nyzjj++ig1nJ4q+GO0v9F
	 wJwMkqxcH4BdiQte7QQqI9MDqYfQBMxJAWlvaDvqDWvRMUTD3lgPtZMZNoj8a+7PJG
	 yUHsU9u7dT27A==
Date: Fri, 25 Jul 2025 15:26:55 -0500
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-mediatek@lists.infradead.org, herbert@gondor.apana.org.au,
	davem@davemloft.net, krzk+dt@kernel.org, conor+dt@kernel.org,
	chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com,
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com,
	mchehab@kernel.org, matthias.bgg@gmail.com,
	chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
	sean.wang@kernel.org, linus.walleij@linaro.org, lgirdwood@gmail.com,
	broonie@kernel.org, andersson@kernel.org,
	mathieu.poirier@linaro.org, daniel.lezcano@linaro.org,
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com,
	ck.hu@mediatek.com, houlong.wei@mediatek.com,
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com,
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com,
	shane.chien@mediatek.com, olivia.wen@mediatek.com,
	granquet@baylibre.com, eugen.hristev@linaro.org, arnd@arndb.de,
	sam.shih@mediatek.com, jieyy.yang@mediatek.com,
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 01/38] dt-bindings: display: mediatek: dpi: Allow
 specifying resets
Message-ID: <20250725202655.GA1826181-robh@kernel.org>
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com>
 <20250724083914.61351-2-angelogioacchino.delregno@collabora.com>
 <CAGXv+5HTdK8aiUYdtNVhWAvsSNfMPgK6iCqe-Jsb-OBqQBWsBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGXv+5HTdK8aiUYdtNVhWAvsSNfMPgK6iCqe-Jsb-OBqQBWsBg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_132658_422661_0104C988 
X-CRM114-Status: GOOD (  21.55  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgMDU6MTY6MjFQTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFRodSwgSnVsIDI0LCAyMDI1IGF0IDQ6MznigK9QTSBBbmdlbG9HaW9hY2NoaW5v
IERlbCBSZWdubwo+IDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdy
b3RlOgo+ID4KPiA+IEV2ZW4gdGhvdWdoIHRoZSBEUEkgSVAgaGFzIGEgcmVzZXQgYml0IG9uIGFs
bCBNZWRpYVRlayBTb0NzLCBpdAo+ID4gaXMgb3B0aW9uYWwsIGFuZCBoYXMgYWx3YXlzIGJlZW4g
dW51c2VkIHVudGlsIE1UODE5NTsgc3BlY2lmaWNhbGx5Ogo+ID4gb24gb2xkZXIgU29DcywgbGlr
ZSBNVDgxNzMsIHRoZSByZXNldCBiaXQgaXMgbG9jYXRlZCBpbiBNTVNZUywgYW5kCj4gPiBvbiBu
ZXdlciBTb0NzLCBsaWtlIE1UODE5NSwgaXQgaXMgbG9jYXRlZCBpbiBWRE9TWVMuCj4gPgo+ID4g
Rm9yIHRoaXMgcmVhc29uLCBhbGxvdyBzcGVjaWZ5aW5nIHRoZSByZXNldHMgYW5kIHJlc2V0LW5h
bWVzIG9uCj4gPiBhbGwgTWVkaWFUZWsgU29Dcy4KPiA+Cj4gPiBUaG9zZSBwcm9wZXJ0aWVzIGFy
ZSBvcHRpb25hbCBiZWNhdXNlIHRoZXJlIGFyZSBtdWx0aXBsZSB3YXlzIHRvCj4gPiByZXNldCB0
aGlzIElQIGFuZCB0aGUgcmVzZXQgbGluZXMgaW4gTU0vVkRPIGFyZSB1c2VkIG9ubHkgaWYgdGhl
Cj4gPiBJUCBjYW5ub3QgcGVyZm9ybSB3YXJtLXJlc2V0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L21lZGlhdGVrL21lZGlhdGVrLGRwaS55YW1sIHwgNyArKysrKysrCj4gPiAgMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVr
LGRwaS55YW1sCj4gPiBpbmRleCBiNjU5ZDc5MzkzYTguLmViNGYyNzZlOGRjNCAxMDA2NDQKPiA+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVr
L21lZGlhdGVrLGRwaS55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbAo+ID4gQEAgLTEwMiw2ICsx
MDIsMTMgQEAgcHJvcGVydGllczoKPiA+ICAgICAgICAtIHBvcnRAMAo+ID4gICAgICAgIC0gcG9y
dEAxCj4gPgo+ID4gKyAgcmVzZXRzOgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+ID4gKyAg
cmVzZXQtbmFtZXM6Cj4gPiArICAgIGl0ZW1zOgo+ID4gKyAgICAgIC0gY29uc3Q6IGRwaQo+ID4g
Kwo+IAo+IERvIHdlIHJlYWxseSBuZWVkIHRoZSBuYW1lIGlmIHRoZXJlIGlzIG9ubHkgb25lIHRo
b3VnaD8KCk5vdCByZWFsbHksIGJ1dCBpZiBpdCBpcyBhbHJlYWR5IGluIHVzZSB0aGVuIGVhc2ll
ciB0byBqdXN0IGZpeCB0aGUgCmJpbmRpbmcgdGhhbiBib3RoIHRoZSBiaW5kaW5nIGFuZCBkdHMu
CgpSb2IKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
