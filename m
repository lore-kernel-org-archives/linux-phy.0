Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D238C47258
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 18:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvgH7uSsx41KlJLqZlg2+aMO0obhWXubl1cR5bjUTTY=; b=K7VOBtXGWlRqrP
	kPNVCmRs7hGZ9JtMwt/V5N+6nBj70/AiPtXcM6geQcmnma1qLMES242FDDXXPN3EiOLHPobjgalq9
	9ZDj6gH4LX+1kD72i7NILZdUr5Ad9Ld4nISi9188jKGE0h8IMtnpAnAy7KWeiZgGY82g6681QUxcP
	1xJUdgTqg2m7d1UO6MlWSR3wRzIW9fMV93WjD4GsSgT0U2YvqZneGbJWbHnqX3+bJb/beazgqbr3C
	RDcz3BxjAWV03bMZtAgF1IYFHmruvU5k4aR7PCgx11KS43s7SKXuH9rbNngFaOSo5uelvi+wCP6yO
	/eVF7M7zRkudQxgA/SRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQAZZ-000M2W-08;
	Wed, 17 Jan 2024 18:23:33 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQAZW-000M1V-0j
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 18:23:31 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-337b71a0240so1859216f8f.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 10:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705515808; x=1706120608; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8TFf1Vx3P27CdjSDq7jNiUNW+cNOvMLpoL0yHWCOqRQ=;
        b=VBhgFWDUK8ohRQ9D7Gtp7epFj6UPBvRRvGYxrcGd1lqwGeUu2bLHAwF1vG6kIfPG47
         Yimu2D//ULFOIP/T69iSxz1iFfV3iR+jY9bHC4Ngl75l49sfqFLmxKM4kmRqavta71E6
         +RxXt3UaEOq1coipWTsK7jnKKXvjKTr/OqvG/UfGAbxm/r9KzKFSoqL3WC456EZecWXj
         ZUzJIzwECvdYB5sTBpjHlQlsVgF6J9IqHbT0GMZopbCHQU+6S1CQ4OGTVmNX7KLEtmDg
         92eYuxCEnUn7x2sWUy+gWRw8/rmSvulzLbAngmPRndjQInCRN8PFi6fDWYI1nW92dpHE
         NGpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705515808; x=1706120608;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8TFf1Vx3P27CdjSDq7jNiUNW+cNOvMLpoL0yHWCOqRQ=;
        b=OU53foSYes26NG1nwuHva/4InjALAw6pE0LgdjD2UJQbeRjqfn9e9wLf5XpVkoU5lD
         yG/ygDtR8FVi2Sko5NQwfvc+fY1RCMD46lU9oZYMUvXsQm2971yVToWXE0+gsi6wyA09
         wlIrtuaz+0hPJoujT5d16PKaH5d8j9x9EyUlHcDGqeFC3Glc9eBJj7ABkEgWa3FFAnlh
         5NbgOr16QRI73Wp5qImhxDh25NJAvkTVu6uV3S1IhHLPzMm+Ji+dnppk9lz/DN1ci6XR
         hohXIv6B23DRYYRpyJvUw6T6jl3DH2WNcz4E/ylS+h94dk+t6WNRw22vqkOYoD4V7N6/
         3BcQ==
X-Gm-Message-State: AOJu0Yxbp9SFM/GEsQ4ZHglmkUHkNGJxF+BvhFi5XRKl3rHl9nV1Fuam
	oOCUGmxJsFuo6yZRdBvbY3+1u1GJCgKlqw==
X-Google-Smtp-Source: AGHT+IHYWffLkxrJLysqpwRplgajEK57fm4ZpJxRNz3jEiJuZEiJGCm3fO2YWVnBx5eJmxoVP/FjCA==
X-Received: by 2002:adf:f68c:0:b0:337:bfbc:881f with SMTP id v12-20020adff68c000000b00337bfbc881fmr1617032wrp.61.1705515807683;
        Wed, 17 Jan 2024 10:23:27 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id n7-20020adff087000000b00337bb0f370dsm2224452wro.40.2024.01.17.10.23.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 10:23:27 -0800 (PST)
