Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A658E784A9
	for <linux-phy@archiver.kernel.org>; Thu, 25 Dec 2025 00:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbCf936EJY5QvUQvuPSc3ejTnGVUrHgvELglp+nVJXA=; b=3HwE1eRTwRuLoQ
	/OjH6zfyOnrMDrnMjQEqcSpIUEWhHiIvs4rJlj3fiUbXpcEwFLEsybYFASjTyoS4LmrJFqwhsl9VK
	QTIsI2WKLI0rsyaug6Lr5AGd6yfw0S2nJrlwKCUwefo7EOFJrdt4sVe2RovL13uCGsMn06iq7mWnn
	kGpdzjwv94hr7acxkAbkx6TnCVDZEJvrIQ9gKoM37k31FwLuqIoVSQkApPYDaz/cPIy1pE39aKp1Z
	xcuGqepuirzj8McSxf+puTTy6H7tFIqmPHhx5KhZb/88JIcT2DBQYMAoypWvBPpdNUcmV/9BsLEqM
	tbnIT7gxxPd0q7dBMFdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYZIp-0000000HX0P-3I1J;
	Thu, 25 Dec 2025 00:34:03 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYZIn-0000000HWzc-1Wyq
	for linux-phy@lists.infradead.org;
	Thu, 25 Dec 2025 00:34:02 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2a137692691so72709875ad.0
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 16:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766622840; x=1767227640; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tvJrGIx5xr6bd4apb7bOhjYC7gT8f2fehBHgHwpjp9Q=;
        b=z/eR8eSkvqRQiui7LhPIzJ0UmKNeGyHmN3/rGautvhUhkxuAuL9CGoOFzPsM0fc6Dm
         9EZHhnsCkWHjhd0YRaHHHB+dWbjDGhbD1+z9ArCZUR8w9PSqFBbDT3qPADShbJv000OB
         k8DX9+jlPP60wZGmiwqgii3stF77PJzC5QnEQOEsJP4FuqTPqqR33Jf3PCnVIa59QYpT
         0Mc44/ujp2zDNrB2iuS+CXXwkHFKJP8i6wXDBiRO6pxe93T39n7SVEH5heL/qeE2CU6t
         0ajWxGFxcOn+V2QEstTnHvZfx87tEytCtftAn0Eh7GRMoIVQsXYleddAGywi5aiBba3o
         uJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766622840; x=1767227640;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tvJrGIx5xr6bd4apb7bOhjYC7gT8f2fehBHgHwpjp9Q=;
        b=qhtyktYMz1yX5SUsTG/cdYbFz3KXHHUy3s5l+AgGAcTFMWshuCZAkUeCTDceA/hmcb
         pvMub4XJTdMVSfFm1ZqL/h+1mVyu1/Hd+TzziLOIE8AsSbN2ff6cP6WKfyCslKQKelpp
         XgzaYgwCU5R2FD5eLqx8j9tinUlnOOkKQziRPmpXMZPul7C+HZGh7V0SWadB9ihr8WjZ
         y5tcFFJtjc0xiAiuL8pAfKM1HgxlXSnBKfjRutuUHkn49e0KaBXPIdT+Fe31AmHa79Zu
         R77thrcv6zkb5pNmbXSea7gpkXLNyE40c3RBdV6Ph8TLa9Hp3Dk/6nroJMJU3IHhNcw+
         BXIA==
X-Forwarded-Encrypted: i=1; AJvYcCVkiFoEmw44TNNFKGn66zQfeh1+CTRtLONudzKb+xglF6Eme8GCoAb+sc784RYAnN8Y5M6Orrn24lo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzC4DWRA/hR6bVJOzUh9xp2ivTcS0E4P3vrgnV64BbGydJxdqOU
	1W4JXUxtoB7dkrIH78NjNLGj1Jl8mo2beKG2Y0FexVU9vLgRCeu7deeUVA6HI4oKpgy8BDtAQJN
	2C9EQqeAC1lNbBcfJkjOw6AAspFfmLrSAuJykI3NO
X-Gm-Gg: AY/fxX7KGOppmO+ygvS79Zru7g2zl26tKFqsUqqpJnS+LVFk3bCs56CRemzU680g2dt
	o8Vg0tq6F0cvO7WRMVVESiHSXdqQ9O38GvRhKZKRrhr0IJtjhLTkobcFRmzo9k4cHOZOKDVTCEm
	aewz+aYsxX1OZLE/gVTe5wXHIEzjdN+lC6rhT/QI0lvNo0odTwSeXL+49TxEU3gDbvZPudlc6zg
	mLlRpVGPBvLkAEIvJeqL6ZnGBGAHa+ez4sjzsJCqOD2zgPzOUueSAt28Xz29kKgftRRW3JY4q2S
	DRdaleibKNJtbnMarfRPmCSoI90b
