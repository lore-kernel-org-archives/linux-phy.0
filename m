Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 972A1D10DDD
	for <linux-phy@archiver.kernel.org>; Mon,  2 Dec 2024 09:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GruaP4Zw/rIdVHrr2vIJN0yLP+jPVFdI/Topw5Apcmk=; b=wz2HWFIDC5CeTx
	bW0jq4FgymzZutmmul2dkPnctFUp207JClWwkXYT9NBF/hy0SBQYt1lqr4VEZtTcMVuWudVrsDX0t
	2f5MW1qib4fhf0w00DHXmjwLXDF5yq0UQ8ZPYXBbmpHrg0oOLyWAPZQrvZZ+7POceDnh8OzXRPkIq
	L11aXXxY0ZAT/6NUMMdcEjRzPM0GUHi1cOz0pCzGrbvqOSbBtxXmMFrcejLfUIA5w3Z1PiLq7WrvO
	LQqrPlJaHODw1OzjSFkx7jnrPAn4KY2BrTC6WnWNu+QPIvgFPnWWnHKdswO7WBt/sBxkQgaMJ5BRh
	T0q82tX2tJit0fEm+94A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2nV-00000005aG1-3UXj;
	Mon, 02 Dec 2024 09:32:53 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI2nT-00000005aEW-25NJ
	for linux-phy@lists.infradead.org;
	Mon, 02 Dec 2024 09:32:52 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e3982e9278bso2893122276.2
        for <linux-phy@lists.infradead.org>; Mon, 02 Dec 2024 01:32:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733131970; x=1733736770; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ykJ4gnZ8OI+lNlsS7GnWz+Q0GYuAZsbDat/k0gHdcy0=;
        b=IwyFX7iary493B597IYWmjMzL4Ts1Um0HG9fzZ1vXwYS5s8cU+PvcujDCrWijBB0rY
         8pQcTAoPYXJOdyUMPjJKU/BApAnjPTZX2xRFkRbEfKMizncLAFYsuBTzvaIy5ZrUS/MM
         t14h7hC0G4z5eEEnM209Iu143mCNpoKaIz8DeEPLiThjtlceaDZqz6SyqvP9CdzexezD
         xDtuxfCsvWyZd8mitXRu+8XZzbqpxBcrZV4u+/tqpccFZHNJ5eaP9QDOZC0c7we1j1kb
         VIBsaog88jgJUO5Mk8GdwP8of+jK+91u1G7mxHhF2Bq1Zuzy6xCDLU7hpxk4XOfbSd3M
         a9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733131970; x=1733736770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykJ4gnZ8OI+lNlsS7GnWz+Q0GYuAZsbDat/k0gHdcy0=;
        b=gPCMzIc6Axg+9IKKPAakkttn//2nWMoEAQmX9hfu/fAVINfDSKe3RoMDnNRD0vJtuC
         Q+ck8DUjQDTCEgQLQI2x5oTbsu3/CT6ynFhoyGMS7O0VVC6Km9doWOX4LFljZQM6zPRc
         V62sQh+VDiATnI+GGaTZdljivJAoByax6BB5UrlcW9vdIVPULuzo9D+9oC8YAl4ccDce
         FkQ6vlqP8RwwE3dTghsP6sKwD22G53gDbSe0VocAOHba1tCCpzFAj79DR4uxsTNCcvQm
         ToW6PF8B8Jl3eeXpQhP1H5LXF1+yP2vRwvNKalD+Sot6xXBsDrAMw1jYXL/FpxYKjaIi
         av8g==
X-Forwarded-Encrypted: i=1; AJvYcCXmoFEOCAmjtmcLc1NhW/JpZi5CmLM8NxiyBlEGxWDOBYiplZaGUB3tUsn30ekoPgUZxnr1XcAP/YY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyA87rnDfoW/SWHk9AmdyzsF9shL8M5u7PoiGjgWzwgS5SpQYDU
	K1ReH3DUIN4GGpkWxqlJ5PMCowSwFGB+ayhTPc1+1VomH8aC0sEbdYfOg76F52fElBrJafcMmw8
	Cw55rSFDVhubBS1M+0pd/UKDK/LB1syCUxJmJDg==
X-Gm-Gg: ASbGncsRvwAS5c2zFaZBCjDlRhNUIy7TNb5eprR5SVO2CGZ58huGhUMcogygnRoED8e
	xJ61rMFR6wccLIMHqkKnLMnITZf/LSw==
X-Google-Smtp-Source: AGHT+IGT3z3TbHSFBQBWWQ1KvYeMAU20/kLWtZdyfcltpfmv3iUgGjIOBFmp2Bw/pBAtCruUtd0beWsC6yrtxdL0HE0=
X-Received: by 2002:a05:6902:150d:b0:e38:b889:7eff with SMTP id
 3f1490d57ef6-e395b870d38mr18514341276.6.1733131969951; Mon, 02 Dec 2024
 01:32:49 -0800 (PST)
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-6-09a4338d93ef@quicinc.com>
 <CAA8EJpprTGRTxO+9BC6GRwxE4A3CuvmySsxS2Nh4Tqj0nDRT_Q@mail.gmail.com> <95a78722-8266-4d5d-8d2f-e8efa1aa2e87@quicinc.com>
