Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AFE4C10F1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 14:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32dZi1Fjz6l0hX7AysIxJ/hBij2K5apFR0gST6geRLc=; b=E8nVtxvTOE9/FD
	ixhzauvMuAJhLNUXLpLQ3dHdIZRRf5UzGsjSDjHzhifRzAMLmhbq3vDNWfMQD/GePPhW/TUPiSRM7
	CFAWJAzwo3ogw9n9Tmeu7omwG0pDhNucEmucjuArI7Ue7k3tWlBaA+t1y2kO8ayhF7cIZKCF7dVmy
	AkXsMtT5c3r3pkd6wo2cGfCKjDJe/avjEOw129MjfaRzQ1ajq0+L5IpY+dJebdbmlFUZBkrWq0qgW
	JYnG/m1MllLQeDTi+ermt6LQQTDnKICqCZKszOgXIIVCE5rhVaHd1F+RvfAf2wofqmjLpjAuXTuVs
	aBgu03AzhJON7qgNyrEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lb8-0000000BQjE-2WZZ;
	Tue, 07 May 2024 14:15:14 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lav-0000000BQSI-2W9S
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 14:15:03 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-572adaa172cso5527979a12.1
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091288; x=1715696088; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2AhGxPfO0jxLeMCNC4W84i2OQnqDzy87o4JACQM4lhg=;
        b=pLyExlpmmq4lMqXIZwh56GThyn60GHdN9E3v6L2ibjjkf91l2TN/qprVi2jpT79Gx4
         WFCenwJQbS4KtltswpjPPwCpIikhKId8PuEXVUppB7KCvJWVbdRwsg2m6RSidC76ZRuu
         2rUig1VjGkIoRHGYjQ+Meb/8MjOCKycR6KQ4e5edAENt9cBAkbzVQQtGK81KviLH9lRb
         sm9EH9OidrY5J5PL1J0L8kJE+k+H3VIO0ZldlyxnTviPccriXM2oYvBHKyHwRyBWdFfZ
         IEnei1Ps4FjJ5pM0oPb9eQtvRXJenFRAPglN1+hCGZEROSNHPMOG3eXFP6kcEHzuZMSa
         0pUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091288; x=1715696088;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2AhGxPfO0jxLeMCNC4W84i2OQnqDzy87o4JACQM4lhg=;
        b=i2uphlkBvuexe0o47T3JZ9Zkik3FDJ+Yp75jJQYW87oh7cZRtfpAKfP5dsRHMT8/mc
         1RLD4D0rM94oDoI4BWmpjX/rtFL5/D93sIsLFDrpEbVycumMiq0bFwZHDgh8nUqCSP8D
         SPQosH7n0EWhDWsOpELXn6luA7ME+lP2F0ErrUp73ScENf82h793sYDxwwPjJ7uKMT2b
         +ynkUK5YOcMnn93dCz0SvxXT0BTJNTSgVSW290V4qvV5DMURSe+tRlwxYlgVllsNba19
         QSw/Lhmn2QEtssR26MTkGauXY0ZdFwmo3KPaCZMw85wBJhRJm8OYz+w8M0KQnVS8oJ4l
         ArkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdCbSpTeoqyE6gh6TWgNOAPYTR1bGKNTQlhEazHycNWg+EUA03tS9ZvHY3nm+SpoNYEXAsJ4XOMKJ63WNd2mHpwETGFPCAScVs4+cOVg==
X-Gm-Message-State: AOJu0Yy5XX/IekjsEcDarQAA0uCS2sGxBJpqeMx58s+H8M9xtdMy28nK
	fbnakZCOx8VdSk5d/g6T3+1aqON5pHn3iV1ULOQx/HXnY1jalOATDnVv429yOXk=
X-Google-Smtp-Source: AGHT+IF93U5EbjSwxazXGCgRUoQpkJwYIG6vkvVms1C680kr/QzgHDatBvsRnvscl1lkUzBabOX3fA==
X-Received: by 2002:a50:f683:0:b0:572:a158:8a7b with SMTP id d3-20020a50f683000000b00572a1588a7bmr2479836edn.8.1715091287917;
        Tue, 07 May 2024 07:14:47 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id x2-20020a056402414200b00572cf08369asm5621928eda.23.2024.05.07.07.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 07:14:47 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 May 2024 15:14:48 +0100
Subject: [PATCH 5/5] phy: exynos5-usbdrd: set ref clk freq in
 exynos850_usbdrd_utmi_init()
MIME-Version: 1.0
Message-Id: <20240507-samsung-usb-phy-fixes-v1-5-4ccba5afa7cc@linaro.org>
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
X-CRM114-CacheID: sfid-20240507_071501_759776_8B02845F 
X-CRM114-Status: GOOD (  12.08  )
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

