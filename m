Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F115AC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mTt4T4ukJm82QlY7A/vdZsMxuUNOyBQmWCwifuQ2Rbs=; b=ShxsfqTDF8QtLB
	h95PWA+mzzKz2iBK92Y31n1CsMs3n16Fz/tvFmiQxACOxOd46X4w2Zuv3qKZ9zrnNkgCmqvl/FhKx
	4AaT1fxO6ftrIbj5dVdsaVqxLvTjWC/ok2iW+olI+6kKILv7tZB/n4y3lt55xrWp4xH2SIG+eeMjV
	HuzvfGDvLhvogkI1w3htVrK68FHjC/toc58ARQQwo3pgPCCIMYkq0Zx4xteS8++H3s4YmMQMjQZck
	QAgWNzwP+GAnLwhgiDMDKXi5NV0C7cDCx0ztZCSPUFlsMbj2ny3ZInWf9Ar08VVDwIlF81pHbfJH0
	B+AJX5AqSEn2tkGFLy5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267w-00000008wmX-0C3c;
	Wed, 01 May 2024 09:19:48 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wiT-0PNW
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:46 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a58eb9a42d9so524305766b.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555177; x=1715159977; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IU5666ZgVnJUhWYrIKpU1fyu97lInGaK9ybimnvX8Wc=;
        b=fd78Dg4EvgJ+mdTI8Qfs2fjdEd7rhBJ2SYN0M+FQj1PotqDjqYaAYRaPSfsJpijqCK
         jviF/z6+GJEZnRlOYRXKfNcYlNDMOoHK/8Vj3uB1ZEUvCUyD1GTlnct3bkCcH0pYiIHn
         2POqI3dbDmubyuDsdt88z+eTdeI012u2GtdmI3VqZWKH3OcDMTbpiaocH5jg7PjGMBJt
         B8geNADsRq77eigSJTBUc7bslm5tSBX8wphDss6RGWLYEBCSDwYyYUDfgHO7/b5pAF48
         ImpBX8pyaUSSTFybPB7jNmO70plk8oJT3jzLSdFQ7uBrmh1opOZjgF7zsgcGMldNHUgv
         mTWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555177; x=1715159977;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IU5666ZgVnJUhWYrIKpU1fyu97lInGaK9ybimnvX8Wc=;
        b=J71ukbp53+EhwjnBGCD7HTZ6LkxTwf8MESOKLt3DsVT//Ac/gicXNjywpNmsE9gtDp
         6+qeEhTVfP88e2GQkNp5NXOkoMHKYz9mfov7IsTkam9Ls/Dd8QkHXOzPbOowctK73YC0
         U5sNRFFDcUrElEEknTA36E015LXx7ZIyCJ0gktZx9VsHYmy11r82DNWe94gjQpCOJI7h
         rk1NKCDmdydBKw4fldNG14UYOahqMUCl9y17lEFijuv/xF5Xu69o0BsgmSkDShZHmi7p
         aaBVsuqGvJxVasy04xePF6OZxOEFriPs3Q0CB8K5VghB3k8gbZ+8gq7MMznNDCCbPJUK
         DkIA==
X-Forwarded-Encrypted: i=1; AJvYcCVmZuXxWZdg6/+onCy7q/Gvx7qnHyUeemYFJF5/L1W+Egaz8tIBji32q1a5lRPEQEB1TTwphrgrfPwRnfC2dPvHpVaKC8tVScXMcQ9YEA==
X-Gm-Message-State: AOJu0YzFEUmVDucVNyNTXyTuxV3wnA2qPe9+S8bA0QnuDhVF2kC/8r1h
	dkbopcvbJmkzZv8seEz6F+JKoia5evbgq+fCLWTyDZJ8Uu4zezM74Gd4wveILro=
X-Google-Smtp-Source: AGHT+IH/Ba7QbLPRPS+XzgPny6nXWZgsA7cIv4uu6lM0q2mhIikp9GNHF5bwt9YwZT+naZcTk3Cmgw==
X-Received: by 2002:a17:906:2c16:b0:a51:982e:b3f7 with SMTP id e22-20020a1709062c1600b00a51982eb3f7mr1404669ejh.37.1714555177187;
        Wed, 01 May 2024 02:19:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:36 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/7] USB31DRD phy support for Google Tensor gs101 (HS &
 SS)
Date: Wed, 01 May 2024 10:19:35 +0100
Message-Id: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACcJMmYC/3XMywrCMBCF4Vcps3YkkwQKrnwP6SKXaTogTUm0W
 Erf3di9y//A+XaoXIQr3LodCq9SJc8t9KWDMLk5MUpsDVppq6w2+K4el2nDVEkROj8apl5HChb
 aZyk8yuf0HkPrSeorl+3kV/qt/6SVUCH7GLxxgXob70+ZXcnXXBIMx3F8Aa6V3tGrAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Arnd Bergmann <arnd@arndb.de>, lee@kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_021944_188947_74A0387A 
X-CRM114-Status: GOOD (  13.29  )
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

VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgRXh5bm9zIFVTQiAzLjEgRFJE
IGNvbWJvIHBoeSwgYXMKZm91bmQgaW4gRXh5bm9zIDkgU29DcyBsaWtlIEdvb2dsZSBHUzEwMS4g
SXQgc3VwcG9ydHMgVVNCIFNTLCBIUyBhbmQKRGlzcGxheVBvcnQsIGJ1dCBEaXNwbGF5UG9ydCBp
cyBvdXQgb2Ygc2NvcGUgZm9yIHRoaXMgc2VyaWVzLgoKSW4gdGVybXMgb2YgVVRNSSssIHRoaXMg
aXMgdmVyeSBzaW1pbGFyIHRvIHRoZSBleGlzdGluZyBFeHlub3M4NTAKc3VwcG9ydCBpbiB0aGlz
IGRyaXZlci4gVGhlIGRpZmZlcmVuY2UgaXMgdGhhdCBpdCBzdXBwb3J0cyBib3RoIFVUTUkrCihI
UykgYW5kIFBJUEUzIChTUykuIEZpcnN0bHksIHRoZXJlIGFyZSBzb21lIHByZXBhcmF0b3J5IHBh
dGNoZXMgdG8gc2ltcGxpZnkKYWRkaXRpb24sIHdoaWxlIHRoZSBidWxrIG9mIHRoZSBjaGFuZ2Vz
IGlzIGFyb3VuZCB0aGUgU1MgcGFydC4KClRoaXMgdmVyc2lvbiBkb2Vzbid0IGNoYW5nZSBhbnl0
aGluZyBhcm91bmQgS3J6eXN6dG9mJ3MgY29tbWVudHMgcmVnYXJkaW5nCnN5c2Nvbi0gdnMgRXh5
bm9zLXNwZWNpZmljIFBNVSBBUElzLCBidXQgSSB3YW50ZWQgdG8gcG9zdCBhIHZlcnNpb24gd2l0
aCBhdApsZWFzdCB0aGUgc2ltcGxlIGZpeGVzIHRoYXQgYXJlIG5lY2Vzc2FyeSBhcyB3ZWxsIGFw
cGxpZWQuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5h
cm8ub3JnPgotLS0KQ2hhbmdlcyBpbiB2MjoKLSBhdm9pZCBoYXZpbmcgbmVzdGVkIGVsc2UvaWYg
aW4gdGhlIERUIGJpbmRpbmcgKFJvYikKLSBhZGQgbWlzc2luZyBiaXRmaWVsZC5oIGluY2x1ZGUK
LSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNDIzLXVzYi1waHkt
Z3MxMDEtdjEtMC1lYmRjYjNhYzE3NGRAbGluYXJvLm9yZwoKLS0tCkFuZHLDqSBEcmFzemlrICg3
KToKICAgICAgZHQtYmluZGluZ3M6IHBoeTogc2Ftc3VuZyx1c2IzLWRyZC1waHk6IGFkZCBnczEw
MSBjb21wYXRpYmxlCiAgICAgIHBoeTogZXh5bm9zNS11c2JkcmQ6IHVzZSBleHlub3NfZ2V0X3Bt
dV9yZWdtYXBfYnlfcGhhbmRsZSgpIGZvciBQTVUgcmVncwogICAgICBwaHk6IGV4eW5vczUtdXNi
ZHJkOiBzdXBwb3J0IGlzb2xhdGluZyBIUyBhbmQgU1MgcG9ydHMgaW5kZXBlbmRlbnRseQogICAg
ICBwaHk6IGV4eW5vczUtdXNiZHJkOiBzZXQgcmVmIGNsayBmcmVxIGluIGV4eW5vczg1MF91c2Jk
cmRfdXRtaV9pbml0KCkKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogdW5pZm9ybSBvcmRlciBv
ZiByZWdpc3RlciBiaXQgbWFjcm9zCiAgICAgIHBoeTogZXh5bm9zNS11c2JkcmQ6IGNvbnZlcnQg
dG8gY2xrX2J1bGsgZm9yIHBoeSAocmVnaXN0ZXIpIGFjY2VzcwogICAgICBwaHk6IGV4eW5vczUt
dXNiZHJkOiBzdXBwb3J0IEV4eW5vcyBVU0JEUkQgMy4xIGNvbWJvIHBoeSAoSFMgJiBTUykKCiAu
Li4vYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgICAgICAgICB8ICA2MSAr
LQogZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgfCAg
IDEgLQogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyAgICAgICAgICAg
fCA3NTQgKysrKysrKysrKysrKysrKysrKy0tCiBpbmNsdWRlL2xpbnV4L3NvYy9zYW1zdW5nL2V4
eW5vcy1yZWdzLXBtdS5oICAgICAgICB8ICAgNCArCiA0IGZpbGVzIGNoYW5nZWQsIDc1NiBpbnNl
cnRpb25zKCspLCA2NCBkZWxldGlvbnMoLSkKLS0tCmJhc2UtY29tbWl0OiBkMDQ0NjY3MDZkYjVl
MjQxZWUwMjZmMTdiNWY5MjBlNTBkZWUyNmI1CmNoYW5nZS1pZDogMjAyNDA0MjMtdXNiLXBoeS1n
czEwMS1hYmYzZTE3MmQxYzQKCkJlc3QgcmVnYXJkcywKLS0gCkFuZHLDqSBEcmFzemlrIDxhbmRy
ZS5kcmFzemlrQGxpbmFyby5vcmc+CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
