Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B9C0C61D97
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 03:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5zKAl1CM9es+dFksgX5IRAdOm6W22E0LXwkKVIe1mk=; b=TBiLmp8QI4b8c5
	V7M090Fl+PcDMQaNHw6JxYmzF5kZR+vty5xZ8arp+uHiNDmoSbnBIJaPeXFmO8rDu+RTMcwr8wsue
	CckUpOj9M/nDaeBOc2Y/ns3ubE3UJ2ThjXthQXwgOCoBQhow+MyM7ul370/gFA+IJdy7Eq70TID46
	s0KCUzCY5nU6sREftauK8GDCRT8MC2/pTT3szF4FSL9Vky3np+s1BfdlKA1Z776Pfed+Ja1CvHwf8
	F77YFTba/OkjoIhGYO8cOZe4Vi6SU7OObV8v4S2iwFjRtpNtLwAXMlLk8sRWV/kywN7u9GDV5PBSl
	rxuv/tn8Q8DbUcGXL3Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6N7C-0064Xy-2L;
	Fri, 24 Nov 2023 03:44:26 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6N79-0064WG-0C
	for linux-phy@lists.infradead.org;
	Fri, 24 Nov 2023 03:44:25 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50797cf5b69so2045991e87.2
        for <linux-phy@lists.infradead.org>; Thu, 23 Nov 2023 19:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700797459; x=1701402259; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RcJej9WUdZZWtLL0jZR7KWhn0SxMMquSiq9yLi1GeNc=;
        b=mGB8MZnWgFGu+daDqHkRn3ZpUVVlY+DsOpvM3lqnuCMx9DgV0+BbXRj8R+ON1owkGj
         XkFjliYHuUijepvYLPgxyRi4XqDwXNynqPtI25TDXi118hqdbOd1CU2e+exGtf1d/cnP
         OvymZ7c+eye37yqaeJsBwSYIEdP12gDbK4zRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700797459; x=1701402259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcJej9WUdZZWtLL0jZR7KWhn0SxMMquSiq9yLi1GeNc=;
        b=sCdIUWsIqGw8btkb+VMCeBPrglaMAVsO0qhcyXVhR/akZ7ejn2v2TlF0NiazhNDn0l
         MUOBizCobJRLzsVRy4ah8A+g1Wz8+hZSUNsJtmFovXHLUFhKNUYqLKzPY53M/bKNT9gB
         28vMlJkxB+hRdP8gp92de9t5gyZljN4uWP63zbpVXH5+WY5C0H7xd1B4aTsesjg1pNA6
         fd5w8OSZCjsy0zICw5OfFwvBzg04iI2dg5G26QfA44Q5zZCDaHckbHbX3tZ6VWK1RMAp
         b/SHguq8WsTOo+k5dFC9Qje+xIZitx15gWQUe9h9yn7lbm3Wh2oVzEgC6/lXW04rVZ7+
         Kglw==
X-Gm-Message-State: AOJu0Yz/rhD1i2gY3/rvcpR/CX6Ro/SJczC50RJyRCRx1/L5yMFWUkHd
	qb9DTsRdAEFyFe9Iw3JpuXSTFzv/ByRtxJGJL4Jpyg==
X-Google-Smtp-Source: AGHT+IH7191VcJzspX2lbzBmIE7QpGIGT/USZRwoE7pZJ5nRJbeokYOjJ7hZq8T0ALMqi3yp2bhgV8yGSW2RcGOPhbU=
X-Received: by 2002:ac2:5dc8:0:b0:50a:a9e1:6c58 with SMTP id
 x8-20020ac25dc8000000b0050aa9e16c58mr703080lfq.32.1700797458184; Thu, 23 Nov
 2023 19:44:18 -0800 (PST)
MIME-Version: 1.0
References: <20231123133749.2030661-1-mwalle@kernel.org> <20231123133749.2030661-4-mwalle@kernel.org>
In-Reply-To: <20231123133749.2030661-4-mwalle@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 24 Nov 2023 11:44:07 +0800
Message-ID: <CAGXv+5EcT3OjyaW6LkARugWZN2AE5TWRx=Bh5TqfVBG2tcs5Ew@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: mediatek: mt8195: add DSI and MIPI DPHY nodes
To: Michael Walle <mwalle@kernel.org>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Xinlei Lee <xinlei.lee@mediatek.com>, 
	dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_194423_151690_48094230 
X-CRM114-Status: UNSURE (   8.42  )
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

T24gVGh1LCBOb3YgMjMsIDIwMjMgYXQgOTozOOKAr1BNIE1pY2hhZWwgV2FsbGUgPG13YWxsZUBr
ZXJuZWwub3JnPiB3cm90ZToKPgo+IEFkZCB0aGUgdHdvIERTSSBjb250cm9sbGVyIG5vZGUgYW5k
IHRoZSBhc3NvY2lhdGVkIERQSFkgbm9kZXMuCj4gSW5kaXZpZHVhbCBib2FyZHMgaGF2ZSB0byBl
bmFibGUgdGhlbSBpbiB0aGUgYm9hcmQgZGV2aWNlIHRyZWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWVsIFdhbGxlIDxtd2FsbGVAa2VybmVsLm9yZz4KClJldmlld2VkLWJ5OiBDaGVuLVl1IFRz
YWkgPHdlbnN0QGNocm9taXVtLm9yZz4KCkkgY2hlY2tlZCBhbGwgdGhlIGFkZHJlc3MgcmFuZ2Vz
IGFuZCBpbnRlcnJ1cHQgdmFsdWVzIGFuZCB0aGV5IGFyZSBhbGwKY29ycmVjdC4gVGhlIG90aGVy
IGJpdHMgc2VlbSB0byBiZSBjb3JyZWN0LCBleHRyYXBvbGF0aW5nIGZyb20gcHJldmlvdXMKY2hp
cHMgc3VjaCBhcyBNVDgxODMgYW5kIE1UODE5Mi4KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
