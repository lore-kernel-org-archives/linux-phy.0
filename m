Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21DEBC982D8
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 16:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yewZH2OkJePa3DbcIo5fgQQWqn/DrV4GLPct6aq++DM=; b=mlvVQICI/HB5Cu
	MlDaQGgvd3ts6sD+FfBP+pPSWZvOV3tUEn7SdGgfkaDQFiBe4WFpEumldjJWdwsXdwtvQu3Yqvdpe
	AGGq2XioKx9BMQqzu0YG9FEW2sGhIrg4kwIDyvuth+TxaCAHRbdDGGg/i1jfLvmSSgbhO5dLMGbaN
	Vlgw0G/DkCc2eMYNwFk0nozGpoog13aLgaiuuI1AxDP3NMj9PLSI+OgCqJ28S2prPryzCcfe6FVPF
	o0DmPxvs+yhQAYXvBA9pEjBvIAPfTHnNwUSd6+tbR3de6EHyt18x+KHZj3P9NyUqUbFJj86s3oKw1
	eWcVAh4tC+U30EoHvQfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7xyi-0000000GWCi-3Nd8;
	Sat, 19 Sep 2026 16:31:52 +0000
Received: from mail-ed2-x0b.google.com ([2a00:1450:4864:33::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7xyf-0000000GWBW-2JFI
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 16:31:50 +0000
Received: by mail-ed2-x0b.google.com with SMTP id 4fb4d7f45d1cf-6aa70a9f847so110811a12.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 09:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789835507; cv=none;
        d=google.com; s=arc-20260327;
        b=FqEuB27vM1jV7Xx8TbmWNXvgrPSHnkEqazWCXJANbac9BY4T9yAJ5pL6f8o7CWf5DO
         WL/G9I6s/vdn3pmxPBgGAt/ZnDnqelfz2mYdCWjEN/STKriCjsqh2LXSik1DADCtIiSL
         DW7FmhQwiscTVv8mkBueGWj2V7eWcH+7uB2FxmWRbpzC18mpAdoCv/HtFtpm0lOibZx1
         cAZR6Vd7jQr8yCtzmZPrZnXgAxSeXLZO5Rro6XDMqjmt9ZYafbd26QWm1ISaPM1IddJ2
         R0sGaZC3Q69lV+yNDYmFuNJvCj55urXnZp0rsHIejXMd/iFkF1t0FEi7P6jBVaz24439
         YtJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FoBb+MCNrssOL4O5BLzYqYW9vzpXkaseLuESacaKWDE=;
        fh=dnhbpdNL4dXCXtft08j9yv6U79e0Leg23q7cuKQ2pwY=;
        b=Nb+w4lVz9k21JJ4XirviYuDva60YhQbbvrJhReE87cnoB4IfzJvjFIzmR4sNM+abFa
         wkTlYglNszYx14NxV0msg2jMvfsSXUh3iRtt8aUv3okkce5346HcKOQ8bnc148yEmIXZ
         RJaPuwGpwyqD+EnpfAzc+gT+tv9E5dLwicUGCLDVLMpI3DudeEKP7iRE6vB+4mnB6i1G
         dwESvFkkSelkYc2GlaFLpw57hG+8PA2WLnxwT0HmseTU/v8djDG3Jg1apmfv+FXzJsBZ
         /8yXVkR6B5Az4EdneuCFmqZgqSQ4a9cMKqHNNa+eUBFWVHlOWEQCHs2KFA7wGan8+Kll
         tHfQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789835507; x=1790440307; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FoBb+MCNrssOL4O5BLzYqYW9vzpXkaseLuESacaKWDE=;
        b=l/hkDLOJawpX/bBJ/akkBtLvMwmiV+R/0DQ8H6MnE3/9VtD1WONCVY4RuxAq/ZNuAq
         hqRvD751/Z+dW0WfXs2l18KS+jWxxqcxZiGlkwos3dKRtpm4MUkqFenW/tqkCSXdTB2K
         wsuOizwTQjVjwtlP3bvnlNZWGwSG+s2fNStTJriCvyFHjlIKStQD6x2ak5681ot3XBMG
         MrfytvF5+DEiOkfXa9mT91tq96oyDBMUuiJUuYyeIDP5LnvWa8JldNAjUCDjQw+x4C8t
         KE3btVeR8DBp9nC/YA3Zjgb98jKmxf62tTdJFBLN1EtNrLfM3NMv0NMeaQ85BjJpRaVP
         K7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789835507; x=1790440307;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FoBb+MCNrssOL4O5BLzYqYW9vzpXkaseLuESacaKWDE=;
        b=RCt/g9MVPOkK9VAgjQ2WtiuVUDbS9BDf0Wbzyn3pE4EII7lti6t3S1ZU5+dOxp69BJ
         AZ0BjzAMP7BEjM/BR8kfgyxywWd1cmUe+JoigYAibVN3H9tSSTWLw4U5q5UjeySktvuZ
         nDoz3MgbN1njukg8zOVccGn8f7JP2Xsugz6/tPifLGFWc9J1C8+31LsHiVcwAFlwlkfc
         qjZrFsAfa/shOew/3+6YGCdiWYnoBlcMlWefYdqL/7njy52SYoBCDS3S9u6vOGCeDd89
         hYwySQPcqRsRDSy0I4QmBbFcLV4PIJhxeYDUQpiQ/HWJV+KofQF0+oShnuZ2fBPZcry2
         n2lQ==
X-Forwarded-Encrypted: i=1; AKwUvBxvS1fqjb39VRi6HvwRaTmeagTSw1IvYsM2MBeys6MLdvRnlqGcTzsyNj5zLu6URZVF1hOCKuXZ0z4=@lists.infradead.org
X-Gm-Message-State: AFuF++kkhXzlJqavfMVmAhqcgGvU/KDEkAoybHA4T80yQMl14FUfxsNR
	Xon51seP0WV75xsR0ICpUN7nU27ZvdnGLr7T2Cw8AcO38yz9BI1XScz6xvivpfT1cpwU+xWyOb6
	1nhrx38r8NZHfknHv6EmP2730M+i9kjc=
X-Gm-Gg: AYBFou15RMKzGZbk6AgaTVp1DZ46EomzaWEdWivXKqXBh2zb1oD+qZqebZToChWDPpU
	p4gSifHKGL1Sf38+Np4sngatK+PXwfwfLU5/ddwXpQLtF8jSbEdNx7kn2tL/UN5rejQTyW7qh9Z
	ZJ8JmSHEQPwMtesDUa3uDV8HEHAKw443PpdEWvAAzcfy5M3ZzD/9WGsNHdFcDsU03gdrtiKCxwm
	F5owbNn07rKMDWwpjTttuAQc2lb8YELo6L73kUU2p8WQp2zkj0Ha7zQvhvTGxz7Nw6fYhdQohYK
	qEEPzEY4CLyS7mvlEuauiNfblYdpUZOsOcCw+QF4Vxeg1ATW78podcRtMw==
X-Received: by 2002:a17:906:2099:b0:c29:c575:de84 with SMTP id
 a640c23a62f3a-c2a164422b2mr337838566b.8.1789835507327; Sat, 19 Sep 2026
 09:31:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260919-s32g_serdes-v3-0-9d68868c1e89@oss.nxp.com>
 <20260919-s32g_serdes-v3-4-9d68868c1e89@oss.nxp.com> <6aabb56e-406f-4d13-9fd8-54822202039f@bootlin.com>
In-Reply-To: <6aabb56e-406f-4d13-9fd8-54822202039f@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 20 Sep 2026 00:31:35 +0800
X-Gm-Features: AcwNN1VbQyHS1-cJU3SdJ4oOQkYk_cjiBlklhRFTetXHOgzYOSwzbp6stXuvGvc
Message-ID: <CALj3r0g2FtxRRUDnG80SZJGSbpyBekTkd0R1ek-z-1h-d830ig@mail.gmail.com>
Subject: Re: [PATCH RFC v3 04/12] net: pcs: add NXP SerDes XPCS shared core
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: jan.petrous@oss.nxp.com, 
	Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>, NXP S32 Linux Team <s32@nxp.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@nxp.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Bogdan Hamciuc <bogdan.hamciuc@nxp.com>, 
	Ionut Vicovan <ionut.vicovan@nxp.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Clark Wang <xiaoning.wang@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <ghennadi.procopciuc@oss.nxp.com>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Richard Cochran <richardcochran@gmail.com>, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	imx@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	Vincent Guittot <vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_093149_618654_88A8832E 
X-CRM114-Status: GOOD (  23.18  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0OeaciDE55pel5ZGo5YWtIDIzOjMx5YaZ6YGT77yaCj4KPiBIaSBKYW4sCj4KPiBPbiA5LzE5
LzI2IDA4OjU0LCBKYW4gUGV0cm91cyB2aWEgQjQgUmVsYXkgd3JvdGU6Cj4gPiBGcm9tOiBDbGFy
ayBXYW5nIDx4aWFvbmluZy53YW5nQG54cC5jb20+Cj4gPgo+ID4gVGhlIFNlckRlcyBzdWJzeXN0
ZW1zIGZvdW5kIG9uIE5YUCBTMzJHIGFuZCBpLk1YIFNvQ3MgaW50ZWdyYXRlIGEKPiA+IFN5bm9w
c3lzIERlc2lnbldhcmUgRXRoZXJuZXQgWFBDUyBhbmQgYW4gRXRoZXJuZXQgUEhZIChQTUEpIHdp
dGggYW4KPiA+IGlkZW50aWNhbCByZWdpc3RlciBsYXlvdXQuIE9ubHkgdGhlIHJlZ2lzdGVyIHRy
YW5zcG9ydCBkaWZmZXJzOiBpbmRpcmVjdAo+ID4gbWVtb3J5IG1hcHBlZCBhY2Nlc3Mgb24gUzMy
RywgQ2xhdXNlIDQ1IE1ESU8gb24gaS5NWC4KPiA+Cj4gPiBBZGQgYSB0cmFuc3BvcnQgYWdub3N0
aWMgcGh5bGluayBQQ1MgY29yZSB3aGljaCBvcGVyYXRlcyBvbiByZWdtYXBzCj4gPiBwcm92aWRl
ZCBieSB0aGUgcGxhdGZvcm0gZ2x1ZS4gSXQgaW1wbGVtZW50cyB0aGUgcGh5bGluayBQQ1Mgb3Bl
cmF0aW9ucywKPiA+IHRoZSBDbGF1c2UgMzcgU0dNSUkgLyAyNTAwQkFTRS1YIC8gVVNYR01JSSAv
IDEwR0JBU0UtUiBjb25maWd1cmF0aW9uIGFuZAo+ID4gbGluayBzdGF0ZSBoYW5kbGluZywgc29m
dCByZXNldCBhbmQgcG9sbGluZyBoZWxwZXJzLCBhbmQgdGhlIGNvbW1vbgo+ID4gZmVhdHVyZSBz
ZXRzLiBUaGUgcGxhdGZvcm0gc3BlY2lmaWMgcmVnaXN0ZXIgc2VxdWVuY2VzLCBjb21wYXRpYmls
aXR5Cj4gPiB0YWJsZXMgYW5kIHF1aXJrcyBhcmUgc3VwcGxpZWQgdGhyb3VnaCBhIHBlciByZXZp
c2lvbiBkZXNjcmlwdG9yIGJ5IHRoZQo+ID4gcGxhdGZvcm0gZHJpdmVycyBzZWxlY3RpbmcgdGhp
cyBjb3JlLgo+ID4KPiA+IFRoZSByZWdpc3RlciBzZXF1ZW5jZXMgYW5kIHRoZSBmZWF0dXJlIGxp
c3RzIGFyZSBkZXJpdmVkIGZyb20gdGhlCj4gPiBTeW5vcHN5cyBwY3MteHBjcyBkcml2ZXIsIHNv
IGl0cyBjb3B5cmlnaHQgaXMgcmV0YWluZWQuIEEgc2VwYXJhdGUgZHJpdmVyCj4gPiBpcyBuZWVk
ZWQgYmVjYXVzZSBzdHJ1Y3QgZHdfeHBjcyBpcyBidWlsdCBhcm91bmQgYW4gbWRpb19kZXZpY2Ug
YW5kIG93bnMKPiA+IHRoZSB0cmFuc3BvcnQsIHRoZSByZXNldCBhbmQgdGhlIGlkZW50aWZpY2F0
aW9uIG9mIGEgc3RhbmRhbG9uZSBQQ1MsCj4gPiB3aGlsZSBoZXJlIHRoZSBQTUEgY2FuIGJlIHNo
YXJlZCB3aXRoIGEgUENJZSBjb250cm9sbGVyLCB0aGUgYnJpbmctdXAgaXMKPiA+IHNlcXVlbmNl
ZCBhY3Jvc3MgYm90aCBYUENTIGluc3RhbmNlcyBieSB0aGUgU2VyRGVzIFBIWSBkcml2ZXIsIGFu
ZCB0aGUKPiA+IHRyYW5zcG9ydCBpcyBub3QgYWx3YXlzIE1ESU8uCj4KPiBJcyB0aGVyZSBhIHdh
eSB0byBhdm9pZCBjb2RlIGR1cGxpY2F0aW9uIGJ5IHdyYXBwaW5nIHRoZSBhY2Nlc3NlcyBpbnRv
Cj4gYSBtaWlfYnVzID8KPgo+IFRoaXMgaXMgd2hhdCB0aGUgUm9ja2NoaXAgc3VibWlzc2lvbiBk
b2VzIDoKPgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjA5MTkxMjUxMTkuMjEwNzA4
OS04LWNvaWFwcmFudEBnbWFpbC5jb20KPgo+IE1heGltZQoKSGkgTWF4aW1lLAoKVGhlIFJvY2tj
aGlwIGFwcHJvYWNoICh3cmFwcGluZyBNTUlPIGludG8gYSB2aXJ0dWFsIG1paV9idXMgYW5kIHJl
dXNpbmcKcGNzLXhwY3MuYykgaXMgaW5kZWVkIHJlbGV2YW50IGhlcmUuIEFsZXggRWxkZXIncyBw
Y3MteHBjcy1yZWdtYXAgZG9lcwpleGFjdGx5IHRoYXQgZm9yIHRoZSBUQzk1Nng6IGl0IHJlZ2lz
dGVycyB0aGUgWFBDUyB0aHJvdWdoIGEgcmVnbWFwIGFuZApjcmVhdGVzIHRoZSB2aXJ0dWFsIE1E
SU8gYnVzIGludGVybmFsbHksIHdpdGggYm90aCBkaXJlY3QgYW5kIGluZGlyZWN0CihwYWdlIHZp
ZXdwb3J0KSBhY2Nlc3MgbW9kZXMuCgpodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA2
MDUwMTAwMjIuOTY4NjEyLTQtZWxkZXJAcmlzY3N0YXIuY29tLwoKVGhlIGluZGlyZWN0IG1vZGUg
aXMgdmVyeSBjbG9zZSB0byB3aGF0IFMzMkcgbmVlZHMuIEZvciBpLk1YIHRoZSBDNDUKTURJTyB0
cmFuc3BvcnQgaXMgZGlmZmVyZW50LCBidXQgdGhlIGJ1cyB3cmFwcGVyIGNvdWxkIHN0aWxsIGJl
IHNoYXJlZC4KClRoYXQgc2FpZCwgSSB0aGluayB0aGVyZSBpcyBhIGJyb2FkZXIgZ2FwIGluIHBj
cy14cGNzLmM6IGl0IGhhcmRjb2RlcwpiZWhhdmlvcnMgdGhhdCB2YXJ5IGJldHdlZW4gaW50ZWdy
YXRpb25zLiBSSzM1NjggY2Fubm90IHVzZSBvdXQtb2YtYmFuZApTR01JSSAoZml4ZWQgMTI1IE1I
eiBNQUMgY2xvY2spLCBzbyBpdHMgaW4tYmFuZCBjYXBzIHNob3VsZCBiZQpMSU5LX0lOQkFORF9F
TkFCTEUgb25seS4gVG9kYXkgdGhhdCBtZWFucyBlZGl0aW5nIHhwY3NfaW5iYW5kX2NhcHMoKSBv
cgpkdXBsaWNhdGluZyBpdC4gTlhQIGlzIGhpdHRpbmcgdGhlIHNhbWUga2luZCBvZiBwcm9ibGVt
IHdpdGggc29mdCByZXNldCwKcG9sbCBhbmQgRUVFIHF1aXJrcy4KCkEgY2FsbGJhY2sgaW4gZHdf
eHBjcyB3b3VsZCBsZXQgcGxhdGZvcm0gZ2x1ZXMgZXhwcmVzcyB0aG9zZSBkaWZmZXJlbmNlcyB3
aXRob3V0CmNvcHlpbmcgdGhlIHJlZ2lzdGVyIHNlcXVlbmNlcy4gVGhhdCdzIHRoZSBzYW1lIHBh
dHRlcm4gc3RtbWFjIHVzZXMgd2l0aApwbGF0LT5wY3NfaW5pdC9wY3NfZXhpdC4KCk9uY2UgdGhh
dCBjYWxsYmFjayBtZWNoYW5pc20gbGFuZHMsIEknbGwgc2VuZCBhIHNlcGFyYXRlIHBhdGNoIHRv
IHdpcmUKaXQgdXAgaW4gcGNzLXhwY3MtcmsuYy4gU2luY2UgdGhlIFJvY2tjaGlwIGRyaXZlciBp
cyBub3QgZXZlbiBtZXJnZWQKeWV0LCB0aGVyZSBpcyBub3RoaW5nIHRvIGNoYW5nZSB0aGVyZSBm
b3Igbm93LgoKQ29pYQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
