Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88815C4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 17:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kj+Yjhg6N1SP3rro8nOq/M2qKV/VCyT5ge9skOwTnWk=; b=0HzlCFR0fhxeFe
	dmoNQ8pR+JMLppVogLePLhz2hRGd791N7yVajOm5CVEzmd3c1MMHEnOu6FGSr5ZiI0LDLxXH2kJqk
	4VUwbXk3VJCb9miv8qLH1ln9Y9UvP9St1c1p9Senrsd3DO+L13VMxtxjUA21d8Ti+IZ3JNi24Y3Qv
	H7Pp6Ezyw/pcgjI8nS6MXIAxbbj1E+bMSQtONMng9d48qKcR+sv4YU+4phyfGy1mjsze5YIC6eRBR
	BC0zZH37MQbLsuc1d/47yqYmXHk7CspNqNF9omqeVRET7wySOKTN+OIrvQmfQYI4ejlZUOAYccscg
	JaPez9+IStXDDEPaH2xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJbG-00000000sGa-01pV;
	Tue, 23 Apr 2024 17:06:34 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzJb9-00000000s9Z-14ne
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 17:06:30 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a52223e004dso569069366b.2
        for <linux-phy@lists.infradead.org>; Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891985; x=1714496785; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AmVOMAacL5XFgxZMBxM5qRIgA9vpdjsgMSXx5Z5N0AI=;
        b=DTYqFvE6y78VDrTPGVpzt6GxC1sU3S0paucTrzk+rhFRO5NvfGxI+C9KYxYi3EcZ++
         2rKF1rDidoZCbDyR3mO7yVBGmzHWQhIvGnTwYCnnw18GQ03DP9zBPIEIQCQZ4x/fT+Oy
         TL6k6/kWGX8l7xBKm6oMtz1gLy63H81vu5IpZUO1Jj2fnBx25JUvoT9xQfh6bRhKVk95
         qSW2SUESy9o9wO0o+YVAmcgiORqo/8wknzIi8ac+eQ9wDkd5ea4Gm1mptteC9C5MQHeK
         EHVuXGNG7OPz2i68lGLX5or1S13dzzmP6nvZF+gzgLFhnLuUFJsEVQ0M8GLa462Ajs0P
         eNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891985; x=1714496785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AmVOMAacL5XFgxZMBxM5qRIgA9vpdjsgMSXx5Z5N0AI=;
        b=oGfEQIRqvggu+Wjv8uGEAUBSP4W9XhJ8cM2G+CWDOBh20znIofhe1xyy/ic5OcIIAO
         FSjCbM4yQVIE7TIc2SuLrRkJF684TruoAy7W6xfPfY/metAnXJz8OkaJfeB+BZzw/IyA
         FQXEEHckq6mbfT6OqTnCA5oaRA0M+b/4iilOJF/Q+BZEmsM4GXJ5Ks4/2qjsZmTbCfA1
         tjNA7GcK0yUz7YH2w2yIrtVWyIpKVTw5bP3HA2/lV3SFFFoz+Z12ifVX9C5gNtVHDF0F
         LpOg7N82ukg0ud5XPtOATW3LXAdA3HgXWWl984504oxJwijLc5CzJ8gT0YReN9kpJkIj
         yOqg==
X-Forwarded-Encrypted: i=1; AJvYcCWzBqRbU8Ywc/Z0ZpSiJfz8R0KsA1CBhR1Oex1lNYVKLkIeQnUtBm+OAbuqakdJME+MYI2WqPwXzibiod8ZexZiUSCWsVnhuhSS2vHR9g==
X-Gm-Message-State: AOJu0Yw3NST69oAhEy3aBOv4UIwVeBemXQIjVq09KJYeYPAEavIgTm+0
	tPwAh32QLqlz267tWzhuvZiMUrf3e24fl/SILEuEyJlAKU86bIgn0xt6LmNkmwQ=
X-Google-Smtp-Source: AGHT+IHFr6sGyLI+yphYekoqsdNMAx6XjzCJoHMxUHv0NqmcqlAxDCxNlJfyBgFU/lBIG84EZQBqaw==
X-Received: by 2002:a17:906:fad4:b0:a52:3492:d168 with SMTP id lu20-20020a170906fad400b00a523492d168mr11332528ejb.50.1713891985270;
        Tue, 23 Apr 2024 10:06:25 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:24 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 23 Apr 2024 18:06:03 +0100
Subject: [PATCH 1/7] dt-bindings: phy: samsung,usb3-drd-phy: add gs101
 compatible
