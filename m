Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A71D7497D
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 07:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/78hRh5tiZzXPad/GP29OY3ZY0LUuSxqrsgmHwH8uo=; b=DzXG3jUquWLOrA
	5mOVORN80B5zHpm+jULSN75fn+5yYGQrv7iMpJ4XsCPzHNG+09LXZHKV9NXHJMu0ke8I+h2rMhM1n
	yAH8/LSmWOn3vQRrntVTSdy0hQORZUvmIQpobHikZO3G/yyU6sEhnMpFps+X4m5Hho8QbgXLRE3g5
	4MGvwZwoudHshah/gEimUokKVO91gUM8sdO7AdgOya00r+AD0N2BjH8Yzk9ReysrA3lPsqRRC9Ilb
	qOb4WAOooUfXgfQikvFvCF3+5QisvR3scYtPt6m1saY9mgBh3VzikOG9HWb5ytTe5o6j8kJdYzKUc
	xClYWdwhT39nIM/sTr7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t62yv-0000000H7Eq-2Beo;
	Wed, 30 Oct 2024 07:19:05 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t62ys-0000000H7DU-2R89
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 07:19:03 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-20ca7fc4484so43463735ad.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Oct 2024 00:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730272741; x=1730877541; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2HfyfhF6z0IsAsG7O1iQKmomQevqTeSun6SJPILAuAM=;
        b=L9HM5jZH/8xIBappJl1lYXNCSvrAcWysYOw3R/hCqqg5AwpPJ/i8EKpaikhf5JSWbi
         BN7kkd6ST8Ae+IOG1Uxmot4hM89stvy9tUM1KgVp0hf8byPPyTlXIHuGoIURkTAcCpsI
         3Iyl3pfHGiT9hRY59mfIMY8AbSkOgLewk025jdX+jlfYsC3NCKaDpY84qq4QzgIcnWVf
         zX9T/faFrIuGFf7ZZ/DEh6LHmgxDtLDm6oQqlaG7aIMJ0w9eUElqtBP+NZ8e2j3To9od
         yz+sZEc+13jFml1vmH3G/yXUvfMHQvZlJJ1t9q2JktRzjBr13qYtKuj06OPmSEp65nSd
         P/ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730272741; x=1730877541;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2HfyfhF6z0IsAsG7O1iQKmomQevqTeSun6SJPILAuAM=;
        b=sk7TeS2lboTkloOaTUZWE9UgexpWoDcgCQffdYj9DndKrQ+QgfSi1G4miw/1KK/cC9
         tocGVzWMVtFG8zojYwLsPTcagWPJoBzomq48pV3+S2LUjw2gBkq2MXuHHj2E1YX2IwMB
         jUHacApQJjTGPtdyy0qVTlhOAZohAFpZhoO732rVAHloP/M8miHYfsSwec/masX462QM
         ePY1+JyYKhHibinS3c2Uk8lXpK/2iYbfEi/6Va6Oog/6MuWTHWUS7tzNBsk0P7OYkOoD
         hDb4gLFL090XJGZ0hqL4NEjpsFqUfeCC398ktMixPioVC1RyE50exyI1wwUoP58yw5nz
         a/uw==
X-Forwarded-Encrypted: i=1; AJvYcCUbtdjTODmttsGijllw/izfhmXuvEp5YFmolYoQDU2QDda+7Agxj/9rNBQycuad6hJNe9yGqXA985k=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw9/wF9Aowl+RB/Zo4/ZmQ7dyhdhdeAxAhSIJYz+91rpEtpWgm5
	Iwi8oWNHtLhE/a8SWXvZcfFFtn9cSgxEsYdMIIOH11T4EoQiAzCSoElobnHApA==
X-Google-Smtp-Source: AGHT+IHTdvrxjuDcs8dqC3K9rXQG1LndTCbbKrjV+g4Yj/M49myE6Ugo2CkOqvAophLbqnU9pTQ4Xw==
X-Received: by 2002:a17:903:2445:b0:20b:775f:506d with SMTP id d9443c01a7336-210c6c123f3mr211614765ad.34.1730272740962;
        Wed, 30 Oct 2024 00:19:00 -0700 (PDT)
