Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46797C2BB85
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jun 2024 16:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b+w3ag2L0t1XTdLsTfuuvOAofBF3VZ7DytvhagqV/Ko=; b=JWEK9/fn/4vDNM
	Twf1QZOJwKQrcY9wSgReDHJTVBd87llkLwuVO6+ua7hKX40a9wEfyFIT1bxUzsMQaQAvFAuZPyGFw
	X+ZfWeY6F/cVY9YezhzazpC7cgNzOGtmi8L/fXF62sNvv/5HhygBLc6FH2g/kLkCQWQTAzamfgaqJ
	zlSEnA7ty8Ec/t70Yiu6P+x1CpkvIKnKpZ+WgAq8HDz8TvpaSP9vYlFB9HjMJ707/EztwmKoqRXTd
	pSDASfH04FWqD1wIpD7oHS1sGCCepYyN4iRkeYdl3vRYYj6hsIjyJeEHNVq0h9pQQ54n5UvTFS26s
	NRXAyaFuyjzb9+wRnFjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFTu-0000000Bn9A-1QHn;
	Mon, 17 Jun 2024 16:45:22 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJFTl-0000000Bn0G-1MTV
	for linux-phy@lists.infradead.org;
	Mon, 17 Jun 2024 16:45:17 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a6f04afcce1so581114666b.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Jun 2024 09:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718642711; x=1719247511; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=n98Gf1QoxzfH++bimpxXb9L5Kij/wsP5fmjbedlrR8w=;
        b=Sqvn8Uu6YQV37CtP43MKyvR6R0Aih18bf4wPyhVAAKlFZbG6iS1MSOE/x3rtnjwZMm
         v/9ehGDnTtvfOHS/EsrIA2HVHpvN94nFwf7kYVBdiYz/i6u/CN9TBGPAOH1AbX13jg1v
         c5Tnv5TwqnJvaC9XZJfvv5lBHvBsrd7R52zFkdIVHQVju16PZ3QcqilgzUZH6bnsL0If
         /DIrPAHhkkuewf7d9KYn1pPzb8sCupIDgmhPfnoSYcY2uImp7FWUS6FDroX0NCvAlbet
         N6/CG9ULcbcvpFLShAD13K2xNttK/AbNubw32OAVub2ILp9bJma2EN3Q0d+9V5jv5+ed
         EsIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718642711; x=1719247511;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n98Gf1QoxzfH++bimpxXb9L5Kij/wsP5fmjbedlrR8w=;
        b=jReX2qxvtge1x68C0sOrKwqEF9pARQVibpkNjMfcK8FcykxAdZioudcfnze6kg7wop
         Of9EYYWhTLuIT1VMxvQxHoBN6weiRflN258dZ8O/AAUygXmwTgdQEm01uEGguPJi94Fw
         Ho8c3MMIOrzoZlbVWwE5jpjQs3VXw6w7nu31CTrZwmv2C08FWFz2WPddOEmDNO1yiGDA
         hJdMtm815zl7SE03urEXbmXSUhBG0FWC/mdItMp0cokuVfkKzpySDIIoeRzEN+i/4Ez5
         zhTZiLKNehUmJDxza49EQIewlR1fkaeAWHz1v9wArfXtd2fiF56GSVu6jEoua26BHDKL
         KPKw==
X-Forwarded-Encrypted: i=1; AJvYcCWoUuNj4vAsZbWIl9iA8ahnYEG86oxZXKglPbu3rtbi6choH74QJ+zovO1IlULuFJ4H4rac4Traa3lCaYHOEb0cpSdNvWlNU0aEkFs0XA==
X-Gm-Message-State: AOJu0Yx7kVMiVtBr42atUMzjplb+wes6H1ICD3diiOlW4Hc7rFtb+cbQ
	eoVlH2AyDzPhE9USt+rINQVuoYhtgA/iGkqKBTE+y3PXBoIlm1kcQ89YgLc+ec4=
X-Google-Smtp-Source: AGHT+IFz9rgPfOCwN4argHOrGJaAixRDxqY1TJ1InY0YdhhmRezkVjZ5t/SkJJWmVGTuERMkcdfvLA==
X-Received: by 2002:a17:906:7fc6:b0:a6e:fdc8:ae45 with SMTP id a640c23a62f3a-a6f60d170ccmr821932366b.1.1718642710471;
        Mon, 17 Jun 2024 09:45:10 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f4170bsm527139966b.157.2024.06.17.09.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 09:45:10 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 0/6] USB31DRD phy support for Google Tensor gs101 (HS &
 SS)
