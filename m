Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F0B1C47258
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 18:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeCDxHedBUewCY8eTcFNEVvIR7PsGG4dd6Q7OOvvqXc=; b=07P00yj2pxGcHs
	iYfStDBZMwaH+pVbdfuWdNW6Di+G+uWFDcza8T0tuqvtz6syncT3vE1Ub1QSyDdNBrW8nhM+fO3lj
	bAPV730WQ3aQpgRwayjW6tVKrOdP34ZjhsNh904s1XDLKlcV85abahMgQ+2jXbxfVomRHndjrlo2z
	S6qhUAhSt4PreEYBn96OJNJkllBBiS6tTmGTwSkGHuZuIMIeTQiyzcoZ/h24nfNF7Kx62ISmaAnz5
	zQISVpoDdxs4O/Tf/noUfV9LMRhA9GE93vtyd51NPphDoZdF0iWIccITEyG6ahy3wi3fFKTlg6Sb+
	e1/qlnnv3vbx7Ow+0RIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQAIm-000Iw0-27;
	Wed, 17 Jan 2024 18:06:12 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQAIi-000Iuy-1c
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 18:06:10 +0000
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-5f254d1a6daso117025697b3.2
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 10:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705514767; x=1706119567; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFkmgKfAYW4PQNSghqjXT5WrCqzlgmtfGOBlxJ300S0=;
        b=chDuY2wBnGPaGLBZ6XV1D1wFG3AodDRFveYoqMpz/UfxvdLNEnZJEjfQpDliGaoDui
         l8sqOSVk2toZYfVM9/Y5ymPxcaAyp5yHX69LXC1paK2WqE0TdbBe0NHA8JpOY23hFpbB
         7x01Lmo8bjYHx7weReieHC07edkfrvPzlCG9D9EAz3FH1qiMA7vuXutCCtQCuKh4HvwT
         tGJSsa5J7HdoLqiIxswwXTGVWV3l8LmlWFXVqPpX7dI7G2dz0LmIJN9f+2y4TU7Qd3am
         GA4fXTltiDRvxwk7doijBnygwOWDzjHSuAsgcogpUKJO13ItSkhS8kcH7MQXzw/ktsL3
         sshw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705514767; x=1706119567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YFkmgKfAYW4PQNSghqjXT5WrCqzlgmtfGOBlxJ300S0=;
        b=aoju5v/ELJ/P+9O7irF+ILF6V1uprgOTdkJ6SQCxumsI6ncbsLx3f3Y+/pHwMj3l/k
         B9ty8chgIfs1gwyT1aaG6ONMdGYQlQTgCbU6ino3E8mPabPop2oBN6ZLF+EZQh5a3/D6
         qzNi4bQ22fygCFDo3Nv51ViL9uCnVsXo8daF1+/zhvokVQH7KR9G9XI/nOPp9CItEJ91
         gc4JibQ1GMblAuRXcQkGYmT0m2WOa9Nl3VTBKCyLiRoBYTN15frw6IuiWC4+I3lkA9ND
         4DQp6zzbU40cXxGnUddflhd/OaUK0/IBdKbAGDkRXtNnxr3UcbcURcGoubkK5nx2oY1E
         lAqA==
X-Gm-Message-State: AOJu0YzouRfoFwaHZMBHOl04WcXlHEalzNfwAvmTMKr/t8UXm0JkfbgF
	DtpTUvroTvngGY/tOabvWH0sRFnbOD8QUDqpFWS1MiFg01a76A==
X-Google-Smtp-Source: AGHT+IFDfNBV5xuLrOdDKdl+6yxpolFF1sCHEtmZ0DxCyYUK0PFmo0Qg0krlc8DqAXWYyh3jmVvY9UrWsNi4UR3YQ3w=
X-Received: by 2002:a81:f80b:0:b0:5f7:c08:5c66 with SMTP id
 z11-20020a81f80b000000b005f70c085c66mr6443078ywm.81.1705514766990; Wed, 17
 Jan 2024 10:06:06 -0800 (PST)
MIME-Version: 1.0
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-13-182d9aa0a5b3@linaro.org> <1d0d325d-d15e-4e86-b8e3-9f91b99e78bf@linaro.org>
 <CAA8EJpo7qH43FyvO-N9vFH=6K3rMdPpnGp9w6pGW2cz4bMK+0g@mail.gmail.com> <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
In-Reply-To: <28e019ce-7612-4b10-8068-17c3fef4dba8@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 20:05:56 +0200
Message-ID: <CAA8EJpoXUMehrcf8sXKPhk7qb4SGXT960SUFHX5AUt1wxxHepw@mail.gmail.com>
Subject: Re: [PATCH v2 13/15] arm64: dts: qcom: pmi632: define USB-C related blocks
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_100608_616137_B330BFE7 
X-CRM114-Status: GOOD (  18.65  )
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

