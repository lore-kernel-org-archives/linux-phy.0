Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 189D3C7EE43
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 00:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fZ0egBaxQrsTzfJvT4jWNht/3BFq300l+D1ypHdwf4=; b=QcQq3Ta26MxpfV
	lgl9SGo7yKtatVTIxfC1noDm6XE8aQIDbA2RkMOK/MLpfQzxJliRg6Lw/Dr9wvbMun+aTDZFuAqYI
	i87UdCm8B9sEtBB9A0oPjLDHVVLJPnXVigYjBnvKSox1YAq3pX6GI0jNXRGX+xtYmJT9vnFCTUfJS
	Rv3dWfHioyH5lb5DGmv9Yddcy3nWgrtBOLbm62j+gO8r4FXKgJCLDn78CAgULQrAtqFmi2Ajq76pw
	6/kM4LDJMRQh/UszecDAtpihberBPC+buofK+WdQzCYNIDe6gprujTCOgMxwGE9ay+EKf7IRxC9aJ
	Z0JNUbpiXj8tIse6B6ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8rzd-006Oct-2F;
	Tue, 13 Jun 2023 00:34:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8rzb-006Oam-0x;
	Tue, 13 Jun 2023 00:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=F9R22THjlPos5MtoTePp0zgW+NFy7C/TY38G1LYxEsk=; b=sMc1ufFAq+6HpLwNO9oNafVYrh
	NnCg7zA5Kcm508Eq0uYgoL7vt+If2IFyWujWhlZcc5GhmSE7K0dYTtoaXRzktxkpWHQr15qLa6KSe
	QxpUZV6u+Bl/naWOVlYpc3PQPek6T/PsM5y/A5MiVGQmRTEz6fU8071lPzXpqAXHFa6V0yaYkEGe/
	rXhDgkpO3WxfOb/gsBz9iN9DwxLKjdjz0Xzl/sAULHcY9A3FGKFmpbrA/mRxJPEAa+aW/fYDOJqZd
	N0zs3htDIof9OXJEhCUKcmF6jb+DSfmY2a/XgrXH/PvzLnSd2STe13QQg+DD/c/T3nA2f/GtF5uU2
	YfgRrTtw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1q8reL-003IIU-Uz; Tue, 13 Jun 2023 00:12:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 31E6C63067;
	Tue, 13 Jun 2023 00:12:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ECB7C433AF;
	Tue, 13 Jun 2023 00:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686615156;
	bh=fgQezU9Uhtd/cvT8fMXHuHFSkNX/SBX6F17ynk+Li7c=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=qpA4jI42/zyo7xTLzS4PdiFvs6Shs4bsvDP7FZ95DpUGkl5Mjs6Z7Qg28S75n5pS6
	 RR6Me5RUfUoCZTeWuhzve2bSQiYsVRHO35Oim0DLaEalBT9u71eJ+fPNkYqcn4uBeM
	 SE/Y+sgyd/s3KddBGvibVr9EPqrMspPYGWom/RzVYoQEauETXMjb6JWUu2rFVwdpg4
	 XjssPWBFj+pFXbXSB11GOincfTGTzmma7Rb5hnii5wg0JtTyHZBdrGY+wZRiGpSchj
	 FHTYgcWt7T0DGpx+svuZ+z9y1s+A8cef1LzLrzyC3cC4CMvW+RYRVep3SScEUodCym
	 48ZVwvYB5SHWA==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-4f658a17aa4so5035835e87.0;
        Mon, 12 Jun 2023 17:12:36 -0700 (PDT)
X-Gm-Message-State: AC+VfDzJCmubFUt0p1AHMWwCsSLBFOtfb6zProxTLyBqop9NeVZJzn/A
	LHWZVbD73WvepSwNos7kZTfotGDV5hVvoR5njA==
X-Google-Smtp-Source: ACHHUZ5DoNUKSvAIXqJyVR/dJqHjMXAJmhqi/nRReR8o6lChwcUCm3nF+VoA8dUPGUnBoXAPQ8cGXyQokNL17p9GqwE=
X-Received: by 2002:a2e:9012:0:b0:2af:30d8:527f with SMTP id
 h18-20020a2e9012000000b002af30d8527fmr3553372ljg.19.1686615154438; Mon, 12
 Jun 2023 17:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-4-angelogioacchino.delregno@collabora.com> <02a588ca-680f-ab45-1005-768d5b5db252@gmail.com>
In-Reply-To: <02a588ca-680f-ab45-1005-768d5b5db252@gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Tue, 13 Jun 2023 08:12:22 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9Heu3yzwbJgEpOwqabwpyTXMByFgcpoBojaM7MaRTUnQ@mail.gmail.com>
Message-ID: <CAAOTY_9Heu3yzwbJgEpOwqabwpyTXMByFgcpoBojaM7MaRTUnQ@mail.gmail.com>
Subject: Re: [PATCH 03/27] dt-bindings: display: mediatek: dpi: Add compatible
 for MediaTek MT6795
