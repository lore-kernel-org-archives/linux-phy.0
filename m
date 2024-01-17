Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A17C47258
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 17:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UU6FkZIcQG2GETaGFhx2KuTD6Dp9ZhM+sanNr8K0fhE=; b=pNG+LIyZ0cW4Fe
	wCcGifo4xwFm/Bh2hqS8GGIgiEp0rbhHW+AfcoCPCUkt0G4PmNPzeUwHsZnPP45XLeVXKHP+PwQb+
	3NDoMpw5190hdUSYK81tEaIXlxmXJABqXedMarR7sBXLrvLlM4iKkErieJMFSO8RXPhtqlmvcu0/z
	sh5Dvw8oe662HZq7BkzMIWiKqfTda6fBaVN8B6jyea0X6dhIGMHthuyllW/d5V1DDrE8Ovljvmx+I
	cCj53Hy6BP1YUosDW8ZgzzevoGeWpxW4w90NOHrd8B+ROJvtQUpOcFF4exh7Coumi3DrjwLrHnZQn
	d1Excx0wyj1E4yuy8HQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ9dT-000DK8-0u;
	Wed, 17 Jan 2024 17:23:31 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ9dQ-000DJY-0K
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 17:23:29 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40e8cf57d03so5769305e9.0
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 09:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705512204; x=1706117004; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nTCtMquQwSHvUe3rlom2viCrA/hRn2YuWQ9TWaWnJ4g=;
        b=xYe3oag1pGrQBkLoJrlIIVyJUfrDcdW/SPZYv8LYvz5I9PAsj/GSiBNaeGM2uwsAWH
         LbO1bsPfIa7wY4Hy/pTJ2DjoAP10jWAiWZo2EEhPNQd/ZA+0dmrGFbyP2rEgjdlpF85e
         wU26DkcFJK88kjUltdiIl/U2VcY2yUWDBSnTO39jW48PX/yK5wUnwRHNXF448IUpekuK
         jdlaTK9ddjBJJKdu4QXlepdxj6aG+T+Y/MdUMQB1t0Sjg2rfqdAoeAKLD5sVr+VoZxtz
         gHoQLwvR9S87MaS4s93JhtBAYWm/lyRZ150Rw+VV4Ptznl9JWdMeN165S6Z1L93uftOO
         R9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705512204; x=1706117004;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nTCtMquQwSHvUe3rlom2viCrA/hRn2YuWQ9TWaWnJ4g=;
        b=o4lmzVhKlFVDP90jcsT7KDgmyZys3k/BqXRPhiylv73E981atIn/Dj+Vskk2TT7RCP
         e0En1KpcvvRGiCJCcrG6pVyPviUjpYj72k6qQkbCuUqCFAgAIE55d0tHfkLO2kWOPS6a
         K9/83ZYEn2sf5P4sk3i0y2lVuX2Cqn0sPrkrvqO2J0KZ2aJtUIapqUoCueP1wlkDc9wS
         DFYZC9w0ObF4hWBkYtr3zvHqXH7yYPQtSgKumcME/BnTDNINfYWVUSA/gxT6cmygxgYs
         3Rrq1c8Fh05kmv06uXLTFSo+YQRHhJ5jVCkIGJcBChTKrhj/m1OcbzA/DjbrOPCt2ahq
         3raA==
X-Gm-Message-State: AOJu0YynZcsVM1UnXOGSarjv319Di6ylicz1BpGTiRUg96U39tF8OsnD
	b55g8/mupLLHzQM4oLkiDEb8UsQh5YvnWw==
X-Google-Smtp-Source: AGHT+IFFlacrehhEntQ4bUfUJOL0yxIor5gjgggfLwRY9ubluouFJBmzUtYn1rnyZRRNO+pA4e2wvw==
X-Received: by 2002:a05:600c:4d1f:b0:40e:76a3:6e2d with SMTP id u31-20020a05600c4d1f00b0040e76a36e2dmr2960527wmp.4.1705512203552;
        Wed, 17 Jan 2024 09:23:23 -0800 (PST)
