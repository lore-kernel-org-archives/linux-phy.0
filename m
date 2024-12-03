Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 507DAE64A83
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2STWR2tlVsnOABsX2JCPKrYJExCccnhHvW9AuGMEYns=; b=htzGRQm7y7qFfA
	cwYaBfh7i9B+PSrU6fU9X8Aklkno8F9zmS4bAhzJ2W9cGfPvTDdV03s0ckbNtChTDri7yH3c0+5fD
	4JH0HyZCYjyJ3ZGeezWn5XlO3yEqu95U9Xrl4m2rRUDR3P2IlIFmxj96iu1xwNMEYwJLTo15by83H
	SMLwrKcEW26k80ebKF8oqxdxZYoks6y2/cz5c8QfPXTqNkcX7PqMrzZWx7rfM67UEcsLEr63eGVKV
	c31hKnGanEbzuCVVTETLZCNNTRZH8tH7K1LDF+tz0Z5F/XCWf9h6+iEjiwedchxdv/lmDgrJcDzmh
	lP067YszCY+iL8h7Ci7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRnt-00000009NxO-0H0d;
	Tue, 03 Dec 2024 12:14:57 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmr-00000009Ndm-1b2G
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:55 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53ded167ae3so5888851e87.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228031; x=1733832831; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HxSILp22APpVBx5tHexHUV/Y8I0r0x3nASsEN7dt3nk=;
        b=GfBMGt9tNbRZOdOPq1cEtFjLlZRg/jdinYvxBKR7v9TL8YfrZWQvOBjjJySDIaREwr
         XwYYup5+q38Wgc84HWUwlz692Z4oS/1MKu9uAUzSmkisqMgIhRIq4/8p7mQZ27iqmSua
         VfDckMVRQn7+C0EQNzNETlQsujH6kblsjrJhAS0852tiOw50DKACkyefgD8a/dhDuJUL
         z4opsVn2bbfPbUxrfa4r2OkaiM0qs6vRTU5CVsrQhcrC5mN2k0Wdy/x+eH0FpnA5jdaD
         Ru7VgZjv2Rz4axUDXofMTZlkqdbGyJ+c8OLYH4Qr8KLpkGU72GahBi9T8pWG3OJ2hoEl
         M5/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228031; x=1733832831;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HxSILp22APpVBx5tHexHUV/Y8I0r0x3nASsEN7dt3nk=;
        b=I+xwKmuPrWfn3RgSWtY8ri8bny0ijyxwguEnkL+ZPgjqS8zzExqZGjL2+XuttUoU1o
         XhDTdJ2wmF28PZNMZsGWxkiRmqZ6vlim53T/iEuIzJwwHj2RsCyFJPb7mzQWDrS3ZmM3
         YUDvv62keFudDqe5GO+j2pWUeBvemNuPQ4tvrsBo38vFT2ActbRLXyCCnnvP0Fh10GrW
         ib3diZI/aUjJRgFDC9SL6tRIBRx8ONSZY5HJ4nmJUgL4RVUejkg5+KdaAfP7HaQwVHQG
         j2gkRPTsjjIv+1UZjy0LMWQfxh2t0eXBcDupWHI+3z/jg5z0bx4fR4RAHOch+L+9BIAZ
         ncPg==
X-Forwarded-Encrypted: i=1; AJvYcCVCCrgb0+rc/VB/ikqCMQ21vXLIYCDglBtTkKkuy/A2Ua7ZmUp/vsiC4fLaF8Ma9fMfVBeGThYW928=@lists.infradead.org
X-Gm-Message-State: AOJu0YyIFVcRKiZpklCb8pvhc6rFQOXLseaMTcH5SREAMSL3nZAgxP8y
	MWrzXEHGO+y+LCZNbtpIwmY6vqemtGbW8Nz0vjs4ygc5Er/CMTrkPerEHjRr57w=
