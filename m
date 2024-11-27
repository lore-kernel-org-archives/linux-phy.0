Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4811D609D3
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 11:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zPOpc0H/DNkhwh8TknNvQt6wff+iezzx7dt/coeyyRM=; b=kCm5Qg2Ufp+vAG
	XzkSnso0G08G9QmqIokCHPWMVQJplLRjf868mWlerkAtraZh+EH6SBHMJR3iMSc8EZeimNI61zAvY
	gDTf2O8f9g5t5tp9p7MiH/Wr3KDdhCEwN9v7ut6hil0GPCQwwekMPbqQrm1aBvpODwVKJYKT7Zwy2
	7/w0R/5gDG0iSMYraPn+TN2rFs5RfQa2azbV+R5ItySSjc7tS20hjpEMlAleF+HeWXsPytSeXtyaS
	DiCHmFDFyXIgQTv1qevE4KfLha88ep7fqH998HVNnr9pa1a39XC3Ryb9EASvEXF6sWam2stACHKgz
	xUuBXavOWB0jXH/o+vKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFts-0000000CxEc-1k6G;
	Wed, 27 Nov 2024 11:08:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkV-0000000CvIl-3Q7L
	for linux-phy@bombadil.infradead.org;
	Wed, 27 Nov 2024 10:58:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=lqGYeTvXa+CcRrauQewHltxn0fZOtsvS5bEzws0xGp0=; b=b7bIui/GfYSJZnGypDd9siTuuO
	tFHfCnWMhr/PvK2qUKW6wiI9NN7fyeusrTndlFUm4cliShNb3Wgd47/YJ/lNLPdv/PtwIaLqOPiF8
	uFuORVMEn1sSR9Xe4WHESra4ehQHM39IyVJzixSwSV8N4H2FbJG9ai6Q3/NFwJ9jo43L8n6hRTjzt
	Q89Cxu13InHrCf8eFHdvIWck0Ykid2KLyicyYgoMNZRKNsHoDbNzUlXo+5/PY4ogNrpThrtvm4UEz
	hVvKoDNEkR2WTkISAkodATCSCI6f1VedrqHQJjk+MEO4037ixnoKOIrsujomXk27f+Ree8SMozXfy
	8zIXWoEw==;
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkS-00000001P1D-2JRq
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:22 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5cfddb70965so8097286a12.0
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705097; x=1733309897; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lqGYeTvXa+CcRrauQewHltxn0fZOtsvS5bEzws0xGp0=;
        b=ChwcpSN7ifaKh2FA+c00VUcGJPXF8iUT9hyHdgvMZ11Mmjn6O2lYpneRnIkddcDBlR
         LMRT1WcDx/Cl7sDuO9dJm2Xgw5g0scwsN+CTW33V9QOJ9LKv+jRPXieE4DBU5NCaWihW
         FSgCsfH2jx/ubJGwC8b0K3HwciLZc5ao/DYzjZII3KTWA0zgEJXZV1GVPYmjkV+WRHWw
         7PgUXL9f4uQPAb3mPBZAX/8FhkvIH9tN40WRfSkfNA1fB9e18XIpsLN2Tq50xWzaYUVi
         4Rtou85fXATcK09rCYodi23h/F8A+Bwo9baU++sKB+ONtN+zAux8zV2wto6V/bL+iPxU
         umHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705097; x=1733309897;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lqGYeTvXa+CcRrauQewHltxn0fZOtsvS5bEzws0xGp0=;
        b=JW30TKgKtVsQnV3GBId0JL2zW7uyTmlkqM+xdJZWTKSq/xVquIiUw/ly7L1qhU/qz5
         3H7ZBvxTC1kdjcgOxdbarv4tLpfxCCkjo95RrQairdez8xqBQ1WhaVXEovY6l/Q95TTo
         NBGcYotA/UTl5C3gX+ADhecYjbu2X+xNKY/l0Mt5Bbxm+60aAEN7tBAOAo86EWPzLlXr
         rPCcWd2/tWwNQ9OvzlYK5CT30s/DWCuJIOVw6Sv7Mx/zET0mluaGziYk5RM4J+v4jcBK
         5OCdK5Bg46GlxEw7XMaRFDjUXmMZfI5QHWXiPpd4npV8kPeqHmiRPmxs2iYIxMXYH214
         2R2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX6bSKCWIFivb6m0/X25FZU1wCr+x6fhgqE0IfhwKTZDlNwXmE7gnFGj3urnxS2t9mE8A0AC4Q16VY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzp9aXhkFB7HcHiuc5Yw93LhZovfxTn2zXED8gzknDGSGFTyNJ1
	HxjIsGTdcH4BW/va/vXc75gqcPl8baonpa9dAWQ8trD56JAVL7Ec1rF0au2/a7o=