Received: from [192.168.100.86] ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id v21-20020a05600c445500b0040e3bdff98asm26761374wmn.23.2024.01.17.09.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 09:23:23 -0800 (PST)
Message-ID: <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
Date: Wed, 17 Jan 2024 17:23:22 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related
 blocks
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
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
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_092328_176682_7316844F 
X-CRM114-Status: GOOD (  11.45  )
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

T24gMTUvMDEvMjAyNCAxMDo0MywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiBNb24sIDE1
IEphbiAyMDI0IGF0IDEyOjAwLCBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQGxpbmFyby5v
cmc+IHdyb3RlOgo+Pgo+PiBPbiAxMy4wMS4yMDI0IDIxOjU1LCBEbWl0cnkgQmFyeXNoa292IHdy
b3RlOgo+Pj4gRGVmaW5lIFZCVVMgcmVndWxhdG9yIGFuZCB0aGUgVHlwZS1DIGhhbmRsaW5nIGJs
b2NrIGFzIHByZXNlbnQgb24gdGhlCj4+PiBRdWFjb21tIFBNSTYzMiBQTUlDLgo+Pj4KPj4+IFJl
dmlld2VkLWJ5OiBCcnlhbiBPJ0Rvbm9naHVlIDxicnlhbi5vZG9ub2dodWVAbGluYXJvLm9yZz4K
Pj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGlu
YXJvLm9yZz4KPj4+IC0tLQo+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcG1pNjMyLmR0
c2kgfCAzMCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgMSBmaWxlIGNoYW5n
ZWQsIDMwIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3BtaTYzMi5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3BtaTYzMi5k
dHNpCj4+PiBpbmRleCA0ZWI3OWUwY2U0MGEuLmQ2ODMyZjBiN2I4MCAxMDA2NDQKPj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9wbWk2MzIuZHRzaQo+Pj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3BtaTYzMi5kdHNpCj4+PiBAQCAtNDUsNiArNDUsMzYgQEAgcG1pY0Ay
IHsKPj4+ICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+Pj4gICAgICAgICAg
ICAgICAgI3NpemUtY2VsbHMgPSA8MD47Cj4+Pgo+Pj4gKyAgICAgICAgICAgICBwbWk2MzJfdmJ1
czogdXNiLXZidXMtcmVndWxhdG9yQDExMDAgewo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAicWNvbSxwbWk2MzItdmJ1cy1yZWciLCAicWNvbSxwbTgxNTBiLXZidXMtcmVn
IjsKPj4+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgxMTAwPjsKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4gKyAgICAgICAgICAgICB9Owo+
Pj4gKwo+Pj4gKyAgICAgICAgICAgICBwbWk2MzJfdHlwZWM6IHR5cGVjQDE1MDAgewo+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicWNvbSxwbWk2MzItdHlwZWMiOwo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE1MDA+Owo+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIGludGVycnVwdHMgPSA8MHgyIDB4MTUgMHgwMCBJUlFfVFlQRV9FREdFX1JJU0lORz4s
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDAxIElS
UV9UWVBFX0VER0VfQk9USD4sCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDwweDIgMHgxNSAweDAyIElSUV9UWVBFX0VER0VfUklTSU5HPiwKPj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4MDMgSVJRX1RZUEVfRURHRV9CT1RIPiwK
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4MDQgSVJR
X1RZUEVfRURHRV9SSVNJTkc+LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8MHgyIDB4MTUgMHgwNSBJUlFfVFlQRV9FREdFX1JJU0lORz4sCj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDA2IElSUV9UWVBFX0VER0VfQk9USD4s
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDA3IElS
UV9UWVBFX0VER0VfUklTSU5HPjsKPj4gVGhpcyBkaWZmZXJzIGZyb20gdGhlIGRvd25zdHJlYW0g
aXJxIHR5cGVzOgo+Pgo+PiA8MHgyIDB4MTUgMHgwIElSUV9UWVBFX0VER0VfQk9USD4sCj4+IDww
eDIgMHgxNSAweDEgSVJRX1RZUEVfRURHRV9CT1RIPiwKPj4gPDB4MiAweDE1IDB4MiBJUlFfVFlQ
RV9FREdFX1JJU0lORz4sCj4+IDwweDIgMHgxNSAweDMgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+
PiA8MHgyIDB4MTUgMHg0IElSUV9UWVBFX0VER0VfQk9USD4sCj4+IDwweDIgMHgxNSAweDUgSVJR
X1RZUEVfRURHRV9SSVNJTkc+LAo+PiA8MHgyIDB4MTUgMHg2IElSUV9UWVBFX0VER0VfUklTSU5H
PiwKPj4gPDB4MiAweDE1IDB4NyBJUlFfVFlQRV9FREdFX1JJU0lORz47Cj4gCj4gSSBtdXN0IGFk
bWl0LCBJIGNvcGllZCB0aGUgSVJRcyBmcm9tIHRoZSBwbTgxNTBiIHJhdGhlciB0aGFuIGZyb20g
dGhlCj4gdmVuZG9yIGtlcm5lbC4KPiAKPiBCcnlhbiwgYW55IGlkZWEgd2hpY2ggc2V0IG9mIGZs
YWdzIGlzIG1vcmUgY29ycmVjdD8KCk15IOKCrCBzYXlzIDE6MSB3aXRoIHRoZSBkb3duc3RyZWFt
IHBtaTYzMi5kdHNpCgpxY29tLHR5cGVjQDE1MDAgewogICAgIHJlZyA9IDwweDE1MDAgMHgxMDA+
OwogICAgIGludGVycnVwdHMgPSA8MHgyIDB4MTUgMHgwIElSUV9UWVBFX0VER0VfQk9USD4sCiAg
ICAgICAgICAgICAgICAgIDwweDIgMHgxNSAweDEgSVJRX1RZUEVfRURHRV9CT1RIPiwKICAgICAg
ICAgICAgICAgICAgPDB4MiAweDE1IDB4MiBJUlFfVFlQRV9FREdFX1JJU0lORz4sCiAgICAgICAg
ICAgICAgICAgIDwweDIgMHgxNSAweDMgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAogICAgICAgICAg
ICAgICAgICA8MHgyIDB4MTUgMHg0IElSUV9UWVBFX0VER0VfQk9USD4sCiAgICAgICAgICAgICAg
ICAgIDwweDIgMHgxNSAweDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAogICAgICAgICAgICAgICAg
ICA8MHgyIDB4MTUgMHg2IElSUV9UWVBFX0VER0VfUklTSU5HPiwKICAgICAgICAgICAgICAgICAg
PDB4MiAweDE1IDB4NyBJUlFfVFlQRV9FREdFX1JJU0lORz47CgogICAgIGludGVycnVwdC1uYW1l
cyA9ICJ0eXBlYy1vci1yaWQtZGV0ZWN0LWNoYW5nZSIsCiAgICAgICAgICAgICAgICAgICAgICAg
InR5cGVjLXZwZC1kZXRlY3QiLAogICAgICAgICAgICAgICAgICAgICAgICJ0eXBlYy1jYy1zdGF0
ZS1jaGFuZ2UiLAogICAgICAgICAgICAgICAgICAgICAgICJ0eXBlYy12Y29ubi1vYyIsCiAgICAg
ICAgICAgICAgICAgICAgICAgInR5cGVjLXZidXMtY2hhbmdlIiwKICAgICAgICAgICAgICAgICAg
ICAgICAidHlwZWMtYXR0YWNoLWRldGFjaCIsCiAgICAgICAgICAgICAgICAgICAgICAgInR5cGVj
LWxlZ2FjeS1jYWJsZS1kZXRlY3QiLAogICAgICAgICAgICAgICAgICAgICAgICJ0eXBlYy10cnkt
c25rLXNyYy1kZXRlY3QiOwp9OwoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1waHkK
