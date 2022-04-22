Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 118B9C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 22 Apr 2022 14:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c33EQ2roIYFWBy0rBN3e0JB7cwj3s89ikk0lqgN24yY=; b=z6HonfQSi34q1Z
	lY8cS+Oti37TP0kCbIqc0dM/85jFhYZhmi8lohzKgPAwjsg6TxyvDnlyNrOAp4iBltU4fc2hp+90U
	yjZ0DasQPR/yPPnvNsE9ocqnFG0Cmc2dFb6PtaBq4kr+TKUNMO3K34ak6HjsAX9blTH4sxUSas9Gg
	Gwo+eddQ5vfP0gXdXfEFO05WYwlkk1gNJ5FVqqOu7vYhpfYlrL/pMmJA7lnYShSBulollWdmbPUw6
	+RXskc+80IyNhSNUC3rNvpUsft+IwFwMBJpHD9sKCS+RsVX05MQT+OIuFpMIP5AP2gl4FE3wv5nAj
	GnUIt1YC1yIdXbiBXctQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhu5N-000lf9-Gv; Fri, 22 Apr 2022 14:16:37 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhu59-000lXo-3a
 for linux-phy@lists.infradead.org; Fri, 22 Apr 2022 14:16:25 +0000
Received: by mail-pl1-x62b.google.com with SMTP id h12so7464647plf.12
 for <linux-phy@lists.infradead.org>; Fri, 22 Apr 2022 07:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mhiX9pOS55YaO3CdrDwpUy6BkzPbq10Xj73NWvQBwAg=;
 b=vRUi3XTt6AzV9QlheY6fezduSTcEh/sZN3k+dAddNZiw8rhhyhbGXtJLNYs3J/UwD5
 bRx0NNWnHM1TYIelLSIgCtSpmnbMKDgukzfetN9iXKdtLRwPXB54SYzt6H400lsd3P4D
 ++PGiqJSRNedibPs1CaxKSPMQyTwkUYyruCII4+3lOh3uWSvP8+idLkPjw5BBA8QJsEi
 kvO8DlCiTkUMJj9c+3Kb4kPubeS7hxUdkzPshkGtiJXpeZOSSMzbk6sHBs+4HmVJPMRp
 e9Uz5m7trgk2XIsiSCfl29aZ0LqcmQ7ZWTP8PJh4RgMon1aGFHXpRKjuAUHuYVAvcCcH
 noKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mhiX9pOS55YaO3CdrDwpUy6BkzPbq10Xj73NWvQBwAg=;
 b=l4E7G9X4cASVVWejUXf1wSNdMcZifwl8ugJv9zoNyYFjP5Nm+SPLquwijlHf79LXFW
 G326qnAhVWF+FONnKy7giGUyVR75uzLfzET5TUW2/ZJwCv/HHJ0HGLo/+gARnFXnj4lg
 EEmABmB34lPnJ5NBGTQ98NrrmomHc/C/AEVkNtvqTApHQuvnl3k0ecpoCRwLU4W3yZ4M
 9yh/NBhYyT9lk01m3dE5nxaStqEsSDGlTf5Ck/D0923bLtYQy1ANK+uFMTWxZ+V51ola
 2qFcsu67WGylA99c2s/rme9ckjorBzWqzQMtfqPhpT5CMmJMFFjfi5OImJRxAi2A/j5q
 B9Jg==
X-Gm-Message-State: AOAM533T3oOy+bah8hXurUWQ0tzYKeMnmSHoAg2hBxKLWpbJhsfOfor2
 MnBCQDfnM+7b3O34Kk4ltCipG8BAvJFH4psT1O6vOA==
X-Google-Smtp-Source: ABdhPJz8CXOzCAMrumvED5/FUzZpCHykjU/HdiKEagzluI2x9YcnPtdeO8E7Knfq/KSP3T5vLQuff5phq8eDfMmbJXk=
X-Received: by 2002:a17:903:2352:b0:159:3fa:261 with SMTP id
 c18-20020a170903235200b0015903fa0261mr4632628plh.21.1650636980753; Fri, 22
 Apr 2022 07:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220419010852.452169-1-victor.liu@nxp.com>
 <20220419010852.452169-2-victor.liu@nxp.com>
In-Reply-To: <20220419010852.452169-2-victor.liu@nxp.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 22 Apr 2022 16:16:09 +0200
Message-ID: <CAG3jFyvAjzHaA_BUJYj18Y-FbY5ROd3iXetAJ+BJaoEjZd6vsQ@mail.gmail.com>
Subject: Re: [PATCH resend v8 1/5] drm/bridge: nwl-dsi: Set PHY mode in
 nwl_dsi_mode_set()
To: Liu Ying <victor.liu@nxp.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, kishon@ti.com, vkoul@kernel.org, 
 robh+dt@kernel.org, krzk+dt@kernel.org, andrzej.hajda@intel.com, 
 narmstrong@baylibre.com, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, 
 jernej.skrabec@gmail.com, airlied@linux.ie, daniel@ffwll.ch, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
 festevam@gmail.com, linux-imx@nxp.com, agx@sigxcpu.org, robert.chiras@nxp.com, 
 martin.kepplinger@puri.sm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_071623_283218_DE084357 
