Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB220C021B1
	for <linux-phy@archiver.kernel.org>; Thu, 20 Feb 2025 20:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDFDvy2vWzSwfjiL9A83um/CXCnHWzYCLxWKWpNnWUg=; b=ezWos+ktRoFhwF
	OdGKO8FAr3c/dZCrIfsK8+k3zlbRRHB9QVXW8GTNIePSiLVLwYopoZWNIJdBhzhYNuFHq6RJ6fGEE
	7uDp7l0903+/ED++mcZlqWRv+8KVBbCf2dS/H0dle47GUZYM3OIv22CKntkBHhUAIQ3bBQD9IcGMB
	QSKSoX9EwPqPvhmO+oXuRfXwbGdNj5MvhHjvxjl6Z+sM/urOqdEPY33tw1XYtdQkNlr0cCwoh0j2y
	cBCfruazvZfIMdTVOfLdC7wv3e0p8+U5GBItSf2UaPQbQwurNpxGXHDxkuT9brwxrC+pdl77w+FP8
	IWkAFxdrm0XbVcPJhSgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDEf-00000002nxA-2eHe;
	Thu, 20 Feb 2025 20:33:29 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlDEd-00000002nwK-122i;
	Thu, 20 Feb 2025 20:33:28 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-38f378498b0so1160808f8f.0;
        Thu, 20 Feb 2025 12:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740083605; x=1740688405; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TUxRiLX4DyVPlrMacNkPsStsx8cpP9d0LZJXAgp6S6A=;
        b=d6usahXmLaQfmCaHnj6/cgTVz+9UJaoAavQK+ED/FkdNacrtI7/3dDteF8h0OUHEWP
         V8vq0ARPfZO8kmk+ukICz+bKQfGeXX3HdiAxHJaL4saJsuzn1tW8Hz7+jwZ/NttYCi54
         eaNeil679giSPSvzHCi1dbEU9ww1drcwbXtpfIZkNpEKSDzSdwtwiUUlVHz+hzHJNf3h
         5gSrPUjQXWzH88rh2stIupm9FiIc3S/oeVxPIA/uaN3mrJRMkrE+I+omhnS6s6VcHQeM
         k1erB7WscGEeItXnG6bPK65iqmTIfdRTIDWhNKgTWsl5eBsQYiy6qM96kf7AP77ALlRN
         cJqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740083605; x=1740688405;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TUxRiLX4DyVPlrMacNkPsStsx8cpP9d0LZJXAgp6S6A=;
        b=E/THRZpIrSxxURYO53wobXTFaNYztRxCijEKmxPOfRAEW5xszNvYS26IGRR8GmlMre
         UGJ33skM+y+0JNXsS0tRhxOy2R5cKZyI9F8ECest4ZE7e4qR4OhyMgJEvitAbTl2ZVGt
         x8j5wkh7HdeN69fRB0G7wrtp9g63AQLy8SpwXDgS0oeG1/cUbvrSdB96EH3ZZC8MsbxN
         WEHKAJKJnO6xddYQX8c5fguORXzDWxVu5kM/ndmOBwfvCDZAbJEq6JxRLJXbcQV6XV5w
         Z3e9dNGTyR/qyPYd6jCKF60HwJ/VyHpW3YgkLKefJoWTx1ab6MfXjnFTwGhtn/3Jhd2d
         d35Q==
X-Forwarded-Encrypted: i=1; AJvYcCUyRdvAKr4g/D+HffAWb1JdAs+l5gSZowU/T6dtNw8uEgDXiJiRGS1J1D16uxMP+SADV9gonEbTOPjmaMLGVnQ+@lists.infradead.org, AJvYcCXGehipSsQBCpsf1DvQIj9dv57IAjRBofh0AeHh3lgtyu4vczIDPKTBQx2R1n4cSLkaDbUAbUdJPw6Q@lists.infradead.org
X-Gm-Message-State: AOJu0YwKXHl0Ez+AuPRz+EpaQA1mP2dXcTVkQaML8TgVldUA1SGXjXkK
	ISSIJY5OPBQLbwam6v7y5pZbVyOkJ4WFIOuQ0Hm4CSbvWjt0nu2DXJZnrIac0Hg=
X-Gm-Gg: ASbGncuqwbh6aW27BurlEhwSXafR0S77oiNe+xYsWqzpb8AZYLOI4tSDA2/p/qOXKJW
	9AQa1uvUCamta2+Nt93Sz4AEoQUx0Ozll/C5LGWcdTAtW7Wfbp3BiPH5rejDhb8Xr8hEuQsLdAn
	CaIBbAPc6HJikfYWcZLfe1GEHaoo7hRU1ksAd8NNwAG3d1BGzUgfOgE/eCl/aQwn3ZikpoIEeIa
	aJ6phWpxhM4kZF8D8QE60dqhXSzrnNkgLvEZ+y39JsW6THwk5QcKrqjIOP2XMg02SoL9uyiIF0T
	tr99xOz9dIxHgbhVHtC+7LqI16oFRF3Z0+ZMyR7TA0nBJsFgIHpW0Qr/QeKjG2I5MqM=
