Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 375C7C48BC3
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 13:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4tTqihS5wG27GYOmG8Jm7x8eapcCbtw+yPA/Xw1VZs=; b=wuBIzAaiTWAb1g
	/QX1+W08SI/6Q8Z6x82vmsvOukVSQDouSvJadd783UFzJsnC8B3nZHq0u8elu5HesiICKUikvfrXJ
	VuzwdE9eMsUFHlnfi0oiuG2Uj7sqvBIoeifqgIycCRBIp0J8Qzx87AefVAR1YrrFQMALM2Zemrz4N
	eyF9DPIyBHI/2TaaaH7TU22KF00cbhMQKfj57T9hbYtLkFC8zSm/BEukDtfQDfI8o7jIIWuhpEgmK
	JmpIedclGXulAYR+/CSqbB4onkZ1b9i21qGns1mT8ShpHvhtRQes3AhFnBL+R4UUCEhdW0eBxDMWG
	8NGCxqQs65u4F+7KPkIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQHn-0000000EvaO-3MaY;
	Tue, 20 Feb 2024 13:35:51 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcQHk-0000000EvYF-2fwD
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 13:35:50 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-608170eb5efso26703077b3.3
        for <linux-phy@lists.infradead.org>; Tue, 20 Feb 2024 05:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708436147; x=1709040947; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=80bDR9xsJVYz/T1iI+xnPV8UhHBUEFxKf9UJFof0JFA=;
        b=lzgCIY8aNbj+W6eyH3ZMaVQxqNqGW/It0nPh0i1eOx92Mqim0F1f3AEmEA+wCgdetW
         matWsS5Iobq/vC1o9Hc9YiaCX0XvzFnidasFD/3034xDM8YJtKALuIn8pFrKmXfBOmC+
         Vm4CvTQN1x6ycqXKDCcprVlNjZ8SVKQzuFEk0Q0yihDuPkbD0k/6kpLI/wBfzyekFRpE
         lR630RYR6zTbJJHwhBzLe15BztaFq54LcsOWCIbELMepWOCxFAstQUpFRL+5eWByeZrD
         Jq/gLSZzqgCX3vceyOOATFvyC22qmKsLRPMkPyFomsYTED6orvadgLwzNgFFeNaE6/Cl
         uvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708436147; x=1709040947;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=80bDR9xsJVYz/T1iI+xnPV8UhHBUEFxKf9UJFof0JFA=;
        b=wy5DidsUPsVUgq7dtV2CsYTKpA7gt+0D1RDLUX5N+FER1N3d8BVGF5Kn0X4FwuFldm
         WJ5PDq2KZ8KnU+xViJsOlgJvbX2h47wt2vDBnBU1ChAsleWMtIhftaiqvlGVFYSJ+Twq
         pgY76aRHstVvepQ6aNPaLXSPqpTDjg2TWsH8t+42bQsY0XIXNXFz8q9Z3++DmlvfDWtM
         D2yUBV/s7dlC+iehvBvjXa5+yVYx30Z/lBDfDOLpu1NmTxhYwfZTA9y+u5UItr9mwzxb
         5OG3hw6sBQJz6bnwYR77IH3QGsLa1dTtiinnmo+p2fUCII0TV06WGF4p4GGFhcvXK3Ln
         g9+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVrVfulWLLuiDnqntRLj6OFTjnGJw2Af/X+Mqt7a+B+Lov4BZxlFe+fZJ3hHBoz8EPIl+m1FG99kpDCgigseNwD7Xd5WI5J0hoHyvfrRw==
X-Gm-Message-State: AOJu0Yzn78808kwS2ENxhuDlfBJx/KNKjhD2rt0XnIfyRVDywmm9nMSh
	NwS1fErt0rTLoY83VmEzcYFA1ZMyQ3o6JADNZO056drHl8ueif2kqCrtuBaYFxATMK/o4Dw5WYm
	DVB/IUtd3aKV5EuCXm9DvdpBWQ472Pb0zf2o/cA==
