Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B377C4828D
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+Q1DJlm/O+P18NOmiB9+Vkq+ZIu5XqJWQTVsx48LX0=; b=v1sj7hYjzQgJIO
	Di974TLoXFrwsnfNcrKTmN1vxQH+b6GJ85wrZEJaYFk2tLE5KhB/JZHkVkisIFwaKZd2hqhu/OUpd
	UyL+IOgeYb2Kcg+5xYFUMdBuZ+g7H3UQW764WTxw0BMMWnpR5QqHTHm6Sdl9LiYJE+7Go11Vvm3gr
	O24HpSuViQhKdAxBc9i1qEot40OtoIRCiLnoqvo+kfk2uEtT7iXiIL3ZaXM6WV+q03TaOkYxy1f5m
	ZXr24el79qgNMpFj9Le9zg84aP/fDhVFVG5aO1yVfxBj3Uzhk/KSaS/CKr9vjfygMtRSDTLeiCuAH
	TGWX41FNvn32X3PTwd9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXQWf-00000008a5O-1Fso;
	Tue, 06 Feb 2024 18:50:33 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXQWb-00000008a3G-3OIG;
	Tue, 06 Feb 2024 18:50:31 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6d9f94b9186so4334412b3a.0;
        Tue, 06 Feb 2024 10:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707245428; x=1707850228; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=04H/P6C7O8nfc1XeC8v5p8UgUl9tQRxBxfBvOdudh+M=;
        b=k6f2YtHaDPo4nAdPgnBoB4/CZEvtgqrb9i6MkjZXFeMV9w/pwOPjQ5QnnuuouyT2Qy
         +s1Qsu42X78kq9OSMG8ZACB8hrj5VO0IoKE6hNNelC5bxk6knpems+N8YochUHazs0Xs
         pThHJ4gZRHOAUpYernZ4/uB3CxJ3lmLn4GFpAA5ZMiXyaeaWRqJ0WqaTY/NYrl4LCpVc
         Z7MKxFcAjVtaVVTB8aXCXr8UHqwwfo4GHPv1hg/J+j19qssC91A9BgzLDcagSjF+MbRa
         4HldJqewCUdWe3jbXEYSUuW8RbVrP8WJVKv41yMpX87qFypHWXlwAt5yenHA8lKsQ5jn
         oNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707245428; x=1707850228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04H/P6C7O8nfc1XeC8v5p8UgUl9tQRxBxfBvOdudh+M=;
        b=jsPl/yiPIQg2ave13/j5TAOirAFc/MNlkVqDzQ++SefLpEUVsFn9WeEP/onHD9y1ZF
         mpIwLnCtBNVV7jtn9TAg7sfj3dWkJ768eV/iOqYrVNIjJoEncqmSHRJUP8VoSDe5xRYQ
         sebDkK3b2w+FxBWiQ3CGPMiu/qau5jB7+sHYyMvxfRdVUFtHZLV9BET1sqD+n/RSQmaX
         XGRKZc4w9jB6acNn2rY/SNzs4369R0CgbytTQJvuj8caHgLks+U4T7tILif+jUoBTjCl
         bbnRRRLu5+g0Q5DqwbMike5lgrYYRziohSkA7pfg/psFRdNX5x6S6JqCn+Umc0WFYrWc
         cYHA==
X-Gm-Message-State: AOJu0YyxwGCSdJmFbyntVSmdPB9e8e5FD3J0Kd+TtzmrneNpJefwa1rH
	oASLk0g51zQ5ZHYDsVWNwczaVEzXYffMGGxX/ZEiG+psa3YclSKFn14QuQ3R3/mhPkbgyJb3tp1
	ZhCJq37QSYrmGhUY8LEFrea4Pcrs=
X-Google-Smtp-Source: AGHT+IFew76+8/ONbppJJ5WidlzjDP61Dg+kG6gaTcWUbl+84Ejsp+SlpxQLfB/R2PqIEfDeyhbfqm2nzrGeNSGeDLs=
X-Received: by 2002:a05:6a00:994:b0:6e0:3f2d:4c04 with SMTP id
 u20-20020a056a00099400b006e03f2d4c04mr433802pfg.23.1707245427825; Tue, 06 Feb
 2024 10:50:27 -0800 (PST)
MIME-Version: 1.0
References: <20240203165307.7806-1-aford173@gmail.com> <20240203165307.7806-9-aford173@gmail.com>
 <20240206170632.GA2183819@dev-arch.thelio-3990X>
