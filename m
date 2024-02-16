Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867B0C48260
	for <linux-phy@archiver.kernel.org>; Fri, 16 Feb 2024 11:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k17t2YhtTC+ue20p5xEEv5oRO1iym4a8tg3c8Qx6BOc=; b=AWG1fBN5aSWdzV
	XFGeKqwCZpm+nLve8XXAseDZ8JrHhKgrbjP3JJq0oZFTmX8aX8hIzQAUYEPZWt6IcKxTVtpWsiEt9
	2ksq7N9xeEOO0ROWRG0Ftati47sN1nLO0+F8Xrgewx1rLw0RI+uJGC9T5UjOEkjXx7G6b19sxfhss
	AHLt4+oIb3ojuEjIqkQByzdPoAaPWArygIsjK854xQ4xvL+1M25kVGUjoZXyTGEYDyx1HFFPL94/c
	YTAyNckrt0zm/ukD9pBFNpmdLI3mWHfAxWRQVLFthDccc0EsYdfADrCvXMmPk842MneKP5cB6Y2g9
	h9b8bOr5v/BUrcif3vcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawcP-00000002C20-0wqR;
	Fri, 16 Feb 2024 11:43:01 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawcJ-00000002Bzp-0N1p;
	Fri, 16 Feb 2024 11:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708083776; x=1739619776;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MD8PpJdyDycq4idMKhBHf1v7B8Lage9uviizqG+a/uo=;
  b=JFdK1UedZe6mcrBnsSjzTUZxgDizbVKVcSQnJkmoqzHAMI3yHzVI0Anw
   Cs9wpnOk2M6t3kmRgA+PVVsoTKSMJAzOFSJ3Z6dRD0baa6su4vnD+Up5a
   y6LxWrdBE9JDKRbuJmwch48G/aWuQEGiTWXwsUFWDUt9ZF0tBjVnEUa9d
   eNgjVb9w4zVqw/Gf+Zm3RUrUL6RAu5R+8Rj99L7ti6mSNk0HLX2Yf0vtw
   6MbYDOEmF24XYpZCHiX0nPkNX9iaZ6OCO6NVfMDuortkUjdr9AhDwRK9l
   ZlVHYVQBivuqmnV+pDgJlZ4scnZ8BQ724UJqVEHPeG72L5i4FMXXDAs77
   g==;
X-IronPort-AV: E=Sophos;i="6.06,164,1705359600"; 
   d="scan'208";a="35445169"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 16 Feb 2024 12:42:47 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 687E7280075;
	Fri, 16 Feb 2024 12:42:47 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, marex@denx.de, frieder.schrempf@kontron.de, Lucas Stach <l.stach@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, Kish
 on Vijay Abraham I <kishon@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH V8 09/12] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
Date: Fri, 16 Feb 2024 12:42:49 +0100
Message-ID: <2184519.Mh6RI2rZIc@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <CAHCN7x+80iw0PWa4F4dMA=3RRaChNEO534LPACXd6FK0ndAHpw@mail.gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com> <5916132.MhkbZ0Pkbq@steina-w> <CAHCN7x+80iw0PWa4F4dMA=3RRaChNEO534LPACXd6FK0ndAHpw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_034257_676043_941D30F3 
X-CRM114-Status: GOOD (  30.66  )
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

