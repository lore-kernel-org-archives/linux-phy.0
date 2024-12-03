Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAA05E64A85
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DB4yv9J3CDDL6Tlkdlos9Oh5A0f2bdLYqepjVpCzP/c=; b=kyllhWYHAgYfmg
	yZT023tCBmEbtO8Q/Rv+rRVXloNUbduZ02LdY7nb78IE6RYsWpXjTe9RQqn6kzV2LFsCrJEFc3L7a
	XwNwMGZtGbNIGc7xiwEnMjV7lvKNDpGSKzNtV5ezm7iNzFzheWF63g01FVFgRKiCsEr2cRGWsg7IL
	tt6P7Cefl42aubyc1BazdX5Hz2hRDXqwbPqAbl54LivwDRokMTUO5Ln0f3jEiFPDlQglRnrifT6Lq
	jXwrQdqPW2eYKfJeH9xg5xufy69hUMwBJf8ucAHOILfr7U1FgIBrCNbzKCXxfGrP1MWG75pYv+kAu
	XdTh1vkw0ZW9EmTseUfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRqo-00000009OgC-1tY3;
	Tue, 03 Dec 2024 12:17:58 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmt-00000009Nev-1dOn
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:56 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2ffdbc0c103so76359051fa.3
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228033; x=1733832833; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=pVY9ZZKhao34IAvdXgVZwOJOKvaK3/qmMnKhMy7FWQ1OzagMiOPKo47Lf5VbYOvCj0
         +DH+7btXCP23Yl1pKDxAOGxiaSoB3mcvKBg80fJa5JE9mLbw8l1SwfXE3g3k81dnPYHa
         uUnWY+CnwoV5pPX+gbIQgPyr4FTQW9BYrubHyWtzpmJFA79d1lNs4MnaT8GCzGW53ytE
         K99I7cepNoYXk06FxreycxY+8998cJWkwk82D5CqwUbm64N5Q1BqCm9Sn8QVjgHlsc1V
         tSwq6E+2yMfoyeoHntVMYmD7usgllTiu9f6Bc8gi91VspdQQvLedgCR9APbN8TmDGgW0
         ntJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228033; x=1733832833;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XyAJZWh204Jg961AaAOy2+aPUgd1uUQOUoQ33ic9q34=;
        b=EVNAETbd0+g/BSqR4dKKQwzXDrQ0/UALJk6e+CKJGWpn5xSTTrjpQ7ewqwAZoWMlLg
         0Mj4QhB19KKdBG2KXCmMfS4QeCJLGQqhUu3+IkiZtpTPTdV6dqvDFbDneAw6ulx6PY4V
         klpF4UxRxeq1YWKPvBeu9hQiKCNTGq3tZ/OWIo1WNsFSDacad0LvwEjUaEsZkX8okpa/
         rc16a+TOH5PHZuwhu8J/CoqQE1WgVfGPt5lQOaysUbt8/jjDsUT3ZPiDS+s99vOcBl87
         TGj8j+GmA5w0/RZkX7X490NirIymdvTFeDpchbcBlMyCsv8YdZjUeHq+2StMPR+bVsPU
         EwRg==
X-Forwarded-Encrypted: i=1; AJvYcCXVj6NBuhvD/FkDmvNm4S06LWZTkf2BhM9wlYd82TyMZrin28ef2wWAehGSvP24lKu3q8iZ6aRnQa8=@lists.infradead.org
X-Gm-Message-State: AOJu0YySLwahJ0FAIAfaqV+gLUgCfNLDr6rFgNkBdiGSEWaaq77Cdnad
	9ZO8kohYIFgfAEofJ8l+oy/pryzeM+8sGwUyeRyssR/lQXGjVnXHpmXSXwT5Uz8=
X-Gm-Gg: ASbGnct0wlP1qMdrhz3IF1YhsmyES7RE7h7UA16gaaKdF5c5e03uIjgCobqU3faLVxT
	9S/Nw5esAovUaB9wlIT9+Vdm7Swxw6t0L06prca55MeXVB/6Fdfnez8ZdDbf5R/n0H831Nt1ZyN
	zmPm4sP9wZaNX3wt0/vwzy6pvJvs78HmDlntVoLyve+aBHXZd7m5vTXJbWknjCRWRRbUA67sBOy
	nFGfHvvRoWw1S3gR3G4PSf/+Za01TjmuSDFZ1dJwme8rW4qonzA7wKjXQehquXQS9FPBGDkCfIc
	ywZmf4+nlIiBiOA+/Pj/TWqVZFtg3WWKnw==
X-Google-Smtp-Source: AGHT+IGgwyjBJkS8A9AXx8hnLtvyrGDGaqK5MFnxCflHlyNqWU5j8V8iVeDiiMrTGSbUFmaLqW+/tQ==
X-Received: by 2002:a05:651c:b24:b0:2ff:d133:b54c with SMTP id 38308e7fff4ca-30009c63bf8mr20389271fa.11.1733228033208;
        Tue, 03 Dec 2024 04:13:53 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:52 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:52 +0000
Subject: [PATCH v2 4/8] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-4-40dcf1b7670d@linaro.org>
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
X-CRM114-CacheID: sfid-20241203_041355_465658_81E5D7AC 
X-CRM114-Status: GOOD (  12.95  )
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