X-Gm-Gg: ASbGncvL2qBiepZpgp60P4sF2mbDP+py3Zw2DgGi3jWagcStoV9zrmFdIZBvKRNnwhT
	bw0HqbuS+xGud3bv3VKP8aW3qBow3+U1qouS1+Sp6n6bn0PvmNdDS2YAU7WsrOhy1jld+9UYPqn
	gkZJPDM9WhR8WADtJlZcGWU01u995mznYfWNQtRoo3CVdZ/NOTvySMHg4asBM6K4BxFl0njQC7s
	uWS62o1ev/COzMnK9Ag8HpLWkReA7B6y+NpkPgNCM65LcaF3xob54TFGYu/iR5WmM4pDja9DWKZ
	T0RaaXzjRiJ954imE7lgNzvzMARa+J2bBQ==
X-Google-Smtp-Source: AGHT+IGJXqz+bsjwL9K7fxpkACgJ7CUUYtTsBMRBB8QXiHvyZub3gqPv4SCB1Lxa7PjJlefvUOWsPg==
X-Received: by 2002:a05:6512:3e26:b0:53d:d58a:cb67 with SMTP id 2adb3069b0e04-53e12a26e81mr1428897e87.35.1733228031160;
        Tue, 03 Dec 2024 04:13:51 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:50 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:49 +0000
Subject: [PATCH v2 1/8] dt-bindings: phy: samsung,usb3-drd-phy: align to
 universal style
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-1-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_041353_417868_464EE911 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
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