T24gV2VkLCAxNyBKYW4gMjAyNCBhdCAxOToyMywgQnJ5YW4gTydEb25vZ2h1ZQo8YnJ5YW4ub2Rv
bm9naHVlQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gMTUvMDEvMjAyNCAxMDo0MywgRG1pdHJ5
IEJhcnlzaGtvdiB3cm90ZToKPiA+IE9uIE1vbiwgMTUgSmFuIDIwMjQgYXQgMTI6MDAsIEtvbnJh
ZCBEeWJjaW8gPGtvbnJhZC5keWJjaW9AbGluYXJvLm9yZz4gd3JvdGU6Cj4gPj4KPiA+PiBPbiAx
My4wMS4yMDI0IDIxOjU1LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4+PiBEZWZpbmUgVkJV
UyByZWd1bGF0b3IgYW5kIHRoZSBUeXBlLUMgaGFuZGxpbmcgYmxvY2sgYXMgcHJlc2VudCBvbiB0
aGUKPiA+Pj4gUXVhY29tbSBQTUk2MzIgUE1JQy4KPiA+Pj4KPiA+Pj4gUmV2aWV3ZWQtYnk6IEJy
eWFuIE8nRG9ub2dodWUgPGJyeWFuLm9kb25vZ2h1ZUBsaW5hcm8ub3JnPgo+ID4+PiBTaWduZWQt
b2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4g
Pj4+IC0tLQo+ID4+PiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9wbWk2MzIuZHRzaSB8IDMw
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ID4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAz
MCBpbnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vcG1pNjMyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vcG1pNjMyLmR0
c2kKPiA+Pj4gaW5kZXggNGViNzllMGNlNDBhLi5kNjgzMmYwYjdiODAgMTAwNjQ0Cj4gPj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9wbWk2MzIuZHRzaQo+ID4+PiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcG1pNjMyLmR0c2kKPiA+Pj4gQEAgLTQ1LDYgKzQ1LDM2IEBA
IHBtaWNAMiB7Cj4gPj4+ICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4+
PiAgICAgICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+Pj4KPiA+Pj4gKyAgICAgICAg
ICAgICBwbWk2MzJfdmJ1czogdXNiLXZidXMtcmVndWxhdG9yQDExMDAgewo+ID4+PiArICAgICAg
ICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJxY29tLHBtaTYzMi12YnVzLXJlZyIsICJxY29t
LHBtODE1MGItdmJ1cy1yZWciOwo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4
MTEwMD47Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+
ID4+PiArICAgICAgICAgICAgIH07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICAgICAgICBwbWk2MzJf
dHlwZWM6IHR5cGVjQDE1MDAgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJxY29tLHBtaTYzMi10eXBlYyI7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICByZWcg
PSA8MHgxNTAwPjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8MHgy
IDB4MTUgMHgwMCBJUlFfVFlQRV9FREdFX1JJU0lORz4sCj4gPj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4MDEgSVJRX1RZUEVfRURHRV9CT1RIPiwKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MHgyIDB4MTUgMHgwMiBJUlFf
VFlQRV9FREdFX1JJU0lORz4sCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgPDB4MiAweDE1IDB4MDMgSVJRX1RZUEVfRURHRV9CT1RIPiwKPiA+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICA8MHgyIDB4MTUgMHgwNCBJUlFfVFlQRV9FREdFX1JJU0lO
Rz4sCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4
MDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIDwweDIgMHgxNSAweDA2IElSUV9UWVBFX0VER0VfQk9USD4sCj4gPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4MDcgSVJRX1RZUEVfRURH
RV9SSVNJTkc+Owo+ID4+IFRoaXMgZGlmZmVycyBmcm9tIHRoZSBkb3duc3RyZWFtIGlycSB0eXBl
czoKPiA+Pgo+ID4+IDwweDIgMHgxNSAweDAgSVJRX1RZUEVfRURHRV9CT1RIPiwKPiA+PiA8MHgy
IDB4MTUgMHgxIElSUV9UWVBFX0VER0VfQk9USD4sCj4gPj4gPDB4MiAweDE1IDB4MiBJUlFfVFlQ
RV9FREdFX1JJU0lORz4sCj4gPj4gPDB4MiAweDE1IDB4MyBJUlFfVFlQRV9FREdFX1JJU0lORz4s
Cj4gPj4gPDB4MiAweDE1IDB4NCBJUlFfVFlQRV9FREdFX0JPVEg+LAo+ID4+IDwweDIgMHgxNSAw
eDUgSVJRX1RZUEVfRURHRV9SSVNJTkc+LAo+ID4+IDwweDIgMHgxNSAweDYgSVJRX1RZUEVfRURH
RV9SSVNJTkc+LAo+ID4+IDwweDIgMHgxNSAweDcgSVJRX1RZUEVfRURHRV9SSVNJTkc+Owo+ID4K
PiA+IEkgbXVzdCBhZG1pdCwgSSBjb3BpZWQgdGhlIElSUXMgZnJvbSB0aGUgcG04MTUwYiByYXRo
ZXIgdGhhbiBmcm9tIHRoZQo+ID4gdmVuZG9yIGtlcm5lbC4KPiA+Cj4gPiBCcnlhbiwgYW55IGlk
ZWEgd2hpY2ggc2V0IG9mIGZsYWdzIGlzIG1vcmUgY29ycmVjdD8KPgo+IE15IOKCrCBzYXlzIDE6
MSB3aXRoIHRoZSBkb3duc3RyZWFtIHBtaTYzMi5kdHNpCj4KPiBxY29tLHR5cGVjQDE1MDAgewo+
ICAgICAgcmVnID0gPDB4MTUwMCAweDEwMD47Cj4gICAgICBpbnRlcnJ1cHRzID0gPDB4MiAweDE1
IDB4MCBJUlFfVFlQRV9FREdFX0JPVEg+LAo+ICAgICAgICAgICAgICAgICAgIDwweDIgMHgxNSAw
eDEgSVJRX1RZUEVfRURHRV9CT1RIPiwKPiAgICAgICAgICAgICAgICAgICA8MHgyIDB4MTUgMHgy
IElSUV9UWVBFX0VER0VfUklTSU5HPiwKPiAgICAgICAgICAgICAgICAgICA8MHgyIDB4MTUgMHgz
IElSUV9UWVBFX0VER0VfUklTSU5HPiwKPiAgICAgICAgICAgICAgICAgICA8MHgyIDB4MTUgMHg0
IElSUV9UWVBFX0VER0VfQk9USD4sCj4gICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4NSBJ
UlFfVFlQRV9FREdFX1JJU0lORz4sCj4gICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4NiBJ
UlFfVFlQRV9FREdFX1JJU0lORz4sCj4gICAgICAgICAgICAgICAgICAgPDB4MiAweDE1IDB4NyBJ
UlFfVFlQRV9FREdFX1JJU0lORz47Cj4KPiAgICAgIGludGVycnVwdC1uYW1lcyA9ICJ0eXBlYy1v
ci1yaWQtZGV0ZWN0LWNoYW5nZSIsCgpNeSAyYyBzYXkgdGhhdCBFREdFX0JPVEggZG9lc24ndCBt
YWtlIHNlbnNlIGZvciBvci1yaWQtZGV0ZWN0LWNoYW5nZQphdCBsZWFzdC4gSXQgaXMgYW4gIm9y
IiBvZiBzZXZlcmFsIF9wdWxzZV8gaW50ZXJydXB0cywgc28gdGhlcmUgaXMgbm8KbmVlZCB0byBk
ZXRlY3QgdGhlIGZhbGxpbmcgZWRnZS4KCj4gICAgICAgICAgICAgICAgICAgICAgICAidHlwZWMt
dnBkLWRldGVjdCIsCgpib3RoLCBjb3JyZWN0IGluIGJvdGggY2FzZXMKCj4gICAgICAgICAgICAg
ICAgICAgICAgICAidHlwZWMtY2Mtc3RhdGUtY2hhbmdlIiwKCnB1bHNlIGludGVycnVwdCwgcmFp
c2luZy4KCj4gICAgICAgICAgICAgICAgICAgICAgICAidHlwZWMtdmNvbm4tb2MiLAoKSXQgaXMg
YSAnbGV2ZWwnIGludGVycnVwdCwgc28gd2UgcHJvYmFibHkgd2FudCB0byBkZXRlY3QgYm90aCBy
aXNpbmcKYW5kIGZhbGxpbmcgZWRnZXMuCgo+ICAgICAgICAgICAgICAgICAgICAgICAgInR5cGVj
LXZidXMtY2hhbmdlIiwKCiJwdWxzZSIgaW50ZXJydXB0ID0+IHJpc2luZywgbm90IGJvdGgsIGNv
cnJlY3QgaW4gUE04MTUwQi4KCj4gICAgICAgICAgICAgICAgICAgICAgICAidHlwZWMtYXR0YWNo
LWRldGFjaCIsCgpwdWxzZSBpbnRlcnJ1cHQsIHJpc2luZyBvbmx5LgoKPiAgICAgICAgICAgICAg
ICAgICAgICAgICJ0eXBlYy1sZWdhY3ktY2FibGUtZGV0ZWN0IiwKCmxldmVsLCBzaG91bGQgYmUg
Ym90aCBhcyBpbiBQTTgxNTBCLgoKPiAgICAgICAgICAgICAgICAgICAgICAgICJ0eXBlYy10cnkt
c25rLXNyYy1kZXRlY3QiOwo+IH07CgpQdWxzZSBpbnRlcnJ1cHQgYmVpbmcgcmFpc2VkIHdoZW4g
dGhlcmUgaXMgZWl0aGVyIHN1Y2Nlc3NmdWwgb3IKdW5zdWNjZXNzZnVsIHRyeS5TTksgb3IgdHJ5
LlNSQy4KClNvLCBhZnRlciBjb25zdWx0aW5nIHRoZSBkb2N1bWVudGF0aW9uLCBJIGJlbGlldmUg
dGhlIGZsYWdzIGJlaW5nIGEKcGFydCBvZiB0aGlzIHBhdGNoIChhbmQgaW4gcG04MTUwYi5kdHNp
KSBhcmUgY29ycmVjdC4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