X-Google-Smtp-Source: AGHT+IFblLCJUAfvYsxAzrxnfj6+lmkywotENdKnj1jtMtxOZ6aZ30kx1UQMoBV7aylB0LH/E8+wrC1HtazKHPBbsVw=
X-Received: by 2002:a81:7994:0:b0:607:7e73:fce1 with SMTP id
 u142-20020a817994000000b006077e73fce1mr16601552ywc.26.1708436146800; Tue, 20
 Feb 2024 05:35:46 -0800 (PST)
MIME-Version: 1.0
References: <20240217150228.5788-2-johan+linaro@kernel.org>
 <c95f5ff3-8dad-4302-9384-92a9b83f7bdc@web.de> <ZdRTx2lmHBVlcLub@hovoldconsulting.com>
 <1afc87c-2c1f-df10-a0c8-2a267d44122@inria.fr> <CAA8EJppH9ey97yKFUccNLHhMKs3eUS55+rY0tXm_a6KGp9jtug@mail.gmail.com>
 <4938592e-3f7c-c1ae-dce3-fd1ca363296@inria.fr>
In-Reply-To: <4938592e-3f7c-c1ae-dce3-fd1ca363296@inria.fr>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 15:35:35 +0200
Message-ID: <CAA8EJpq88ZKLFBuAvDuDSMD_DkPpMmBDZG_kQyUrSs-Noqm2SQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] drm/bridge: aux-hpd: fix OF node leaks
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Johan Hovold <johan@kernel.org>, Markus Elfring <Markus.Elfring@web.de>, 
	Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Bjorn Andersson <andersson@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Rob Clark <robdclark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_053548_762389_9B43AC51 
X-CRM114-Status: GOOD (  22.54  )
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

