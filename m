Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACF8C4829C
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 18:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NBo+iWBBewV5z6m1jnx2LgLeRcDojc0SNfIiufBVng=; b=eTkJzb4aFhAoI+
	7ro7D89SWgObzTBD2J7lKGK06m2hRlrbGO1G3aGIPtSrWscr7iP7UWMMQvOpQYTvYj9F2lHL60e2y
	d54TnND2TmyRr/2BaD+OQryouM2cocD9kca+J9nZhZ3Iuh988BZ1r3GWHrr73dZWKGLu9+7rpnxdm
	4APuxp1wA9WVGjh4UY16Vgopr1akgTTy6shMHBflDiQzY0jBLC1pr1vzefPQlKefJDKgAl/mDeUkE
	pGqGEoHerDd2PLPZgTeIXwukqq5n9nY8w/p618ChzkpDnndJxHi/SGEkj481K17c39xOQs8Z2w2wY
	QrLXEj8fkPBcXZ1ACysQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXQZ9-00000008aqT-3EWa;
	Tue, 06 Feb 2024 18:53:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXQZ6-00000008aoL-10UA;
	Tue, 06 Feb 2024 18:53:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 839AE6168F;
	Tue,  6 Feb 2024 18:53:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE82CC433C7;
	Tue,  6 Feb 2024 18:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707245583;
	bh=SG3kh9GfzzT+XgLFlhGrW0bYQFDPElr02XcGaKdWcjI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O/Qosa+5Vi6kIyyC1irVymZ6lfjGwkRXtWi0QZ91zUyz1Fgzbb2lOws7sZSxDYF6h
	 TFh2NGSV4E3kPsnMeuJl3fAKNVzgtSosvjYw3sMkTyZ2Z+b2VG54vv7Y7QccvUN9gX
	 Te9eFRhIGNaOcbhh6GniDh8CW1AVBe45boBZNVkGLWBq6baEutywJcBhCAe0xfkaGN
	 P8ByQGCUKn+R4Fx+LI4+ZDHJaufensjl+OGJ2SJXSgpdNoknWVKdSDvSscWPpK48Fp
	 pyu0QBftSpPkdljTeY79WslVWTN7Tnce/623Tdd+Vre4B/phqOE/oGwnOfoBxhlQfs
	 0ciChUTImYUQw==
Date: Tue, 6 Feb 2024 11:52:59 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de,
	alexander.stein@ew.tq-group.com, frieder.schrempf@kontron.de,
	Lucas Stach <l.stach@pengutronix.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Richard Leitner <richard.leitner@skidata.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Fabio Estevam <festevam@gmail.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org, llvm@lists.linux.dev
Subject: Re: [PATCH V8 08/12] drm/bridge: imx: add driver for HDMI TX
 Parallel Video Interface
Message-ID: <20240206185259.GA2649447@dev-arch.thelio-3990X>
References: <20240203165307.7806-1-aford173@gmail.com>
 <20240203165307.7806-9-aford173@gmail.com>
 <20240206170632.GA2183819@dev-arch.thelio-3990X>
 <CAHCN7x+Jt8Qfyjxg=TasUgezA3ZDk=6mFZkMyFEwk2Evt-6c5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHCN7x+Jt8Qfyjxg=TasUgezA3ZDk=6mFZkMyFEwk2Evt-6c5Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_105304_394717_3B0B49FA 
X-CRM114-Status: GOOD (  36.83  )
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

