Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDD44C5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 12:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/5K9Pdls/kvPLQaq26c/Ucu+Rb0kw79AZKaj1Yes2k=; b=JABVdQP56+v0/1
	dmkpN6rPVElZwRe3jyGcHLofiKkmKlRY6a++SJiSTpWMnAcP5YxS4xoM5nm0hZh/rWifJaS8vasNS
	/bdeO1F7uIfZ7l40UKWUZ9THvuhLGFPusUYO0QiKTEwAvgB0E57jvtsqIO2lMWg/f38c2GxE+fXt3
	mJ1riYpTr135On2Ey7BqZqDIW4VnlaxHgp5+UMCqkSxRXhFcfvZj4gQHrt1R43HTG1WGbQaPw2xSZ
	wVKuFBGnAPxCKLLAcj9yOnCvU9vtjyc4P9d5PwSyZYXM4i83Ukv1xkB6FA4wgXIQPRwtknous/qB1
	fuOldg9ufzUp6Mfe0QXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtPIZ-0000000BnFc-0gdA;
	Mon, 10 Aug 2026 12:40:11 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtPIV-0000000BnDX-0m5V
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 12:40:09 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-6a09571dd5cso223569a12.2
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 05:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786365605; cv=none;
        d=google.com; s=arc-20260327;
        b=EYH71YlO+Zs4HT88SL4VvR48q6JpxXV+Tjz6/giFsIAnXEKWOQE6N+alIyae6jZXGc
         FDySwxjmBoaDYKp/xIBk8GfUlYunA6zEJXD5fJERM5btTR6i/T4LFvqBRHlDGTyAutWD
         kkD6xJOR9Z/h5hvOMwkZm0qRlRRVGJaHgJTfbnk/M6og+QLOLTZV08Pk7wqh+fJZOr+g
         7kB5aB5zDgKo0NhwKapIevgKpIUB2WITflzxuOf3+R8rgWYIvw1KLahksePVsUcGEnPw
         yi83Qv/piTRC8d1AKdIrtuiArfxHp6EQxBwblMurauab9HqRevXWDcSZyFzetj+XnE3b
         BTRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HzTjFhFkoXBLwd3NrSqY+4yLtTn3dkc2guIu8OqfuBY=;
        fh=+KHNgPtn+nbbAFiD75VB7y2S1USqZh8yH5Q0SessibM=;
        b=OoJpTxZa+61WNPpK+Qd9T1vxGmpFG6whZgWG5reKFITxSrfHeaUgYTnYYeucpXB5St
         6qYgOt3NQfUYKWGfVGkubqqUbmTEASzX73bwk8OAdjuUC2HQaMePtrt6TU+tCBOz/t3E
         1hnhrPTQVsEk+Vcw7EAYM6/Sm36CuAp8WrWJNknoxGvRUHGV64xRE93Jspch1/I7JI43
         CCAlWi61R3uehlWR0o+k3QmgKaIrhDDhuUi3tEZiNSsDDMHPX/D+eKqnU3GlLh97m/mi
         GvpbpqR7uMLZF+E6DuCr6RXFILLL7Mlan3NZ3ShAatDHyMC/B66189XLRKKG2Etvv7Jy
         9kmg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786365605; x=1786970405; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=HzTjFhFkoXBLwd3NrSqY+4yLtTn3dkc2guIu8OqfuBY=;
        b=PR5nFMryVpJbDZV8Drw+9LWFh0nMklw469A+ju5qtocKcjhJlj7vGxFArI6Fw4R/d6
         FQH2Lyx5GO+iLjT2r6rLLw1LB3kQfgqOBDSZhK4gVfBCXoXgdEfFJJ+eNshUOeIMRaeP
         nIMTz92CyzDy7JQPfEc9A8A1/t71+yyJL+GAl50ZYfe8eSYifi3S61+yIQDdf3LrWKJk
         C1/9cQXhYTRCdlXGph/oC7SLIhsbx+oDpi/Xeou9utf+96jJCwHwgG9SeAYy1B10WtOA
         08fGbYN8Yqfh83w3Nu8w3TWPcv0VFy7iK35exa2gQp8PqxviMb9+Pe5Lk+/blcLLH9Qf
         KIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786365605; x=1786970405;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HzTjFhFkoXBLwd3NrSqY+4yLtTn3dkc2guIu8OqfuBY=;
        b=rwqs522GiFxzct5/6ymU00ikXov4NyWI0OsC8g/IUxenBLXYSzZ2qVcGp0egiT1VIN
         25l+iLjTaIwHbbksHasY+ZV8XkNXbFK43mnO9blVhml13B1AnM+Z1rZi1UfNNYFyUSy7
         EVXW+ycP3JTYEmy/mTcxa5S5ZW6GGApXHzUCuqHekFif7hmydgp2IjZzUUmfXfDFy9i9
         iC1dRMbEa7V54MAq8Ai8R3yBpM0qmp74wQ0HNvZo9C0YAOqu9jWPAA3Sjj6PpCyTOxWK
         zYyb6E8fvSbFjpNyK2GVsE70dAk+QT7k6A7/ttm2z64t6K4E2yag9FJqnqIoSiyjRnf7
         55xA==
