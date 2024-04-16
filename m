Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4745BC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Apr 2024 12:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qWGNf0slaaDaub/I3613ZuL79lnJJJa8Q2FagC97bfU=; b=ddpJNd0RA2KuUQ
	EbiwGMKqxWHkFfSKg3r0eeZUw4Go6HhYG7hKpdPVak93jdwDkXrUUHxs2kTw+L08embPFEr41/jsV
	j1j/EYkBsHgvoEm0QBdfvO5ziFL9vbdysaPw5UDv/7Iph8E7uJgWnfhX6w+hsxcWXzIOLGZO3J7P6
	ptAMfsHB7zvvwjOJlyE3Rtid+KAXrutczeXEeygIESQtVyhOTlYQe/GcZbwTSsYWTezgbuh9XVMj2
	9tv+cwoQAqfjQFY0qRMLbZJN4NUrwzatauAan17vk5O9UDnD+IorMghkpzqZiNcymL9cI05mfySqq
	ygrSiwEWMzsV/2ZyZ4iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhoQ-0000000C77W-3tOI;
	Tue, 16 Apr 2024 12:21:22 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwhoO-0000000C75d-08WZ
	for linux-phy@lists.infradead.org;
	Tue, 16 Apr 2024 12:21:21 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-418a02562b3so1999105e9.3
        for <linux-phy@lists.infradead.org>; Tue, 16 Apr 2024 05:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713270077; x=1713874877; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PpGMn2INMbylfu21Bj48tT8p8k7cCHT4iq/KSWuJyTg=;
        b=EsLmoVoaZAqm+l31gS73MT88mJuohp3jvSF815MPY6TcFC2aIULXYgsEMrKVWoy78E
         ROBX7XXEKIkpgmSJYEUqu+83ls/MUNpizWSPwsHSMG/bbFcaGwAD/403wSPveLKB+bID
         i7FMWQ+IDMCtBnYXu3JOFn3X50SF4Tky3hUx+gW/g/QtkdF1WH9zWQ2iB0ZtFXaa/Hvb
         tmhl6Vp4CSVRtRcoHupIhNtyuNTpPM7JDyI3udqe+M41tyiAPg0N1Y3dd/wBgIrVlbw+
         tGnx/NTsvrVAovQluKMYX8lYxpzRVYaeto0FJzKg49NmzgS6MVVyaWLEVeDKpCeQRN/k
         AR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713270077; x=1713874877;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PpGMn2INMbylfu21Bj48tT8p8k7cCHT4iq/KSWuJyTg=;
        b=E524Z6r8WiEfzDoswh/pqm0mWh9/jdMQC3dyk5EQ34i9s5t5HVRls4iiqES2a1BB0O
         +hFp81f2Bs42ZKjcxS/oIRR0ig5RKVINU99BVOUJzl3Cf/je1dcEhaUiqLKqvFdYslIH
         ifSMg90q9gk8dIsvqdVwYHqYyc3yBI5v05/IwhV+bHgBkra+itwoXh2nh5abEtP/kKx3
         DXqKYHSTvlvqabCjY7B2/+dgJE/KK+uvfV/7+4vMEDjD2O7zD/VwPMMwYbAGysBDfqlg
         t/l8TQrQUWU3w/UsrOGfaKZ6F7YFMZ31VgCmCh8rqgzAuQELi6HUVnAN8XHxq/E1oOq+
         ehKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUx5hYSc4u0ua7bzkZlO02hTTVA9Uwo+qCClh1/CeXfoNUeTbYzsSEEvEUXhVf0MVigwBzpNGQHzTRW7Se7NQ+g6N9yuNSeNjrVN7dowg==
X-Gm-Message-State: AOJu0YwbSKkTwsWL6MFA6EzkewUjKantQ6o8iCLSKMOb8rg3CEW20Fw5
	GlZsFV0YpayX77AioMQxXO7MqEEgiD3HrstQSNn0nJHYqShTFkrjET71K43sT4o=
X-Google-Smtp-Source: AGHT+IEarf8EjO2ZNF9aRPs7b+B99CG3Z13jwHh5GhKJjOi8E/PYDa6irLtmrtjDcPbYmA7uQaI9Vw==
X-Received: by 2002:a05:600c:4748:b0:418:2ccf:cbc7 with SMTP id w8-20020a05600c474800b004182ccfcbc7mr6287275wmo.2.1713270077431;
        Tue, 16 Apr 2024 05:21:17 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ay29-20020a05600c1e1d00b0041892e839bcsm2285227wmb.33.2024.04.16.05.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 05:21:16 -0700 (PDT)
Message-ID: <fd7fe44ecbd99358bac583df3cc8192e250e758b.camel@linaro.org>
Subject: Re: [PATCH 05/17] arm64: dts: exynos: gs101: enable cmu-hsi2 clock
 controller
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 kishon@kernel.org,  alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org,  s.nawrocki@samsung.com, cw00.choi@samsung.com,
 jejb@linux.ibm.com,  martin.petersen@oracle.com, chanho61.park@samsung.com,
 ebiggers@kernel.org,  linux-scsi@vger.kernel.org,
 linux-phy@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org,  linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 tudor.ambarus@linaro.org,  saravanak@google.com, willmcvicker@google.com
