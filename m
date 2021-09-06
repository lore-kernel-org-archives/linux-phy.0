Return-Path: <SRS0=+kLB=N4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F008DC433EF
	for <linux-phy@archiver.kernel.org>; Mon,  6 Sep 2021 09:33:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1AA96056C
	for <linux-phy@archiver.kernel.org>; Mon,  6 Sep 2021 09:33:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B1AA96056C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aOENSxNgU4jHG33MXw4U8KvcLP6URcCpK/atxkc9SU=; b=TsjjFHh1dVHIfK
	++B3yN2S6TUQUMmibObti3FRZAvdBCsS/Ljzx5J90ESoQbIFyVzh+5yVBG471XwTH7CxfJMmNe3i+
	czPbuJKgf76dhqW/BlGlsaQjCg0FiIZ6kudz5U9RtqdXlzi+E65THvl7ujmRc+VgqOdOg0y+E1AwQ
	iN0apRWc3gDRELo1hpy35uylwvSjrNot+IT/n/GRe/smhcHysCE73tPano55upyM9vd45q+Z6wwj4
	bgOJu7dyPfo0FLs4cCK9A7VgMnwylN7GXQnE++Q7IMcU72jJQIJfXC3RkOGlTd9/C7Ke+chp2X83V
	D2Ou635yhyHSUUprnBbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNB0d-000OKs-5L; Mon, 06 Sep 2021 09:33:47 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNB0a-000OJZ-DU
 for linux-phy@lists.infradead.org; Mon, 06 Sep 2021 09:33:45 +0000
Received: by mail-wr1-x433.google.com with SMTP id x6so8815233wrv.13
 for <linux-phy@lists.infradead.org>; Mon, 06 Sep 2021 02:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=i2+NvsBgnBTOZ+uAcUxvlIaM13WedkLbcL6bup+H1UM=;
 b=q9eDwDZxue+JjKYKIP+w/ygZ5RrOIy/6a/V0xWsuwzRdA+DY9pSefRgNpnnYpm5BQZ
 jcdsEFl+fmxv1rv5K31l4dvYsDgRRwrUDRSzPK+5TxnLrRKkeZrRIMX8t00nTTDrCsNi
 uf638hMv8OsnzcALsgDmG4mf5Gq7vuKLtqqOIWfbZSTBJC9+5AAZImMHCH6jbKGweNZY
 0rFAtFa8MeWkgidZTVKx5NAsJxCv7TwpC8fsiZdr5uQa0ixm8d4bVKAPP52HXRvZ99cf
 Q+yyT+iPmmajoU/79Hm6iTVhB2TuOulKMfd2QGm1q9pIns3NH7VucMIJue0cMY68rhls
 XvRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=i2+NvsBgnBTOZ+uAcUxvlIaM13WedkLbcL6bup+H1UM=;
 b=Am28hDwR4ZWuTXTPh4onETL/mbDlHhxY3tECkXTW5EvNIe91Bl955z0bbgbe8iFYAL
 a6OhHdzAhvJK89qDugNxIv0w7sAU9p/J3/qJN7LdaSdrg5f+o91i430EU015OsFYBGd1
 hxPu3Q5alCFjArNR/sfZstEE78kD1Iswo+dd9vajAVxM8JyD0fDW3xZDWi7m52sMnn0l
 rZq6fFifaXwQOVHg96nS58b3uGWARVx+NdAKJogpPzbP5gGyY6/3V1YptObUWiM7g/0Q
 wLbS4mUko05LYkzmo10HzWR/UTUzGMjMcWfc7vC2mPsAbKZNVMq3Z4MpK/dRFC6AD1OY
 20qw==
X-Gm-Message-State: AOAM530ndlVbUbU7NlEEVlIxvjDwaoDdvuBqWAABVd0LA5RYNXRN3pIy
 lt/KHCRV77mu5zQyzGrCi1NdQg==
X-Google-Smtp-Source: ABdhPJzzIakAt8tQ+64AcWO9lDYlr4Dh32B1+kDEcgR0qe3zm7ry+opFn+4PQ93e0dV7eey6Ev0dkg==
X-Received: by 2002:adf:8006:: with SMTP id 6mr12342436wrk.38.1630920822630;
 Mon, 06 Sep 2021 02:33:42 -0700 (PDT)
Received: from google.com ([31.124.24.187])
 by smtp.gmail.com with ESMTPSA id i21sm7106080wrb.62.2021.09.06.02.33.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 02:33:42 -0700 (PDT)
Date: Mon, 6 Sep 2021 10:33:39 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Vignesh R <vigneshr@ti.com>, Marc Zyngier <maz@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-serial@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: Use 'enum' instead of 'oneOf' plus 'const'
 entries
Message-ID: <YTXgc/GhZVKzJR9H@google.com>
References: <20210824202014.978922-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210824202014.978922-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_023344_540709_F63919F6 
X-CRM114-Status: GOOD (  13.12  )
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

