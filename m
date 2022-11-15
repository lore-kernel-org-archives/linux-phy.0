Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 803D3C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Nov 2022 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqhHAw+4eXaBjw28mV6hkmTWzrYWCKo6c0r65rvUSb0=; b=O/6MjFYTQGsH0i
	EtY/QBReKImpGt7RDc44MTfk7efdgYfneQ6d4bgVyOAHMSxSa88MPq21lD7KLGPkM4XsSWjX8U6u5
	iix/ofSMJHRLOQDKK62zcPZpmmm6OIgblYT+bIqPt1fFuEN1wAJPrRKkLkwMLfsdDkCD7bo1jV9eb
	POEKUzeTZafCuh1apETq/7MXBqJPqAZ4h0L0ElOam87nkteI4pV7EP7Ioc4zBflnpzhvfWctDJY67
	7+UOsoJCIyY8JidyObhs8uW1Fegh5xqw/+RVO6WELBZ3KBqt8TO7QcZw+WMCCTZ4VNXgX6pO3Wtbq
	/gSt4r+xFmwMy5t8d/Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oup16-0086JL-Uv; Tue, 15 Nov 2022 06:01:52 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oup0w-0086D1-14; Tue, 15 Nov 2022 06:01:43 +0000
Received: by mail-ed1-x529.google.com with SMTP id u24so20349562edd.13;
        Mon, 14 Nov 2022 22:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Myor8n787DIBkDuVhefOsckVQpCRvL9+vEoJMW5tQZ0=;
        b=pPsj20BpS4ORtdE6mibv0QMuBA6Ig37PW4ZlcrAv+d715th7RdYh0EB2hkzYzQ116G
         l8a+1qOaYcWxpbDwBeO8aK4RJ7AWy0oJnUkQd2bgia2sBEy21hUDzkXmnjMiD7zcKhE+
         JU5HghiJELpmf4tF8PkOxK0+Yjo+EQWO59ou+P+UI8dmmJbbGbQ2V8OcAQ+/SNWUj/W8
         AEmsjk4NFxfkYxhGZraXXO7pxBTB+yUibGUwfN1co3AUZFvLQqrj6WNar9AE2SS/KuaN
         eE0qPp6XzMIZkYyo/QXK50m8fu/fA6Bxqze9Kxcqa01E7UavD9zQPNYjuGdfiMV4RrWp
         5mRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Myor8n787DIBkDuVhefOsckVQpCRvL9+vEoJMW5tQZ0=;
        b=Q+gpZo698xvS+MPkIRrB9HQ217xIYmrCcJKS7CMKsArtRzLv1iv1gjWYnjGOldDhNF
         EZuSykBY9+e+bEN2pT9jrFdafwPd5Kt99Ax4PpFx025/Te1qEl8acBQDxPFX41dTJ6IX
         hca0RD/9c5Suh0C4rafm5StosE5G9hXVv5u9dOtksYlwTTzA2y13alX8dI7f1DI5ktAe
         E2eYewDE3RT2oMR3N5OIwnaZc/r1hRrweP2Kmi/JiRnusHRdVb5QHyc3am3z5T1qN5FX
         9TmYhs5Vw4K/+b8GN6iPyztlAp3+k49+WR86yhqCsYSkJDWMyB/1txP7Hb3TVW8HAwWB
         TvMA==
X-Gm-Message-State: ANoB5pm9bZxN8xveYzHb0sXpePmVoyFk8PFsh7SmnRlFvYbTEHQlSmpR
	MuSeBKn4VhteM+XNjTfdft4=
X-Google-Smtp-Source: AA0mqf6i/3jHh060R/CT+OjGDanwY7AeoEfxktpAznZjdGnSsvDp8mT/+1qho0mFOEhF9tNVyrlqiA==
X-Received: by 2002:a05:6402:17c2:b0:459:443a:faf4 with SMTP id s2-20020a05640217c200b00459443afaf4mr13748008edy.297.1668492097365;
        Mon, 14 Nov 2022 22:01:37 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id 3-20020a170906328300b007aec1b39478sm4953604ejw.188.2022.11.14.22.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 22:01:36 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andre Przywara <andre.przywara@arm.com>, Vinod Koul <vkoul@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Icenowy Zheng <uwu@icenowy.me>, soc@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v3 03/11] phy: sun4i-usb: add support for the USB PHY on F1C100s SoC
Date: Tue, 15 Nov 2022 07:01:34 +0100
Message-ID: <4438485.LvFx2qVVIh@jernej-laptop>
In-Reply-To: <Y2ypy0CM8rJGu2g4@matsya>
References: <20221106154826.6687-1-andre.przywara@arm.com> <20221106154826.6687-4-andre.przywara@arm.com> <Y2ypy0CM8rJGu2g4@matsya>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_220142_088100_EB1CD813 
X-CRM114-Status: GOOD (  11.01  )
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

RG5lIMSNZXRydGVrLCAxMC4gbm92ZW1iZXIgMjAyMiBvYiAwODozNTozOSBDRVQgamUgVmlub2Qg
S291bCBuYXBpc2FsKGEpOgo+IE9uIDA2LTExLTIyLCAxNTo0OCwgQW5kcmUgUHJ6eXdhcmEgd3Jv
dGU6Cj4gPiBGcm9tOiBJY2Vub3d5IFpoZW5nIDx1d3VAaWNlbm93eS5tZT4KPiA+IAo+ID4gVGhl
IEYxQzEwMHMgU29DIGhhcyBvbmUgVVNCIE9URyBwb3J0IGNvbm5lY3RlZCB0byBhIE1VU0IgY29u
dHJvbGxlci4KPiA+IAo+ID4gQWRkIHN1cHBvcnQgZm9yIGl0cyBVU0IgUEhZLgo+IAo+IFRoaXMg
ZG9lcyBub3QgYXBwbHkgZm9yIG1lLCBwbGVhc2UgcmViYXNlIGFuZCByZXNlbmQKPiAKPiBBbHNv
LCBjb25zaWRlciBzcGxpdHRpbmcgcGh5IHBhdGNoZXMgZnJvbSB0aGlzLiBJIGRvbnQgdGhpbmsg
dGhlcmUgaXMKPiBhbnkgZGVwZW5kZW5jeQoKRFQgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcyBkZXBl
bmQgb24gZnVuY3Rpb25hbGl0eSBhZGRlZCBoZXJlLgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCgoK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