V2hpbGUgY29tbWl0IDI1NWVjMzg3OWRkNCAoInBoeTogZXh5bm9zNS11c2JkcmQ6IEFkZCAyNk1I
eiByZWYgY2xrCnN1cHBvcnQiKSBjb3JyZWN0bHkgc3RhdGVzIHRoYXQgQ0xLUlNUQ1RSTFs3OjVd
IGRvZXNuJ3QgbmVlZCB0byBiZSBzZXQKb24gbW9kZXJuIEV4eW5vcyBwbGF0Zm9ybXMsIFNTUFBM
TENUTFsyOjBdIHNob3VsZCBiZSBwcm9ncmFtbWVkIHdpdGgKdGhlIGZyZXF1ZW5jeSBvZiB0aGUg
cmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgVVNCMi4wIHBoeSBpbnN0ZWFkLgoKSSBzdHVtYmxlZCBh
Y3Jvc3MgdGhpcyB3aGlsZSBhZGRpbmcgc3VwcG9ydCBmb3IgdGhlIEdvb2dsZSBUZW5zb3IKZ3Mx
MDEsIGJ1dCB0aGlzIHNob3VsZCBhcHBseSB0byBFODUwIGp1c3QgdGhlIHNhbWUuCgpEbyBzby4K
CkZpeGVzOiA2OTE1MjUwNzRkYjkgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBBZGQgRXh5bm9zODUw
IHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0Bs
aW5hcm8ub3JnPgoKLS0tCkZlZWwgZnJlZSB0byBkcm9wIHRoZSBGaXhlczogaWYgeW91IHRoaW5r
IHRoYXQgaXMgdW53YXJyYW50ZWQgaGVyZS4KCnYyOiBhZGQgbWlzc2luZyBiaXRmaWVsZC5oIGlu
Y2x1ZGUgKHNlZW1zIHRoaXMgaXMgaW1wbGllZCBvbiBzb21lCiAgICBwbGF0Zm9ybXMsIGJ1dCBu
b3Qgb24gb3RoZXJzKQotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI5
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpp
bmRleCAxZGE3YTQ4ODFmNzIuLjE1YmU5NjZiNTBhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkv
c2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3Bo
eS1leHlub3M1LXVzYmRyZC5jCkBAIC04LDYgKzgsNyBAQAogICogQXV0aG9yOiBWaXZlayBHYXV0
YW0gPGdhdXRhbS52aXZla0BzYW1zdW5nLmNvbT4KICAqLwogCisjaW5jbHVkZSA8bGludXgvYml0
ZmllbGQuaD4KICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KICNpbmNsdWRlIDxsaW51eC9kZWxheS5o
PgogI2luY2x1ZGUgPGxpbnV4L2lvLmg+CkBAIC0xNDEsNiArMTQyLDkgQEAKICNkZWZpbmUgQ0xL
UlNUX1BPUlRfUlNUCQkJCUJJVCgxKQogI2RlZmluZSBDTEtSU1RfTElOS19TV19SU1QJCQlCSVQo
MCkKIAorI2RlZmluZSBFWFlOT1M4NTBfRFJEX1NTUFBMTENUTAkJCTB4MzAKKyNkZWZpbmUgU1NQ
UExMQ1RMX0ZTRUwJCQkJR0VOTUFTSygyLCAwKQorCiAjZGVmaW5lIEVYWU5PUzg1MF9EUkRfVVRN
SQkJCTB4NTAKICNkZWZpbmUgVVRNSV9GT1JDRV9WQlVTVkFMSUQJCQlCSVQoNSkKICNkZWZpbmUg
VVRNSV9GT1JDRV9CVkFMSUQJCQlCSVQoNCkKQEAgLTc3Myw2ICs3NzcsMzEgQEAgc3RhdGljIHZv
aWQgZXh5bm9zODUwX3VzYmRyZF91dG1pX2luaXQoc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAq
cGh5X2RyZCkKIAlyZWcgfD0gSFNQX1ZCVVNWTERFWFQgfCBIU1BfVkJVU1ZMREVYVFNFTDsKIAl3
cml0ZWwocmVnLCByZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0hTUCk7CiAKKwlyZWcgPSByZWFk
bChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1NTUFBMTENUTCk7CisJcmVnICY9IH5TU1BQTExD
VExfRlNFTDsKKwlzd2l0Y2ggKHBoeV9kcmQtPmV4dHJlZmNsaykgeworCWNhc2UgRVhZTk9TNV9G
U0VMXzUwTUhaOgorCQlyZWcgfD0gRklFTERfUFJFUF9DT05TVChTU1BQTExDVExfRlNFTCwgNyk7
CisJCWJyZWFrOworCWNhc2UgRVhZTk9TNV9GU0VMXzI2TUhaOgorCQlyZWcgfD0gRklFTERfUFJF
UF9DT05TVChTU1BQTExDVExfRlNFTCwgNik7CisJCWJyZWFrOworCWNhc2UgRVhZTk9TNV9GU0VM
XzI0TUhaOgorCQlyZWcgfD0gRklFTERfUFJFUF9DT05TVChTU1BQTExDVExfRlNFTCwgMik7CisJ
CWJyZWFrOworCWNhc2UgRVhZTk9TNV9GU0VMXzIwTUhaOgorCQlyZWcgfD0gRklFTERfUFJFUF9D
T05TVChTU1BQTExDVExfRlNFTCwgMSk7CisJCWJyZWFrOworCWNhc2UgRVhZTk9TNV9GU0VMXzE5
TUhaMjoKKwkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZTRUwsIDApOworCQli
cmVhazsKKwlkZWZhdWx0OgorCQlkZXZfd2FybihwaHlfZHJkLT5kZXYsICJ1bnN1cHBvcnRlZCBy
ZWYgY2xrOiAlIy4yeFxuIiwKKwkJCSBwaHlfZHJkLT5leHRyZWZjbGspOworCQlicmVhazsKKwl9
CisJd3JpdGVsKHJlZywgcmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9TU1BQTExDVEwpOworCiAJ
LyogUG93ZXIgdXAgUEhZIGFuYWxvZyBibG9ja3MgKi8KIAlyZWcgPSByZWFkbChyZWdzX2Jhc2Ug
KyBFWFlOT1M4NTBfRFJEX0hTUF9URVNUKTsKIAlyZWcgJj0gfkhTUF9URVNUX1NJRERROwoKLS0g
CjIuNDUuMC5yYzEuMjI1LmcyYTNhZTg3ZTdmLWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