SW4gWzFdLCBSb2IgcG9pbnRlZCBvdXQgdGhhdCB3ZSBzaG91bGQgcmVhbGx5IGJlIHNlcGFyYXRp
bmcgcHJvcGVydGllcwp3aXRoIGJsYW5rIGxpbmVzIGluIGJldHdlZW4sIHdoaWNoIGlzIHVuaXZl
cnNhbCBzdHlsZS4gT25seSB3aGVyZQpwcm9wZXJ0aWVzIGFyZSBib29sZWFucywgZW1wdHkgbGlu
ZXMgYXJlIG5vdCByZXF1aXJlZC4KCkRvIHNvLgoKTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvYWxsLzIwMjQwNzExMjEyMzU5LkdBMzAyMzQ5MC1yb2JoQGtlcm5lbC5vcmcvIFsxXQpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpTaWduZWQt
b2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0tCnYy
OgoqIGNvbGxlY3QgdGFncwotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9zYW1zdW5n
LHVzYjMtZHJkLXBoeS55YW1sICAgICB8IDE1ICsrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKaW5kZXgg
MTYzMjFjZGQ0OTE5Li4xZjhiMzU5MTdiMTEgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5Lnlh
bWwKQEAgLTgzLDE0ICs4MywxOSBAQCBwcm9wZXJ0aWVzOgogCiAgIHBsbC1zdXBwbHk6CiAgICAg
ZGVzY3JpcHRpb246IFBvd2VyIHN1cHBseSBmb3IgdGhlIFVTQiBQTEwuCisKICAgZHZkZC11c2Iy
MC1zdXBwbHk6CiAgICAgZGVzY3JpcHRpb246IERWREQgcG93ZXIgc3VwcGx5IGZvciB0aGUgVVNC
IDIuMCBwaHkuCisKICAgdmRkaC11c2IyMC1zdXBwbHk6CiAgICAgZGVzY3JpcHRpb246IFZERGgg
cG93ZXIgc3VwcGx5IGZvciB0aGUgVVNCIDIuMCBwaHkuCisKICAgdmRkMzMtdXNiMjAtc3VwcGx5
OgogICAgIGRlc2NyaXB0aW9uOiAzLjNWIHBvd2VyIHN1cHBseSBmb3IgdGhlIFVTQiAyLjAgcGh5
LgorCiAgIHZkZGEtdXNiZHAtc3VwcGx5OgogICAgIGRlc2NyaXB0aW9uOiBWRERhIHBvd2VyIHN1
cHBseSBmb3IgdGhlIFVTQiBEUCBwaHkuCisKICAgdmRkaC11c2JkcC1zdXBwbHk6CiAgICAgZGVz
Y3JpcHRpb246IFZERGggcG93ZXIgc3VwcGx5IGZvciB0aGUgVVNCIERQIHBoeS4KIApAQCAtMTE3
LDYgKzEyMiw3IEBAIGFsbE9mOgogICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjogR2F0ZSBvZiBj
b250cm9sIGludGVyZmFjZSBBWEkgY2xvY2sKICAgICAgICAgICAgIC0gZGVzY3JpcHRpb246IEdh
dGUgb2YgY29udHJvbCBpbnRlcmZhY2UgQVBCIGNsb2NrCiAgICAgICAgICAgICAtIGRlc2NyaXB0
aW9uOiBHYXRlIG9mIFNDTCBBUEIgY2xvY2sKKwogICAgICAgICBjbG9jay1uYW1lczoKICAgICAg
ICAgICBpdGVtczoKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeQpAQCAtMTI0LDEwICsxMzAsMTMg
QEAgYWxsT2Y6CiAgICAgICAgICAgICAtIGNvbnN0OiBjdHJsX2FjbGsKICAgICAgICAgICAgIC0g
Y29uc3Q6IGN0cmxfcGNsawogICAgICAgICAgICAgLSBjb25zdDogc2NsX3BjbGsKKwogICAgICAg
ICByZWc6CiAgICAgICAgICAgbWluSXRlbXM6IDMKKwogICAgICAgICByZWctbmFtZXM6CiAgICAg
ICAgICAgbWluSXRlbXM6IDMKKwogICAgICAgcmVxdWlyZWQ6CiAgICAgICAgIC0gcmVnLW5hbWVz
CiAgICAgICAgIC0gcGxsLXN1cHBseQpAQCAtMTQ5LDYgKzE1OCw3IEBAIGFsbE9mOgogICAgICAg
ICBjbG9ja3M6CiAgICAgICAgICAgbWluSXRlbXM6IDUKICAgICAgICAgICBtYXhJdGVtczogNQor
CiAgICAgICAgIGNsb2NrLW5hbWVzOgogICAgICAgICAgIGl0ZW1zOgogICAgICAgICAgICAgLSBj
b25zdDogcGh5CkBAIC0xNTYsOCArMTY2LDEwIEBAIGFsbE9mOgogICAgICAgICAgICAgLSBjb25z
dDogcGh5X3V0bWkKICAgICAgICAgICAgIC0gY29uc3Q6IHBoeV9waXBlCiAgICAgICAgICAgICAt
IGNvbnN0OiBpdHAKKwogICAgICAgICByZWc6CiAgICAgICAgICAgbWF4SXRlbXM6IDEKKwogICAg
ICAgICByZWctbmFtZXM6CiAgICAgICAgICAgbWF4SXRlbXM6IDEKIApAQCAtMTc0LDEyICsxODYs
MTUgQEAgYWxsT2Y6CiAgICAgICAgIGNsb2NrczoKICAgICAgICAgICBtaW5JdGVtczogMgogICAg
ICAgICAgIG1heEl0ZW1zOiAyCisKICAgICAgICAgY2xvY2stbmFtZXM6CiAgICAgICAgICAgaXRl
bXM6CiAgICAgICAgICAgICAtIGNvbnN0OiBwaHkKICAgICAgICAgICAgIC0gY29uc3Q6IHJlZgor
CiAgICAgICAgIHJlZzoKICAgICAgICAgICBtYXhJdGVtczogMQorCiAgICAgICAgIHJlZy1uYW1l
czoKICAgICAgICAgICBtYXhJdGVtczogMQogCgotLSAKMi40Ny4wLjMzOC5nNjBjY2ExNTgxOS1n
b29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cGh5Cg==
