Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A105C77B7A
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 09:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBmPQ+Md9JtP6Pyy/vp2UydM437mYqqK0Ar8EmB7ckw=; b=VkeFqMNgFRZPmm
	ZB7Pda56Tx4bCnfegsoAN70nrZIKOJTUdmNNdeqhusKUBiZKh+d/4RxJisMQpxS0qKj6fzmNuD+KZ
	U+kfrSC3kNKHTvRjago8oXGMO2ayUpHz4J0+u+T2OhL7WUZRQ2hLDbCp9sHITKoMxa6HQQUkCGdJ1
	a2RdKycW/pwhGEmFih+aciXc955X5Qhob01g2HOX4km4gl56iciEGK7C6hjY2mozsPTtgX1T4mVCE
	nt9NjqNY0XryY5u1kyapdGBHcl6FS3P4wygfziyTO1QLwqfh3wfP0fWrTsRCfAG52hkjwjNPFhPSX
	dmqy7H9l6g5g+Rv136wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Hzg-00GqS0-07;
	Wed, 31 May 2023 09:19:48 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Hzd-00GqQe-36
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 09:19:47 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1b0201d9a9eso5689295ad.0
        for <linux-phy@lists.infradead.org>; Wed, 31 May 2023 02:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685524783; x=1688116783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e/F8jIF8NqATxdAvMuHV954nGjADHoS+vIBQmhEkWOs=;
        b=g2QKglMZH/mJ1PlHw0xaAb1Atu0wvBgVAqYnuu8mReQEONCqAC+kuvmXr1GOl2K8hi
         PELXRr9/ZHFzDZ1y3TGPnhTkxyRxzi2WWpiULuLFvRre0MOUR2wmfXd4PYcyHYisgga9
         vIxf3UCExwjWT2hL5wZhyPw1/THRLmg9F35utlvE2h3bHMSJOdGF1FVhqXM8zvkuKeiA
         QDOmg7HzxXmpRYriQ+VggWvGgLlVCw55VPwJnR21xsMdQuKGIVaBL+9JKvxwHIb3unI0
         dNbqyoJWOojJolHETOZRlnmey1S+0lkpPlrlK4bJKbtj2DG0b51oWPxTwnJeIwJ9apJ4
         TZiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685524783; x=1688116783;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e/F8jIF8NqATxdAvMuHV954nGjADHoS+vIBQmhEkWOs=;
        b=gHBivHZPkAhdqAx/ZfXs+vV8lsIhxDMWMyRjY7o0KmaOWZZ+k69aGdRvDVTsYHwB70
         nDFy8VT6We7r8x3QOs7QcXSc1GtDdpL9bLCw2NHnATWCLgyITaUz5GUGJRzDmfEj+5ds
         DswZHuOqq4EC+WBIqTeCHwrGXnDdPMvETHoRrqyyNXKEacTK9GEM1HdDUyznw2PNZ+2h
         BFpJE6LebTNWu3sN0+mGLI62iwwd5vkoWfbAikP4a5waeG44tXso4eIKIqnEJMkqoYp3
         ySqaV0ngXDeqfaSxicflOTlQs05XavJ8W1bk3sMXXyKzVXQuUiEUYwPk7mXzBfv5fYXK
         RKUw==
X-Gm-Message-State: AC+VfDziEphgbtyusBP1zi++ZhOdNIcujDuFPe1AbEAgZ7CwjVEtYZf+
	JXcFcALwxWVUF8MFmi5Dtn+MIFPayZF4SWJ5KTDmFg==
X-Google-Smtp-Source: ACHHUZ6Ofzg7tjk5fXnBtT7CKLOKxvtwCuBdh95OKJ7ZvI9XlppTjSg852EOtBKSeeNZAfFL9zCpUaqHc9KwNzmaA5U=
X-Received: by 2002:a17:902:e744:b0:1ac:86b5:70d9 with SMTP id
 p4-20020a170902e74400b001ac86b570d9mr14542055plf.32.1685524783362; Wed, 31
 May 2023 02:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-0-56eb7a4d5b8e@linaro.org>
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-8-56eb7a4d5b8e@linaro.org>
In-Reply-To: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v5-8-56eb7a4d5b8e@linaro.org>
From: Nicolas Belin <nbelin@baylibre.com>
Date: Wed, 31 May 2023 11:19:32 +0200
Message-ID: <CAJZgTGEQ3B5M9BtDfUdyMiH+VQkWcFHU2fOJgE_1=a4E1bxMTA@mail.gmail.com>
Subject: Re: [PATCH v5 08/17] drm/meson: fix unbind path if HDMI fails to bind
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, "Lukas F. Hartmann" <lukas@mntre.com>, linux-amlogic@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_021946_022868_CC313D69 
X-CRM114-Status: GOOD (  17.78  )
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