MIME-Version: 1.0
Message-Id: <20240423-usb-phy-gs101-v1-1-ebdcb3ac174d@linaro.org>
References: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
In-Reply-To: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_100627_449042_53AE9AE2 
X-CRM114-Status: UNSURE (   6.65  )
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

QWRkIGEgZGVkaWNhdGVkIGdvb2dsZSxnczEwMS11c2IzMWRyZC1waHkgY29tcGF0aWJsZSBmb3Ig
R29vZ2xlIFRlbnNvcgpnczEwMSBTb0MuCgpJdCBuZWVkcyBhZGRpdGlvbmFsIGNsb2NrcyBlbmFi
bGVkIGZvciByZWdpc3RlciBhY2Nlc3MsIGFuZCBhZGRpdGlvbmFsCm1lbW9yeSByZWdpb25zIChQ
Q1MgJiBQTUEpIGFyZSByZXF1aXJlZCBmb3Igc3VjY2Vzc2Z1bCBjb25maWd1cmF0aW9uLgoKU2ln
bmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0t
CiAuLi4vYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgICAgICAgICB8IDc4
ICsrKysrKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCsp
LCAxNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwKaW5kZXggNDUy
ZTU4NGQ5ODEyLi5kYjFkYzRjNjBiNzIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHkueWFtbAorKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwK
QEAgLTI1LDYgKzI1LDcgQEAgZGVzY3JpcHRpb246IHwKIHByb3BlcnRpZXM6CiAgIGNvbXBhdGli
bGU6CiAgICAgZW51bToKKyAgICAgIC0gZ29vZ2xlLGdzMTAxLXVzYjMxZHJkLXBoeQogICAgICAg
LSBzYW1zdW5nLGV4eW5vczUyNTAtdXNiZHJkLXBoeQogICAgICAgLSBzYW1zdW5nLGV4eW5vczU0
MjAtdXNiZHJkLXBoeQogICAgICAgLSBzYW1zdW5nLGV4eW5vczU0MzMtdXNiZHJkLXBoeQpAQCAt
NTcsNyArNTgsMTggQEAgcHJvcGVydGllczoKICAgICAgIHRoZSBPRiBncmFwaCBiaW5kaW5ncyBz
cGVjaWZpZWQuCiAKICAgcmVnOgotICAgIG1heEl0ZW1zOiAxCisgICAgbWluSXRlbXM6IDEKKyAg
ICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IFBIWSByZWdpc3RlciBiYXNlIGFkZHJlc3Mu
CisgICAgICAtIGRlc2NyaXB0aW9uOiBQQ1MgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzLgorICAgICAg
LSBkZXNjcmlwdGlvbjogUE1BIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcy4KKworICByZWctbmFtZXM6
CisgICAgbWluSXRlbXM6IDEKKyAgICBpdGVtczoKKyAgICAgIC0gY29uc3Q6IHBoeQorICAgICAg
LSBjb25zdDogcGNzCisgICAgICAtIGNvbnN0OiBwbWEKIAogICBzYW1zdW5nLHBtdS1zeXNjb246
CiAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQpAQCAt
ODUsMzAgKzk3LDYyIEBAIGFsbE9mOgogICAgICAgcHJvcGVydGllczoKICAgICAgICAgY29tcGF0
aWJsZToKICAgICAgICAgICBjb250YWluczoKLSAgICAgICAgICAgIGVudW06Ci0gICAgICAgICAg
ICAgIC0gc2Ftc3VuZyxleHlub3M1NDMzLXVzYmRyZC1waHkKLSAgICAgICAgICAgICAgLSBzYW1z
dW5nLGV4eW5vczctdXNiZHJkLXBoeQorICAgICAgICAgICAgY29uc3Q6IGdvb2dsZSxnczEwMS11
c2IzMWRyZC1waHkKICAgICB0aGVuOgogICAgICAgcHJvcGVydGllczoKICAgICAgICAgY2xvY2tz
OgotICAgICAgICAgIG1pbkl0ZW1zOiA1Ci0gICAgICAgICAgbWF4SXRlbXM6IDUKLSAgICAgICAg
Y2xvY2stbmFtZXM6CiAgICAgICAgICAgaXRlbXM6Ci0gICAgICAgICAgICAtIGNvbnN0OiBwaHkK
LSAgICAgICAgICAgIC0gY29uc3Q6IHJlZgotICAgICAgICAgICAgLSBjb25zdDogcGh5X3V0bWkK
LSAgICAgICAgICAgIC0gY29uc3Q6IHBoeV9waXBlCi0gICAgICAgICAgICAtIGNvbnN0OiBpdHAK
LSAgICBlbHNlOgotICAgICAgcHJvcGVydGllczoKLSAgICAgICAgY2xvY2tzOgotICAgICAgICAg
IG1pbkl0ZW1zOiAyCi0gICAgICAgICAgbWF4SXRlbXM6IDIKKyAgICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IEdhdGUgb2YgbWFpbiBQSFkgY2xvY2sKKyAgICAgICAgICAgIC0gZGVzY3JpcHRpb246
IEdhdGUgb2YgUEhZIHJlZmVyZW5jZSBjbG9jaworICAgICAgICAgICAgLSBkZXNjcmlwdGlvbjog
R2F0ZSBvZiBjb250cm9sIGludGVyZmFjZSBBWEkgY2xvY2sKKyAgICAgICAgICAgIC0gZGVzY3Jp
cHRpb246IEdhdGUgb2YgY29udHJvbCBpbnRlcmZhY2UgQVBCIGNsb2NrCisgICAgICAgICAgICAt
IGRlc2NyaXB0aW9uOiBHYXRlIG9mIFNDTCBBUEIgY2xvY2sKICAgICAgICAgY2xvY2stbmFtZXM6
CiAgICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgICAtIGNvbnN0OiBwaHkKICAgICAgICAgICAg
IC0gY29uc3Q6IHJlZgorICAgICAgICAgICAgLSBjb25zdDogY3RybF9hY2xrCisgICAgICAgICAg
ICAtIGNvbnN0OiBjdHJsX3BjbGsKKyAgICAgICAgICAgIC0gY29uc3Q6IHNjbF9wY2xrCisgICAg
ICAgIHJlZzoKKyAgICAgICAgICBtaW5JdGVtczogMworICAgICAgICByZWctbmFtZXM6CisgICAg
ICAgICAgbWluSXRlbXM6IDMKKyAgICAgIHJlcXVpcmVkOgorICAgICAgICAtIHJlZy1uYW1lcwor
ICAgIGVsc2U6CisgICAgICBpZjoKKyAgICAgICAgcHJvcGVydGllczoKKyAgICAgICAgICBjb21w
YXRpYmxlOgorICAgICAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgICAgIGVudW06CisgICAg
ICAgICAgICAgICAgLSBzYW1zdW5nLGV4eW5vczU0MzMtdXNiZHJkLXBoeQorICAgICAgICAgICAg
ICAgIC0gc2Ftc3VuZyxleHlub3M3LXVzYmRyZC1waHkKKyAgICAgIHRoZW46CisgICAgICAgIHBy
b3BlcnRpZXM6CisgICAgICAgICAgY2xvY2tzOgorICAgICAgICAgICAgbWluSXRlbXM6IDUKKyAg
ICAgICAgICAgIG1heEl0ZW1zOiA1CisgICAgICAgICAgY2xvY2stbmFtZXM6CisgICAgICAgICAg
ICBpdGVtczoKKyAgICAgICAgICAgICAgLSBjb25zdDogcGh5CisgICAgICAgICAgICAgIC0gY29u
c3Q6IHJlZgorICAgICAgICAgICAgICAtIGNvbnN0OiBwaHlfdXRtaQorICAgICAgICAgICAgICAt
IGNvbnN0OiBwaHlfcGlwZQorICAgICAgICAgICAgICAtIGNvbnN0OiBpdHAKKyAgICAgICAgICBy
ZWc6CisgICAgICAgICAgICBtYXhJdGVtczogMQorICAgICAgZWxzZToKKyAgICAgICAgcHJvcGVy
dGllczoKKyAgICAgICAgICBjbG9ja3M6CisgICAgICAgICAgICBtaW5JdGVtczogMgorICAgICAg
ICAgICAgbWF4SXRlbXM6IDIKKyAgICAgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAgICAgIGl0
ZW1zOgorICAgICAgICAgICAgICAtIGNvbnN0OiBwaHkKKyAgICAgICAgICAgICAgLSBjb25zdDog
cmVmCisgICAgICAgICAgcmVnOgorICAgICAgICAgICAgbWF4SXRlbXM6IDEKIAogYWRkaXRpb25h
bFByb3BlcnRpZXM6IGZhbHNlCiAKCi0tIAoyLjQ0LjAuNzY5LmczYzQwNTE2ODc0LWdvb2cKCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