In-Reply-To: <20240206170632.GA2183819@dev-arch.thelio-3990X>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 6 Feb 2024 12:50:16 -0600
Message-ID: <CAHCN7x+Jt8Qfyjxg=TasUgezA3ZDk=6mFZkMyFEwk2Evt-6c5Q@mail.gmail.com>
Subject: Re: [PATCH V8 08/12] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
To: Nathan Chancellor <nathan@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de, 
	Lucas Stach <l.stach@pengutronix.de>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Richard Leitner <richard.leitner@skidata.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, llvm@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_105029_873761_24C96426 
X-CRM114-Status: GOOD (  31.14  )
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

T24gVHVlLCBGZWIgNiwgMjAyNCBhdCAxMTowNuKAr0FNIE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRo
YW5Aa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBIaSBhbGwsCj4KPiBPbiBTYXQsIEZlYiAwMywgMjAy
NCBhdCAxMDo1Mjo0OEFNIC0wNjAwLCBBZGFtIEZvcmQgd3JvdGU6Cj4gPiBGcm9tOiBMdWNhcyBT
dGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+Cj4gPiBUaGlzIElQIGJsb2NrIGlzIGZv
dW5kIGluIHRoZSBIRE1JIHN1YnN5c3RlbSBvZiB0aGUgaS5NWDhNUCBTb0MuIEl0IGhhcyBhCj4g
PiBmdWxsIHRpbWluZyBnZW5lcmF0b3IgYW5kIGNhbiBzd2l0Y2ggYmV0d2VlbiBkaWZmZXJlbnQg
dmlkZW8gc291cmNlcy4gT24KPiA+IHRoZSBpLk1YOE1QIGhvd2V2ZXIgdGhlIG9ubHkgc3VwcG9y
dGVkIHNvdXJjZSBpcyB0aGUgTENESUYuIFRoZSBibG9jawo+ID4ganVzdCBuZWVkcyB0byBiZSBw
b3dlcmVkIHVwIGFuZCB0b2xkIGFib3V0IHRoZSBwb2xhcml0eSBvZiB0aGUgdmlkZW8KPiA+IHN5
bmMgc2lnbmFscyB0byBhY3QgaW4gYnlwYXNzIG1vZGUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
THVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiBSZXZpZXdlZC1ieTogTHVj
YSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNvbT4gKHY3KQo+ID4gVGVzdGVkLWJ5
OiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4gKHYxKQo+ID4gVGVzdGVkLWJ5OiBMdWNhIENl
cmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJvb3RsaW4uY29tPiAodjcpCj4gPiBUZXN0ZWQtYnk6IFJp
Y2hhcmQgTGVpdG5lciA8cmljaGFyZC5sZWl0bmVyQHNraWRhdGEuY29tPiAodjIpCj4gPiBUZXN0
ZWQtYnk6IEZyaWVkZXIgU2NocmVtcGYgPGZyaWVkZXIuc2NocmVtcGZAa29udHJvbi5kZT4gKHYy
KQo+ID4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRl
YXNvbmJvYXJkLmNvbT4gKHYzKQo+ID4gUmV2aWV3ZWQtYnk6IEx1Y2EgQ2VyZXNvbGkgPGx1Y2Eu
Y2VyZXNvbGlAYm9vdGxpbi5jb20+Cj4gPiBUZXN0ZWQtYnk6IEx1Y2EgQ2VyZXNvbGkgPGx1Y2Eu
Y2VyZXNvbGlAYm9vdGxpbi5jb20+Cj4gPiBUZXN0ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3Rl
dmFtQGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21h
aWwuY29tPgo+Cj4gPHNuaXA+Cj4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL2lteC9pbXg4bXAtaGRtaS1wdmkuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14L2lt
eDhtcC1oZG1pLXB2aS5jCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAw
MDAwMDAwLi5hNzZiNzY2OWZlOGEKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXB2aS5jCj4gLi4uCj4gPiArc3RhdGljIHZv
aWQgaW14OG1wX2hkbWlfcHZpX2JyaWRnZV9lbmFibGUoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRn
ZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJt
X2JyaWRnZV9zdGF0ZSAqYnJpZGdlX3N0YXRlKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkcm1f
YXRvbWljX3N0YXRlICpzdGF0ZSA9IGJyaWRnZV9zdGF0ZS0+YmFzZS5zdGF0ZTsKPiA+ICsgICAg
IHN0cnVjdCBpbXg4bXBfaGRtaV9wdmkgKnB2aSA9IHRvX2lteDhtcF9oZG1pX3B2aShicmlkZ2Up
Owo+ID4gKyAgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7Cj4gPiAr
ICAgICBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKPiA+ICsgICAgIHN0cnVj
dCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsKPiA+ICsgICAgIHN0cnVjdCBkcm1fY29ubmVj
dG9yICpjb25uZWN0b3I7Cj4gPiArICAgICB1MzIgYnVzX2ZsYWdzLCB2YWw7Cj4gPiArCj4gPiAr
ICAgICBjb25uZWN0b3IgPSBkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9yX2Zvcl9lbmNvZGVy
KHN0YXRlLCBicmlkZ2UtPmVuY29kZXIpOwo+ID4gKyAgICAgY29ubl9zdGF0ZSA9IGRybV9hdG9t
aWNfZ2V0X25ld19jb25uZWN0b3Jfc3RhdGUoc3RhdGUsIGNvbm5lY3Rvcik7Cj4gPiArICAgICBj
cnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNvbm5fc3Rh
dGUtPmNydGMpOwo+ID4gKwo+ID4gKyAgICAgaWYgKFdBUk5fT04ocG1fcnVudGltZV9yZXN1bWVf
YW5kX2dldChwdmktPmRldikpKQo+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiArCj4gPiAr
ICAgICBtb2RlID0gJmNydGNfc3RhdGUtPmFkanVzdGVkX21vZGU7Cj4gPiArCj4gPiArICAgICB2
YWwgPSBGSUVMRF9QUkVQKFBWSV9DVFJMX01PREVfTUFTSywgUFZJX0NUUkxfTU9ERV9MQ0RJRikg
fCBQVklfQ1RSTF9FTjsKPiA+ICsKPiA+ICsgICAgIGlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RF
X0ZMQUdfUFZTWU5DKQo+ID4gKyAgICAgICAgICAgICB2YWwgfD0gUFZJX0NUUkxfT1BfVlNZTkNf
UE9MIHwgUFZJX0NUUkxfSU5QX1ZTWU5DX1BPTDsKPiA+ICsKPiA+ICsgICAgIGlmIChtb2RlLT5m
bGFncyAmIERSTV9NT0RFX0ZMQUdfUEhTWU5DKQo+ID4gKyAgICAgICAgICAgICB2YWwgfD0gUFZJ
X0NUUkxfT1BfSFNZTkNfUE9MIHwgUFZJX0NUUkxfSU5QX0hTWU5DX1BPTDsKPiA+ICsKPiA+ICsg
ICAgIGlmIChwdmktPm5leHRfYnJpZGdlLT50aW1pbmdzKQo+ID4gKyAgICAgICAgICAgICBidXNf
ZmxhZ3MgPSBwdmktPm5leHRfYnJpZGdlLT50aW1pbmdzLT5pbnB1dF9idXNfZmxhZ3M7Cj4gPiAr
ICAgICBlbHNlIGlmIChicmlkZ2Vfc3RhdGUpCj4gPiArICAgICAgICAgICAgIGJ1c19mbGFncyA9
IGJyaWRnZV9zdGF0ZS0+aW5wdXRfYnVzX2NmZy5mbGFnczsKPiA+ICsKPiA+ICsgICAgIGlmIChi
dXNfZmxhZ3MgJiBEUk1fQlVTX0ZMQUdfREVfSElHSCkKPiA+ICsgICAgICAgICAgICAgdmFsIHw9
IFBWSV9DVFJMX09QX0RFX1BPTCB8IFBWSV9DVFJMX0lOUF9ERV9QT0w7Cj4gPiArCj4gPiArICAg
ICB3cml0ZWwodmFsLCBwdmktPnJlZ3MgKyBIVFhfUFZJX0NUUkwpOwo+ID4gK30KPgo+IEFwb2xv
Z2llcyBpZiB0aGlzIGhhcyBhbHJlYWR5IGJlZW4gcmVwb3J0ZWQgb3IgZml4ZWQsIEkgc2VhcmNo
ZWQgbG9yZQo+IGFuZCBkaWQgbm90IGZpbmQgYW55dGhpbmcuIENsYW5nIHdhcm5zIChvciBlcnJv
cnMgd2l0aCBDT05GSUdfV0VSUk9SPXkpCj4gZm9yIHRoaXMgZnVuY3Rpb246Cj4KPiAgIGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXB2aS5jOjgxOjExOiBlcnJvcjogdmFy
aWFibGUgJ2J1c19mbGFncycgaXMgdXNlZCB1bmluaXRpYWxpemVkIHdoZW5ldmVyICdpZicgY29u
ZGl0aW9uIGlzIGZhbHNlIFstV2Vycm9yLC1Xc29tZXRpbWVzLXVuaW5pdGlhbGl6ZWRdCj4gICAg
ICA4MSB8ICAgICAgICAgZWxzZSBpZiAoYnJpZGdlX3N0YXRlKQo+ICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fgo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14
OG1wLWhkbWktcHZpLmM6ODQ6Njogbm90ZTogdW5pbml0aWFsaXplZCB1c2Ugb2NjdXJzIGhlcmUK
PiAgICAgIDg0IHwgICAgICAgICBpZiAoYnVzX2ZsYWdzICYgRFJNX0JVU19GTEFHX0RFX0hJR0gp
Cj4gICAgICAgICB8ICAgICAgICAgICAgIF5+fn5+fn5+fgo+ICAgZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9pbXgvaW14OG1wLWhkbWktcHZpLmM6ODE6Nzogbm90ZTogcmVtb3ZlIHRoZSAnaWYnIGlm
IGl0cyBjb25kaXRpb24gaXMgYWx3YXlzIHRydWUKPiAgICAgIDgxIHwgICAgICAgICBlbHNlIGlm
IChicmlkZ2Vfc3RhdGUpCj4gICAgICAgICB8ICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+
fgo+ICAgICAgODIgfCAgICAgICAgICAgICAgICAgYnVzX2ZsYWdzID0gYnJpZGdlX3N0YXRlLT5p
bnB1dF9idXNfY2ZnLmZsYWdzOwo+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1w
LWhkbWktcHZpLmM6NjA6MTU6IG5vdGU6IGluaXRpYWxpemUgdGhlIHZhcmlhYmxlICdidXNfZmxh
Z3MnIHRvIHNpbGVuY2UgdGhpcyB3YXJuaW5nCj4gICAgICA2MCB8ICAgICAgICAgdTMyIGJ1c19m
bGFncywgdmFsOwo+ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICBeCj4gICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICA9IDAKPiAgIDEgZXJyb3IgZ2VuZXJhdGVkLgo+Cj4gVGhp
cyBzZWVtcyBsZWdpdGltYXRlLiBJZiBicmlkZ2Vfc3RhdGUgY2FuIGJlIE5VTEwsIHNob3VsZCBi
dXNfZmxhZ3MgYmUKPiBpbml0aWFsaXplZCB0byB6ZXJvIGxpa2UgaXQgc3VnZ2VzdHMgb3Igc2hv
dWxkIHRoYXQgJ2Vsc2UgaWYnIGJlIHR1cm5lZAo+IGludG8gYSBwbGFpbiAnZWxzZSc/IEkgYW0g
aGFwcHkgdG8gc2VuZCBhIHBhdGNoIHdpdGggdGhhdCBndWlkYW5jZS4KCkkgZG9uJ3QgdGhpbmsg
d2UgY2FuIHR1cm4gdGhlIGVsc2UtaWYgaW50byBhIGJsaW5kIGVsc2UsIGJlY2F1c2UgaW4Kb3Jk
ZXIgdG8gbWFrZSBidXNfZmxhZ3MgcG9pbnQgdG8gYnJpZGdlX3N0YXRlLT5pbnB1dF9idXNfY2Zn
LmZsYWdzLApicmlkZ2Vfc3RhdGUgbXVzdCBub3QgYmUgTlVMTCwgYnV0IHdlIGNvdWxkIGFkZCBh
biBhZGRpdGlvbmFsIGVsc2UgdG8Kc2V0IGJ1c19mbGFncyB0byAwLCBidXQgSSB0aGluayB0aGUg
c2ltcGxlc3QgdGhpbmcgdG8gZG8gd291bGQgYmUgdG8Kc2V0IGJ1c19mbGFncyA9IDAgYXQgdGhl
IGluaXRpYWxpemF0aW9uIG9uIGxpbmUgNjAgYXMgaXQgc3VnZ2VzdHMuCgpJZiB5b3UgYWdyZWUs
IEkgY2FuIHN1Ym1pdCBhIHBhdGNoIGxhdGVyIHRvbmlnaHQuICBJIG5lZWQgdG8gZml4CmFub3Ro
ZXIgaXNzdWUgZm91bmQgYnkgdGhlIGJ1aWxkLWJvdCBbMV0gIHRvIG1ha2UgbGluZSAxMTMgcmV0
dXJuIE5VTEwKaW5zdGVhZCBvZiAwIGFueXdheS4gIEkgZmlndXJlZCBJIGNvdWxkIGp1c3QgZml4
IHRoZW0gYm90aCBhdCB0aGUgc2FtZQp0aW1lLgoKYWRhbQoKWzFdIC0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDI0MDIwNjIxMzQuYTZDcUF0M3MtbGtwQGludGVsLmNv
bS8KCj4KPiBDaGVlcnMsCj4gTmF0aGFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