T24gVHVlLCAyNCBBdWcgMjAyMSwgUm9iIEhlcnJpbmcgd3JvdGU6Cgo+ICdlbnVtJyBpcyBlcXVp
dmFsZW50IHRvICdvbmVPZicgd2l0aCBhIGxpc3Qgb2YgJ2NvbnN0JyBlbnRyaWVzLCBidXQgJ2Vu
dW0nCj4gaXMgbW9yZSBjb25jaXNlIGFuZCB5aWVsZHMgYmV0dGVyIGVycm9yIG1lc3NhZ2VzLgo+
IAo+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+IENjOiBNYXhpbWUgUmlwYXJk
IDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gQ2M6IFZpZ25lc2ggUiA8dmlnbmVzaHJAdGkuY29tPgo+
IENjOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+IENjOiBTYWthcmkgQWlsdXMgPHNh
a2FyaS5haWx1c0BsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8
bWNoZWhhYkBrZXJuZWwub3JnPgo+IENjOiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3Jn
Pgo+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogSmFr
dWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4KPiBDYzogQmpvcm4gSGVsZ2FhcyA8YmhlbGdh
YXNAZ29vZ2xlLmNvbT4KPiBDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNv
bT4KPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4K
PiBDYzogTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPgo+IENjOiBEYW5pZWwgTGV6Y2Fu
byA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPiBDYzogZG1hZW5naW5lQHZnZXIua2VybmVs
Lm9yZwo+IENjOiBsaW51eC1pMmNAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LW1lZGlhQHZn
ZXIua2VybmVsLm9yZwo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXBj
aUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBD
YzogbGludXgtc2VyaWFsQHZnZXIua2VybmVsLm9yZwo+IENjOiBhbHNhLWRldmVsQGFsc2EtcHJv
amVjdC5vcmcKPiBDYzogbGludXgtc3BpQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6
IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9kaXNw
bGF5L21zbS9kc2ktcGh5LTEwbm0ueWFtbCAgICAgICAgICAgfCAgNiArKystLS0KPiAgLi4uL2Jp
bmRpbmdzL2Rpc3BsYXkvbXNtL2RzaS1waHktMTRubS55YW1sICAgICAgICAgICB8ICA2ICsrKy0t
LQo+ICAuLi4vYmluZGluZ3MvZGlzcGxheS9tc20vZHNpLXBoeS0yOG5tLnlhbWwgICAgICAgICAg
IHwgIDggKysrKy0tLS0KPiAgLi4uL2JpbmRpbmdzL2RtYS9hbGx3aW5uZXIsc3VuNmktYTMxLWRt
YS55YW1sICAgICAgICB8IDEyICsrKysrKy0tLS0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9maXJtd2FyZS9hcm0sc2NwaS55YW1sICAgICAgIHwgIDYgKysrLS0tCj4gIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2kyYy90aSxvbWFwNC1pMmMueWFtbCAgICAgICAgfCAxMCArKysrKy0tLS0t
Cj4gIC4uLi9pbnRlcnJ1cHQtY29udHJvbGxlci9sb29uZ3NvbixsaW9pbnRjLnlhbWwgICAgICAg
fCAgOCArKysrLS0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9pMmMvbWlwaS1j
Y3MueWFtbCAgICAgIHwgIDggKysrKy0tLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZk
L3RpLGxwODc1NjUtcTEueWFtbCAgICAgICB8ICA2ICsrKy0tLQoKQWNrZWQtYnk6IExlZSBKb25l
cyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cgo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
cmVhbHRlay1ibHVldG9vdGgueWFtbCAgIHwgIDggKysrKy0tLS0KPiAgLi4uL2JpbmRpbmdzL25l
dC90aSxrMy1hbTY1NC1jcHN3LW51c3MueWFtbCAgICAgICAgICB8ICA4ICsrKystLS0tCj4gIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC90aSxrMy1hbTY1NC1jcHRzLnlhbWwgICAgfCAgNiAr
KystLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9sb29uZ3Nvbi55
YW1sICB8ICA4ICsrKystLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9pbnRlbCxs
Z20tZW1tYy1waHkueWFtbCAgfCAgNiArKystLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
c2VyaWFsLzgyNTBfb21hcC55YW1sICAgICAgICB8ICA5ICsrKysrLS0tLQo+ICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zb3VuZC9xY29tLHNtODI1MC55YW1sICAgICAgIHwgIDYgKysrLS0tCj4g
IC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3RsdjMyMGFkY3gxNDAueWFtbCAgICAgfCAg
OCArKysrLS0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvcmVhbHRlayxydGwtc3Bp
LnlhbWwgICAgIHwgMTIgKysrKysrLS0tLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Rp
bWVyL2FybSxzcDgwNC55YW1sICAgICAgICAgfCAgNiArKystLS0KPiAgMTkgZmlsZXMgY2hhbmdl
ZCwgNzQgaW5zZXJ0aW9ucygrKSwgNzMgZGVsZXRpb25zKC0pCgotLSAKTGVlIEpvbmVzIFvmnY7n
kLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
