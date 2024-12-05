Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF47E7716C
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VugotS20M+jRfHmakgF9cuBe+j99kM2ZlUJygH6H75U=; b=ixOUAqi+M2PkpH
	T6dofIkuZDD3DUvvr8PMlA3CI9p8bXjo9ShsfFQumTjAHqSlELk6oG6fkhJlcCz0vCywRaAaVQjzD
	GocD8xUB5y9VsNCAfHgrMNav1bSWhRWHZBMFhGnJtDgbynn4nVb0JwxaJUIgPopxXGuWPDabS6z0m
	2PmbpHVPmNveHWUsQNPwjgvU/Gg9xvpYg/42jcx6SHEvg1mAD4isSzQnhPZqZdFAOFr9Z2zHS8FTP
	+MIxlTpF/zTIrsXPtKsRkyPEQok9UDQeiDucO6B8sgIol2VcIs4ZYAUNGrGpnuh/1lWi+xs55nDr1
	RGOjYU4doCkxtXN9CO3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Os-0000000F2bK-1Che;
	Thu, 05 Dec 2024 07:35:50 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MO-0000000F1ho-17jb
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:18 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-aa578d10d50so82165766b.1
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383994; x=1733988794; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=ahvq+MMjVnovwwj8JqC3xV1yQHGWqWirUvx48m6rDmjDVW6QvaLNXpoaU2Se75lxDt
         n/3LQV8kD9pLEPetsO1mvurVdJJJRL/r6Smpnta/FUmnHt2qhkRp82IP6ORTxVNeGvls
         rdzBNCCFuyUbodKB8xQnF80XF/7TpALB0rENrJmDCosp3KYHFWZ2VkEe+Dm03z2rDLfz
         cGVVaf+MPmVTdENOqJm6q2bk0D8XYX8fcIJV1Y3a2a2IYac0nxSKlHh6pEVcXudmsCMA
         uFwwJUWl7o2SpogOgnqpevrk98AxN08j76OpausF+SAx4cH7ZwNRkJ6Rk2kCzu7Hf5dg
         zGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383994; x=1733988794;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKgkddTbsb36SqzZl1dMALspeUepmvmFxGiaTIa2E3A=;
        b=ggDUAedqMG5dgeiseOQrkT8hh1d3ewbJivggB8iS/G/cEIedpfwkqC55LFsxCIIeSQ
         B6qsq3O54WKuurBMcxfVrlCiUZtb0scIBWKwJ6q1VDrWBQf+zAyYnZG0ucDXJ6TDMm2w
         ym2Dsye5kpSX+QeIkpDSqxizXyJ6yhDeKAJb5irn5LMUTiofbzDx6IWEPdzVaStejvSC
         FZ3zwORzSmKm3Ac35r3YEN/mh5d3dtM1Qc9mq8nIRUGiU+DLPKnImSir0uYNLYUFlzSE
         fjuVBKt+Xw+upWGi/ZwOg4P/hhk3wU/dB4FHD0wPW4GjDgH2FOurD1SLKr99khf43nDn
         oCjw==
X-Forwarded-Encrypted: i=1; AJvYcCVY6DyHNDEBZcHDduUKSicjd4GlYgiuWu3BsUGo4HRnb6LajOKQWS1AeYxJelCfS5T9CHO5j1580iw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxs7g8hc+cwP8eMxjp/binW1cnX1IYPpdNC+jWd/kIelJxrvkNG
	fqw6mK4epH6GZio6rBCP+aQDlZH9eOjzQRFF0dLpriOSXOt9lveYm3bGjEqgHZA=
X-Gm-Gg: ASbGnctGRMhzO94PN2vzOqloAG8wumUiWreaF7lQ3hFoLekQQUZdS7w9CHeWBoPaTuW
	RsrDQLXpQCEL+VYxTFADbShXkGvMDSPh3Z6toisumkXQzgMeSAfaTp1ojG3sEnLIlPs9fKxLf//
	Gc4KXG+u3LQ3jw5SSnpBnc6/fo5LoF0LZ8HUxn7xmjxt3k8HRqmCFR3k+nwrz1Sk4MIi6EXXVln
	f6XuUCpuvX1ifSP+o9Bd/EFDQCDa0fuLyXYT0JVSVOvinZqz2DlY0ha87i4xyNqSu4F71ZlWQRF
	JD3SqOkNLo33JNFVknHUS4bQeZ/5tGGRMA==
X-Google-Smtp-Source: AGHT+IGYmzZiBrRm65PFSu05U4htcrBOv9KSue7aaItOd1Hb+mwmtbhHeeF7rqrAtH/3fEru33bthw==
X-Received: by 2002:a17:906:3d22:b0:aa6:1917:42e7 with SMTP id a640c23a62f3a-aa6191743fdmr306308166b.22.1733383994490;
        Wed, 04 Dec 2024 23:33:14 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:13 +0000
Subject: [PATCH v3 2/8] dt-bindings: phy: samsung,usb3-drd-phy: gs101:
 require Type-C properties
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-2-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
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
X-CRM114-CacheID: sfid-20241204_233316_298924_BB36CDF8 
X-CRM114-Status: GOOD (  11.36  )
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