Date: Tue, 16 Apr 2024 13:21:15 +0100
In-Reply-To: <CADrjBPqwLt6gzwMpkZvxp5sC-owdDYUN91F0-nV2NvEzek_v9g@mail.gmail.com>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-6-peter.griffin@linaro.org>
	 <391a874522a4141b4bc7f0314a9e50d27142123a.camel@linaro.org>
	 <CADrjBPqwLt6gzwMpkZvxp5sC-owdDYUN91F0-nV2NvEzek_v9g@mail.gmail.com>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_052120_166822_A4438966 
X-CRM114-Status: GOOD (  18.27  )
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

SGkgUGV0ZSwKCk9uIFR1ZSwgMjAyNC0wNC0xNiBhdCAxMjo1NiArMDEwMCwgUGV0ZXIgR3JpZmZp
biB3cm90ZToKPiBIaSBBbmRyw6ksCj4gCj4gVGhhbmtzIGZvciB0aGUgcmV2aWV3Lgo+IAo+IE9u
IEZyaSwgNSBBcHIgMjAyNCBhdCAwODozOCwgQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtA
bGluYXJvLm9yZz4gd3JvdGU6Cj4gPiAKPiA+IE9uIFRodSwgMjAyNC0wNC0wNCBhdCAxMzoyNSAr
MDEwMCwgUGV0ZXIgR3JpZmZpbiB3cm90ZToKPiA+ID4gRW5hYmxlIHRoZSBjbXVfaHNpMiBjbG9j
ayBtYW5hZ2VtZW50IHVuaXQuIEl0IGZlZWRzIHNvbWUgb2YKPiA+ID4gdGhlIGhpZ2ggc3BlZWQg
aW50ZXJmYWNlcyBzdWNoIGFzIFBDSWUgYW5kIFVGUy4KPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KPiA+ID4gLS0tCj4g
PiA+IMKgYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kgfCAxMiAr
KysrKysrKysrKysKPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2dvb2dsZS9n
czEwMS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9leHlub3MvZ29vZ2xlL2dzMTAxLmR0c2kK
PiA+ID4gaW5kZXggZWRkYjZiMzI2ZmRlLi4zOGFjNGZiMTM5N2UgMTAwNjQ0Cj4gPiA+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2dvb2dsZS9nczEwMS5kdHNpCj4gPiA+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvZXh5bm9zL2dvb2dsZS9nczEwMS5kdHNpCj4gPiA+IEBAIC0x
MjUzLDYgKzEyNTMsMTggQEAgcGluY3RybF9oc2kxOiBwaW5jdHJsQDExODQwMDAwIHsKPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8
R0lDX1NQSSA0NzEgSVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfTsKPiA+ID4gCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY211
X2hzaTI6IGNsb2NrLWNvbnRyb2xsZXJAMTQ0MDAwMDAgewo+ID4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImdvb2dsZSxnczEwMS1jbXUt
aHNpMiI7Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
ZyA9IDwweDE0NDAwMDAwIDB4NDAwMD47Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9IDwxPjsKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZleHRfMjRfNW0+LAo+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JmNtdV90b3AgQ0xLX0RPVVRfQ01VX0hTSTJfQlVTPiwKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZjbXVfdG9wIENM
S19ET1VUX0NNVV9IU0kyX1BDSUU+LAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNtdV90b3AgQ0xLX0RPVVRfQ01VX0hT
STJfVUZTX0VNQkQ+LAo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNtdV90b3AgQ0xLX0RPVVRfQ01VX0hTSTJfTU1DX0NB
UkQ+Owo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9j
ay1uYW1lcyA9ICJvc2NjbGsiLCAiYnVzIiwgInBjaWUiLCAidWZzX2VtYmQiLCAibW1jX2NhcmQi
Owo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4gPiAKPiA+IFRoaXMgZG9lc24n
dCBidWlsZCBiZWNhdXNlIHlvdSBkaWRuJ3QgYWRkIHRoZSBjbG9jayBpZHMgaW4gdGhlIGJpbmRp
bmcgcGF0Y2guCj4gCj4gVGhlc2UgY2xvY2sgSURzIGFyZSBmb3IgY211X3RvcCwgbm90IGNtdV9o
c2kyLgoKUmlnaHQuIEkgcmVwbGllZCB0byB0aGUgd3JvbmcgcGF0Y2guIFNvcnJ5IGZvciB0aGF0
LiBJdCBpcyBwYXRjaCA3IHRoYXQKdXNlcyBjbG9jayBpZHMgdGhhdCBhcmUgb25seSBhZGRlZCBp
biBwYXRjaCA4LiBUaGUgY2xvY2sgaWRzIGZyb20gcGF0Y2ggOAppbiBpbmNsdWRlL2R0LWJpbmRp
bmdzL2Nsb2NrL2dvb2dsZSxnczEwMS5oIHNob3VsZCBiZSBhZGRlZCBpbiBwYXRjaCAxCmluc3Rl
YWQuCgpDaGVlcnMsCkFuZHJlJwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcGh5Cg==
