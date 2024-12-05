Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20A08E77171
	for <linux-phy@archiver.kernel.org>; Thu,  5 Dec 2024 07:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DB4yv9J3CDDL6Tlkdlos9Oh5A0f2bdLYqepjVpCzP/c=; b=kYtWsYHlyMAdlt
	3dtmHQRmbcyEsTqvGMiUPwJoLwvWmrguMJeT13YMxkl7DpjBV+BXKyJWdKRfZt4f+8ecp/zs7KX6R
	BRc+0nnuWCH/TFmVjHQueeMTXLiMfYH/yMuT+gWigmBi7adjMrCC4/IT6LUzXAhte4TDZwnfOsLLo
	Z4BLEseS2pTryRspL8Upf7nrUKrDPE3FpZWxrxqj8SkZWZvC6S5kFgtB9MDgB58lZ4736S3OoLqvi
	6LdX2BGN4Gqr+E9JaRptSowPFO1hF1d9kyP4L4OSjt/3uLxSV5tt4/DF/JuyUnzJ01l6GZS55niNf
	0X5MEN9b9EZP8jwaJFTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6Ul-0000000F489-3g5C;
	Thu, 05 Dec 2024 07:41:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MU-0000000F1lw-34OQ
	for linux-phy@bombadil.infradead.org;
	Thu, 05 Dec 2024 07:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=; b=Xb+/jnMXCthj7TpNnJL+MDEj75
	8kS6oX4NkvUji1GbwhIfgoDvsg79/HzLcZNlAFASELhgC6CMKQ5LuGGDQcdMK1M2n/zhX5HhVOGdi
	CJN6/p2R6d7bO84PoywW+n52245Q8eCzXQU+dlx4vyt91LrLCVkXd7dlzul3i7hcaiZs881vGQ+QY
	Z9r/d64D8YaFg+JSQHfaJPOHIbLUfUmfGEC8po3kFLxCwt7CnF9LUq2JNMqLCrsmHzUpEtywbCaiI
	W/sB8niP9WWSD39kdOZKmkr40DVBn2Iou9cRBBQM63BqM0+3zrMbtyz1Zg4UYdXIUpyqgbq6ObG4h
	1N4cx+vg==;
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ6MQ-00000002mu9-0xcS
	for linux-phy@lists.infradead.org;
	Thu, 05 Dec 2024 07:33:21 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a9f1d76dab1so110878166b.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Dec 2024 23:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383995; x=1733988795; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=JsgpgvOzJMAAt9tB4D6BrR+EFUm5MiuTQISUS1gu2Ysv2l0DXz1uf9Iwo0S53cYIl2
         FE/FkoXSMT9E983IMiWDj7/qtYA1UjTwe74c5o3sB2mrxqD9I6jL3iGtGHGSW/Iu8/d9
         GXiGKVOrle9/O9l2LmZ89NnIHnRh7Yb4W5LBJ6HzF3r55re6vCOmnpA4yRVd9hAeiDN/
         3liJH9+JYq/NZ889y/z1nzqESShT3bu/vQVEfHMnffRiwEl+Zl6SiE64EecGDIDWpDCi
         4POloZ5rjAmTdM3Fn20JDWzKTGPkxrqhTP8VHpiWyWKRPpuO7IH41A0yxCWgqrWwN3GL
         oOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383995; x=1733988795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=gTLIJgR1vRJkLcB3Fhii86GI82K3m70wRCOxBVvECgwjWdc5ubJO4S7uHVJt7ZUEP5
         1IsWhgetlp3sTEH9BiDbHhZivJIurNC1ZIPUXkhpNaw8usJOpqtK4SaBaxjG7Yp0nfv6
         umfrAlxTFVU2O2wzkXxlo7XbNlp319E23C67B/IC7e35/Mu1Up2euMRDgP6KGx4azp5l
         LnQhOhNHLiC3KuFDcZKuFdtFdyR+7yEKyyCWcbvwyZRUlp7Yyd/SxTSvrOBB1hGMVdFE
         8ulhzM8Kdyh17JQt1XSduMWMNLvw7RJqL/RxyKDSqtvBiWMqJPVLdvW41n2P26uMF5GH
         YRkg==
X-Forwarded-Encrypted: i=1; AJvYcCUtDhbju+M4IG54HmiwEehBDbxx0eP3MH/+aCv95gUC1suudQ/hGMpsIfTSQYRiCo7gx+sd4vvIuA4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzqMtX/I6J1BpgMw2gKTb5JaLxn6W+4aQoPAta/02y6TtPUJl1Q
	/+VCFiZkeKU5p0Hp/9uNxIi1A8f51PHRyy2BY04/SsBmRzhXG0dkHoKcmErlFUY=