X-Forwarded-Encrypted: i=1; AHgh+Rrjktu3LzXBj+6T9PpCVSw+i6uIgxSMVeFUaBdmgPyXK57T86kTsQTKeFK+H0UOTAGWG2L84YMYoIE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzNEXiMPJjakEgSjR8FHUDx0ZljM2qrAlocnuKTX/BencOSD/Ox
	d2kn0hylDt4zT/oTlln5jcm/vjIuCexdxK3W2tADWyUFgj9JliGsmDg4fFXEkV/vDxFOIo0kzPx
	tUrzxdAKL7RGPTwvjP/KNaXgZl3tJkWQ1TJ5iUUs=
X-Gm-Gg: AR+sD1110yrCct2fRlYHkfLIXTH8lFCqBiOTvN/LjOcNlkW7JHU+CttsRBK71TanvGh
	MmfmeTTfGrI3i1hWSrYPJTpwcxH4D3VNbE1iYKrzGO5lKhwZEucrWhYbwA2iIjA7/2uoQfwSbYm
	eBzyyNp4Y0W1PK4a+Lc1FszmyYwlWMW32inyP0nPHu7FoR2dWuX+vLzL1ODjqPhpD0qe0Q83bEE
	lMvB8pLW19nNAufE0MqZ4OeJBElCrWpBIlWniYOH9loYPY4ZASKefO09EKh2lBRHkqpO4BQ7QvM
	cMSpba6wtFVgm15vfZW8FlBSUQ2TuZ5qqA7ViK79LQ0SjdwBf+/pJENptYWmrMzMG9yph8Rrl1K
	pvQ==
X-Received: by 2002:a05:6402:2351:b0:6a1:fd14:8829 with SMTP id
 4fb4d7f45d1cf-6a1fd1489dfmr3529309a12.4.1786365602791; Mon, 10 Aug 2026
 05:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-3-cf9cc34a412a@gmail.com> <7e55b8bc-d11d-4b25-99ee-d5d181be158f@collabora.com>
 <CAPwA33Jnp6N7a=2tcrgEzFxXRpbxEO25ktrRDiea--9Uy5upNQ@mail.gmail.com> <00d6ee9d-0ef1-41d4-8cd7-affb320b84f4@collabora.com>
In-Reply-To: <00d6ee9d-0ef1-41d4-8cd7-affb320b84f4@collabora.com>
From: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Date: Mon, 10 Aug 2026 20:39:50 +0800
X-Gm-Features: AUfX_mwg7RyitAzo5nWhArTwTiYbA1EMZOXHMkTdNy0X60zc4wq-eQxbT6UdjPw
Message-ID: <CAPwA33KHoH6AM7HLMQSBMwy2-TS2A_J=QyLwcg-S=t2yQ+_78w@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] phy: rockchip-samsung-dcphy: model TX and RX as
 separate PHYs
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_054007_240413_98E84E77 
X-CRM114-Status: UNSURE (   5.57  )
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

TWljaGFlbCBSaWVzY2ggPG1pY2hhZWwucmllc2NoQGNvbGxhYm9yYS5jb20+5pa8IDIwMjblubQ4
5pyIOOaXpemAseWFre+8jDA3OjAw5a+r6YGT77yaCj4gWy4uLl0KPiBPSywgbWFrZXMgc2Vuc2Uu
IExvb2tpbmcgZm9yd2FyZCB0byB2MyEKClRoYW5rcyBmb3IgY29uZmlybWluZyB0aGUgc2hhcmVk
IGJsb2NrIGFuZCBmb3IgY2hhc2luZyB0aGUgR1JGCnF1ZXN0aW9uIHdpdGggUm9ja2NoaXAgLSBt
dWNoIGFwcHJlY2lhdGVkLgoKdjMgaXMgb3V0OgpodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjYwODEwLWRjcGh5LXJ4LXYxLXYzLTAtYTJkMjVjMjlhZGZjQGdtYWlsLmNvbQoKVGhlIHNoYXJl
ZC1ibG9jayBoYW5kbGluZyBmb2xsb3dzIHlvdXIgc3VnZ2VzdGlvbiAtIG9uZSBzdHJ1Y3QgcGh5
CnBlciBQSFkgd2l0aCBhIHVzZS1jb3VudGVkIGNvbW1vbiBibG9jazsgdGhlIGNoYW5nZWxvZyB0
aGVyZSBjb3ZlcnMKdGhlIGRldGFpbHMsIGluY2x1ZGluZyB3aHkgdGhlIGhlbHBlcnMgZW5kZWQg
dXAgYXMgZ2V0KCkvcHV0KCkgYW5kCndoeSB0aGUgR1JGIG1vZGUgc2VsZWN0cyBzdGF5IHVudG91
Y2hlZCBmb3Igbm93LgoKVGhhbmtzLApKYXNvbgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
