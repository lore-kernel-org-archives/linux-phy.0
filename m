Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B45C0C87FD2
	for <linux-phy@archiver.kernel.org>; Fri, 25 Jul 2025 12:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JL4zU6mzquZyrq1hjEh7qFO5+4R1FXQmJXPwSJqg2eg=; b=NPZ6rcF2BzQNap
	SEkKUd2PVZSVM80CDJZ1d6fmdEEpvgp7SWqQCiMjVuHFE7QpGKjaHINUmxZdfZoICSqTehV0KVLqQ
	+dMwKfDUMMXG9bVZsVcb/YA2R7R3N2ncKPBT+eIHoyvyeZrQxkJBOlxBrzzRweXl7nPuJm9tbYFm8
	sUgzvQmHxFIistGjDv5OpaBn6RNDjxfsU1Fc3mFolEFFgCpEFq1i/SuYUdmlhyn8NsF/gLhn4Hc62
	1sQidF0kV/sR5qNsf7pPM9MOKp7LyI2tctX3iDr5+9sh6fGcJqfHLW9JH/rIvd2xR6QnPRrei6Gc0
	+8jZTt0+Jl8qdOnVzYLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufHNS-00000009nkg-1xje;
	Fri, 25 Jul 2025 12:18:18 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGzr-00000009lEG-0LOA
	for linux-phy@lists.infradead.org;
	Fri, 25 Jul 2025 11:53:56 +0000
Received: by mail-oi1-x22e.google.com with SMTP id 5614622812f47-40a4de175a3so1281684b6e.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444434; x=1754049234; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lj71s94DBO5ChtWnhYstkEV7QIcBC/2WSymKueRnDS4=;
        b=amdi2qN5ZMdwevgA/AcaS08r0dLDDEm1UIzrqp+FVbPnFH0xsfFsa2fqVggHbtr4vP
         AbmG7yhpcEuds/AGQZPsN15l6cg9lxPfoWT1O0JrvLaPOLm9ZX7w1WICSYO9Ks/kz9bO
         cJtKyS1/suRD0M29cXLTJ1Zf7NhW5k+OcHalo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444434; x=1754049234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lj71s94DBO5ChtWnhYstkEV7QIcBC/2WSymKueRnDS4=;
        b=Vq+GwQviEN4bJTAYBGrPIZadej4CvXzIVIYT2WUCR5G7OcRJzWlZ37Go0lEwK/8g3X
         lnDi9ovo0czhULGSOK2LisFKr5L8WvEDYx2Qe2YsHYRVcNffrTdMHLeD4ni0pTFtw51a
         13vJtlFUPeQVAMVrdGk0eCH19qf1DDKTkRPC7BwSCkPsuVewdiufL78gVObZQMx0sjUq
         hynqolKBzkkIiBar72dKWD+3ayYrmo6KUxihWatkZBLjngooHy7pdtvDbi4cnwh8X/FY
         72tvrbCFTXxc6s/N1JE/4PuYAnEyDc6JKYYq/iPakpzP52Ir8ndTTxA5BvmwxZSJ11sU
         Rrgw==
X-Forwarded-Encrypted: i=1; AJvYcCWcP24P4k1WhAOCOe7/v2Rxdy8ESp6QkqMnZd37jtygK+DSqdhhC/JmKB8lXY91ZyaJngyxC7wwS/o=@lists.infradead.org
X-Gm-Message-State: AOJu0YyA6kkYBeH4vLv5ZseEi1vIh5rqt+09ijr+2T1IgzLmVaTeyOPX
	3AZYfTfMYSkWfnOcySGLVZbAbyaGtQmeTUEhXCeXN7tcmXDxlYRmWzO4+x1eanwqahlD13cJmgM
	Wd5I=