Date: Mon, 17 Jun 2024 17:44:41 +0100
Message-Id: <20240617-usb-phy-gs101-v3-0-b66de9ae7424@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPlncGYC/3XMSwrCMBSF4a2UjI3kJtGiI/chDvK4bS9IUxINl
 pK9m3YiCg7Pge9fWMJImNi5WVjETInCWIfaNcwNZuyRk6+bSSG10FLxZ7J8GmbeJxDAje0UQis
 9OM2qmSJ29Np611vdA6VHiPOWz7C+/0oZuOBovbPKOGi1v9xpNDHsQ+zZmsryww8V/HC5cn/qQ
 Buw/vjNSylvKJ6wwuoAAAA=
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_094514_010609_51D2B97C 
X-CRM114-Status: GOOD (  13.67  )
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
dGNoZXMgdG8gY29udmVydAp0aGlzIGRyaXZlciB0byB1c2luZyB0aGUgY2xrX2J1bGsgYW5kIHJl
Z3VsYXRvcl9idWxrIEFQSXMgdG8gc2ltcGxpZnkKYWRkaXRpb24sIHdoaWxlIHRoZSBidWxrIG9m
IHRoZSBjaGFuZ2VzIGlzIGFyb3VuZCB0aGUgU1MgcGFydC4KCkRlcGVuZGVuY2llcyBvbiBvdGhl
ciBwYXRjaGVzOgpXaGlsZSB0aGVyZSBpcyBubyBjb21waWxlIG9yIGxpbmsgdGltZSBkZXBlbmRl
bmN5LCBmb3IgVVNCIHRvIGFjdHVhbGx5IHdvcmsKdGhpcyBzZXJpZXMgYWxzbyByZXF1aXJlcyBQ
ZXRlcidzIHN5c2NvbiBjaGFuZ2VzIGZyb20KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjQwNjE0MTQwNDIxLjMxNzI2NzQtMS1wZXRlci5ncmlmZmluQGxpbmFyby5vcmcvCgpUbzogVmlu
b2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KVG86IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtp
c2hvbkBrZXJuZWwub3JnPgpUbzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KVG86IEty
enlzenRvZiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz4KVG86IENvbm9yIERvb2xleSA8
Y29ub3IrZHRAa2VybmVsLm9yZz4KVG86IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGlu
YXJvLm9yZz4KVG86IE1hcmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4K
VG86IFN5bHdlc3RlciBOYXdyb2NraSA8cy5uYXdyb2NraUBzYW1zdW5nLmNvbT4KVG86IEFsaW0g
QWtodGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KVG86IFNhbSBQcm90c2Vua28gPHNlbWVu
LnByb3RzZW5rb0BsaW5hcm8ub3JnPgpDYzogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJu
ZWwub3JnPgpDYzogVHVkb3IgQW1iYXJ1cyA8dHVkb3IuYW1iYXJ1c0BsaW5hcm8ub3JnPgpDYzog
V2lsbCBNY1ZpY2tlciA8d2lsbG1jdmlja2VyQGdvb2dsZS5jb20+CkNjOiBSb3kgTHVvIDxyb3ls
dW9AZ29vZ2xlLmNvbT4KQ2M6IGtlcm5lbC10ZWFtQGFuZHJvaWQuY29tCkNjOiBsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpDYzogbGludXgtc2Ftc3VuZy1zb2NAdmdlci5rZXJuZWwub3JnClNpZ25lZC1v
ZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgpDaGFuZ2Vz
IGluIHYzOgotIGRyb3AgcGF0Y2ggJ3BoeTogZXh5bm9zNS11c2JkcmQ6IHVzZSBleHlub3NfZ2V0
X3BtdV9yZWdtYXBfYnlfcGhhbmRsZSgpCiAgZm9yIFBNVSByZWdzJy4gVGhpcyBpcyBub3QgbmVl
ZGVkIGFueW1vcmUgd2l0aCBQZXRlcidzIHN5c2NvbiBzZXJpZXMKICBtZW50aW9uZWQgYWJvdmUg
KEtyenlzenRvZikuCi0gZHJvcCB0aG9zZSBwYXRjaGVzIHRoYXQgaGF2ZSBhbHJlYWR5IGJlZW4g
bWVyZ2VkIHZpYQogIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDUwNy1zYW1zdW5n
LXVzYi1waHktZml4ZXMtdjEtMC00Y2NiYTVhZmE3Y2NAbGluYXJvLm9yZy8KLSB1cGRhdGUgZGV2
aWNlIHRyZWUgYmluZGluZyAncmVnLW5hbWVzJyAoS3J6eXN6dG9mKQotIHVzZSBjbGtfYnVsayBh
bmQgcmVndWxhdG9yX2J1bGsgQVBJcyB0aHJvdWdob3V0IHRvIHNpbXBsaWZ5IGFkZGl0aW9uIG9m
CiAgZ3MxMDEgc3VwcG9ydCBhcyBwcmVwYXJhdG9yeSBwYXRjaGVzCi0gcGF0Y2ggMTogYWRkIHJl
cXVpcmVkIGJ1dCBtaXNzaW5nIHJlZ3VsYXRvcnMKLSBwYXRjaCA0OgogICAgKiBtYWtlIHRoZSBy
ZWdpc3RlciBhY2Nlc3MgY2xvY2sgbmFtZShzKSBwbGF0Zm9ybSBzcGVjaWZpYyBhbmQgYXZvaWQK
ICAgICAgdXNlIG9mIGRldm1fY2xrX2J1bGtfZ2V0X29wdGlvbmFsKCkgYXMgd2Ugd2FudCB0byBi
ZSBzdXJlIHRvIGhhdmUKICAgICAgcmV0cmlldmVkIGFsbCByZXF1aXJlZCBjbG9ja3MKICAgICog
Zml4IGEgd2hpdGVzcGFjZSBpc3N1ZQogICAgKiBzbGlnaHRseSByZXBocmFzZSBjb21taXQgbWVz
c2FnZQotIHBhdGNoIDY6CiAgICAqIHNldCB1bnVzZWQgY2FsbGJhY2sgcG9pbnRlcnMgdG8gTlVM
TCBpbiBnczEwMV90dW5lc1tdCiAgICAqIGltcGxlbWVudCBtaXNzaW5nIHJlZ3VsYXRvciBzdXBw
b3J0IGFuZCBlbmFibGUgcG93ZXIgdG8gcGh5IGJlZm9yZSBhbnkKICAgICAgcmVnaXN0ZXIgYWNj
ZXNzCiAgICAqIGFkZCBtb3JlIHBoeSB0dW5lcwogICAgKiBtb3ZlIFBUU19VVE1JX1BPU1RJTklU
IHV0bWkgcGh5IHR1bmluZyB0byBiZWZvcmUgY29tcGxldGlvbiBvZiBQT1IKICAgICAgc2VxdWVu
Y2UsIGFzIHBlciBkYXRhc2hlZXQKICAgICogZ3JvdXAgZ3MxMDEgcmVsYXRlZCBzeW1ib2xzIGNs
b3NlciB0byBlYWNoIG90aGVyIAotIExpbmsgdG8gdjI6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L3IvMjAyNDA1MDEtdXNiLXBoeS1nczEwMS12Mi0wLWVkOWYxNGExYmQ2ZEBsaW5hcm8ub3JnCgpD
aGFuZ2VzIGluIHYyOgotIGF2b2lkIGhhdmluZyBuZXN0ZWQgZWxzZS9pZiBpbiB0aGUgRFQgYmlu
ZGluZyAoUm9iKQotIGFkZCBtaXNzaW5nIGJpdGZpZWxkLmggaW5jbHVkZQotIExpbmsgdG8gdjE6
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNDA0MjMtdXNiLXBoeS1nczEwMS12MS0wLWVi
ZGNiM2FjMTc0ZEBsaW5hcm8ub3JnCgotLS0KQW5kcsOpIERyYXN6aWsgKDYpOgogICAgICBkdC1i
aW5kaW5nczogcGh5OiBzYW1zdW5nLHVzYjMtZHJkLXBoeTogYWRkIGdzMTAxIGNvbXBhdGlibGUK
ICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogc3VwcG9ydCBpc29sYXRpbmcgSFMgYW5kIFNTIHBv
cnRzIGluZGVwZW5kZW50bHkKICAgICAgcGh5OiBleHlub3M1LXVzYmRyZDogY29udmVydCBjb3Jl
IGNsb2NrcyB0byBjbGtfYnVsawogICAgICBwaHk6IGV4eW5vczUtdXNiZHJkOiBjb252ZXJ0IChw
aHkpIHJlZ2lzdGVyIGFjY2VzcyBjbG9jayB0byBjbGtfYnVsawogICAgICBwaHk6IGV4eW5vczUt
dXNiZHJkOiBjb252ZXJ0IFZidXMgc3VwcGxpZXMgdG8gcmVndWxhdG9yX2J1bGsKICAgICAgcGh5
OiBleHlub3M1LXVzYmRyZDogc3VwcG9ydCBFeHlub3MgVVNCRFJEIDMuMSBjb21ibyBwaHkgKEhT
ICYgU1MpCgogLi4uL2JpbmRpbmdzL3BoeS9zYW1zdW5nLHVzYjMtZHJkLXBoeS55YW1sICAgICAg
ICAgfCAgNzcgKy0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgICAg
ICAgICAgIHwgOTU4ICsrKysrKysrKysrKysrKysrLS0tLQogaW5jbHVkZS9saW51eC9zb2Mvc2Ft
c3VuZy9leHlub3MtcmVncy1wbXUuaCAgICAgICAgfCAgIDQgKwogMyBmaWxlcyBjaGFuZ2VkLCA4
OTMgaW5zZXJ0aW9ucygrKSwgMTQ2IGRlbGV0aW9ucygtKQotLS0KYmFzZS1jb21taXQ6IDY5MDZh
ODRjNDgyZjA5OGQzMTQ4NmRmOGRjOThjZWFkMjFjY2UyZDAKY2hhbmdlLWlkOiAyMDI0MDQyMy11
c2ItcGh5LWdzMTAxLWFiZjNlMTcyZDFjNAoKQmVzdCByZWdhcmRzLAotLSAKQW5kcsOpIERyYXN6
aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
