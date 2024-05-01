Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3EEC10F1A
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcyxebinvRkMtTBSPRtSQY3Ycg8VAVxytzqeXFQEM0k=; b=rHHr9egmqGjKBl
	VL0zF4Al09QLRvN+VxKYEB7oDQXRhKZE9PDkdMGEQ+abJbz79lBB7L2FawB/v57fFD3V5u2a/3x9C
	YKV+1PGvo2aS6KVsoDgZNsvi9GBfiSUp3jwYdNNPrFarz/v4qyIJLPBVl78ZfRDYYBTqiAMzAwWAv
	iuk/IJXNBGf7HCFEd+u6u6Y3vn3+qZJHWHlwVzad8MPbs7gDnBgDPDzmhH1zn/u1CK5WK2wU5Zky2
	XOK14pr3BXz85DEF3feHARXYGTNhdGNiCPAZ3rA7MX7PeFGTYtczg7+3V19KnDzBehuogMLDVt+Ld
	rSczHdKnhep72wkrli+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s268F-00000008wwg-0qtj;
	Wed, 01 May 2024 09:20:07 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wie-2U2M
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:51 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a4702457ccbso867420666b.3
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555179; x=1715159979; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J6CBz7V/gypGkWRZPuHFUjAJNpEsLzvmA3Y5G6jT7g8=;
        b=uAVmSgRVdi5iOD2qItDklHEbW1wFaSsluy0GEPtASMuOHqH6nv853+X9SVEPBXIX1G
         OP+z1jMG7PP3i6x+KOoVY93q/nW0hpCu0JOwt2WdB3/C283oVo+SJC90pQADAgcOpGK+
         G9zZX8luKR3Aom4JUq9qk5dmJQoEClMhJPlajbRVMtOTINntYHyfOlJv10dPM2J1byM3
         0pnR4pJsHNVSyQFSht5QKJvRQxQmUkRPq4Rj6v/fztOd0SjH0qF5HQbSoqbicPjx0aBM
         5p8do3PwPT0ZfGtJQss9ezXAgCpHeh/Zg2YseQlssaf/fxX428yYj3qw6YY/rVsapNtk
         G2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555179; x=1715159979;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J6CBz7V/gypGkWRZPuHFUjAJNpEsLzvmA3Y5G6jT7g8=;
        b=Y0qiyM5FXahu+C6QCn6bI+GPfxhQ4n9U3grS+dFQPkjE1EfAcZXBqbWQJs2stFQmwb
         gwlYkbHxlTLNaMrFEO/JFMHMhasCSKnumwSb2MXsl5HaoYIV/4W2eGCmVdBbmAUhpEo8
         Wv5MPPZzpHCIQy2wegHpEd976Yo1jIwjZMam5iuVCxkodLF7LLlGUQTc5aysZPPdL+c7
         tJhILCC3OJR83L6KGeXp9aO3fSSdfpYnfcdze1NAq2uFMpVUf6mvWUpY2kK0rK4LoWfk
         CsRFKhBfClcPMNr5r85ZAZhxNFApjnNZ0JMQ87sLrg3puCFD7AFdcYeEccqj7xKy4EAr
         pDiA==
X-Forwarded-Encrypted: i=1; AJvYcCW+AIiHguZ8+NbSPkrSMPvJJxuMJ6WDzwxdwGiM6xQzQvTEpEqtCEmMnW492t8Ho0rbmy1UDaWNX/07BA18QJv0HkeP8m9ytpp6exDFFA==
X-Gm-Message-State: AOJu0YymvXrxQw7GWnMmsKfDwNcDExF6xQ8+Rt7OViloo7UgGlIQV7lg
	9Yu/HQ0ztB3u0zP598SaFxxwkvZJadKzU+Lk9GMjHLCXzFqdXof5QndGwLTERIc=
X-Google-Smtp-Source: AGHT+IFCRlncLt7jDHy2teEatFl+ETJXuXLGPGbi7dqaTrvE39vqxK8MXbqrb1bOCIrsv3JqEaptYw==
X-Received: by 2002:a17:906:95b:b0:a58:e569:1242 with SMTP id j27-20020a170906095b00b00a58e5691242mr1306584ejd.4.1714555179313;
        Wed, 01 May 2024 02:19:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:38 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:39 +0100
Subject: [PATCH v2 4/7] phy: exynos5-usbdrd: set ref clk freq in
 exynos850_usbdrd_utmi_init()
