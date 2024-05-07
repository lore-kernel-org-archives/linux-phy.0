Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF456C25B4F
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 14:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CkJ4jwPkLmItV330D3Jpyt98rGStMzXjEcyGrPVCHS4=; b=4gMppOp7rseHIH
	OXZ+xMd2Hoe88j1miLRInM2wTSADkIlYMuWSoVvE4HgWMP2FgkR4dDGSYIXAWnuu3NoNareMJYnbi
	248jarWOJ1jsiRswObv1GcE9VuVQ4jWuzirNgvxPXoj9sfPhXzSFB/x1L9PFySjvFUC5Es6HuSM2c
	UFwTKVQBztlRDOJcPjVPGWuj+BSKtBjg1Hx+pPHysiav8k5+6lBxVXD6MpAkbyZsvN6RsgfKHM2yo
	h1BhkneA2oT9vs45PgTa5pjk1puRejAjUvmOtssx2jX1PpqbK2LuOXJNKJ8YFwrlNfJf+JsU8puqs
	WZh7vKDwTVHeIY2L+QrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4LbB-0000000BQl7-1R1J;
	Tue, 07 May 2024 14:15:17 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lav-0000000BQRv-2X1n
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 14:15:05 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a59b81d087aso682767566b.3
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 07:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091287; x=1715696087; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PzqUO+Y4mCEkRzT42mutSa2giiTX1rn5tTLc65YmNFs=;
        b=twv9w4DgTneJs443sPuVeaXRceadoO5SNOKUjb78AeRgtZv3qE1kE7nFAF8c46rBQf
         4kCh8Qb7sb1vYvOGi7czrFaPvOjO5LrjGpL+Gl8rRoKSccHDUqDZeycwk2ZH8vKqH5z7
         RozsCEC/8n99FyZ9HDAPkFcKYUzRdDiKUw8euQApoksrh0xN/lc9qftaf7EAtc96ObSg
         u4AOMIamSeVlBfAmxzThPpXVChVjGT5+StwAF/YAwVRJ8A/BNg4hQsTLAEdeBzcJ3gNv
         SEyYpOzYaDZZhqpAb+V5IKkygbbhbf6vY3YaObWE3Gl7aYXMybq+hQuDZnrswKB1AziH
         rgDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091287; x=1715696087;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PzqUO+Y4mCEkRzT42mutSa2giiTX1rn5tTLc65YmNFs=;
        b=IOeVA+Ib/YodfP7HIqcP4Y6e87sStUZLg0PU6UXNYs5PvDlr5qsAUGZpOHvQUBs/Yx
         K10NsbV688aiuOPyfUYl0Gl7H8j0BMxa0b1I80hPGmuEir5vesc36GpgThJ3B+d3te6m
         mZtP8gGVJWjgUVaxif0rtBJgNi5W/J96wFT830UTf7F9I3VasAZwzJY6YaJSe+RpCf0O
         NcCONNW3qrH1GVamKUAc1U180KXR/zXmI6qyQ0Asn3akApTK3eyXCn51h2BtPFVLumQs
         WNw0WMW+05kgLcEOQu8N+ONxlRX4d7k6F9Cfu+27EdLHhvMBy6VYbAgYuJLxzTkvo5oz
         4oeQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPC/lTPaQAJHyadENRLrRzwtRjINbZ49xxGZpvh9Vao8M/XPiSkfUIukKFKzyxwfzPNj5qQsTnG4lMU+c8qDN3i5LHZEN6mQbmVhx1ew==
X-Gm-Message-State: AOJu0YxAjRD4MQTl01rwCrooRYguIyFKlXVK3daOV8cw9wLdThq2CheC
	HV9Bdxc75J9zISb51lDaxRjmr1yOj+GXlVaIQy9/4LXq9oYHm8vIzTm5fnjOhVI=
X-Google-Smtp-Source: AGHT+IFLbaE7KL4bM9NZleowwf/9bWz6QW+2cO4ZQn/n47PzlsG520bpJ6V/v0rjjw6rNMHBVt1ovw==
X-Received: by 2002:a50:c319:0:b0:56f:e7b9:e67d with SMTP id a25-20020a50c319000000b0056fe7b9e67dmr13463276edb.12.1715091287117;
        Tue, 07 May 2024 07:14:47 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id x2-20020a056402414200b00572cf08369asm5621928eda.23.2024.05.07.07.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 07:14:46 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 May 2024 15:14:46 +0100
Subject: [PATCH 3/5] phy: exynos5-usbdrd: make phy_isol() take a bool for
 clarity
MIME-Version: 1.0
Message-Id: <20240507-samsung-usb-phy-fixes-v1-3-4ccba5afa7cc@linaro.org>
References: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
In-Reply-To: <20240507-samsung-usb-phy-fixes-v1-0-4ccba5afa7cc@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_071501_852090_A39FC30B 
X-CRM114-Status: GOOD (  11.61  )
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