In-Reply-To: <95a78722-8266-4d5d-8d2f-e8efa1aa2e87@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 2 Dec 2024 11:32:45 +0200
Message-ID: <CAA8EJpo-1o9i4JhZgdbvRxvoYQE2v18Lz_8dVg=Za7a_pk5EDA@mail.gmail.com>
Subject: Re: [PATCH 6/8] drm/msm/dp: Add maximum width limitation for modes
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_013251_542237_ED128372 
X-CRM114-Status: GOOD (  16.05  )
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

T24gTW9uLCAyIERlYyAyMDI0IGF0IDExOjA1LCBYaWFuZ3h1IFlpbiA8cXVpY194aWFuZ3h1eUBx
dWljaW5jLmNvbT4gd3JvdGU6Cj4KPgo+Cj4gT24gMTEvMjkvMjAyNCA5OjUyIFBNLCBEbWl0cnkg
QmFyeXNoa292IHdyb3RlOgo+ID4gT24gRnJpLCAyOSBOb3YgMjAyNCBhdCAwOTo1OSwgWGlhbmd4
dSBZaW4gPHF1aWNfeGlhbmd4dXlAcXVpY2luYy5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSW50cm9k
dWNlIGEgbWF4aW11bSB3aWR0aCBjb25zdHJhaW50IGZvciBtb2RlcyBkdXJpbmcgdmFsaWRhdGlv
bi4gVGhpcwo+ID4+IGVuc3VyZXMgdGhhdCB0aGUgbW9kZXMgYXJlIGZpbHRlcmVkIGJhc2VkIG9u
IGhhcmR3YXJlIGNhcGFiaWxpdGllcywKPiA+PiBzcGVjaWZpY2FsbHkgYWRkcmVzc2luZyB0aGUg
bGluZSBidWZmZXIgbGltaXRhdGlvbnMgb2YgaW5kaXZpZHVhbCBwaXBlcy4KPiA+Cj4gPiBUaGlz
IGRvZXNuJ3QgZGVzY3JpYmUsIHdoeSB0aGlzIGlzIG5lY2Vzc2FyeS4gV2hhdCBkb2VzICJidWZm
ZXIKPiA+IGxpbWl0YXRpb25zIG9mIGluZGl2aWR1YWwgcGlwZXMiIG1lYW4/Cj4gPiBJZiB0aGUg
cGxhdGZvcm1zIGhhdmUgaHcgY2FwYWJpbGl0aWVzIGxpa2UgYmVpbmcgdW5hYmxlIHRvIHN1cHBv
cnQgOGsKPiA+IG9yIDEwaywgaXQgc2hvdWxkIGdvIHRvIHBsYXRmb3JtIGRhdGEKPiA+Cj4gSXQn
cyBTU1BQIGxpbmUgYnVmZmVyIGxpbWl0YXRpb24gZm9yIHRoaXMgcGxhdGZvcm0gYW5kIG9ubHkg
c3VwcG9ydCB0byAyMTYwIG1vZGUgd2lkdGguCj4gVGhlbiwgc2hhbGwgSSBhZGQgbWF4X3dpZHRo
IGNvbmZpZyB0byBzdHJ1Y3QgbXNtX2RwX2Rlc2MgaW4gbmV4dCBwYXRjaD8gZm9yIG90aGVyIHBs
YXRmb3JtIHdpbGwgc2V0IGRlZnVhbHQgdmFsdWUgdG8g4oCYRFBfTUFYX1dJRFRIIDc2ODAnCgpT
U1BQIGxpbmUgYnVmZmVyIGxpbWl0YXRpb25zIGFyZSB0byBiZSBoYW5kbGVkIGluIHRoZSBEUFUg
ZHJpdmVyLiBUaGUKRFAgZHJpdmVyIHNob3VsZG4ndCBjYXJlIGFib3V0IHRob3NlLgoKPiA+Pgo+
ID4+IFNpZ25lZC1vZmYtYnk6IFhpYW5neHUgWWluIDxxdWljX3hpYW5neHV5QHF1aWNpbmMuY29t
Pgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuYyB8ICAz
ICsrKwo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vbXNtL2RwL2RwX2Rpc3BsYXkuaCB8ICAxICsKPiA+
PiAgZHJpdmVycy9ncHUvZHJtL21zbS9kcC9kcF9wYW5lbC5jICAgfCAxMyArKysrKysrKysrKysr
Cj4gPj4gIGRyaXZlcnMvZ3B1L2RybS9tc20vZHAvZHBfcGFuZWwuaCAgIHwgIDEgKwo+ID4+ICA0
IGZpbGVzIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpE
bWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
