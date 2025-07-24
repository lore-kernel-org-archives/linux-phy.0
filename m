Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6482DC83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jul 2025 13:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vAbEddavCGAG7PRcmiKTfxh3XROkv3tFR5/r+SLtygk=; b=yxhufbe6zg5VOt
	omwbjpctX46RUywk+9tdPJdEoh3WCWRMNbcc/z150REI8BFNGFhmZhJKrjQvwrQJatylRyC75lLXm
	KyWd+emFRiQpjr9e4PHJLvkkFCcWnBNCJngQkpRGYHx/UgengW2MJ0vOVxVTHx4q+A5RzpoO4gqXy
	oLyLdyo+40mlf3zgaMkVksmUeuH4naV8h/bTK0qYEKJFSmRXVXeiembMQW+A/XrFtWG9FwRRaR5sr
	Rch1SdxLRpj4+DvS0Twa6lprSVZd7FdgVlUC03zaMpgnim6GSkeo57mjjRhXvBRnM2iHUczs1xxoT
	WDEDldlclR03gi0uCDbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMY-00000007YN9-0B8q;
	Thu, 24 Jul 2025 13:51:58 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesaO-0000000773D-0HAS
	for linux-phy@lists.infradead.org;
	Thu, 24 Jul 2025 09:50:01 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-556373661aaso697555e87.2
        for <linux-phy@lists.infradead.org>; Thu, 24 Jul 2025 02:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753350598; x=1753955398; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+1yeaes/5WO9C98Ce+RQRl+sqAXx+8dUlJLLdWKreso=;
        b=UilMd6ydkXPJuZtXQFJfn9tDX8OtQ36vfLIAzH1zlp+sOzK4WYbVjAaSEuHRRx0v9u
         Mogtm9tcMimyWXrcKMPbzmTaTHBpIenrfPabGSYAaN4EgNj7i9XX2DxnuvNXBLNIPtg2
         7EmRjbV5tttueCj9YWIW8hJ5OCgnFOuP93qAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753350598; x=1753955398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+1yeaes/5WO9C98Ce+RQRl+sqAXx+8dUlJLLdWKreso=;
        b=QdO3u3M0mkhi2otrhDijv9rAPJZ8SzyCGEKAqvWyigbGqOGUZLbGlpGSfnaSCewKHd
         wGOLtsqsXm0hmhHHHZpNfbjSKYc+gq7CEQxZddyrDYETsrJiOhfUAqLq02KNJlOVtNBu
         41lMepDOpg1knDOdJ4VEuwH516rkN5wcZDukLE0HrlDndqpmf4VrrunkA/jOLi1P/Bhr
         WWax6MBk4qf1uwnKI+sKhMjr8xBX0W/TK+VHPMXqHEttm3o3W6nBDaNwEtotGfO3755p
         QDDqp1x6OlxusyWG5iyC+fL0rpI52WRSwU4xrEfGhZ1amPmmTDcJuLIhhpdcVNt2M8RQ
         JBSw==
X-Forwarded-Encrypted: i=1; AJvYcCV4/tsmVlpxyUc452gZkyjf0D2iyJ8FwhRybB5Z12fkTkiXT1cQInLX8UYGp8knmnJO717cqA+XRAU=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4iRBjHebYbsHUOBqzSd1jjbpeTsgZPtOdrHcECCeqM2pIVu2L
	X6GpBsX0MqnkRDGm6HXEjQGKp1g3Ch6NkoblZAEcipSynTC7Zz0eALz3Vj2SJyo6UFQ+FdzEVH0
	uwXMkkGhs5ZBigJj4DEjHdMUdi5pV7Z1wyq0WFWVE
X-Gm-Gg: ASbGnctyfXw6+LgxVune8hBuZlaR/UGT9efqM7uPAtS8T+mtsnZdDr80L1tEtBwC0/Z
	NW+bCUfASHn2KT58RLyV5q6CtTxAAzUPXARWuiV2OzldzetbntC2s+mVVVLfctqL1aJehz+4xd/
	B6IOxej2PRBkwg6jSznDRITqWUdgQ+zMo0FxYVsJMZzF5H713zLMpIeBkb9FUZsq2gU/nQXeFNH
	PryYwDnApqbIl2PUVIT3tfVUmlBYrnPm8Q=
X-Google-Smtp-Source: AGHT+IGItj9eON5joXD9a2IIIdgBC35OTh38AkPzmXEBTTEZMPnEPcqJK3Z5OhBEkyMLKp8WCCWs6kzvOlePUXbqfGg=
X-Received: by 2002:a05:6512:239d:b0:553:2dce:3ab2 with SMTP id
 2adb3069b0e04-55a51354ddbmr1925545e87.6.1753350598082; Thu, 24 Jul 2025
 02:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-4-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Jul 2025 17:49:46 +0800
X-Gm-Features: Ac12FXyptxSYdnZvhVmVzcLhUSOXFaRzx8la2O9AgbSx3nJkJt7JLwM6IxluTrU
Message-ID: <CAGXv+5FWV+RtWUJW=e5pJKiSpeK57fHpTrst38bN=1OSgf6P9Q@mail.gmail.com>
Subject: Re: [PATCH 03/38] dt-bindings: mailbox: mediatek, gce-mailbox: Make
 clock-names optional
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
X-CRM114-CacheID: sfid-20250724_025000_112387_641B8C45 
X-CRM114-Status: UNSURE (   8.13  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNDozOeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlIEdDRSBNYWlsYm94IG5lZWRzIG9ubHkgb25lIGNsb2NrIGFuZCB0aGUgY2xvY2stbmFtZXMg
Y2FuIGJlCj4gdXNlZCBvbmx5IGJ5IHRoZSBkcml2ZXIgKHdoaWNoLCBmb3IgaW5zdGFuY2UsIGRv
ZXMgbm90IHVzZSBpdCksCj4gYW5kIHRoaXMgaXMgdHJ1ZSBmb3IgYWxsIG9mIHRoZSBjdXJyZW50
bHkgc3VwcG9ydGVkIE1lZGlhVGVrIFNvQ3MuCj4KPiBTdG9wIHJlcXVpcmluZyB0byBzcGVjaWZ5
IGNsb2NrLW5hbWVzIG9uIGFsbCBub24tTVQ4MTk1IEdDRXMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBB
bmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xs
YWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc3RAY2hyb21pdW0ub3Jn
PgoKQlRXLCBJIHNlZSB0aGF0IHRoZSBjbWRxIGRyaXZlciBoYXMgc3VwcG9ydCBmb3Igc3ViLW5v
ZGVzIHdoaWNoIHdhcyBuZXZlcgphY3R1YWxseSB1c2VkLCBwb3NzaWJseSBvcmlnaW5hbGx5IGlu
dGVuZGVkIGZvciB0aGUgTVQ4MTg4LgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