X-Google-Smtp-Source: AGHT+IG3ll1f11+UZwtw+Jor04/g1jCvuU4qYpcPBlXzdyIiMI+7ByMCtbhip+csjv0HRfpmtu7BRw==
X-Received: by 2002:a5d:456b:0:b0:38f:4e50:8b0b with SMTP id ffacd0b85a97d-38f6f0630d5mr472733f8f.31.1740083605337;
        Thu, 20 Feb 2025 12:33:25 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258b4158sm21289979f8f.3.2025.02.20.12.33.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 12:33:25 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Philippe Simons <simons.philippe@gmail.com>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>,
 open list <linux-kernel@vger.kernel.org>,
 Philippe Simons <simons.philippe@gmail.com>
Subject: Re: [RFC PATCH 2/3] phy: override dr_mode for phy0
Date: Thu, 20 Feb 2025 21:33:24 +0100
Message-ID: <2428472.yKrmzQ4Hd0@jernej-laptop>
In-Reply-To: <20250118102207.9339-2-simons.philippe@gmail.com>
References: <20250118102207.9339-1-simons.philippe@gmail.com>
 <20250118102207.9339-2-simons.philippe@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_123327_285274_819D12F8 
X-CRM114-Status: GOOD (  17.72  )
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

RG5lIHNvYm90YSwgMTguIGphbnVhciAyMDI1IG9iIDExOjIyOjA1IFNyZWRuamVldnJvcHNraSBz
dGFuZGFyZG5pIMSNYXMgamUgUGhpbGlwcGUgU2ltb25zIG5hcGlzYWwoYSk6Cj4gUEhZMCBtb2Rl
IGlzIGZ1bGx5IGRldGVybWluZWQgYnkgdGhlIHNlbGVjdGVkIG11eCByb3V0ZS4KPiBJZ25vcmUg
Y2hhbmdlcyByZXF1ZXN0cyBmcm9tIGNvbnRyb2xsZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBo
aWxpcHBlIFNpbW9ucyA8c2ltb25zLnBoaWxpcHBlQGdtYWlsLmNvbT4KClNvbWUgY29udGV4dCBp
cyBtaXNzaW5nLiBXaHkgaXMgdGhpcyBwYXRjaCBuZWVkZWQ/IFdoaWNoIHNjZW5hcmlvIGNhdXNl
cwppc3N1ZXMgd2l0aG91dCB0aGlzIHBhdGNoPwoKUGxlYXNlIGFsc28gcHJvdmlkZSBjb3ZlciBs
ZXR0ZXIgdG8gdGhlIHNlcmllcywgd2l0aCAiYmlnIHBpY3R1cmUiIGV4cGxhbmF0aW9uLgoKQmVz
dCByZWdhcmRzLApKZXJuZWoKCj4gLS0tCj4gIGRyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3Vu
NGktdXNiLmMgfCAxMiArKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlv
bnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11
c2IuYyBiL2RyaXZlcnMvcGh5L2FsbHdpbm5lci9waHktc3VuNGktdXNiLmMKPiBpbmRleCAyNGZi
YWJlN2EuLmYxNjNiMzU1ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5
LXN1bjRpLXVzYi5jCj4gKysrIGIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW40aS11c2Iu
Ywo+IEBAIC01NDQsNiArNTQ0LDE4IEBAIHN0YXRpYyBpbnQgc3VuNGlfdXNiX3BoeV9zZXRfbW9k
ZShzdHJ1Y3QgcGh5ICpfcGh5LAo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+ICAKPiArCWlm
IChkYXRhLT5jZmctPnBoeTBfZHVhbF9yb3V0ZSkgewo+ICsJCS8qCj4gKwkJIEZvciBTb0NzIHdp
dGggZHVhbCByb3V0ZSB0aGUgUEhZIG1vZGUgaXMgZnVsbHkgZGV0ZXJtaW5lZCBieSAKPiArCQkg
dGhlIHNlbGVjdGVkIG11eCByb3V0ZSAoaS5lLiBVU0IgY29udHJvbGxlciB0byB1c2UpLgo+ICsJ
CSBBcyBib3RoIGhvc3QgKEVIQ0kvT0hDSSkgYW5kIHBlcmlwaGVyYWwgKE1VU0IpIGNvbnRyb2xs
ZXJzIHVzZXMKPiArCQkgdGhlIHNhbWUgUEhZLCBib3RoIGRyaXZlcnMgY2FuIHRyeSB0byBzZXQg
UEhZIG1vZGUuCj4gKwkJIFdlIG5lZWQgdG8gaWdub3JlIHRoaXMgcmVxdWVzdHMsIGJ1dCBub3Qg
cmVwb3J0IGVycm9yIGluIGNhc2UKPiArCQkgb2YgdmFsaWQgbW9kZSB2YWx1ZXMuCj4gKwkJKi8K
PiArCQlyZXR1cm4gMDsKPiArCX0KPiArCj4gIAlpZiAobmV3X21vZGUgIT0gZGF0YS0+ZHJfbW9k
ZSkgewo+ICAJCWRldl9pbmZvKCZfcGh5LT5kZXYsICJDaGFuZ2luZyBkcl9tb2RlIHRvICVkXG4i
LCBuZXdfbW9kZSk7Cj4gIAkJZGF0YS0+ZHJfbW9kZSA9IG5ld19tb2RlOwo+IAoKCgoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