b3JpZW50YXRpb24tc3dpdGNoIGlzIHRoZSBzdGFuZGFyZCBkZWNsYXJhdGlvbiB0byBpbmZvcm0g
dGhlIFR5cGUtQyBtdXgKbGF5ZXIgdGhhdCBhIHJlbW90ZS1lbmRwb2ludCBpcyBjYXBhYmxlIG9m
IHByb2Nlc3Npbmcgb3JpZW50YXRpb24KY2hhbmdlIG1lc3NhZ2VzLgoKVGhlIFVTQiBQSFkgb24g
Z3MxMDEgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBiYXNlZCBvbiB0aGUgb3JpZW50YXRpb24gb2YK
dGhlIGNvbm5lY3Rvci4gRm9yIHRoYXQgdGhlIERUUyBuZWVkcyBhIGxpbmsgYmV0d2VlbiB0aGUg
cGh5J3MgcG9ydCBhbmQKYSBUQ1BDaSwgYW5kIHdlJ2xsIG5lZWQgdG8gaW5mb3JtIHRoZSBwaHkg
ZHJpdmVyIHRoYXQgaXQgc2hvdWxkIGhhbmRsZQp0aGUgb3JpZW50YXRpb24gKHJlZ2lzdGVyIGEg
aGFuZGxlcikuCgpVcGRhdGUgdGhlIHNjaGVtYSB0byBlbmZvcmNlIHRoYXQgYnkgcmVxdWlyaW5n
IHRoZSBvcmllbnRhdGlvbi1zd2l0Y2gKYW5kIHBvcnQgcHJvcGVydGllcyBvbiBnczEwMSAob25s
eSkuIFdlIGRpc2FsbG93IG9yaWVudGF0aW9uLXN3aXRjaCBvbgphbGwgb3RoZXIgc3VwcG9ydGVk
IHBsYXRmb3Jtcywgc2luY2Ugb3RoZXIgdmVyc2lvbnMgb2YgdGhpcyBwaHkgKG9yIGl0cwpzeXN0
ZW0gaW50ZWdyYXRpb24pIGRvbid0IGN1cnJlbnRseSBzdXBwb3J0IG9yIGV2ZW4gbmVlZCBpdC4K
CkV2ZW4gdGhvdWdoIHRoaXMgbmV3IHJlcXVpcmVkIGdzMTAxIHByb3BlcnR5IGlzIGFuIEFCSSBi
cmVhaywgdGhlCmludGVudGlvbiBmb3IgdGhlIGRyaXZlciBpcyB0byBiZWhhdmUgYXMgYmVmb3Jl
IGlmIGl0J3MgbWlzc2luZwoobWVhbmluZyBmb3IgZ3MxMDEgaXQgd2lsbCB3b3JrIGluIFNTIG1v
ZGUgaW4gb25lIG9yaWVudGF0aW9uIG9ubHkpLgpPdGhlciBwbGF0Zm9ybXMgYXJlIG5vdCBhZmZl
Y3RlZC4KClJldmlld2VkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5v
cmc+ClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5v
cmc+CgotLS0KdjM6CiogdXBkYXRlIGFzIHBlciBSb2IncyBzdWdnZXN0aW9uIChJIGhvcGUgOi0p
Cgp2MjoKKiBzcXVhc2ggb3JpZ2luYWwgcGF0Y2hlcyAjMiBhbmQgIzMKKiBhY3R1YWxseSBkaXNh
bGxvdyBvcmllbnRhdGlvbi1zd2l0Y2ggb24gIWdzMTAxIChub3QganVzdCBvcHRpb25hbCkgKENv
bm9yKQoqIHVwZGF0ZSBjb21taXQgbWVzc2FnZSB0byBjbGFyaWZ5IHRoYXQgdGhlIGludGVudGlv
biBmb3IgdGhlIGRyaXZlciBpcwogIHRvIHdvcmsgd2l0aCBvbGQgYW5kIG5ldyBEVFMgKENvbm9y
KQoqIGNvbGxlY3QgdGFncwoKZm9vCi0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sIHwgNiArKysrKy0KIDEgZmlsZSBjaGFu
Z2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQtcGh5LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcsdXNiMy1kcmQt
cGh5LnlhbWwKaW5kZXggMWY4YjM1OTE3YjExLi4yNzI5NWFjYmJhNzYgMTAwNjQ0Ci0tLSBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvc2Ftc3VuZyx1c2IzLWRyZC1waHku
eWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3NhbXN1bmcs
dXNiMy1kcmQtcGh5LnlhbWwKQEAgLTExNCw2ICsxMTQsOCBAQCBhbGxPZjoKICAgICAgICAgICBj
b250YWluczoKICAgICAgICAgICAgIGNvbnN0OiBnb29nbGUsZ3MxMDEtdXNiMzFkcmQtcGh5CiAg
ICAgdGhlbjoKKyAgICAgICRyZWY6IC9zY2hlbWFzL3VzYi91c2Itc3dpdGNoLnlhbWwjCisKICAg
ICAgIHByb3BlcnRpZXM6CiAgICAgICAgIGNsb2NrczoKICAgICAgICAgICBpdGVtczoKQEAgLTEz
OSw2ICsxNDEsOCBAQCBhbGxPZjoKIAogICAgICAgcmVxdWlyZWQ6CiAgICAgICAgIC0gcmVnLW5h
bWVzCisgICAgICAgIC0gb3JpZW50YXRpb24tc3dpdGNoCisgICAgICAgIC0gcG9ydAogICAgICAg
ICAtIHBsbC1zdXBwbHkKICAgICAgICAgLSBkdmRkLXVzYjIwLXN1cHBseQogICAgICAgICAtIHZk
ZGgtdXNiMjAtc3VwcGx5CkBAIC0xOTgsNyArMjAyLDcgQEAgYWxsT2Y6CiAgICAgICAgIHJlZy1u
YW1lczoKICAgICAgICAgICBtYXhJdGVtczogMQogCi1hZGRpdGlvbmFsUHJvcGVydGllczogZmFs
c2UKK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKIAogZXhhbXBsZXM6CiAgIC0gfAoKLS0g
CjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