X-CRM114-Status: GOOD (  16.91  )
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

T24gVHVlLCAxOSBBcHIgMjAyMiBhdCAwMzowNywgTGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNv
bT4gd3JvdGU6Cj4KPiBUaGUgTm9ydGh3ZXN0IExvZ2ljIE1JUEkgRFNJIGhvc3QgY29udHJvbGxl
ciBlbWJlZGRlZCBpbiBpLk1YOHF4cAo+IHdvcmtzIHdpdGggYSBNaXhlbCBNSVBJIERQSFkgKyBM
VkRTIFBIWSBjb21ibyB0byBzdXBwb3J0IGVpdGhlcgo+IGEgTUlQSSBEU0kgZGlzcGxheSBvciBh
IExWRFMgZGlzcGxheS4gIFNvLCB0aGlzIHBhdGNoIGNhbGxzCj4gcGh5X3NldF9tb2RlKCkgZnJv
bSBud2xfZHNpX21vZGVfc2V0KCkgdG8gc2V0IFBIWSBtb2RlIHRvIE1JUEkgRFBIWQo+IGV4cGxp
Y2l0bHkuCj4KPiBDYzogR3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiBDYzogUm9i
ZXJ0IENoaXJhcyA8cm9iZXJ0LmNoaXJhc0BueHAuY29tPgo+IENjOiBNYXJ0aW4gS2VwcGxpbmdl
ciA8bWFydGluLmtlcHBsaW5nZXJAcHVyaS5zbT4KPiBDYzogQW5kcnplaiBIYWpkYSA8YW5kcnpl
ai5oYWpkYUBpbnRlbC5jb20+Cj4gQ2M6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxp
YnJlLmNvbT4KPiBDYzogTGF1cmVudCBQaW5jaGFydCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgo+IENjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gQ2M6IEpl
cm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxp
ZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
Pgo+IENjOiBOWFAgTGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogTGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNvbT4KPiAtLS0KPiB2Ny0+djg6Cj4gKiBSZXNl
bmQgd2l0aCBBbmRyemVqJ3MgYW5kIEplcm5laidzIG1haWwgYWRkcmVzc2VkIHVwZGF0ZWQuCj4K
PiB2Ni0+djc6Cj4gKiBObyBjaGFuZ2UuCj4KPiB2NS0+djY6Cj4gKiBSZWJhc2UgdGhlIHNlcmll
cyB1cG9uIHY1LjE3LXJjMS4KPiAqIFNldCBQSFkgbW9kZSBpbiAtPm1vZGVfc2V0KCkgaW5zdGVh
ZCBvZiAtPnByZV9lbmFibGUoKSBpbiB0aGUgbndsLWRzaQo+ICAgYnJpZGdlIGRyaXZlciBkdWUg
dG8gdGhlIHJlYmFzZS4KPiAqIERyb3AgR3VpZG8ncyBSLWIgdGFnIGR1ZSB0byB0aGUgcmViYXNl
Lgo+Cj4gdjQtPnY1Ogo+ICogTm8gY2hhbmdlLgo+Cj4gdjMtPnY0Ogo+ICogTm8gY2hhbmdlLgo+
Cj4gdjItPnYzOgo+ICogTm8gY2hhbmdlLgo+Cj4gdjEtPnYyOgo+ICogQWRkIEd1aWRvJ3MgUi1i
IHRhZy4KPgo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyB8IDYgKysrKysrCj4g
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRz
aS5jCj4gaW5kZXggZDU5NDU1MDFhNWVlLi44NWJhYjczNzJhZjEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL253bC1kc2kuYwo+IEBAIC02NjYsNiArNjY2LDEyIEBAIHN0YXRpYyBpbnQgbndsX2RzaV9t
b2RlX3NldChzdHJ1Y3QgbndsX2RzaSAqZHNpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+ICAgICAgICAgfQo+Cj4gKyAgICAgICByZXQgPSBwaHlfc2V0X21vZGUoZHNpLT5waHksIFBI
WV9NT0RFX01JUElfRFBIWSk7Cj4gKyAgICAgICBpZiAocmV0IDwgMCkgewo+ICsgICAgICAgICAg
ICAgICBEUk1fREVWX0VSUk9SKGRldiwgIkZhaWxlZCB0byBzZXQgRFNJIHBoeSBtb2RlOiAlZFxu
IiwgcmV0KTsKPiArICAgICAgICAgICAgICAgZ290byB1bmluaXRfcGh5Owo+ICsgICAgICAgfQo+
ICsKPiAgICAgICAgIHJldCA9IHBoeV9jb25maWd1cmUoZHNpLT5waHksIHBoeV9jZmcpOwo+ICAg
ICAgICAgaWYgKHJldCA8IDApIHsKPiAgICAgICAgICAgICAgICAgRFJNX0RFVl9FUlJPUihkZXYs
ICJGYWlsZWQgdG8gY29uZmlndXJlIERTSSBwaHk6ICVkXG4iLCByZXQpOwo+IC0tCj4gMi4yNS4x
Cj4KCkFja2VkLWJ5OiBSb2JlcnQgRm9zcyA8cm9iZXJ0LmZvc3NAbGluYXJvLm9yZz4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