T24gVHVlLCAyMCBGZWIgMjAyNCBhdCAxNDo1NiwgSnVsaWEgTGF3YWxsIDxqdWxpYS5sYXdhbGxA
aW5yaWEuZnI+IHdyb3RlOgo+Cj4KPgo+IE9uIFR1ZSwgMjAgRmViIDIwMjQsIERtaXRyeSBCYXJ5
c2hrb3Ygd3JvdGU6Cj4KPiA+IE9uIFR1ZSwgMjAgRmViIDIwMjQgYXQgMTM6NTIsIEp1bGlhIExh
d2FsbCA8anVsaWEubGF3YWxsQGlucmlhLmZyPiB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4KPiA+
ID4gT24gVHVlLCAyMCBGZWIgMjAyNCwgSm9oYW4gSG92b2xkIHdyb3RlOgo+ID4gPgo+ID4gPiA+
IE9uIE1vbiwgRmViIDE5LCAyMDI0IGF0IDA2OjQ4OjMwUE0gKzAxMDAsIE1hcmt1cyBFbGZyaW5n
IHdyb3RlOgo+ID4gPiA+ID4gPiBUaGUgdHdvIGRldmljZSBub2RlIHJlZmVyZW5jZXMgdGFrZW4g
ZHVyaW5nIGFsbG9jYXRpb24gbmVlZCB0byBiZQo+ID4gPiA+ID4gPiBkcm9wcGVkIHdoZW4gdGhl
IGF1eGlsaWFyeSBkZXZpY2UgaXMgZnJlZWQuCj4gPiA+ID4gPiDigKYKPiA+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLWJyaWRnZS5jCj4gPiA+ID4gPiDigKYK
PiA+ID4gPiA+ID4gQEAgLTc0LDYgKzc1LDggQEAgc3RydWN0IGRldmljZSAqZHJtX2RwX2hwZF9i
cmlkZ2VfcmVnaXN0ZXIoc3RydWN0IGRldmljZSAqcGFyZW50LAo+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiAgIHJldCA9IGF1eGlsaWFyeV9kZXZpY2VfaW5pdChhZGV2KTsKPiA+ID4gPiA+ID4gICBp
ZiAocmV0KSB7Cj4gPiA+ID4gPiA+ICsgICAgICAgICBvZl9ub2RlX3B1dChhZGV2LT5kZXYucGxh
dGZvcm1fZGF0YSk7Cj4gPiA+ID4gPiA+ICsgICAgICAgICBvZl9ub2RlX3B1dChhZGV2LT5kZXYu
b2Zfbm9kZSk7Cj4gPiA+ID4gPiA+ICAgICAgICAgICBpZGFfZnJlZSgmZHJtX2F1eF9ocGRfYnJp
ZGdlX2lkYSwgYWRldi0+aWQpOwo+ID4gPiA+ID4gPiAgICAgICAgICAga2ZyZWUoYWRldik7Cj4g
PiA+ID4gPiA+ICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOwo+ID4gPiA+ID4KPiA+ID4g
PiA+IFRoZSBsYXN0IHR3byBzdGF0ZW1lbnRzIGFyZSBhbHNvIHVzZWQgaW4gYSBwcmV2aW91cyBp
ZiBicmFuY2guCj4gPiA+ID4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni44
LXJjNS9zb3VyY2UvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hdXgtaHBkLWJyaWRnZS5jI0w2Mwo+
ID4gPiA+ID4KPiA+ID4gPiA+IEhvdyBkbyB5b3UgdGhpbmsgYWJvdXQgdG8gYXZvaWQgc3VjaCBh
IGJpdCBvZiBkdXBsaWNhdGUgc291cmNlIGNvZGUKPiA+ID4gPiA+IGJ5IGFkZGluZyBhIGxhYmVs
IGhlcmU/Cj4gPiA+ID4KPiA+ID4gPiBObywgdGhlIGN1cnJlbnQgY29kZSBpcyBmaW5lIGFuZCB3
aGF0IHlvdSBhcmUgc3VnZ2VzdGluZyBpcyBpbiBhbnkgY2FzZQo+ID4gPiA+IHVucmVsYXRlZCB0
byB0aGlzIGZpeC4KPiA+ID4gPgo+ID4gPiA+IElmIHRoaXMgZnVuY3Rpb24gZXZlciBncm93cyBh
IHRoaXJkIGVycm9yIHBhdGggbGlrZSB0aGF0LCBJIHRvbyB3b3VsZAo+ID4gPiA+IGNvbnNpZGVy
IGl0IGhvd2V2ZXIuCj4gPiA+Cj4gPiA+IEkgZ3Vlc3MgdGhlc2Ugb2Zfbm9kZV9wdXRzIGNhbiBh
bGwgZ28gYXdheSBzaG9ydGx5IHdpdGggY2xlYW51cCBhbnl3YXk/Cj4gPgo+ID4gSSdtIG5vdCBz
dXJlIGFib3V0IGl0LiBUaG9zZSBhcmUgbG9uZy1saXZpbmcgdmFyaWFibGVzLCBzbyB0aGV5IGFy
ZQo+ID4gbm90IGEgc3ViamVjdCBvZiBjbGVhbnVwLmgsIGFyZSB0aGV5Pwo+Cj4gT0ssIEkgZGlk
bid0IGxvb2sgYXQgdGhpcyBjb2RlIGluIGRldGFpbCwgYnV0IGNsZWFudXAgd291bGQganVzdCBj
YWxsCj4gb2Zfbm9kZV9wdXQsIG5vdCBhY3R1YWxseSBmcmVlIHRoZSBkYXRhLgoKWWVzLiBUaGUg
bm9kZXMgc2hvdWxkIGJlIHB1dCBlaXRoZXIgaW4gY2FzZSBvZiB0aGUgZmFpbHVyZSBvciAoaWYK
ZXZlcnl0aGluZyBnb2VzIGZpbmUpIGF0IHRoZSBkZXZpY2UgdW5yZWdpc3RyYXRpb24uCgotLSAK
V2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