X-Gm-Gg: ASbGnctztMTcAAo1BjkLgKyNOLwPvFRz2RsY3lATJSoGImcmr2M/IZXR1faoeExdEgE
	Tud2h1wUWclrB8crnIqV582J30wtH0kEti9n1c60hHoA+SF+IBfYexNyGTBlKx5oZb7Mt614RbA
	4lwspE6SNiDDDl15e45f5Ur65WSfLSrU7hLbclVq/RTjDhMPERucEzvsT1p18dh8tebXRVhGkyn
	z3+5sop33e9X7JcztipJrUv9RDnwTKZoo/TzU2FPdu/6m+p4L9twbvOsBO1l9rOs4BNe/dxEj4x
	f+DFsXqxO4XRZv0adZ5IcQk1ITnzlPkgEg==
X-Google-Smtp-Source: AGHT+IGfxl8jje43Ziyzp10Eq1Sbw1hY/V6VsB8QGc/5pAdKJlSGGUSbGZ9QxG2adkSeh2QmDqCL0g==
X-Received: by 2002:a17:907:7637:b0:aa5:4adc:5a1f with SMTP id a640c23a62f3a-aa580f58e93mr163841166b.33.1732705096651;
        Wed, 27 Nov 2024 02:58:16 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:16 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:19 +0000
Subject: [PATCH 9/9] phy: exynos5-usbdrd: allow DWC3 runtime suspend with
 UDC bound (E850+)
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-9-1b7fce24960b@linaro.org>
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
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
X-CRM114-CacheID: sfid-20241127_105820_743081_C0D98286 
X-CRM114-Status: GOOD (  14.30  )
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