Received: from thinkpad ([36.255.17.104])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-210bbf441bdsm75242015ad.52.2024.10.30.00.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 00:19:00 -0700 (PDT)
Date: Wed, 30 Oct 2024 12:48:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
Message-ID: <20241030071851.sdm3fu6ecaddoiit@thinkpad>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
 <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
 <91395c5e-22a0-4117-a4b5-4985284289ab@quicinc.com>
 <250bce05-a095-4eb3-a445-70bbf4366526@quicinc.com>
 <ZyHc-TkRtKxLU5-p@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZyHc-TkRtKxLU5-p@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_001902_656291_2156B459 
X-CRM114-Status: GOOD (  19.50  )
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

T24gV2VkLCBPY3QgMzAsIDIwMjQgYXQgMDg6MTU6MDVBTSArMDEwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFdlZCwgT2N0IDMwLCAyMDI0IGF0IDAxOjU0OjU5UE0gKzA4MDAsIFFpYW5nIFl1
IHdyb3RlOgo+ID4gT24gMTAvMjQvMjAyNCAyOjQyIFBNLCBRaWFuZyBZdSB3cm90ZToKPiA+ID4g
T24gMTAvMTgvMjAyNCAxMDowNiBQTSwgSm9oYW4gSG92b2xkIHdyb3RlOgo+IAo+ID4gPj4gQWxz
byBzYXkgc29tZXRoaW5nIGFib3V0IGhvdyBMMHMgaXMgYnJva2VuIHNvIHRoYXQgaXQgaXMgbW9y
ZSBjbGVhciB3aGF0Cj4gPiA+PiB0aGUgZWZmZWN0IG9mIHRoaXMgcGF0Y2ggaXMuIE9uIHNjODI4
MHhwIGVuYWJsaW5nIEwwcyBsZWFkIHRvCj4gPiA+PiBjb3JyZWN0YWJsZSBlcnJvcnMgZm9yIGV4
YW1wbGUuCj4gCj4gPiA+IE5lZWQgbW9yZSB0aW1lIHRvIGNvbmZpcm0gdGhlIGV4YWN0IHJlYXNv
biBhYm91dCBkaXNhYmxpbmcgTDBzLgo+ID4gPiBXaWxsIHVwZGF0ZSBpZiBnZXQgYW55IHByb2dy
ZXNzCj4gCj4gPiBJIGNvbmZpcm1lZCB3aXRoIEhXIHRlYW0gYW5kIFNXIHRlYW0uIEwwcyBpcyBu
b3Qgc3VwcG9ydGVkIG9uIFgxRTgwMTAwLCAKPiA+IGl0IGlzIG5vdCBmdWxseSB2ZXJpZmllZC4g
U28gd2UgZG9uJ3Qgd2FudCB0byBlbmFibGUgaXQuCj4gCj4gVGhhbmtzIGZvciBjaGVja2luZy4g
QSB3b3JkIGFib3V0IHdoYXQgY2FuIGhhcHBlbiBpZiBub3QgZGlzYWJsaW5nIGl0Cj4gbWF5IHN0
aWxsIGJlIGluIHBsYWNlIChlLmcuIHRoZSBsaW5rIHN0YXRlIHRyYW5zaXRpb24gc3RhdHMgaW4g
ZGVidWdmcwo+IG9uIHgxZTgwMTAwIGxvb2tlZCBwcmV0dHkgZXJyYXRpYyB3aXRoIEwwcyBlbmFi
bGVkIElJUkMpLgo+IAo+IEFsc28sIGFyZSB0aGVyZSBhbnkgUXVhbGNvbW0gcGxhdGZvcm1zIHRo
YXQgYWN0dWFsbHkgc3VwcG9ydCBMMHM/Cj4gUGVyaGFwcyB3ZSBzaG91bGQganVzdCBkaXNhYmxl
IGl0IGV2ZXJ5d2hlcmU/Cj4gCgpNb3N0IG9mIHRoZSBtb2JpbGUgY2hpcHNldHMgZnJvbSBRY29t
IHN1cHBvcnQgTDBzLiBJdCBpcyBub3Qgc3VwcG9ydGVkIG9ubHkgb24KdGhlIGNvbXB1dGUgb25l
cy4gU28gd2UgY2Fubm90IGRpc2FibGUgaXQgZXZlcnl3aGVyZS4KCkFnYWluLCBpdCBpcyBub3Qg
dGhlIGh3IGlzc3VlIGJ1dCB0aGUgUEhZIGluaXQgc2VxdWVuY2Ugbm90IHR1bmVkIHN1cHBvcnQg
TDBzLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcGh5Cg==