b24gLyBub3Qgb24gaXMganVzdCBhIGJvb2xlYW4gZmxhZyBhbmQgaXMgYSBiaXQgbWlzbGVhZGlu
ZyBhcyBjdXJyZW50bHkKb249PTEgbWVhbnMgdG8gdHVybiBvZmYgdGhlIHBvd2VyLCBhbmQgb249
PTAgdG8gdHVybiBwb3dlciBvbi4KClJlbmFtZSB0aGUgZmxhZyBhbmQgbWFrZSBpdCBhIGJvb2wg
dG8gYXZvaWQgY29uZnVzaW9uIG9mIGZ1dHVyZSByZWFkZXJzCm9mIHRoaXMgY29kZS4gTm8gZnVu
Y3Rpb25hbCBjaGFuZ2UuCgpXaGlsZSBhdCBpdCwgZml4IGEgd2hpdGVzcGFjZSBpc3N1ZSBpbiBu
ZWFyYnkgY29tbWVudC4KCk5vIGZ1bmN0aW9uYWwgY2hhbmdlLgoKU2lnbmVkLW9mZi1ieTogQW5k
csOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMTIgKysrKysrLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IDFiMjA5YWI3YTI2OC4uZWQ0ODk4NzQxYzk5IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBi
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTE3Myw3ICsxNzMs
NyBAQCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5OwogCiBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRf
cGh5X2NvbmZpZyB7CiAJdTMyIGlkOwotCXZvaWQgKCpwaHlfaXNvbCkoc3RydWN0IHBoeV91c2Jf
aW5zdGFuY2UgKmluc3QsIHUzMiBvbik7CisJdm9pZCAoKnBoeV9pc29sKShzdHJ1Y3QgcGh5X3Vz
Yl9pbnN0YW5jZSAqaW5zdCwgYm9vbCBpc29sYXRlKTsKIAl2b2lkICgqcGh5X2luaXQpKHN0cnVj
dCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpOwogCXVuc2lnbmVkIGludCAoKnNldF9yZWZj
bGspKHN0cnVjdCBwaHlfdXNiX2luc3RhbmNlICppbnN0KTsKIH07CkBAIC0yNzMsMTQgKzI3Mywx
NCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGV4eW5vczVfcmF0ZV90b19jbGsodW5zaWduZWQgbG9u
ZyByYXRlLCB1MzIgKnJlZykKIH0KIAogc3RhdGljIHZvaWQgZXh5bm9zNV91c2JkcmRfcGh5X2lz
b2woc3RydWN0IHBoeV91c2JfaW5zdGFuY2UgKmluc3QsCi0JCQkJCQl1bnNpZ25lZCBpbnQgb24p
CisJCQkJICAgIGJvb2wgaXNvbGF0ZSkKIHsKIAl1bnNpZ25lZCBpbnQgdmFsOwogCiAJaWYgKCFp
bnN0LT5yZWdfcG11KQogCQlyZXR1cm47CiAKLQl2YWwgPSBvbiA/IDAgOiBFWFlOT1M0X1BIWV9F
TkFCTEU7CisJdmFsID0gaXNvbGF0ZSA/IDAgOiBFWFlOT1M0X1BIWV9FTkFCTEU7CiAKIAlyZWdt
YXBfdXBkYXRlX2JpdHMoaW5zdC0+cmVnX3BtdSwgaW5zdC0+cG11X29mZnNldCwKIAkJCSAgIEVY
WU5PUzRfUEhZX0VOQUJMRSwgdmFsKTsKQEAgLTUyNSw4ICs1MjUsOCBAQCBzdGF0aWMgaW50IGV4
eW5vczVfdXNiZHJkX3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCiAJCX0KIAl9CiAKLQkv
KiBQb3dlci1vbiBQSFkqLwotCWluc3QtPnBoeV9jZmctPnBoeV9pc29sKGluc3QsIDApOworCS8q
IFBvd2VyLW9uIFBIWSAqLworCWluc3QtPnBoeV9jZmctPnBoeV9pc29sKGluc3QsIGZhbHNlKTsK
IAogCXJldHVybiAwOwogCkBAIC01NTMsNyArNTUzLDcgQEAgc3RhdGljIGludCBleHlub3M1X3Vz
YmRyZF9waHlfcG93ZXJfb2ZmKHN0cnVjdCBwaHkgKnBoeSkKIAlkZXZfZGJnKHBoeV9kcmQtPmRl
diwgIlJlcXVlc3QgdG8gcG93ZXJfb2ZmIHVzYmRyZF9waHkgcGh5XG4iKTsKIAogCS8qIFBvd2Vy
LW9mZiB0aGUgUEhZICovCi0JaW5zdC0+cGh5X2NmZy0+cGh5X2lzb2woaW5zdCwgMSk7CisJaW5z
dC0+cGh5X2NmZy0+cGh5X2lzb2woaW5zdCwgdHJ1ZSk7CiAKIAkvKiBEaXNhYmxlIFZCVVMgc3Vw
cGx5ICovCiAJaWYgKHBoeV9kcmQtPnZidXMpCgotLSAKMi40NS4wLnJjMS4yMjUuZzJhM2FlODdl
N2YtZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