Message-ID: <4c9571d4-08b8-45e6-8c74-5b864ddba490@linaro.org>
Date: Wed, 17 Jan 2024 18:23:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org>
 <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com>
 <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
 <CAA8EJpoXUMehrcf8sXKPhk7qb4SGXT960SUFHX5AUt1wxxHepw@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAA8EJpoXUMehrcf8sXKPhk7qb4SGXT960SUFHX5AUt1wxxHepw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_102330_288918_3D750B56 
X-CRM114-Status: GOOD (  20.31  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTcvMDEvMjAyNCAxODowNSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBXZWQsIDE3
IEphbiAyMDI0IGF0IDE5OjIzLCBCcnlhbiBPJ0Rvbm9naHVlCj4gPGJyeWFuLm9kb25vZ2h1ZUBs
aW5hcm8ub3JnPiB3cm90ZToKPj4KPj4gT24gMTUvMDEvMjAyNCAxMDo0MywgRG1pdHJ5IEJhcnlz
aGtvdiB3cm90ZToKPj4+IE9uIE1vbiwgMTUgSmFuIDIwMjQgYXQgMTI6MDAsIEtvbnJhZCBEeWJj
aW8gPGtvbnJhZC5keWJjaW9AbGluYXJvLm9yZz4gd3JvdGU6Cj4+Pj4KPj4+PiBPbiAxMy4wMS4y
MDI0IDIxOjU1LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pj4+PiBEZWZpbmUgVkJVUyByZWd1
bGF0b3IgYW5kIHRoZSBUeXBlLUMgaGFuZGxpbmcgYmxvY2sgYXMgcHJlc2VudCBvbiB0aGUKPj4+
Pj4gUXVhY29tbSBQTUk2MzIgUE1JQy4KPj4+Pj4KPj4+Pj4gUmV2aWV3ZWQtYnk6IEJyeWFuIE8n
RG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+Pj4+PiBTaWduZWQtb2ZmLWJ5
OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4+Pj4+IC0t
LQo+Pj4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcG1pNjMyLmR0c2kgfCAzMCArKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDMwIGlu
c2VydGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cWNvbS9wbWk2MzIuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9wbWk2MzIuZHRzaQo+
Pj4+PiBpbmRleCA0ZWI3OWUwY2U0MGEuLmQ2ODMyZjBiN2I4MCAxMDA2NDQKPj4+Pj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9xY29tL3BtaTYzMi5kdHNpCj4+Pj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9wbWk2MzIuZHRzaQo+Pj4+PiBAQCAtNDUsNiArNDUsMzYgQEAgcG1p
Y0AyIHsKPj4+Pj4gICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+Pj4+PiAg
ICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+Pj4+Cj4+Pj4+ICsgICAgICAgICAg
ICAgcG1pNjMyX3ZidXM6IHVzYi12YnVzLXJlZ3VsYXRvckAxMTAwIHsKPj4+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxwbWk2MzItdmJ1cy1yZWciLCAicWNvbSxw
bTgxNTBiLXZidXMtcmVnIjsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDEx
MDA+Owo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4+
Pj4gKyAgICAgICAgICAgICB9Owo+Pj4+PiArCj4+Pj4+ICsgICAgICAgICAgICAgcG1pNjMyX3R5
cGVjOiB0eXBlY0AxNTAwIHsKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAicWNvbSxwbWk2MzItdHlwZWMiOwo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgcmVnID0g
PDB4MTUwMD47Cj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDB4MiAw
eDE1IDB4MDAgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+Pj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDAxIElSUV9UWVBFX0VER0VfQk9USD4sCj4+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4MDIgSVJRX1RZ
UEVfRURHRV9SSVNJTkc+LAo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwweDIgMHgxNSAweDAzIElSUV9UWVBFX0VER0VfQk9USD4sCj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4MDQgSVJRX1RZUEVfRURHRV9SSVNJTkc+
LAo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDA1
IElSUV9UWVBFX0VER0VfUklTSU5HPiwKPj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICA8MHgyIDB4MTUgMHgwNiBJUlFfVFlQRV9FREdFX0JPVEg+LAo+Pj4+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDA3IElSUV9UWVBFX0VER0Vf
UklTSU5HPjsKPj4+PiBUaGlzIGRpZmZlcnMgZnJvbSB0aGUgZG93bnN0cmVhbSBpcnEgdHlwZXM6
Cj4+Pj4KPj4+PiA8MHgyIDB4MTUgMHgwIElSUV9UWVBFX0VER0VfQk9USD4sCj4+Pj4gPDB4MiAw
eDE1IDB4MSBJUlFfVFlQRV9FREdFX0JPVEg+LAo+Pj4+IDwweDIgMHgxNSAweDIgSVJRX1RZUEVf
RURHRV9SSVNJTkc+LAo+Pj4+IDwweDIgMHgxNSAweDMgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+
Pj4+IDwweDIgMHgxNSAweDQgSVJRX1RZUEVfRURHRV9CT1RIPiwKPj4+PiA8MHgyIDB4MTUgMHg1
IElSUV9UWVBFX0VER0VfUklTSU5HPiwKPj4+PiA8MHgyIDB4MTUgMHg2IElSUV9UWVBFX0VER0Vf
UklTSU5HPiwKPj4+PiA8MHgyIDB4MTUgMHg3IElSUV9UWVBFX0VER0VfUklTSU5HPjsKPj4+Cj4+
PiBJIG11c3QgYWRtaXQsIEkgY29waWVkIHRoZSBJUlFzIGZyb20gdGhlIHBtODE1MGIgcmF0aGVy
IHRoYW4gZnJvbSB0aGUKPj4+IHZlbmRvciBrZXJuZWwuCj4+Pgo+Pj4gQnJ5YW4sIGFueSBpZGVh
IHdoaWNoIHNldCBvZiBmbGFncyBpcyBtb3JlIGNvcnJlY3Q/Cj4+Cj4+IE15IOKCrCBzYXlzIDE6
MSB3aXRoIHRoZSBkb3duc3RyZWFtIHBtaTYzMi5kdHNpCj4+Cj4+IHFjb20sdHlwZWNAMTUwMCB7
Cj4+ICAgICAgIHJlZyA9IDwweDE1MDAgMHgxMDA+Owo+PiAgICAgICBpbnRlcnJ1cHRzID0gPDB4
MiAweDE1IDB4MCBJUlFfVFlQRV9FREdFX0JPVEg+LAo+PiAgICAgICAgICAgICAgICAgICAgPDB4
MiAweDE1IDB4MSBJUlFfVFlQRV9FREdFX0JPVEg+LAo+PiAgICAgICAgICAgICAgICAgICAgPDB4
MiAweDE1IDB4MiBJUlFfVFlQRV9FREdFX1JJU0lORz4sCj4+ICAgICAgICAgICAgICAgICAgICA8
MHgyIDB4MTUgMHgzIElSUV9UWVBFX0VER0VfUklTSU5HPiwKPj4gICAgICAgICAgICAgICAgICAg
IDwweDIgMHgxNSAweDQgSVJRX1RZUEVfRURHRV9CT1RIPiwKPj4gICAgICAgICAgICAgICAgICAg
IDwweDIgMHgxNSAweDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+PiAgICAgICAgICAgICAgICAg
ICAgPDB4MiAweDE1IDB4NiBJUlFfVFlQRV9FREdFX1JJU0lORz4sCj4+ICAgICAgICAgICAgICAg
ICAgICA8MHgyIDB4MTUgMHg3IElSUV9UWVBFX0VER0VfUklTSU5HPjsKPj4KPj4gICAgICAgaW50
ZXJydXB0LW5hbWVzID0gInR5cGVjLW9yLXJpZC1kZXRlY3QtY2hhbmdlIiwKPiAKPiBNeSAyYyBz
YXkgdGhhdCBFREdFX0JPVEggZG9lc24ndCBtYWtlIHNlbnNlIGZvciBvci1yaWQtZGV0ZWN0LWNo
YW5nZQo+IGF0IGxlYXN0LiBJdCBpcyBhbiAib3IiIG9mIHNldmVyYWwgX3B1bHNlXyBpbnRlcnJ1
cHRzLCBzbyB0aGVyZSBpcyBubwo+IG5lZWQgdG8gZGV0ZWN0IHRoZSBmYWxsaW5nIGVkZ2UuCj4g
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICJ0eXBlYy12cGQtZGV0ZWN0IiwKPiAKPiBib3Ro
LCBjb3JyZWN0IGluIGJvdGggY2FzZXMKPiAKPj4gICAgICAgICAgICAgICAgICAgICAgICAgInR5
cGVjLWNjLXN0YXRlLWNoYW5nZSIsCj4gCj4gcHVsc2UgaW50ZXJydXB0LCByYWlzaW5nLgo+IAo+
PiAgICAgICAgICAgICAgICAgICAgICAgICAidHlwZWMtdmNvbm4tb2MiLAo+IAo+IEl0IGlzIGEg
J2xldmVsJyBpbnRlcnJ1cHQsIHNvIHdlIHByb2JhYmx5IHdhbnQgdG8gZGV0ZWN0IGJvdGggcmlz
aW5nCj4gYW5kIGZhbGxpbmcgZWRnZXMuCj4gCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICJ0
eXBlYy12YnVzLWNoYW5nZSIsCj4gCj4gInB1bHNlIiBpbnRlcnJ1cHQgPT4gcmlzaW5nLCBub3Qg
Ym90aCwgY29ycmVjdCBpbiBQTTgxNTBCLgo+IAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAi
dHlwZWMtYXR0YWNoLWRldGFjaCIsCj4gCj4gcHVsc2UgaW50ZXJydXB0LCByaXNpbmcgb25seS4K
PiAKPj4gICAgICAgICAgICAgICAgICAgICAgICAgInR5cGVjLWxlZ2FjeS1jYWJsZS1kZXRlY3Qi
LAo+IAo+IGxldmVsLCBzaG91bGQgYmUgYm90aCBhcyBpbiBQTTgxNTBCLgo+IAo+PiAgICAgICAg
ICAgICAgICAgICAgICAgICAidHlwZWMtdHJ5LXNuay1zcmMtZGV0ZWN0IjsKPj4gfTsKPiAKPiBQ
dWxzZSBpbnRlcnJ1cHQgYmVpbmcgcmFpc2VkIHdoZW4gdGhlcmUgaXMgZWl0aGVyIHN1Y2Nlc3Nm
dWwgb3IKPiB1bnN1Y2Nlc3NmdWwgdHJ5LlNOSyBvciB0cnkuU1JDLgo+IAo+IFNvLCBhZnRlciBj
b25zdWx0aW5nIHRoZSBkb2N1bWVudGF0aW9uLCBJIGJlbGlldmUgdGhlIGZsYWdzIGJlaW5nIGEK
PiBwYXJ0IG9mIHRoaXMgcGF0Y2ggKGFuZCBpbiBwbTgxNTBiLmR0c2kpIGFyZSBjb3JyZWN0Lgo+
IAoKQWguCgpUaGUgcG04MTUwYiBzdGF0ZSBpcyBtb3JlIGxvZ2ljYWwgYW5kIGlmIHlvdSBhcmUg
dXNpbmcgaXQgb24gcG1pNjMyIHdpdGggCnRoZSBkcml2ZXIgd2UgaGF2ZSwgSSdtIGluY2xpbmVk
IHRvIHRoaW5rIGFsc28gbW9yZSBjb3JyZWN0LgoKVGVzdGluZyA+IHRoZW9yeS4KClJldmlld2Vk
LWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