QW0gRnJlaXRhZywgMTYuIEZlYnJ1YXIgMjAyNCwgMTI6MzE6MTIgQ0VUIHNjaHJpZWIgQWRhbSBG
b3JkOgo+IE9uIEZyaSwgRmViIDE2LCAyMDI0IGF0IDM6MDXigK9BTSBBbGV4YW5kZXIgU3RlaW4K
PiAKPiA8YWxleGFuZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbT4gd3JvdGU6Cj4gPiBIaSBhbGws
Cj4gPiAKPiA+IEFtIFNhbXN0YWcsIDMuIEZlYnJ1YXIgMjAyNCwgMTc6NTI6NDkgQ0VUIHNjaHJp
ZWIgQWRhbSBGb3JkOgo+ID4gPiBGcm9tOiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25p
eC5kZT4KPiA+ID4gCj4gPiA+IFRoZSBIRE1JIFRYIGNvbnRyb2xsZXIgb24gdGhlIGkuTVg4TVAg
U29DIGlzIGEgU3lub3BzeXMgZGVzaWdud2FyZSBJUAo+ID4gPiBjb3JlIHdpdGggYSBsaXR0bGUg
Yml0IG9mIFNvQyBpbnRlZ3JhdGlvbiBhcm91bmQgaXQuCj4gPiA+IAo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+Cj4gPiA+IAo+ID4gPiAtLS0KPiA+
ID4gVjM6ICBDaGFuZ2UgbmFtZSBhbmQgbG9jYXRpb24gdG8gYmV0dGVyIGlkZW5maXR5IGFzIGEg
YnJpZGdlIGFuZAo+ID4gPiAKPiA+ID4gICAgICBIRE1JIDIuMGEgdHJhbnNtaXR0ZXIKPiA+ID4g
ICAgICAKPiA+ID4gICAgICBGaXggdHlwb3MgYW5kIGZlZWRiYWNrIGZyb20gUm9iIGFuZCBhZGRl
ZCBwb3J0cy4KPiA+ID4gCj4gPiA+IC0tLQo+ID4gPiAKPiA+ID4gIC4uLi9kaXNwbGF5L2JyaWRn
ZS9mc2wsaW14OG1wLWhkbWktdHgueWFtbCAgICB8IDEwMiArKysrKysrKysrKysrKysrKysKPiA+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMDIgaW5zZXJ0aW9ucygrKQo+ID4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0Cj4gPiA+IAo+ID4gPiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlz
cGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1pLXR4LnlhbWwKPiA+ID4gCj4gPiA+IGRpZmYgLS1n
aXQKPiA+ID4gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9icmlk
Z2UvZnNsLGlteDhtcC1oZG1pLXR4LnlhCj4gPiA+IG1sCj4gPiA+IGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvYnJpZGdlL2ZzbCxpbXg4bXAtaGRtaS10eC55YQo+
ID4gPiBtbAo+ID4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiBpbmRleCAwMDAwMDAwMDAw
MDAuLjM3OTFjOWY0ZWJhYgo+ID4gPiAtLS0gL2Rldi9udWxsCj4gPiA+ICsrKwo+ID4gPiBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L2JyaWRnZS9mc2wsaW14OG1w
LWhkbWktdHgueWEKPiA+ID4gbWwKPiA+ID4gQEAgLTAsMCArMSwxMDIgQEAKPiA+ID4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ID4g
PiArJVlBTUwgMS4yCj4gPiA+ICstLS0KPiA+ID4gKyRpZDoKPiA+ID4gaHR0cDovL2RldmljZXRy
ZWUub3JnL3NjaGVtYXMvZGlzcGxheS9icmlkZ2UvZnNsLGlteDhtcC1oZG1pLXR4LnlhbWwjCj4g
PiA+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiA+ID4gKwo+ID4gPiArdGl0bGU6IEZyZWVzY2FsZSBpLk1YOE1QIERXQyBIRE1JIFRYIEVu
Y29kZXIKPiA+ID4gKwo+ID4gPiArbWFpbnRhaW5lcnM6Cj4gPiA+ICsgIC0gTHVjYXMgU3RhY2gg
PGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+Cj4gPiA+ICsKPiA+ID4gK2Rlc2NyaXB0aW9uOgo+ID4g
PiArICBUaGUgaS5NWDhNUCBIRE1JIHRyYW5zbWl0dGVyIGlzIGEgU3lub3BzeXMgRGVzaWduV2Fy
ZQo+ID4gPiArICBIRE1JIDIuMGEgVFggY29udHJvbGxlciBJUC4KPiA+ID4gKwo+ID4gPiArYWxs
T2Y6Cj4gPiA+ICsgIC0gJHJlZjogL3NjaGVtYXMvZGlzcGxheS9icmlkZ2Uvc3lub3BzeXMsZHct
aGRtaS55YW1sIwo+ID4gPiArCj4gPiA+ICtwcm9wZXJ0aWVzOgo+ID4gPiArICBjb21wYXRpYmxl
Ogo+ID4gPiArICAgIGVudW06Cj4gPiA+ICsgICAgICAtIGZzbCxpbXg4bXAtaGRtaS10eAo+ID4g
PiArCj4gPiA+ICsgIHJlZy1pby13aWR0aDoKPiA+ID4gKyAgICBjb25zdDogMQo+ID4gPiArCj4g
PiA+ICsgIGNsb2NrczoKPiA+ID4gKyAgICBtYXhJdGVtczogNAo+ID4gPiArCj4gPiA+ICsgIGNs
b2NrLW5hbWVzOgo+ID4gPiArICAgIGl0ZW1zOgo+ID4gPiArICAgICAgLSBjb25zdDogaWFoYgo+
ID4gPiArICAgICAgLSBjb25zdDogaXNmcgo+ID4gPiArICAgICAgLSBjb25zdDogY2VjCj4gPiA+
ICsgICAgICAtIGNvbnN0OiBwaXgKPiA+ID4gKwo+ID4gPiArICBwb3dlci1kb21haW5zOgo+ID4g
PiArICAgIG1heEl0ZW1zOiAxCj4gPiA+ICsKPiA+ID4gKyAgcG9ydHM6Cj4gPiA+ICsgICAgJHJl
ZjogL3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0cwo+ID4gPiArCj4gPiA+ICsg
ICAgcHJvcGVydGllczoKPiA+ID4gKyAgICAgIHBvcnRAMDoKPiA+ID4gKyAgICAgICAgJHJlZjog
L3NjaGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4gPiA+ICsgICAgICAgIGRlc2Ny
aXB0aW9uOiBQYXJhbGxlbCBSR0IgaW5wdXQgcG9ydAo+ID4gPiArCj4gPiA+ICsgICAgICBwb3J0
QDE6Cj4gPiA+ICsgICAgICAgICRyZWY6IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMv
cG9ydAo+ID4gPiArICAgICAgICBkZXNjcmlwdGlvbjogSERNSSBvdXRwdXQgcG9ydAo+ID4gPiAr
Cj4gPiA+ICsgICAgcmVxdWlyZWQ6Cj4gPiA+ICsgICAgICAtIHBvcnRAMAo+ID4gPiArICAgICAg
LSBwb3J0QDEKPiA+IAo+ID4gSXMgdGhpcyByZWFsbHkgY29ycmVjdCB0aGF0IHBvcnRAMSBpcyBy
ZXF1aXJlZD8gQUZBSUNTIHRoaXMgaG9zdCBhbHJlYWR5Cj4gPiBzdXBwb3J0cyBIUEQgYW5kIERE
QyBieSBpdHNlbGYsIHNvIHRoZXJlIGlzIG5vIG5lZWQgZm9yIGEgZGVkaWNhdGVkIEhETUkKPiA+
IGNvbm5lY3Rvci4KPiA+IFdpdGggdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIGRyaXZlcnMgdGhp
cyBvdXRwdXQgcG9ydCBpcyBjb21wbGV0ZWx5Cj4gPiBpZ25vcmVkIGFueXdheS4gWWV0IGl0IHdv
cmtzIGZvciBhIGxvdCBvZiBwZW9wbGUuCj4gCj4gT25lIG9mIHRoZSBmZWVkYmFjayByZXNwb25z
ZXMgTHVjYXMgZ290IHdhcyB0aGF0IGl0IHdhcyBtaXNzaW5nIHRoZQo+IHJlZmVyZW5jZSB0byB0
aGUgSERNSSBjb25uZWN0b3IsIHNvIEkgYWRkZWQgaXQgYXMgYSByZXNwb25zZSB0byB0aGF0Cj4g
ZmVlZGJhY2suICBJIGhhdmUgdHJpZWQgZGV2aWNlIHRyZWVzIHdpdGggYW5kIHdpdGhvdXQgaXQs
IGFuZCBpdAo+IGRvZXNuJ3QgaW1wYWN0IGFueXRoaW5nLCBidXQgSXQgc2VlbXMgbGlrZSB0aGVy
ZSBtYXkgYmUgYSByZXF1aXJlbWVudAo+IGZvciBpdC4KClllcywgSSBub3RpY2VkIGFzIHdlbGwu
IEEgc3BlY2lmaWVkIGNvbm5lY3RvciBpcyBjb21wbGV0ZWx5IGlnbm9yZWQuCk9uZSByZWFzb24g
aXMgdGhhdCBkd19oZG1pX3BsYXRfZGF0YS5vdXRwdXRfcG9ydCBpcyB1bnNlZCBpbiBkcml2ZXJz
L2dwdS9kcm0vCmJyaWRnZS9pbXgvaW14OG1wLWhkbWktdHguYy4gQW5vdGhlciBvbmUgaXMgdGhh
dCB3aXRob3V0IApEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1Igc3VwcG9ydCBpbiBkcml2
ZXJzL2dwdS9kcm0vbXhzZmIvbGNkaWZfZHJ2LmMgCm5vdGhpbmcgY2hhbmdlcy4KCkJlc3QgcmVn
YXJkcywKQWxleGFuZGVyCgo+IGFkYW0KPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IEFsZXhhbmRl
cgo+ID4gCj4gPiA+ICsKPiA+ID4gK3JlcXVpcmVkOgo+ID4gPiArICAtIGNvbXBhdGlibGUKPiA+
ID4gKyAgLSByZWcKPiA+ID4gKyAgLSBjbG9ja3MKPiA+ID4gKyAgLSBjbG9jay1uYW1lcwo+ID4g
PiArICAtIGludGVycnVwdHMKPiA+ID4gKyAgLSBwb3dlci1kb21haW5zCj4gPiA+ICsgIC0gcG9y
dHMKPiA+ID4gKwo+ID4gPiArdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+ID4gPiArCj4g
PiA+ICtleGFtcGxlczoKPiA+ID4gKyAgLSB8Cj4gPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2Nsb2NrL2lteDhtcC1jbG9jay5oPgo+ID4gPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5n
cy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KPiA+ID4gKyAgICAjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvcG93ZXIvaW14OG1wLXBvd2VyLmg+Cj4gPiA+ICsKPiA+ID4gKyAgICBoZG1pQDMyZmQ4
MDAwIHsKPiA+ID4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJmc2wsaW14OG1wLWhkbWktdHgiOwo+
ID4gPiArICAgICAgICByZWcgPSA8MHgzMmZkODAwMCAweDdlZmY+Owo+ID4gPiArICAgICAgICBp
bnRlcnJ1cHRzID0gPDAgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsgICAgICAgIGNsb2Nr
cyA9IDwmY2xrIElNWDhNUF9DTEtfSERNSV9BUEI+LAo+ID4gPiArICAgICAgICAgICAgICAgICA8
JmNsayBJTVg4TVBfQ0xLX0hETUlfUkVGXzI2Nk0+LAo+ID4gPiArICAgICAgICAgICAgICAgICA8
JmNsayBJTVg4TVBfQ0xLXzMySz4sCj4gPiA+ICsgICAgICAgICAgICAgICAgIDwmaGRtaV90eF9w
aHk+Owo+ID4gPiArICAgICAgICBjbG9jay1uYW1lcyA9ICJpYWhiIiwgImlzZnIiLCAiY2VjIiwg
InBpeCI7Cj4gPiA+ICsgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JmhkbWlfYmxrX2N0cmwgSU1Y
OE1QX0hETUlCTEtfUERfSERNSV9UWD47Cj4gPiA+ICsgICAgICAgIHJlZy1pby13aWR0aCA9IDwx
PjsKPiA+ID4gKyAgICAgICAgcG9ydHMgewo+ID4gPiArICAgICAgICAgICAjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKPiA+ID4gKyAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4gPiA+ICsgICAg
ICAgICAgIHBvcnRAMCB7Cj4gPiA+ICsgICAgICAgICAgICAgcmVnID0gPDA+Owo+ID4gPiArCj4g
PiA+ICsgICAgICAgICAgICAgaGRtaV90eF9mcm9tX3B2aTogZW5kcG9pbnQgewo+ID4gPiArICAg
ICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZwdmlfdG9faGRtaV90eD47Cj4gPiA+ICsg
ICAgICAgICAgICAgfTsKPiA+ID4gKyAgICAgICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAgICAg
ICAgcG9ydEAxIHsKPiA+ID4gKyAgICAgICAgICAgIHJlZyA9IDwxPjsKPiA+ID4gKyAgICAgICAg
ICAgICAgaGRtaV90eF9vdXQ6IGVuZHBvaW50IHsKPiA+ID4gKyAgICAgICAgICAgICAgICByZW1v
dGUtZW5kcG9pbnQgPSA8JmhkbWkwX2Nvbj47Cj4gPiA+ICsgICAgICAgICAgICAgIH07Cj4gPiA+
ICsgICAgICAgICAgfTsKPiA+ID4gKyAgICAgICAgfTsKPiA+ID4gKyAgICB9Owo+ID4gCj4gPiAt
LQo+ID4gVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIsIEd1dCBEZWxsaW5nIHwgODIy
MjkgU2VlZmVsZCwgR2VybWFueQo+ID4gQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgK
PiA+IEdlc2Now6RmdHNmw7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwg
U3RlZmFuIFNjaG5laWRlcgo+ID4gaHR0cDovL3d3dy50cS1ncm91cC5jb20vCgoKLS0gClRRLVN5
c3RlbXMgR21iSCB8IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNlZWZlbGQs
IEdlcm1hbnkKQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0c2bDvGhy
ZXI6IERldGxlZiBTY2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVpZGVyCmh0
dHA6Ly93d3cudHEtZ3JvdXAuY29tLwoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51
eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1waHkK