X-Gm-Gg: ASbGncuL+HpCk36M4+/AW0MkJSgFQ1lmlndq1oc7yxm6udw1yB6xvbiEMqRdEHMbPgD
	OqZdvpbmk/MWwFEGqsd1vC+uZzA5I3HSR0T2S6BW6Y1P3NjvyqMzE5dxFSL2EU+7xyzTpSrfIZU
	ONDGrqm4Mr94/l7RzTu0DsS31wUcvesDuAES0K+VCOk8mEoV7ov8igvm3sJaQzzPaI2Rcett4ni
	+fwsK04VGcGBCUyniyqCbQxGEkpvQbgVw1u3+49m3dula/f4CVm0OetZwzVdfIlGbApU2DOkXHq
	KNhvcCeVdbEKahhB9fDSI6DyiPF36noEPQN2rjCsh2SyuTK/zju/Kjrrkzj6IlDfSa2I9IyE+hJ
	dyBUIiQQAV50oLVuXsxIfIXlsE9fgzlVWZ5WwA7tcNLWF1i/7yFHgpFVrAw==
X-Google-Smtp-Source: AGHT+IFzuw6TrNovZb1xvonEvCvtuRxMeOXFUqlJpHmupIa5DfLoLN4bWLJCgjgnn48sHr8q7sQAjw==
X-Received: by 2002:a05:6808:4fe8:b0:406:6e4b:bd91 with SMTP id 5614622812f47-42bb71f6138mr724023b6e.7.1753444433975;
        Fri, 25 Jul 2025 04:53:53 -0700 (PDT)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com. [209.85.210.54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-618fb4e54f7sm467433eaf.34.2025.07.25.04.53.53
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:53:53 -0700 (PDT)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-73e82d2ec9eso1199932a34.3
        for <linux-phy@lists.infradead.org>; Fri, 25 Jul 2025 04:53:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVd8PNOjI7dLli+vS5yJZwRsuSvHDXcy96UoMESvtzpufeyIqe5B6Sr3zC0yCanABQyQd628SgSyIo=@lists.infradead.org
X-Received: by 2002:a05:6102:358d:b0:4eb:f003:a636 with SMTP id
 ada2fe7eead31-4fa3f8f1683mr313640137.0.1753440679035; Fri, 25 Jul 2025
 03:51:19 -0700 (PDT)
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-25-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-25-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:50:41 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhS8yY6iWNDfv4Lwz8zUJEy0nMxC5MVZGb983hDsg7bhA@mail.gmail.com>
X-Gm-Features: Ac12FXxJVbrVgIPSlm6u4--DKBHxaHRjM_36IT45XEIgpl9bR5PM8dE-s5Wt-28
Message-ID: <CAC=S1nhS8yY6iWNDfv4Lwz8zUJEy0nMxC5MVZGb983hDsg7bhA@mail.gmail.com>
Subject: Re: [PATCH 24/38] arm64: dts: mediatek: mt7986a-bpi-r3: Fix SFP I2C
 node names
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_045355_112539_D821A8E0 
X-CRM114-Status: GOOD (  15.07  )
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

T24gVGh1LCBKdWwgMjQsIDIwMjUgYXQgNTo0OeKAr1BNIEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJl
Z25vCjxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4g
VGhlIGJpbmRpbmcgd2FudHMgdGhlIG5vZGUgdG8gYmUgbmFtZWQgImkyYy1udW1iZXIiLCBhbHRl
cm5hdGl2ZWx5Cj4gImkyY0BhZGRyZXNzIiwgYnV0IHRob3NlIGFyZSBuYW1lZCAiaTJjLWdwaW8t
bnVtYmVyIiBpbnN0ZWFkLgo+Cj4gUmVuYW1lIHRob3NlIHRvIGkyYy0wLCBpMmMtMSB0byBhZGhl
cmUgdG8gdGhlIGJpbmRpbmcgYW5kIHN1cHByZXNzCj4gZHRic19jaGVjayB3YXJuaW5ncy4KPgo+
IFNpZ25lZC1vZmYtYnk6IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2No
aW5vLmRlbHJlZ25vQGNvbGxhYm9yYS5jb20+CgpJdCdkIGJlIG5pY2UgdG8gbWVudGlvbiBpbiB2
MiAoaWYgbmVlZGVkKSB0aGF0IHRoaXMgcGF0Y2ggYWxzbyBkcm9wcwpyZWR1bmRhbnQgI2FkZHJl
c3MtY2VsbHMgYW5kICNzaXplLWNlbGxzLCBidXQgaXQncyBtaW5vci4KClJldmlld2VkLWJ5OiBG
ZWkgU2hhbyA8ZnNoYW9AY2hyb21pdW0ub3JnPgoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0
cy9tZWRpYXRlay9tdDc5ODZhLWJhbmFuYXBpLWJwaS1yMy5kdHMgfCA4ICsrLS0tLS0tCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODZhLWJhbmFuYXBpLWJwaS1y
My5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Nzk4NmEtYmFuYW5hcGktYnBp
LXIzLmR0cwo+IGluZGV4IGVkNzlhZDFhZTg3MS4uNmQyNzYyODY2YTFhIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3OTg2YS1iYW5hbmFwaS1icGktcjMuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc5ODZhLWJhbmFuYXBpLWJw
aS1yMy5kdHMKPiBAQCAtNjQsMjMgKzY0LDE5IEBAIHdwcy1rZXkgewo+ICAgICAgICAgfTsKPgo+
ICAgICAgICAgLyogaTJjIG9mIHRoZSBsZWZ0IFNGUCBjYWdlICh3YW4pICovCj4gLSAgICAgICBp
MmNfc2ZwMTogaTJjLWdwaW8tMCB7Cj4gKyAgICAgICBpMmNfc2ZwMTogaTJjLTAgewo+ICAgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImkyYy1ncGlvIjsKPiAgICAgICAgICAgICAgICAgc2Rh
LWdwaW9zID0gPCZwaW8gMTYgKEdQSU9fQUNUSVZFX0hJR0ggfCBHUElPX09QRU5fRFJBSU4pPjsK
PiAgICAgICAgICAgICAgICAgc2NsLWdwaW9zID0gPCZwaW8gMTcgKEdQSU9fQUNUSVZFX0hJR0gg
fCBHUElPX09QRU5fRFJBSU4pPjsKPiAgICAgICAgICAgICAgICAgaTJjLWdwaW8sZGVsYXktdXMg
PSA8Mj47Cj4gLSAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+IC0gICAgICAg
ICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiAgICAgICAgIH07Cj4KPiAgICAgICAgIC8qIGky
YyBvZiB0aGUgcmlnaHQgU0ZQIGNhZ2UgKGxhbikgKi8KPiAtICAgICAgIGkyY19zZnAyOiBpMmMt
Z3Bpby0xIHsKPiArICAgICAgIGkyY19zZnAyOiBpMmMtMSB7Cj4gICAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAiaTJjLWdwaW8iOwo+ICAgICAgICAgICAgICAgICBzZGEtZ3Bpb3MgPSA8JnBp
byAxOCAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9EUkFJTik+Owo+ICAgICAgICAgICAg
ICAgICBzY2wtZ3Bpb3MgPSA8JnBpbyAxOSAoR1BJT19BQ1RJVkVfSElHSCB8IEdQSU9fT1BFTl9E
UkFJTik+Owo+ICAgICAgICAgICAgICAgICBpMmMtZ3BpbyxkZWxheS11cyA9IDwyPjsKPiAtICAg
ICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gLSAgICAgICAgICAgICAgICNzaXpl
LWNlbGxzID0gPDA+Owo+ICAgICAgICAgfTsKPgo+ICAgICAgICAgbGVkcyB7Cj4gLS0KPiAyLjUw
LjEKPgo+CgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