VG8gbWFrZSBVU0IgcnVudGltZSBzdXNwZW5kIHdvcmsgd2hlbiBhIFVEQyBoYXMgYmVlbiBib3Vu
ZCwgdGhlIHBoeQpuZWVkcyB0byBpbmZvcm0gdGhlIFVTQkRSRCBjb250cm9sbGVyIChEV0MzKSB0
aGF0IFZidXMgYW5kIGJ2YWxpZCBhcmUKZ29uZSwgc28gdGhhdCBpdCBjYW4gaW4gdHVybiByYWlz
ZSB0aGUgcmVzcGVjdGl2ZSBnYWRnZXQgaW50ZXJydXB0IHdpdGgKZXZlbnQgPT0gRFdDM19ERVZJ
Q0VfRVZFTlRfRElTQ09OTkVDVCwgd2hpY2ggd2lsbCBjYXVzZSB0aGUgVVNCIHN0YWNrCnRvIGNs
ZWFuIHVwLCBhbGxvd2luZyBEV0MzIHRvIGVudGVyIHJ1bnRpbWUgc3VzcGVuZC4KCk9uIGU4NTAg
YW5kIGdzMTAxIHRoaXMgaXNuJ3Qgd29ya2luZywgYXMgdGhlIHJlc3BlY3RpdmUgc2lnbmFscyBh
cmUgbm90CmRpcmVjdGx5IGNvbm5lY3RlZCwgYW5kIGluc3RlYWQgdGhpcyBkcml2ZXIgdXNlcyBv
dmVycmlkZSBiaXRzIGluIHRoZQpQSFkgSVAgdG8gc2V0IHRob3NlIHNpZ25hbHMuIEl0IGN1cnJl
bnRseSBmb3JjZWZ1bGx5IHNldHMgdGhlbSB0byAnb24nLApzbyB0aGUgYWJvdmUgbWVudGlvbmVk
IGludGVycnVwdCB3aWxsIG5vdCBiZSByYWlzZWQsIHByZXZlbnRpbmcgcnVudGltZQpzdXNwZW5k
LgoKVG8gZGV0ZWN0IHRoYXQgc3RhdGUsIHVwZGF0ZSB0aGlzIGRyaXZlciB0byBhY3Qgb24gdGhl
IFRDUEMncwpvcmllbnRhdGlvbiBzaWduYWwgLSB3aGVuIG9yaWVudGF0aW9uID09IE5PTkUsIFZi
dXMgaXMgZ29uZSBhbmQgd2UgY2FuCmNsZWFyIHRoZSByZXNwZWN0aXZlIGJpdHMuIFNpbWlsYXJs
eSwgZm9yIG90aGVyIG9yaWVudGF0aW9uIHZhbHVlcyB3ZQpyZS1lbmFibGUgdGhlbS4KClRoaXMg
bWFrZXMgcnVudGltZSBzdXNwZW5kIHdvcmsgb24gcGxhdGZvcm1zIHdpdGggYSBUQ1BDIChsaWtl
IFBpeGVsNiksCndoaWxlIGtlZXBpbmcgY29tcGF0aWJpbGl0eSB3aXRoIHBsYXRmb3JtcyB3aXRo
b3V0IChlODUwLTk2KS4KCldpdGggcnVudGltZSBzdXNwZW5kIHdvcmtpbmcsIFVTQi1DIGNhYmxl
IG9yaWVudGF0aW9uIGRldGVjdGlvbiBub3cKYWxzbyBmdWxseSB3b3JrcyBvbiBzdWNoIHBsYXRm
b3JtcywgYW5kIHRoZSBsaW5rIGNvbWVzIHVwIGFzIFN1cGVyc3BlZWQKYXMgZXhwZWN0ZWQgaXJy
ZXNwZWN0aXZlIG9mIHRoZSBjYWJsZSBvcmllbnRhdGlvbiBhbmQgd2hldGhlciBVREMgLwpnYWRn
ZXQgYXJlIGNvbmZpZ3VyZWQgYW5kIGFjdGl2ZS4KClNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFz
emlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9waHkvc2Ftc3VuZy9w
aHktZXh5bm9zNS11c2JkcmQuYyB8IDUzICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVy
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRleCAyMDEwZDI1ZWU4MTcuLjQ4
ODIxNThkZjFhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBA
IC0xMTM2LDEzICsxMTM2LDE1IEBAIHN0YXRpYyB2b2lkIGV4eW5vczg1MF91c2JkcmRfdXRtaV9p
bml0KHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJcmVnIHw9IExJTktDVFJM
X0JVU19GSUxURVJfQllQQVNTKDB4Zik7CiAJd3JpdGVsKHJlZywgcmVnc19iYXNlICsgRVhZTk9T
ODUwX0RSRF9MSU5LQ1RSTCk7CiAKLQlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBf
RFJEX1VUTUkpOwotCXJlZyB8PSBVVE1JX0ZPUkNFX0JWQUxJRCB8IFVUTUlfRk9SQ0VfVkJVU1ZB
TElEOwotCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfVVRNSSk7Ci0KLQly
ZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0hTUCk7Ci0JcmVnIHw9IEhTUF9W
QlVTVkxERVhUIHwgSFNQX1ZCVVNWTERFWFRTRUw7Ci0Jd3JpdGVsKHJlZywgcmVnc19iYXNlICsg
RVhZTk9TODUwX0RSRF9IU1ApOworCWlmICghcGh5X2RyZC0+c3cpIHsKKwkJcmVnID0gcmVhZGwo
cmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9VVE1JKTsKKwkJcmVnIHw9IFVUTUlfRk9SQ0VfQlZB
TElEIHwgVVRNSV9GT1JDRV9WQlVTVkFMSUQ7CisJCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVY
WU5PUzg1MF9EUkRfVVRNSSk7CisKKwkJcmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUw
X0RSRF9IU1ApOworCQlyZWcgfD0gSFNQX1ZCVVNWTERFWFQgfCBIU1BfVkJVU1ZMREVYVFNFTDsK
KwkJd3JpdGVsKHJlZywgcmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9IU1ApOworCX0KIAogCXJl
ZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfU1NQUExMQ1RMKTsKIAlyZWcgJj0g
flNTUFBMTENUTF9GU0VMOwpAQCAtMTQwNyw5ICsxNDA5LDQ0IEBAIHN0YXRpYyBpbnQgZXh5bm9z
NV91c2JkcmRfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKIAkJCQkg
ICAgICAgZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlvbikKIHsKIAlzdHJ1Y3QgZXh5
bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsK
KwlpbnQgcmV0OworCisJaWYgKHBoeV9kcmQtPm9yaWVudGF0aW9uID09IG9yaWVudGF0aW9uKQor
CQlyZXR1cm4gMDsKKworCXJldCA9IGNsa19idWxrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmRy
dl9kYXRhLT5uX2Nsa3MsIHBoeV9kcmQtPmNsa3MpOworCWlmIChyZXQpIHsKKwkJZGV2X2Vycihw
aHlfZHJkLT5kZXYsICJGYWlsZWQgdG8gZW5hYmxlIFBIWSBjbG9ja3MocylcbiIpOworCQlyZXR1
cm4gcmV0OworCX0KKworCXNjb3BlZF9ndWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkg
eworCQl2b2lkIF9faW9tZW0gKiBjb25zdCByZWdzX2Jhc2UgPSBwaHlfZHJkLT5yZWdfcGh5Owor
CQl1bnNpZ25lZCBpbnQgcmVnOworCisJCWlmIChvcmllbnRhdGlvbiA9PSBUWVBFQ19PUklFTlRB
VElPTl9OT05FKSB7CisJCQlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VU
TUkpOworCQkJcmVnICY9IH4oVVRNSV9GT1JDRV9WQlVTVkFMSUQgfCBVVE1JX0ZPUkNFX0JWQUxJ
RCk7CisJCQl3cml0ZWwocmVnLCByZWdzX2Jhc2UgKyAgRVhZTk9TODUwX0RSRF9VVE1JKTsKKwor
CQkJcmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9IU1ApOworCQkJcmVnIHw9
IEhTUF9WQlVTVkxERVhUU0VMOworCQkJcmVnICY9IH5IU1BfVkJVU1ZMREVYVDsKKwkJCXdyaXRl
bChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwkJfSBlbHNlIHsKKwkJCXJl
ZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfVVRNSSk7CisJCQlyZWcgfD0gVVRN
SV9GT1JDRV9WQlVTVkFMSUQgfCBVVE1JX0ZPUkNFX0JWQUxJRDsKKwkJCXdyaXRlbChyZWcsIHJl
Z3NfYmFzZSArICBFWFlOT1M4NTBfRFJEX1VUTUkpOworCisJCQlyZWcgPSByZWFkbChyZWdzX2Jh
c2UgKyBFWFlOT1M4NTBfRFJEX0hTUCk7CisJCQlyZWcgfD0gSFNQX1ZCVVNWTERFWFRTRUwgfCBI
U1BfVkJVU1ZMREVYVDsKKwkJCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRf
SFNQKTsKKwkJfQogCi0Jc2NvcGVkX2d1YXJkKG11dGV4LCAmcGh5X2RyZC0+cGh5X211dGV4KQog
CQlwaHlfZHJkLT5vcmllbnRhdGlvbiA9IG9yaWVudGF0aW9uOworCX0KKworCWNsa19idWxrX2Rp
c2FibGUocGh5X2RyZC0+ZHJ2X2RhdGEtPm5fY2xrcywgcGh5X2RyZC0+Y2xrcyk7CiAKIAlyZXR1
cm4gMDsKIH0KCi0tIAoyLjQ3LjAuMzM4Lmc2MGNjYTE1ODE5LWdvb2cKCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