T24gVHVlLCBGZWIgMDYsIDIwMjQgYXQgMTI6NTA6MTZQTSAtMDYwMCwgQWRhbSBGb3JkIHdyb3Rl
Ogo+IE9uIFR1ZSwgRmViIDYsIDIwMjQgYXQgMTE6MDbigK9BTSBOYXRoYW4gQ2hhbmNlbGxvciA8
bmF0aGFuQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4KPiA+IEhpIGFsbCwKPiA+Cj4gPiBPbiBTYXQs
IEZlYiAwMywgMjAyNCBhdCAxMDo1Mjo0OEFNIC0wNjAwLCBBZGFtIEZvcmQgd3JvdGU6Cj4gPiA+
IEZyb206IEx1Y2FzIFN0YWNoIDxsLnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+ID4gPgo+ID4gPiBU
aGlzIElQIGJsb2NrIGlzIGZvdW5kIGluIHRoZSBIRE1JIHN1YnN5c3RlbSBvZiB0aGUgaS5NWDhN
UCBTb0MuIEl0IGhhcyBhCj4gPiA+IGZ1bGwgdGltaW5nIGdlbmVyYXRvciBhbmQgY2FuIHN3aXRj
aCBiZXR3ZWVuIGRpZmZlcmVudCB2aWRlbyBzb3VyY2VzLiBPbgo+ID4gPiB0aGUgaS5NWDhNUCBo
b3dldmVyIHRoZSBvbmx5IHN1cHBvcnRlZCBzb3VyY2UgaXMgdGhlIExDRElGLiBUaGUgYmxvY2sK
PiA+ID4ganVzdCBuZWVkcyB0byBiZSBwb3dlcmVkIHVwIGFuZCB0b2xkIGFib3V0IHRoZSBwb2xh
cml0eSBvZiB0aGUgdmlkZW8KPiA+ID4gc3luYyBzaWduYWxzIHRvIGFjdCBpbiBieXBhc3MgbW9k
ZS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0
cm9uaXguZGU+Cj4gPiA+IFJldmlld2VkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xp
QGJvb3RsaW4uY29tPiAodjcpCj4gPiA+IFRlc3RlZC1ieTogTWFyZWsgVmFzdXQgPG1hcmV4QGRl
bnguZGU+ICh2MSkKPiA+ID4gVGVzdGVkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xp
QGJvb3RsaW4uY29tPiAodjcpCj4gPiA+IFRlc3RlZC1ieTogUmljaGFyZCBMZWl0bmVyIDxyaWNo
YXJkLmxlaXRuZXJAc2tpZGF0YS5jb20+ICh2MikKPiA+ID4gVGVzdGVkLWJ5OiBGcmllZGVyIFNj
aHJlbXBmIDxmcmllZGVyLnNjaHJlbXBmQGtvbnRyb24uZGU+ICh2MikKPiA+ID4gUmV2aWV3ZWQt
Ynk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4g
KHYzKQo+ID4gPiBSZXZpZXdlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290
bGluLmNvbT4KPiA+ID4gVGVzdGVkLWJ5OiBMdWNhIENlcmVzb2xpIDxsdWNhLmNlcmVzb2xpQGJv
b3RsaW4uY29tPgo+ID4gPiBUZXN0ZWQtYnk6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWls
LmNvbT4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+
Cj4gPgo+ID4gPHNuaXA+Cj4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9pbXgvaW14OG1wLWhkbWktcHZpLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9p
bXg4bXAtaGRtaS1wdmkuYwo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAw
MDAwMDAwMDAwMDAuLmE3NmI3NjY5ZmU4YQo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXB2aS5jCj4gPiAuLi4KPiA+
ID4gK3N0YXRpYyB2b2lkIGlteDhtcF9oZG1pX3B2aV9icmlkZ2VfZW5hYmxlKHN0cnVjdCBkcm1f
YnJpZGdlICpicmlkZ2UsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZHJtX2JyaWRnZV9zdGF0ZSAqYnJpZGdlX3N0YXRlKQo+ID4gPiArewo+ID4g
PiArICAgICBzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBicmlkZ2Vfc3RhdGUtPmJh
c2Uuc3RhdGU7Cj4gPiA+ICsgICAgIHN0cnVjdCBpbXg4bXBfaGRtaV9wdmkgKnB2aSA9IHRvX2lt
eDhtcF9oZG1pX3B2aShicmlkZ2UpOwo+ID4gPiArICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZTsKPiA+ID4gKyAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21v
ZGUgKm1vZGU7Cj4gPiA+ICsgICAgIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsK
PiA+ID4gKyAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiA+ID4gKyAgICAg
dTMyIGJ1c19mbGFncywgdmFsOwo+ID4gPiArCj4gPiA+ICsgICAgIGNvbm5lY3RvciA9IGRybV9h
dG9taWNfZ2V0X25ld19jb25uZWN0b3JfZm9yX2VuY29kZXIoc3RhdGUsIGJyaWRnZS0+ZW5jb2Rl
cik7Cj4gPiA+ICsgICAgIGNvbm5fc3RhdGUgPSBkcm1fYXRvbWljX2dldF9uZXdfY29ubmVjdG9y
X3N0YXRlKHN0YXRlLCBjb25uZWN0b3IpOwo+ID4gPiArICAgICBjcnRjX3N0YXRlID0gZHJtX2F0
b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNvbm5fc3RhdGUtPmNydGMpOwo+ID4gPiAr
Cj4gPiA+ICsgICAgIGlmIChXQVJOX09OKHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQocHZpLT5k
ZXYpKSkKPiA+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiA+ICsKPiA+ID4gKyAgICAgbW9k
ZSA9ICZjcnRjX3N0YXRlLT5hZGp1c3RlZF9tb2RlOwo+ID4gPiArCj4gPiA+ICsgICAgIHZhbCA9
IEZJRUxEX1BSRVAoUFZJX0NUUkxfTU9ERV9NQVNLLCBQVklfQ1RSTF9NT0RFX0xDRElGKSB8IFBW
SV9DVFJMX0VOOwo+ID4gPiArCj4gPiA+ICsgICAgIGlmIChtb2RlLT5mbGFncyAmIERSTV9NT0RF
X0ZMQUdfUFZTWU5DKQo+ID4gPiArICAgICAgICAgICAgIHZhbCB8PSBQVklfQ1RSTF9PUF9WU1lO
Q19QT0wgfCBQVklfQ1RSTF9JTlBfVlNZTkNfUE9MOwo+ID4gPiArCj4gPiA+ICsgICAgIGlmICht
b2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfUEhTWU5DKQo+ID4gPiArICAgICAgICAgICAgIHZh
bCB8PSBQVklfQ1RSTF9PUF9IU1lOQ19QT0wgfCBQVklfQ1RSTF9JTlBfSFNZTkNfUE9MOwo+ID4g
PiArCj4gPiA+ICsgICAgIGlmIChwdmktPm5leHRfYnJpZGdlLT50aW1pbmdzKQo+ID4gPiArICAg
ICAgICAgICAgIGJ1c19mbGFncyA9IHB2aS0+bmV4dF9icmlkZ2UtPnRpbWluZ3MtPmlucHV0X2J1
c19mbGFnczsKPiA+ID4gKyAgICAgZWxzZSBpZiAoYnJpZGdlX3N0YXRlKQo+ID4gPiArICAgICAg
ICAgICAgIGJ1c19mbGFncyA9IGJyaWRnZV9zdGF0ZS0+aW5wdXRfYnVzX2NmZy5mbGFnczsKPiA+
ID4gKwo+ID4gPiArICAgICBpZiAoYnVzX2ZsYWdzICYgRFJNX0JVU19GTEFHX0RFX0hJR0gpCj4g
PiA+ICsgICAgICAgICAgICAgdmFsIHw9IFBWSV9DVFJMX09QX0RFX1BPTCB8IFBWSV9DVFJMX0lO
UF9ERV9QT0w7Cj4gPiA+ICsKPiA+ID4gKyAgICAgd3JpdGVsKHZhbCwgcHZpLT5yZWdzICsgSFRY
X1BWSV9DVFJMKTsKPiA+ID4gK30KPiA+Cj4gPiBBcG9sb2dpZXMgaWYgdGhpcyBoYXMgYWxyZWFk
eSBiZWVuIHJlcG9ydGVkIG9yIGZpeGVkLCBJIHNlYXJjaGVkIGxvcmUKPiA+IGFuZCBkaWQgbm90
IGZpbmQgYW55dGhpbmcuIENsYW5nIHdhcm5zIChvciBlcnJvcnMgd2l0aCBDT05GSUdfV0VSUk9S
PXkpCj4gPiBmb3IgdGhpcyBmdW5jdGlvbjoKPiA+Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvaW14L2lteDhtcC1oZG1pLXB2aS5jOjgxOjExOiBlcnJvcjogdmFyaWFibGUgJ2J1c19mbGFn
cycgaXMgdXNlZCB1bmluaXRpYWxpemVkIHdoZW5ldmVyICdpZicgY29uZGl0aW9uIGlzIGZhbHNl
IFstV2Vycm9yLC1Xc29tZXRpbWVzLXVuaW5pdGlhbGl6ZWRdCj4gPiAgICAgIDgxIHwgICAgICAg
ICBlbHNlIGlmIChicmlkZ2Vfc3RhdGUpCj4gPiAgICAgICAgIHwgICAgICAgICAgICAgICAgICBe
fn5+fn5+fn5+fn4KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbXgvaW14OG1wLWhkbWkt
cHZpLmM6ODQ6Njogbm90ZTogdW5pbml0aWFsaXplZCB1c2Ugb2NjdXJzIGhlcmUKPiA+ICAgICAg
ODQgfCAgICAgICAgIGlmIChidXNfZmxhZ3MgJiBEUk1fQlVTX0ZMQUdfREVfSElHSCkKPiA+ICAg
ICAgICAgfCAgICAgICAgICAgICBefn5+fn5+fn4KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9pbXgvaW14OG1wLWhkbWktcHZpLmM6ODE6Nzogbm90ZTogcmVtb3ZlIHRoZSAnaWYnIGlmIGl0
cyBjb25kaXRpb24gaXMgYWx3YXlzIHRydWUKPiA+ICAgICAgODEgfCAgICAgICAgIGVsc2UgaWYg
KGJyaWRnZV9zdGF0ZSkKPiA+ICAgICAgICAgfCAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn4KPiA+ICAgICAgODIgfCAgICAgICAgICAgICAgICAgYnVzX2ZsYWdzID0gYnJpZGdlX3N0YXRl
LT5pbnB1dF9idXNfY2ZnLmZsYWdzOwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2lteC9p
bXg4bXAtaGRtaS1wdmkuYzo2MDoxNTogbm90ZTogaW5pdGlhbGl6ZSB0aGUgdmFyaWFibGUgJ2J1
c19mbGFncycgdG8gc2lsZW5jZSB0aGlzIHdhcm5pbmcKPiA+ICAgICAgNjAgfCAgICAgICAgIHUz
MiBidXNfZmxhZ3MsIHZhbDsKPiA+ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICBeCj4g
PiAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgID0gMAo+ID4gICAxIGVycm9yIGdlbmVy
YXRlZC4KPiA+Cj4gPiBUaGlzIHNlZW1zIGxlZ2l0aW1hdGUuIElmIGJyaWRnZV9zdGF0ZSBjYW4g
YmUgTlVMTCwgc2hvdWxkIGJ1c19mbGFncyBiZQo+ID4gaW5pdGlhbGl6ZWQgdG8gemVybyBsaWtl
IGl0IHN1Z2dlc3RzIG9yIHNob3VsZCB0aGF0ICdlbHNlIGlmJyBiZSB0dXJuZWQKPiA+IGludG8g
YSBwbGFpbiAnZWxzZSc/IEkgYW0gaGFwcHkgdG8gc2VuZCBhIHBhdGNoIHdpdGggdGhhdCBndWlk
YW5jZS4KPiAKPiBJIGRvbid0IHRoaW5rIHdlIGNhbiB0dXJuIHRoZSBlbHNlLWlmIGludG8gYSBi
bGluZCBlbHNlLCBiZWNhdXNlIGluCj4gb3JkZXIgdG8gbWFrZSBidXNfZmxhZ3MgcG9pbnQgdG8g
YnJpZGdlX3N0YXRlLT5pbnB1dF9idXNfY2ZnLmZsYWdzLAo+IGJyaWRnZV9zdGF0ZSBtdXN0IG5v
dCBiZSBOVUxMLCBidXQgd2UgY291bGQgYWRkIGFuIGFkZGl0aW9uYWwgZWxzZSB0bwo+IHNldCBi
dXNfZmxhZ3MgdG8gMCwgYnV0IEkgdGhpbmsgdGhlIHNpbXBsZXN0IHRoaW5nIHRvIGRvIHdvdWxk
IGJlIHRvCj4gc2V0IGJ1c19mbGFncyA9IDAgYXQgdGhlIGluaXRpYWxpemF0aW9uIG9uIGxpbmUg
NjAgYXMgaXQgc3VnZ2VzdHMuCj4gCj4gSWYgeW91IGFncmVlLCBJIGNhbiBzdWJtaXQgYSBwYXRj
aCBsYXRlciB0b25pZ2h0LiAgSSBuZWVkIHRvIGZpeAo+IGFub3RoZXIgaXNzdWUgZm91bmQgYnkg
dGhlIGJ1aWxkLWJvdCBbMV0gIHRvIG1ha2UgbGluZSAxMTMgcmV0dXJuIE5VTEwKPiBpbnN0ZWFk
IG9mIDAgYW55d2F5LiAgSSBmaWd1cmVkIEkgY291bGQganVzdCBmaXggdGhlbSBib3RoIGF0IHRo
ZSBzYW1lCj4gdGltZS4KPiAKPiBbMV0gLSBodHRwczovL2xvcmUua2VybmVsLm9yZy9vZS1rYnVp
bGQtYWxsLzIwMjQwMjA2MjEzNC5hNkNxQXQzcy1sa3BAaW50ZWwuY29tLwoKU2VlbXMgcmVhc29u
YWJsZSB0byBtZSwgdGhhbmtzIQoKTmF0aGFuCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