X-Gm-Gg: ASbGnctRfGywtlUkNgQKFxqGXjceUW/sBdtL0hNG9UQ2FxDol9FLkN6DDI0DBGXtRoM
	AFOId6lml2bqdtFv3FzG4GhNsH2oeSb+d1aLpV4NO+qjlnchPNsq8KoNA4bN5jh+Rc+USuqrN1T
	KQeDC7RBQJ5mpPqlzdrYmujEEBY6Z7xoZdscSwW/S7ubwFEQH8LQCC7HcDkkMn8lED191hEtpOH
	qPdgluJ+zkdZnwNhLcuPKQE7wiNe1F98fqNq1ZkEBQCta/a43QEncIm3BJh0fV1OAa+R92+9x9N
	ANTrcv67PhjFNwJYYxK8H+JQKB/5e9GQNg==
X-Google-Smtp-Source: AGHT+IFgMUVAtmrSp5P0iX/M3Y79q6BO4G1fv1/OVbYNaTflw37THP1LL7lHyOBI+yL2Eg8TsZ7fqQ==
X-Received: by 2002:a17:906:3d31:b0:aa4:9ab1:1985 with SMTP id a640c23a62f3a-aa60191ef15mr658488966b.51.1733383995541;
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:15 +0000
Subject: [PATCH v3 4/8] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
MIME-Version: 1.0
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-4-32f721bed219@linaro.org>
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
X-CRM114-CacheID: sfid-20241205_073318_538517_3D75996E 
X-CRM114-Status: GOOD (  12.76  )
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

VGhpcyBjb2RlJ3MgaW50ZW50aW9uIGlzIHRvIGNvbmZpZ3VyZSBsYW5lMCBhbmQgbGFuZTIgdHVu
aW5ncywgYnV0IGZvcgpsYW5lMiB0aGVyZSBpcyBhIHR5cG8gYW5kIGl0IGVuZHMgdXAgdHVuaW5n
IHNvbWV0aGluZyBlbHNlLgoKRml4IHRoZSB0eXBvLCBhcyBpdCBkb2Vzbid0IGFwcGVhciB0byBt
YWtlIHNlbnNlIHRvIGFwcGx5IGRpZmZlcmVudAp0dW5pbmdzIGZvciBsYW5lMCB2cyBsYW5lMi4K
ClRoZSBzYW1lIHR5cG8gYXBwZWFycyB0byBleGlzdCBpbiB0aGUgYm9vdGxvYWRlciwgaGVuY2Ug
d2UgcmVzdG9yZSB0aGUKb3JpZ2luYWwgdmFsdWUgaW4gdGhlIHR5cG8nZCByZWdpc3RlcnMgYXMg
d2VsbC4gVGhpcyBjYW4gYmUgcmVtb3ZlZApvbmNlIC8gaWYgdGhlIGJvb3Rsb2FkZXIgaXMgdXBk
YXRlZC4KCk5vdGUgdGhhdCB0aGlzIGlzIGluY29ycmVjdCBpbiB0aGUgZG93bnN0cmVhbSBkcml2
ZXIgYXMgd2VsbCAtIHRoZQp2YWx1ZXMgaGFkIGJlZW4gY29waWVkIGZyb20gdGhlcmUuCgpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgpUZXN0ZWQt
Ynk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9yZz4KU2lnbmVkLW9mZi1i
eTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCi0tLQp2MjoKKiBj
b2xsZWN0IHRhZ3MKLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5j
IHwgNyArKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IGNlYWU0
YjQ3Y2VjZS4uMmE3MjRkMzYyYzJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3Bo
eS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUt
dXNiZHJkLmMKQEAgLTE1MTAsOCArMTUxMCwxMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGV4eW5v
czVfdXNiZHJkX3BoeV90dW5pbmcgZ3MxMDFfdHVuZXNfcGlwZTNfcHJlaW5pdFtdID0gewogCVBI
WV9UVU5JTkdfRU5UUllfUE1BKDB4MDllMCwgLTEsIDB4MDApLAogCVBIWV9UVU5JTkdfRU5UUllf
UE1BKDB4MDllNCwgLTEsIDB4MzYpLAogCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MWU3YywgLTEs
IDB4MDYpLAotCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MWU5MCwgLTEsIDB4MDApLAotCVBIWV9U
VU5JTkdfRU5UUllfUE1BKDB4MWU5NCwgLTEsIDB4MzYpLAorCVBIWV9UVU5JTkdfRU5UUllfUE1B
KDB4MTllMCwgLTEsIDB4MDApLAorCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MTllNCwgLTEsIDB4
MzYpLAorCS8qIGZpeCBib290bG9hZGVyIGJ1ZyAqLworCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4
MWU5MCwgLTEsIDB4MDIpLAorCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MWU5NCwgLTEsIDB4MGIp
LAogCS8qIGltcHJvdmUgTFZDQyAqLwogCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MDhmMCwgLTEs
IDB4MzApLAogCVBIWV9UVU5JTkdfRU5UUllfUE1BKDB4MThmMCwgLTEsIDB4MzApLAoKLS0gCjIu
NDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0Cmxp
bnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