To: Matthias Brugger <matthias.bgg@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, p.zabel@pengutronix.de, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org, 
	kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, 
	ck.hu@mediatek.com, jitao.shi@mediatek.com, xinlei.lee@mediatek.com, 
	houlong.wei@mediatek.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org, 
	kernel@collabora.com, phone-devel@vger.kernel.org, 
	~postmarketos/upstreaming@lists.sr.ht
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_011242_249694_3F686267 
X-CRM114-Status: GOOD (  14.10  )
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

SGksIE1hdHRoaWFzOgoKTWF0dGhpYXMgQnJ1Z2dlciA8bWF0dGhpYXMuYmdnQGdtYWlsLmNvbT4g
5pa8IDIwMjPlubQ15pyIMjnml6Ug6YCx5LiAIOS4i+WNiDEwOjA35a+r6YGT77yaCj4KPiBIaSBD
aHVuLUt1YW5nIEh1LAo+Cj4gQ2FuIHlvdSBoZWxwIHRvIG1lcmdlIHRoZSBtaXNzaW5nIERULWJp
bmRpbmcgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcz8KCkFwcGx5IGRpc3BsYXkgYmluZGluZyBvZiB0
aGlzIHNlcmllcyB0byAgbWVkaWF0ZWstZHJtLW5leHQgWzFdLgoKWzFdIGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQv
bG9nLz9oPW1lZGlhdGVrLWRybS1uZXh0CgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+IFRoYW5r
cyBhIGxvdCwKPiBNYXR0aGlhcwo+Cj4gT24gMTIvMDQvMjAyMyAxMzoyNywgQW5nZWxvR2lvYWNj
aGlubyBEZWwgUmVnbm8gd3JvdGU6Cj4gPiBBZGQgYSBjb21wYXRpYmxlIHN0cmluZyBmb3IgdGhl
IE1lZGlhVGVrIEhlbGlvIFgxMCBNVDY3OTUgU29DLCB1c2luZwo+ID4gdGhlIHNhbWUgcGFyYW1l
dGVycyBhcyBNVDgxODMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBE
ZWwgUmVnbm8gPGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KPiA+IC0t
LQo+ID4gICAuLi4vZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbCAgICAgICAgfCAy
MyArKysrKysrKysrKy0tLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25z
KCspLCA5IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVr
LGRwaS55YW1sCj4gPiBpbmRleCBkOTc2MzgwODAxZTMuLjgwM2MwMGYyNjIwNiAxMDA2NDQKPiA+
IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVr
L21lZGlhdGVrLGRwaS55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRlayxkcGkueWFtbAo+ID4gQEAgLTE3LDE1ICsx
NywyMCBAQCBkZXNjcmlwdGlvbjogfAo+ID4KPiA+ICAgcHJvcGVydGllczoKPiA+ICAgICBjb21w
YXRpYmxlOgo+ID4gLSAgICBlbnVtOgo+ID4gLSAgICAgIC0gbWVkaWF0ZWssbXQyNzAxLWRwaQo+
ID4gLSAgICAgIC0gbWVkaWF0ZWssbXQ3NjIzLWRwaQo+ID4gLSAgICAgIC0gbWVkaWF0ZWssbXQ4
MTczLWRwaQo+ID4gLSAgICAgIC0gbWVkaWF0ZWssbXQ4MTgzLWRwaQo+ID4gLSAgICAgIC0gbWVk
aWF0ZWssbXQ4MTg2LWRwaQo+ID4gLSAgICAgIC0gbWVkaWF0ZWssbXQ4MTg4LWRwLWludGYKPiA+
IC0gICAgICAtIG1lZGlhdGVrLG10ODE5Mi1kcGkKPiA+IC0gICAgICAtIG1lZGlhdGVrLG10ODE5
NS1kcC1pbnRmCj4gPiArICAgIG9uZU9mOgo+ID4gKyAgICAgIC0gZW51bToKPiA+ICsgICAgICAg
ICAgLSBtZWRpYXRlayxtdDI3MDEtZHBpCj4gPiArICAgICAgICAgIC0gbWVkaWF0ZWssbXQ3NjIz
LWRwaQo+ID4gKyAgICAgICAgICAtIG1lZGlhdGVrLG10ODE3My1kcGkKPiA+ICsgICAgICAgICAg
LSBtZWRpYXRlayxtdDgxODMtZHBpCj4gPiArICAgICAgICAgIC0gbWVkaWF0ZWssbXQ4MTg2LWRw
aQo+ID4gKyAgICAgICAgICAtIG1lZGlhdGVrLG10ODE4OC1kcC1pbnRmCj4gPiArICAgICAgICAg
IC0gbWVkaWF0ZWssbXQ4MTkyLWRwaQo+ID4gKyAgICAgICAgICAtIG1lZGlhdGVrLG10ODE5NS1k
cC1pbnRmCj4gPiArICAgICAgLSBpdGVtczoKPiA+ICsgICAgICAgICAgLSBlbnVtOgo+ID4gKyAg
ICAgICAgICAgICAgLSBtZWRpYXRlayxtdDY3OTUtZHBpCj4gPiArICAgICAgICAgIC0gY29uc3Q6
IG1lZGlhdGVrLG10ODE4My1kcGkKPiA+Cj4gPiAgICAgcmVnOgo+ID4gICAgICAgbWF4SXRlbXM6
IDEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
