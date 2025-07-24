Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 997D7C83F26
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxZU/6HD+OgNPZK0Ps0Lv4yghIfyTsiBinS59doOPrY=; b=zJX+ojY85Z+EJN
	NevO52EaNEokFWMj9X8fkJMpATYC+D7Z4xu3QFutqxoVVUcfU+0qatSM5Td3zJWm8WOR3Q77yOWJm
	bueZOHk2dSFc16K99zHRY1/cvT/Qxtm31u0KnHDMsI+jlGK5JWG3TyMYRUbI4e8sV9yCpv78+tB6L
	tlDWInZ6KWJGnDzWedQOy4RfZ21qNLcPbiZH4nHCsa44M2y7prywX5ELr31Tp/KIKdlK9JpEKmzFG
	HWW4OUi8lH2k3SkPkzlNLXuy6J+UC6Dm/GVdAQ2l+JkLgMTo8stDlS2RnXBF0VIIR5okDUJ4rMqdO
	n1+ZARA0evnfxJI1fGvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMj-00000007YY4-1R8n;
	Thu, 24 Jul 2025 13:52:09 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesj4-000000078hc-1OAq
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:58:59 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-553dceb342fso636959e87.0
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753351137; x=1753955937; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3lDH5ARB26e8DbHF4MxQq93Rk0WGstJeVZQEGstfRkg=;
        b=AFw4ho8NB2sgedY6E+qFCz1scUlwPRX2GkGzjzH1rzcicH54LCblL2oaqSO2CV5Dwi
         39k0ARwKiXBR4XSu70HvyFImEN/DD0RhYOCvy8WNF1fbMIGxhOAViFX/gmKIaz9z2KZJ
         iOYMPxixyp0V7TqVOLyk8jJoVel8UVstYNSOA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753351137; x=1753955937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3lDH5ARB26e8DbHF4MxQq93Rk0WGstJeVZQEGstfRkg=;
        b=A2nZLEmYGf0V3VYRfETWyRnIr80XglBCvthiGRCycwIify6Ve4SmrSKTN49M5olJbm
         TkTQCxHLxOYk6RJ6qMBACaJKSOy2cDNAQOKG3V3YlOhMmIPmDz+8U3PmZ0IsABgCCZp0
         H3o9FHhbbjqrqnZ7JDK6/aT6IYOSKZ1S1e1iijxDUz+SZxCooN64DL1JUowGNsv6DoDU
         M5oF3nWVqmkYNq7uz19A+Bn3foz0+Kc91W2l7oC5nm9LhB+nDXbjAj929yuhtTskcqye
         TEMXAH679V1KGQZmd6AesTb7FwInAKXM7OYTNzYlfesinklU/VByjB4v+yAYF2daz8jf
         wb7g==
X-Forwarded-Encrypted: i=1; AJvYcCWzomt8Pyeo4m1LFS2U4WYSDi7NMbvpwDyUnkadQMsYrwvOaHL8BPwNDRE/mNYA4BepR6QpXKVta80=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYFw5Sk8YFUYIyr1EmTL2Cohb05Q3nJBqnDJUFCvUnUIsrb4yI
	FNtNzcFvSMdSDSFs0I/k9eLyqbBZTHxp60zrHSX5Oyh/oaqaeuAisEUNDq9CeDpPXFa0EXPVOgw
	DLERtCpGjPP/A5HAyJIQXyGt6VAFGvqBLoaQoq/17
X-Gm-Gg: ASbGncuZf4GuEvp6m5+DxjhRpAmUqEu1ufDou2M3eJweCQwogWg9UHRDskxy6X2vZXn
	z/Vskpc6TYuqJJp0ue+NNXg+Od6YQv2fckzVxaWULbr4CbwdjtgY3ucAq+kEUTH6bD9FUFyfj+/
	cyjVH2y8Wn9TolJCg6XGKkXBSRssvMpfZxHS5YQJaj8KGCv7ZcvvumsSSafaGWLvgGrX96K+Ov8
	qhzjky9bu3rNGKo2g/UU4fe/XUfRpaPrfI=
X-Google-Smtp-Source: AGHT+IFbWpnNaQRMkmMGCWJwKWLSFPCgKrpUVJhkWhmCg8wuzEAglTGmiTQG4cugbeqoeX5uFAZWT86WnfNSaUywLGk=
X-Received: by 2002:a05:6512:60d:20b0:554:f7ec:3b23 with SMTP id
 2adb3069b0e04-55a51359f3dmr1559012e87.15.1753351136563; Thu, 24 Jul 2025
 02:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-37-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-37-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:58:45 +0800
X-Gm-Features: Ac12FXwhroXh9igzrCvp17h0_fa0JxIrUDzrCtprSHzHickYMU-wGcIvqxYBtBo
Message-ID: <CAGXv+5G3kbSzs99mogy57mh+LUdi_87zBmFH8GQFWvROhLFbDg@mail.gmail.com>
Subject: Re: [PATCH 36/38] arm64: dts: mediatek: mt8195-cherry: Add missing
 regulators to rt5682
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, krzk+dt@kernel.org, 
	conor+dt@kernel.org, chunkuang.hu@kernel.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, jassisinghbrar@gmail.com, 
	mchehab@kernel.org, matthias.bgg@gmail.com, chunfeng.yun@mediatek.com, 
	vkoul@kernel.org, kishon@kernel.org, sean.wang@kernel.org, 
	linus.walleij@linaro.org, lgirdwood@gmail.com, broonie@kernel.org, 
	andersson@kernel.org, mathieu.poirier@linaro.org, daniel.lezcano@linaro.org, 
	tglx@linutronix.de, atenart@kernel.org, jitao.shi@mediatek.com, 
	ck.hu@mediatek.com, houlong.wei@mediatek.com, 
	kyrie.wu@mediatek.corp-partner.google.com, andy.teng@mediatek.com, 
	tinghan.shen@mediatek.com, jiaxin.yu@mediatek.com, shane.chien@mediatek.com, 
	olivia.wen@mediatek.com, granquet@baylibre.com, eugen.hristev@linaro.org, 
	arnd@arndb.de, sam.shih@mediatek.com, jieyy.yang@mediatek.com, 
	frank-w@public-files.de, mwalle@kernel.org, fparent@baylibre.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-sound@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_025858_388513_1ED5D9A2 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDo0MeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
QWRkIHRoZSBtaXNzaW5nIERCVkREIGFuZCBMRE8xLUlOIHBvd2VyIHN1cHBsaWVzIHRvIHRoZSBj
b2RlYwo+IG5vZGUgYXMgYm90aCBSVDU2ODJpIGFuZCBSVDU2ODJzIHJlcXVpcmUgdGhvc2UuCj4K
PiBUaGlzIGNvbW1pdCBvbmx5IGZpeGVzIGEgZHRic19jaGVjayB3YXJuaW5nIGJ1dCBkb2Vzbid0
IHByb2R1Y2UKPiBhbnkgZnVuY3Rpb25hbCBjaGFuZ2VzIGJlY2F1c2UgdGhlIFZJTzE4IExETyBp
cyBhbHJlYWR5IHBvd2VyZWQKPiBvbiBiZWNhdXNlIGl0J3MgYXNzaWduZWQgYXMgQVZERCBzdXBw
bHkgYW55d2F5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8g
PGFuZ2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCkNvbmZpcm1lZCB0aGlz
IG1hdGNoZXMgdGhlIHNjaGVtYXRpYy4KClJldmlld2VkLWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnN0
QGNocm9taXVtLm9yZz4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