MIME-Version: 1.0
Message-Id: <20240501-usb-phy-gs101-v2-4-ed9f14a1bd6d@linaro.org>
References: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
In-Reply-To: <20240501-usb-phy-gs101-v2-0-ed9f14a1bd6d@linaro.org>
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
X-CRM114-CacheID: sfid-20240501_021944_934964_EA9B7377 
X-CRM114-Status: GOOD (  12.30  )
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
cmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgVVNCMi4wIHBoeS4KCkRvIHNvLgoKRml4ZXM6IDY5MTUy
NTA3NGRiOSAoInBoeTogZXh5bm9zNS11c2JkcmQ6IEFkZCBFeHlub3M4NTAgc3VwcG9ydCIpClNp
Z25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cgot
LS0KRmVlbCBmcmVlIHRvIGRyb3AgdGhlIEZpeGVzOiBpZiB5b3UgdGhpbmsgdGhhdCBpcyB1bndh
cnJhbnRlZCBoZXJlLgoKdjI6IGFkZCBtaXNzaW5nIGJpdGZpZWxkLmggaW5jbHVkZSAoc2VlbXMg
dGhpcyBpcyBpbXBsaWVkIG9uIHNvbWUKICAgIHBsYXRmb3JtcywgYnV0IG5vdCBvbiBvdGhlcnMp
Ci0tLQogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyB8IDI5ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMg
Yi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCmluZGV4IGQ2OTE4N2My
MjYxMy4uNGYzMGNlZDQzOWI5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNi
ZHJkLmMKQEAgLTgsNiArOCw3IEBACiAgKiBBdXRob3I6IFZpdmVrIEdhdXRhbSA8Z2F1dGFtLnZp
dmVrQHNhbXN1bmcuY29tPgogICovCiAKKyNpbmNsdWRlIDxsaW51eC9iaXRmaWVsZC5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2Nsay5oPgogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8
bGludXgvaW8uaD4KQEAgLTE1NSw2ICsxNTYsOSBAQAogI2RlZmluZSBDTEtSU1RfUE9SVF9SU1QJ
CQkJQklUKDEpCiAjZGVmaW5lIENMS1JTVF9QSFlfU1dfUlNUCQkJQklUKDMpCiAKKyNkZWZpbmUg
RVhZTk9TODUwX0RSRF9TU1BQTExDVEwJCQkweDMwCisjZGVmaW5lIFNTUFBMTENUTF9GU0VMCQkJ
CUdFTk1BU0soMiwgMCkKKwogI2RlZmluZSBFWFlOT1M4NTBfRFJEX1VUTUkJCQkweDUwCiAjZGVm
aW5lIFVUTUlfRk9SQ0VfU0xFRVAJCQlCSVQoMCkKICNkZWZpbmUgVVRNSV9GT1JDRV9TVVNQRU5E
CQkJQklUKDEpCkBAIC03ODgsNiArNzkyLDMxIEBAIHN0YXRpYyB2b2lkIGV4eW5vczg1MF91c2Jk
cmRfdXRtaV9pbml0KHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJcmVnIHw9
IEhTUF9WQlVTVkxERVhUIHwgSFNQX1ZCVVNWTERFWFRTRUw7CiAJd3JpdGVsKHJlZywgcmVnc19i
YXNlICsgRVhZTk9TODUwX0RSRF9IU1ApOwogCisJcmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZ
Tk9TODUwX0RSRF9TU1BQTExDVEwpOworCXJlZyAmPSB+U1NQUExMQ1RMX0ZTRUw7CisJc3dpdGNo
IChwaHlfZHJkLT5leHRyZWZjbGspIHsKKwljYXNlIEVYWU5PUzVfRlNFTF81ME1IWjoKKwkJcmVn
IHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZTRUwsIDcpOworCQlicmVhazsKKwljYXNl
IEVYWU5PUzVfRlNFTF8yNk1IWjoKKwkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RM
X0ZTRUwsIDYpOworCQlicmVhazsKKwljYXNlIEVYWU5PUzVfRlNFTF8yNE1IWjoKKwkJcmVnIHw9
IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZTRUwsIDIpOworCQlicmVhazsKKwljYXNlIEVY
WU5PUzVfRlNFTF8yME1IWjoKKwkJcmVnIHw9IEZJRUxEX1BSRVBfQ09OU1QoU1NQUExMQ1RMX0ZT
RUwsIDEpOworCQlicmVhazsKKwljYXNlIEVYWU5PUzVfRlNFTF8xOU1IWjI6CisJCXJlZyB8PSBG
SUVMRF9QUkVQX0NPTlNUKFNTUFBMTENUTF9GU0VMLCAwKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoK
KwkJZGV2X3dhcm4ocGh5X2RyZC0+ZGV2LCAidW5zdXBwb3J0ZWQgcmVmIGNsazogJSMuMnhcbiIs
CisJCQkgcGh5X2RyZC0+ZXh0cmVmY2xrKTsKKwkJYnJlYWs7CisJfQorCXdyaXRlbChyZWcsIHJl
Z3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfU1NQUExMQ1RMKTsKKwogCS8qIFBvd2VyIHVwIFBIWSBh
bmFsb2cgYmxvY2tzICovCiAJcmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9I
U1BfVEVTVCk7CiAJcmVnICY9IH5IU1BfVEVTVF9TSUREUTsKCi0tIAoyLjQ1LjAucmMwLjE5Ny5n
YmFlNTg0MGIzYi1nb29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==
