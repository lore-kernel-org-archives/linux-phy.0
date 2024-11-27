Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D19FD609D1
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 11:03:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3C3sMPrYR6ZzHIEk+nVgeCHSf0Vye1hpO5m5cm4VmUY=; b=au/KAsS3wFgRD/
	fbn6v/Y2m8hoIQxYmdkWDIzLT4wTrn0kGYuDrqYIwigmEuQxQeoNjALmk0MGQYWSGXM0BDwu157lv
	rHhvVK7paPYXTaCotJaT+qyZ0u/V1Ki7oSNK1ZxUHYlcOl+yhjOjHW78IZikAxKLYS6JHyRlrqe3J
	eJXaDkkSMYAP6+inqgXOjKUlpx9w7k/OGa0/F9F1XzTiq5pMVUwrxSg1oDSaNbUf9ReYE600ko2hz
	9N3HnCVPdX3CEsGZ3Rn8Bv81kk6SfH2ZuaqYARrZ8fSS+ne2TJISHJ4j6Om3UEDSmuEO08PC3X4Q5
	dVsVt1tPQ3tgnLSnI4xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFp9-0000000CwLP-3w1D;
	Wed, 27 Nov 2024 11:03:11 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkO-0000000CvDJ-0hBi
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:18 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-aa5500f7a75so503734566b.0
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705095; x=1733309895; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Ela2PSfA/tyEVDL+lOFVH15DKBPE6OrGnsuqeliWc0=;
        b=ujd81bL6JTdy5OWn1xpJ5FiLkKLhUOcz/rTp8ZzsGC3MRdqJMb2Q4VA6hX8+zG+aG7
         p60zv7lfvtM6s2rvjyH8vsHMsJN73S2O0uijIvhGWx4W+G7JBu72u6XLoVS7oUzh+4It
         vvLuccdaMvEkgTcsDaQijEDyPv8ttDucnxOXbjtGvsDmhQDMAGCga2b2QveMgLp8M01k
         98DjN//RheNolSYp8p4J5RhN1Ld12F4o921h1HBLUdwC9KWsa6GqigE5OIafbk0eclJc
         fDSmaHT0vqd8At+DONwgC2uuc6YxB732BMSdDwsGUiEUE6j0+g8p7C/LEqZhZ97eRSZJ
         VPlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705095; x=1733309895;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Ela2PSfA/tyEVDL+lOFVH15DKBPE6OrGnsuqeliWc0=;
        b=CCXjR2KuPh0F0QXcLOgZvCoVn/uD0YvsOBOWQP6kUeaxg1/N7nm/uJ6Qa/rJ82jzUU
         LrBC+Yn3WBGbpwy4UoIHCQEftJNK7InBuue0UqfNnQiHLO9M91Lere0kSlT9eRy5rovg
         xy8ElHje6XkR6S0S13aseEYNq/yOzVWA8M1leZhVERjZVfDPHEimPMeN7tUwOuTWsz42
         V3aTo1in4w3A/Rki91nQ7o9H7JbICTr8FKRuPyZtg/XIZrQz++tre9Z2jWx6hkM2MGKa
         1FSqRBzQlMkOfyOg3j6v7TZmQKm+91nWppD+fu4BKOGY12nOzdWTq3wPAdd/IRgOd2E0
         clgg==
X-Forwarded-Encrypted: i=1; AJvYcCXKo+f3oufFzQD9ILhw7OKcwbSshBzVADysGDZ3BpcfiVkeZX377XX3vJ5/ExSp3gHcgcNkgiFG0cw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywbqf/JHEyQJ4QdflXtrqfCsUxlI/JOLWqIAxDOIxvuP+sQDTjC
	6zhlS8SBQCjQWA5UYJL1GwPm9UNxTAuQ3fjTShwjHWvXXiCXpKuJVcVnE5EkutE=
X-Gm-Gg: ASbGncv6+HnvS/Yi+v1EBbtuQpUeCs+6bvS1CIWUewrymvczlDu8BzCXVTyzUvMMelZ
	mQxORmneZar42v9/PUL/OV2kR1qihpmOir9UYMXatedVJcZyidcogUwHUIg56fEBM2CCvOs8gRj
	gEHmT5ABYn2L0XTTgsnAnfA7PPdjJJAMQnEZqeRb5owsTg/9NDgqezluzg1BbbiUlotaYBQWzKs
	Km+hdnYm2OiFMmviqDwivWJukdG2GN+bj6wRH4iBf8nX8vz8ZT1HaM1SX38HitM/OWRUwxaDRB7
	KnwW5LEYbzPy5SyiZcDbT6WkPr2F5yeh/w==
X-Google-Smtp-Source: AGHT+IGGy57a01XH3UbpX0NsvNr8Tj73NtCtISVWPxqvv7KY3oEK4Rqy5+2NoX4k6+nU1RKiz62pMw==
X-Received: by 2002:a17:907:7da4:b0:aa5:43c4:da78 with SMTP id a640c23a62f3a-aa58108aaa2mr177836266b.51.1732705094719;
        Wed, 27 Nov 2024 02:58:14 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:15 +0000
Subject: [PATCH 5/9] phy: exynos5-usbdrd: fix EDS distribution tuning
 (gs101)
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-5-1b7fce24960b@linaro.org>
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
X-CRM114-CacheID: sfid-20241127_025816_202338_26625363 
X-CRM114-Status: GOOD (  12.97  )
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
ZXIgYXMgd2VsbCAtIHRoZQp2YWx1ZXMgaGFkIGJlZW4gY29waWVkIGZyb20gdGhlcmUuCgpTaWdu
ZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgotLS0K
IGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA3ICsrKysrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5
L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKaW5kZXggY2VhZTRiNDdjZWNlLi4yYTcyNGQz
NjJjMmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJk
LmMKKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpAQCAtMTUx
MCw4ICsxNTEwLDExIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X3R1
bmluZyBnczEwMV90dW5lc19waXBlM19wcmVpbml0W10gPSB7CiAJUEhZX1RVTklOR19FTlRSWV9Q
TUEoMHgwOWUwLCAtMSwgMHgwMCksCiAJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgwOWU0LCAtMSwg
MHgzNiksCiAJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgxZTdjLCAtMSwgMHgwNiksCi0JUEhZX1RV
TklOR19FTlRSWV9QTUEoMHgxZTkwLCAtMSwgMHgwMCksCi0JUEhZX1RVTklOR19FTlRSWV9QTUEo
MHgxZTk0LCAtMSwgMHgzNiksCisJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgxOWUwLCAtMSwgMHgw
MCksCisJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgxOWU0LCAtMSwgMHgzNiksCisJLyogZml4IGJv
b3Rsb2FkZXIgYnVnICovCisJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgxZTkwLCAtMSwgMHgwMiks
CisJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgxZTk0LCAtMSwgMHgwYiksCiAJLyogaW1wcm92ZSBM
VkNDICovCiAJUEhZX1RVTklOR19FTlRSWV9QTUEoMHgwOGYwLCAtMSwgMHgzMCksCiAJUEhZX1RV
TklOR19FTlRSWV9QTUEoMHgxOGYwLCAtMSwgMHgzMCksCgotLSAKMi40Ny4wLjMzOC5nNjBjY2Ex
NTgxOS1nb29nCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