X-Google-Smtp-Source: AGHT+IGCFNQwV2B9gW85beRpO1nk7W/XQi6wwn5DJO7Zav/pmROHDw2dRc82S2a7AH7ihqx3VW/rLaLZrRoY8NOchKM=
X-Received: by 2002:a05:7022:3718:b0:119:e56b:9593 with SMTP id
 a92af1059eb24-121722ed87cmr19469821c88.24.1766622839122; Wed, 24 Dec 2025
 16:33:59 -0800 (PST)
MIME-Version: 1.0
References: <20251222-phyb4-v9-0-82c0b671b070@google.com> <20251222-phyb4-v9-2-82c0b671b070@google.com>
 <aUqhbVFHczpL9qnL@vaman> <CA+zupgxP+_2iRYABhPM1OOJtRdkrcOvrsKH=Sxk45XwsiamzTw@mail.gmail.com>
 <aUt6hobN9DPUGbpz@vaman>
In-Reply-To: <aUt6hobN9DPUGbpz@vaman>
From: Roy Luo <royluo@google.com>
Date: Wed, 24 Dec 2025 16:33:21 -0800
X-Gm-Features: AQt7F2r_cQFC2N0eTEOR5BjjKp383NkfQ5rWibUZL_Pyz-eoT5c0f_oTz4h86S8
Message-ID: <CA+zupgwX_zN-Mge01Ye1_J+rwy0yEQdww1+bPo8YFWnfx68n5Q@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] phy: Add Google Tensor SoC USB PHY driver
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_163401_428658_2E1F2CF3 
X-CRM114-Status: GOOD (  20.43  )
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