TGUgbWFyLiAzMCBtYWkgMjAyMyDDoCAwOTozOCwgTmVpbCBBcm1zdHJvbmcKPG5laWwuYXJtc3Ry
b25nQGxpbmFyby5vcmc+IGEgw6ljcml0IDoKPgo+IElmIHRoZSBjYXNlIHRoZSBIRE1JIGNvbnRy
b2xsZXIgZmFpbHMgdG8gYmluZCwgd2UgdHJ5IHRvIHVuYmluZAo+IGFsbCBjb21wb25lbnRzIGJl
Zm9yZSBjYWxsaW5nIGRybV9kZXZfcHV0KCkgd2hpY2ggbWFrZXMgZHJtX2JyaWRnZV9kZXRhY2go
KQo+IGNyYXNoIGJlY2F1c2UgdW5iaW5kaW5nIHRoZSBIRE1JIGNvbnRyb2xsZXIgZnJlZXMgdGhl
IGJyaWRnZSBtZW1vcnkuCj4KPiBUaGUgc29sdXRpb24gaXMgdGhlIHVuYmluZCBhbGwgY29tcG9u
ZW50cyBhdCB0aGUgZW5kIGxpa2UgaW4gdGhlIHJlbW92ZQo+IHBhdGguCj4KPiBTaWduZWQtb2Zm
LWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2Rydi5jIHwgMjMgKysrKysrKysrKysrKystLS0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2Rydi5jIGIvZHJp
dmVycy9ncHUvZHJtL21lc29uL21lc29uX2Rydi5jCj4gaW5kZXggY2E2ZDFlNTllNWQ5Li5lMDYw
Mjc5ZGM4MGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2Rydi5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2Rydi5jCj4gQEAgLTMxNiwzMiAr
MzE2LDM0IEBAIHN0YXRpYyBpbnQgbWVzb25fZHJ2X2JpbmRfbWFzdGVyKHN0cnVjdCBkZXZpY2Ug
KmRldiwgYm9vbCBoYXNfY29tcG9uZW50cykKPiAgICAgICAgICAgICAgICAgZ290byBleGl0X2Fm
YmNkOwo+Cj4gICAgICAgICBpZiAoaGFzX2NvbXBvbmVudHMpIHsKPiAtICAgICAgICAgICAgICAg
cmV0ID0gY29tcG9uZW50X2JpbmRfYWxsKGRybS0+ZGV2LCBkcm0pOwo+ICsgICAgICAgICAgICAg
ICByZXQgPSBjb21wb25lbnRfYmluZF9hbGwoZGV2LCBkcm0pOwo+ICAgICAgICAgICAgICAgICBp
ZiAocmV0KSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgZGV2X2Vycihkcm0tPmRldiwgIkNv
dWxkbid0IGJpbmQgYWxsIGNvbXBvbmVudHNcbiIpOwo+ICsgICAgICAgICAgICAgICAgICAgICAg
IC8qIERvIG5vdCB0cnkgdG8gdW5iaW5kICovCj4gKyAgICAgICAgICAgICAgICAgICAgICAgaGFz
X2NvbXBvbmVudHMgPSBmYWxzZTsKPiAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGV4aXRf
YWZiY2Q7Cj4gICAgICAgICAgICAgICAgIH0KPiAgICAgICAgIH0KPgo+ICAgICAgICAgcmV0ID0g
bWVzb25fZW5jb2Rlcl9oZG1pX2luaXQocHJpdik7Cj4gICAgICAgICBpZiAocmV0KQo+IC0gICAg
ICAgICAgICAgICBnb3RvIHVuYmluZF9hbGw7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXhpdF9h
ZmJjZDsKPgo+ICAgICAgICAgcmV0ID0gbWVzb25fcGxhbmVfY3JlYXRlKHByaXYpOwo+ICAgICAg
ICAgaWYgKHJldCkKPiAtICAgICAgICAgICAgICAgZ290byB1bmJpbmRfYWxsOwo+ICsgICAgICAg
ICAgICAgICBnb3RvIGV4aXRfYWZiY2Q7Cj4KPiAgICAgICAgIHJldCA9IG1lc29uX292ZXJsYXlf
Y3JlYXRlKHByaXYpOwo+ICAgICAgICAgaWYgKHJldCkKPiAtICAgICAgICAgICAgICAgZ290byB1
bmJpbmRfYWxsOwo+ICsgICAgICAgICAgICAgICBnb3RvIGV4aXRfYWZiY2Q7Cj4KPiAgICAgICAg
IHJldCA9IG1lc29uX2NydGNfY3JlYXRlKHByaXYpOwo+ICAgICAgICAgaWYgKHJldCkKPiAtICAg
ICAgICAgICAgICAgZ290byB1bmJpbmRfYWxsOwo+ICsgICAgICAgICAgICAgICBnb3RvIGV4aXRf
YWZiY2Q7Cj4KPiAgICAgICAgIHJldCA9IHJlcXVlc3RfaXJxKHByaXYtPnZzeW5jX2lycSwgbWVz
b25faXJxLCAwLCBkcm0tPmRyaXZlci0+bmFtZSwgZHJtKTsKPiAgICAgICAgIGlmIChyZXQpCj4g
LSAgICAgICAgICAgICAgIGdvdG8gdW5iaW5kX2FsbDsKPiArICAgICAgICAgICAgICAgZ290byBl
eGl0X2FmYmNkOwo+Cj4gICAgICAgICBkcm1fbW9kZV9jb25maWdfcmVzZXQoZHJtKTsKPgo+IEBA
IC0zNTksMTUgKzM2MSwxOCBAQCBzdGF0aWMgaW50IG1lc29uX2Rydl9iaW5kX21hc3RlcihzdHJ1
Y3QgZGV2aWNlICpkZXYsIGJvb2wgaGFzX2NvbXBvbmVudHMpCj4KPiAgdW5pbnN0YWxsX2lycToK
PiAgICAgICAgIGZyZWVfaXJxKHByaXYtPnZzeW5jX2lycSwgZHJtKTsKPiAtdW5iaW5kX2FsbDoK
PiAtICAgICAgIGlmIChoYXNfY29tcG9uZW50cykKPiAtICAgICAgICAgICAgICAgY29tcG9uZW50
X3VuYmluZF9hbGwoZHJtLT5kZXYsIGRybSk7Cj4gIGV4aXRfYWZiY2Q6Cj4gICAgICAgICBpZiAo
cHJpdi0+YWZiY2Qub3BzKQo+ICAgICAgICAgICAgICAgICBwcml2LT5hZmJjZC5vcHMtPmV4aXQo
cHJpdik7Cj4gIGZyZWVfZHJtOgo+ICAgICAgICAgZHJtX2Rldl9wdXQoZHJtKTsKPgo+ICsgICAg
ICAgbWVzb25fZW5jb2Rlcl9oZG1pX3JlbW92ZShwcml2KTsKPiArICAgICAgIG1lc29uX2VuY29k
ZXJfY3Zic19yZW1vdmUocHJpdik7Cj4gKwo+ICsgICAgICAgaWYgKGhhc19jb21wb25lbnRzKQo+
ICsgICAgICAgICAgICAgICBjb21wb25lbnRfdW5iaW5kX2FsbChkZXYsIGRybSk7Cj4gKwo+ICAg
ICAgICAgcmV0dXJuIHJldDsKPiAgfQo+Cj4KPiAtLQo+IDIuMzQuMQo+CgpXb3JrcyBmaW5lIG9u
IGEgS2hhZGFzIFZJTTMgdXNpbmcgYSBUUzA1MCBwYW5lbCwKVGhhbmtzCgpSZXZpZXdlZC1ieTog
Tmljb2xhcyBCZWxpbiA8bmJlbGluQGJheWxpYnJlLmNvbT4KVGVzdGVkLWJ5OiBOaWNvbGFzIEJl
bGluIDxuYmVsaW5AYmF5bGlicmUuY29tPgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