T24gVHVlLCBEZWMgMjMsIDIwMjUgYXQgOTozMOKAr1BNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gMjMtMTItMjUsIDA5OjUzLCBSb3kgTHVvIHdyb3RlOgo+ID4g
T24gVHVlLCBEZWMgMjMsIDIwMjUgYXQgNjowNOKAr0FNIFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5l
bC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiAyMi0xMi0yNSwgMjE6MzEsIFJveSBMdW8gd3Jv
dGU6Cj4KPiA+ID4gPiArc3RydWN0IGdvb2dsZV91c2JfcGh5IHsKPiA+ID4gPiArICAgICBzdHJ1
Y3QgZGV2aWNlICpkZXY7Cj4gPiA+ID4gKyAgICAgc3RydWN0IHJlZ21hcCAqdXNiX2NmZ19yZWdt
YXA7Cj4gPiA+ID4gKyAgICAgdW5zaWduZWQgaW50IHVzYjJfY2ZnX29mZnNldDsKPiA+ID4gPiAr
ICAgICB2b2lkIF9faW9tZW0gKnVzYmRwX3RvcF9iYXNlOwo+ID4gPiA+ICsgICAgIHN0cnVjdCBn
b29nbGVfdXNiX3BoeV9pbnN0YW5jZSBpbnN0c1tHT09HTEVfVVNCX1BIWV9OVU1dOwo+ID4gPgo+
ID4gPiBzbyB5b3UgaGF2ZSBhbiBhcnJheSBmb3Igb25lIHBoeT8KPiA+Cj4gPiBXaGlsZSB0aGUg
Y3VycmVudCBwYXRjaCBvbmx5IHN1cHBvcnRzIHVzYjIsIEkgdXNlZCBhbiBhcnJheQo+ID4gdG8g
c2ltcGxpZnkgZnV0dXJlIHN1cHBvcnQgZm9yIHVzYjMgYW5kIERQLiBJIHVuZGVyc3RhbmQgdGhp
cwo+ID4gbWlnaHQgc2VlbSBsaWtlIG92ZXItZW5naW5lZXJpbmcgZm9yIG5vdywgYW5kIHdlIGNv
dWxkCj4gPiBjZXJ0YWlubHkgd2FpdCB0byBpbXBsZW1lbnQgdGhlIGFycmF5IHVudGlsIHRoZSBz
ZWNvbmQgcGh5Cj4gPiBzdXBwb3J0IGlzIGFkZGVkLiBJ4oCZbSBoYXBweSB0byBtb3ZlIGF3YXkg
ZnJvbSBhcnJheSBpZgo+ID4geW914oCZZCBwcmVmZXIgYSBzaW1wbGVyIGFwcHJvYWNoIGZvciB0
aGlzIGl0ZXJhdGlvbi4KPgo+IFJhdGhlciB0aGFuIGRvIGFycmF5LCBhbGxvY2F0ZSBtZW0gYXMg
cHJvYmUgYmFzZWQgb24gaG93IG1hbnkgcGh5cyB3aWxsCj4gYmUgdGhlcmUgYW5kIHVzZSB0aGF0
LiBUaGF0IHdvdWxkIGJlIGEgYmV0dGVyIGFwcHJvYWNoIHRoYW4gc3RhdGljCj4gYWxsb2NhdGlv
biBoZXJlCgpNYWtlIHNlbnNlLCB3aWxsIGNoYW5nZSBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLgoK
VGhhbmtzLApSb3kKCj4KPiA+ID4gPiArc3RhdGljIGludCBnb29nbGVfdXNiMl9waHlfZXhpdChz
dHJ1Y3QgcGh5ICpfcGh5KQo+ID4gPiA+ICt7Cj4gPiA+ID4gKyAgICAgc3RydWN0IGdvb2dsZV91
c2JfcGh5X2luc3RhbmNlICppbnN0ID0gcGh5X2dldF9kcnZkYXRhKF9waHkpOwo+ID4gPiA+ICsg
ICAgIHN0cnVjdCBnb29nbGVfdXNiX3BoeSAqZ3BoeSA9IHRvX2dvb2dsZV91c2JfcGh5KGluc3Qp
Owo+ID4gPiA+ICsgICAgIHUzMiByZWc7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIGRldl9kYmco
Z3BoeS0+ZGV2LCAiZXhpdGluZyB1c2IyIHBoeVxuIik7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAg
IGd1YXJkKG11dGV4KSgmZ3BoeS0+cGh5X211dGV4KTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAg
cmVnbWFwX3JlYWQoZ3BoeS0+dXNiX2NmZ19yZWdtYXAsIGdwaHktPnVzYjJfY2ZnX29mZnNldCAr
IFVTQkNTX1VTQjJQSFlfQ0ZHMjFfT0ZGU0VULCAmcmVnKTsKPiA+ID4gPiArICAgICByZWcgJj0g
flVTQkNTX1VTQjJQSFlfQ0ZHMjFfUEhZX0VOQUJMRTsKPiA+ID4gPiArICAgICByZWdtYXBfd3Jp
dGUoZ3BoeS0+dXNiX2NmZ19yZWdtYXAsIGdwaHktPnVzYjJfY2ZnX29mZnNldCArIFVTQkNTX1VT
QjJQSFlfQ0ZHMjFfT0ZGU0VULCByZWcpOwo+ID4gPiA+ICsKPiA+ID4gPiArICAgICByZXNldF9j
b250cm9sX2J1bGtfYXNzZXJ0KGluc3QtPm51bV9yc3RzLCBpbnN0LT5yc3RzKTsKPiA+ID4gPiAr
ICAgICBjbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShpbnN0LT5udW1fY2xrcywgaW5zdC0+Y2xr
cyk7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIHJldHVybiAwOwo+ID4gPiA+ICt9Cj4gPiA+ID4g
Kwo+ID4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHBoeV9vcHMgZ29vZ2xlX3VzYjJfcGh5X29w
cyA9IHsKPiA+ID4gPiArICAgICAuaW5pdCAgICAgICAgICAgPSBnb29nbGVfdXNiMl9waHlfaW5p
dCwKPiA+ID4gPiArICAgICAuZXhpdCAgICAgICAgICAgPSBnb29nbGVfdXNiMl9waHlfZXhpdCwK
PiA+ID4gPiArfTsKPiA+ID4KPiA+ID4gT25seSB0d28gb3BzPyBJIHdvdWxkIGV4cGVjdCBtb3Jl
Li4uIE5vIHBvd2VyX29uL29mZiBvciBzZXRfbW9kZT8KPiA+ID4KPiA+ID4gLS0KPiA+ID4gflZp
bm9kCj4gPgo+ID4gTm8sIGNvbmZpZ3VyaW5nIHVzYjIgcGh5IGlzIHByZXR0eSBzdHJhaWdodGZv
cndhcmQuIFRoZSBoYXJkd2FyZQo+ID4gZG9lcyBub3QgZGlzdGluZ3Vpc2ggYmV0d2VlbiAiaW5p
dGlhbGl6ZWQiIGFuZCAicG93ZXJlZCBvbiIgc3RhdGVzLAo+ID4gaXQgYWxzbyBkb2VzIG5vdCBk
aXN0aW5ndWlzaCBwaHkgbW9kZS4KPgo+IG9rCj4KPiAtLQo+IH5WaW5vZAoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
