Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD69FC25B4F
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 14:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GApdXNqdMRR5PfnlYWXRzC6XERJYhEDCyGU0FKTICzs=; b=WWh9o44L/Khy//
	797u/KBoelNLF4vmcgSwxmbYiMYZsQYKI1zLYPAPkScgNtR/3NhMkuoeFB1N82lV15JBpCZMmdPxA
	KbEmnmbxTXKUvu+0oAD4qI6pEtBvsATqfcJ/OJLp5a7Gv7CS9Qh6clKZ2q/uVO/HSdNOhMrqAEh7I
	C+QNrNSnKqM4G1tEbsFcuczFbZtMKgu3Jj0TxWCsOJOIQ5D8bjId0EzgPmN2BaltW0rp/MdISmBJo
	hctpfCeiSeM1Cw1N7p9V9dsBNExNGgPq+mLl3e2QSyDME5Sdl4QE8HQvmLXtYIwoZgdljwqOXPzSt
	PMsmSayHUhDnsjhb6S7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lax-0000000BQbO-1BgI;
	Tue, 07 May 2024 14:15:03 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Lal-0000000BQRb-1xJZ
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 14:14:59 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a59b81d087aso682760966b.3
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715091286; x=1715696086; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=88e0LLt+lrc5lZzN56km9yoOnQ7q4J8j+3agax3Pphk=;
        b=rxysbgu2aLY43NKDH976xwvxWFzgwoJkbKwWFXKfM4TL4cDbKIPk364bIqODa5rEsS
         IsUCeSd+aDgJ6PdtMt1rT1cc9H6VXdod7toL/zvvjdW3YBHOPT5pM3HEmWheZSBgOTa8
         mHU1pwU7Eh8//VwmH9qlUdwfFytf0o0sODGXsaXjlKic23UyPj5o2lZb2LPQ696Q+WyQ
         opRm4uY3SGq98SJ6mG9E7NeQ5/2IoPeaQul6A5IrZ9u0LWkeR4n6g/Ikz5rClRispbCD
         5IuLI8f7XYnWcCKq+4L7l2Oxdi6K2Z5xQH5WfaOIpUq9NMpGeFuoVrv+3RGtnWoULmdv
         DfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715091286; x=1715696086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=88e0LLt+lrc5lZzN56km9yoOnQ7q4J8j+3agax3Pphk=;
        b=Cj9HKYkqcD6gthbT/zWkoBIWKgkxRg53dDKqYA3aPQK/ni1yz1L4M4kjNjFYF6hkx7
         idMI+z0wl+ykHrJS+nbCT9pq+fIPyV7dXjduB/Y6wWY6yZ7LqsaMaNfB4sklGOOOhXSp
         8hUmQQVCoTYbykGR1ZlDFCHqvY14RoSiN7pMGU0FxBbRTfQo04HNYQbZBTa0mToXCWf5
         4rftIdzZhPLdD73adNfWJuBV/BN6jBspne7WynaE2y4jw1Vn0fbnqTXDCEpgO+JEDFmm
         BEbQikuX0C8o0aGlC/OmVq4bhJStyvKdZWTTolfVs6VwKrvangq2zAUB5Xy7IEcf/WR7
         yLhg==
X-Forwarded-Encrypted: i=1; AJvYcCW1pTFFAmOT4m542l6ttuaR5WX9tCsBwQT+zN/RSEqRkrRpaLBYnN/d2J0Mt2vCuwF4hE7cw9f12cBbX/gbNcayu+sKKrnNP/VllTmfwA==
X-Gm-Message-State: AOJu0Yy/thfm0fZCZzCxsk/1au2OMtdrlHhkQ9vUsZWD6TAxG65Imraw
	wyNTXq8tx3K561MDonibTwd/iJY+3042u2Xzf8eXpAmlfCifH30tYolDpMk+0+g=
X-Google-Smtp-Source: AGHT+IE1P/hHMY3LIT1bpJkBILATQnwiTaFH5rXHwp3HQxVrvpMWG51xBDNGqOT3Uqe8ATRtG5gVQQ==
X-Received: by 2002:a50:cd18:0:b0:572:a748:d46a with SMTP id z24-20020a50cd18000000b00572a748d46amr10471522edi.42.1715091286267;
        Tue, 07 May 2024 07:14:46 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id x2-20020a056402414200b00572cf08369asm5621928eda.23.2024.05.07.07.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 May 2024 07:14:45 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 May 2024 15:14:44 +0100
Subject: [PATCH 1/5] phy: exynos5-usbdrd: uniform order of register bit
 macros
MIME-Version: 1.0
Message-Id: <20240507-samsung-usb-phy-fixes-v1-1-4ccba5afa7cc@linaro.org>
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
X-CRM114-CacheID: sfid-20240507_071451_552482_6E973B9E 
X-CRM114-Status: UNSURE (   8.26  )
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

TW9zdCBvZiB0aGUgbWFjcm9zIGFyZSBvcmRlcmVkIGhpZ2ggLT4gbG93LCBidXQgdGhlcmUgYXJl
IHNvbWUKb3V0bGllcnMuCgpPcmRlciB0aGVtIGFsbCB1bmlmb3JtbHkgZnJvbSBoaWdoIHRvIGxv
dy4gVGhpcyB3aWxsIGFsbG93IGFkZGluZwphZGRpdGlvbmFsIHJlZ2lzdGVyIChmaWVsZCkgZGVm
aW5pdGlvbnMgaW4gYSBjb25zaXN0ZW50IHdheS4KCldoaWxlIGF0IGl0LCBhbHNvIHJlbW92ZSBz
b21lIGV4dHJhIGVtcHR5IGxpbmVzIHRvIGdyb3VwIHJlZ2lzdGVyIGJpdApmaWVsZCBkZWZpbml0
aW9ucyB0b2dldGhlciB3aXRoIHRoZSByZWxldmFudCByZWdpc3Rlci4gVGhpcyBtYWtlcyB0aGUK
cmVnaXN0ZXJzIGVhc2llciB0byBkaXN0aW5ndWlzaCB2aXN1YWxseS4KCk5vIGZ1bmN0aW9uYWwg
Y2hhbmdlLgoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGlu
YXJvLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIHwg
NDQgKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxNSBp
bnNlcnRpb25zKCspLCAyOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5
bm9zNS11c2JkcmQuYwppbmRleCAwNDE3MWVlZDViMTYuLjJhZjE5MmMxNWQ3OCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0zNSwxMyArMzUsMTEgQEAKIAog
LyogRXh5bm9zNTogVVNCIDMuMCBEUkQgUEhZIHJlZ2lzdGVycyAqLwogI2RlZmluZSBFWFlOT1M1
X0RSRF9MSU5LU1lTVEVNCQkJMHgwNAotCisjZGVmaW5lIExJTktTWVNURU1fWEhDSV9WRVJTSU9O
X0NPTlRST0wJCUJJVCgyNykKICNkZWZpbmUgTElOS1NZU1RFTV9GTEFESl9NQVNLCQkJKDB4M2Yg
PDwgMSkKICNkZWZpbmUgTElOS1NZU1RFTV9GTEFESihfeCkJCQkoKF94KSA8PCAxKQotI2RlZmlu
ZSBMSU5LU1lTVEVNX1hIQ0lfVkVSU0lPTl9DT05UUk9MCQlCSVQoMjcpCiAKICNkZWZpbmUgRVhZ
Tk9TNV9EUkRfUEhZVVRNSQkJCTB4MDgKLQogI2RlZmluZSBQSFlVVE1JX09UR0RJU0FCTEUJCQlC
SVQoNikKICNkZWZpbmUgUEhZVVRNSV9GT1JDRVNVU1BFTkQJCQlCSVQoMSkKICNkZWZpbmUgUEhZ
VVRNSV9GT1JDRVNMRUVQCQkJQklUKDApCkBAIC00OSw0MCArNDcsMzEgQEAKICNkZWZpbmUgRVhZ
Tk9TNV9EUkRfUEhZUElQRQkJCTB4MGMKIAogI2RlZmluZSBFWFlOT1M1X0RSRF9QSFlDTEtSU1QJ
CQkweDEwCi0KICNkZWZpbmUgUEhZQ0xLUlNUX0VOX1VUTUlTVVNQRU5ECQlCSVQoMzEpCi0KICNk
ZWZpbmUgUEhZQ0xLUlNUX1NTQ19SRUZDTEtTRUxfTUFTSwkJKDB4ZmYgPDwgMjMpCiAjZGVmaW5l
IFBIWUNMS1JTVF9TU0NfUkVGQ0xLU0VMKF94KQkJKChfeCkgPDwgMjMpCi0KICNkZWZpbmUgUEhZ
Q0xLUlNUX1NTQ19SQU5HRV9NQVNLCQkoMHgwMyA8PCAyMSkKICNkZWZpbmUgUEhZQ0xLUlNUX1NT
Q19SQU5HRShfeCkJCQkoKF94KSA8PCAyMSkKLQogI2RlZmluZSBQSFlDTEtSU1RfU1NDX0VOCQkJ
QklUKDIwKQogI2RlZmluZSBQSFlDTEtSU1RfUkVGX1NTUF9FTgkJCUJJVCgxOSkKICNkZWZpbmUg
UEhZQ0xLUlNUX1JFRl9DTEtESVYyCQkJQklUKDE4KQotCiAjZGVmaW5lIFBIWUNMS1JTVF9NUExM
X01VTFRJUExJRVJfTUFTSwkJKDB4N2YgPDwgMTEpCiAjZGVmaW5lIFBIWUNMS1JTVF9NUExMX01V
TFRJUExJRVJfMTAwTUhaX1JFRgkoMHgxOSA8PCAxMSkKICNkZWZpbmUgUEhZQ0xLUlNUX01QTExf
TVVMVElQTElFUl81ME1fUkVGCSgweDMyIDw8IDExKQogI2RlZmluZSBQSFlDTEtSU1RfTVBMTF9N
VUxUSVBMSUVSXzI0TUhaX1JFRgkoMHg2OCA8PCAxMSkKICNkZWZpbmUgUEhZQ0xLUlNUX01QTExf
TVVMVElQTElFUl8yME1IWl9SRUYJKDB4N2QgPDwgMTEpCiAjZGVmaW5lIFBIWUNMS1JTVF9NUExM
X01VTFRJUExJRVJfMTkyMDBLSFpfUkVGCSgweDAyIDw8IDExKQotCi0jZGVmaW5lIFBIWUNMS1JT
VF9GU0VMX1VUTUlfTUFTSwkJKDB4NyA8PCA1KQogI2RlZmluZSBQSFlDTEtSU1RfRlNFTF9QSVBF
X01BU0sJCSgweDcgPDwgOCkKKyNkZWZpbmUgUEhZQ0xLUlNUX0ZTRUxfVVRNSV9NQVNLCQkoMHg3
IDw8IDUpCiAjZGVmaW5lIFBIWUNMS1JTVF9GU0VMKF94KQkJCSgoX3gpIDw8IDUpCiAjZGVmaW5l
IFBIWUNMS1JTVF9GU0VMX1BBRF8xMDBNSFoJCSgweDI3IDw8IDUpCiAjZGVmaW5lIFBIWUNMS1JT
VF9GU0VMX1BBRF8yNE1IWgkJKDB4MmEgPDwgNSkKICNkZWZpbmUgUEhZQ0xLUlNUX0ZTRUxfUEFE
XzIwTUhaCQkoMHgzMSA8PCA1KQogI2RlZmluZSBQSFlDTEtSU1RfRlNFTF9QQURfMTlfMk1IWgkJ
KDB4MzggPDwgNSkKLQogI2RlZmluZSBQSFlDTEtSU1RfUkVURU5BQkxFTgkJCUJJVCg0KQotCiAj
ZGVmaW5lIFBIWUNMS1JTVF9SRUZDTEtTRUxfTUFTSwkJKDB4MDMgPDwgMikKICNkZWZpbmUgUEhZ
Q0xLUlNUX1JFRkNMS1NFTF9QQURfUkVGQ0xLCQkoMHgyIDw8IDIpCiAjZGVmaW5lIFBIWUNMS1JT
VF9SRUZDTEtTRUxfRVhUX1JFRkNMSwkJKDB4MyA8PCAyKQotCiAjZGVmaW5lIFBIWUNMS1JTVF9Q
T1JUUkVTRVQJCQlCSVQoMSkKICNkZWZpbmUgUEhZQ0xLUlNUX0NPTU1PTk9OTgkJCUJJVCgwKQog
CkBAIC0xMDAsMzAgKzg5LDI3IEBACiAjZGVmaW5lIFBIWVJFRzFfQ1JfQUNLCQkJCUJJVCgwKQog
CiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWVBBUkFNMAkJCTB4MWMKLQogI2RlZmluZSBQSFlQQVJB
TTBfUkVGX1VTRV9QQUQJCQlCSVQoMzEpCiAjZGVmaW5lIFBIWVBBUkFNMF9SRUZfTE9TTEVWRUxf
TUFTSwkJKDB4MWYgPDwgMjYpCiAjZGVmaW5lIFBIWVBBUkFNMF9SRUZfTE9TTEVWRUwJCQkoMHg5
IDw8IDI2KQogCiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWVBBUkFNMQkJCTB4MjAKLQogI2RlZmlu
ZSBQSFlQQVJBTTFfUENTX1RYREVFTVBIX01BU0sJCSgweDFmIDw8IDApCiAjZGVmaW5lIFBIWVBB
UkFNMV9QQ1NfVFhERUVNUEgJCQkoMHgxYykKIAogI2RlZmluZSBFWFlOT1M1X0RSRF9QSFlURVJN
CQkJMHgyNAogCiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWVRFU1QJCQkweDI4Ci0KICNkZWZpbmUg
UEhZVEVTVF9QT1dFUkRPV05fU1NQCQkJQklUKDMpCiAjZGVmaW5lIFBIWVRFU1RfUE9XRVJET1dO
X0hTUAkJCUJJVCgyKQogCiAjZGVmaW5lIEVYWU5PUzVfRFJEX1BIWUFEUAkJCTB4MmMKIAogI2Rl
ZmluZSBFWFlOT1M1X0RSRF9QSFlVVE1JQ0xLU0VMCQkweDMwCi0KICNkZWZpbmUgUEhZVVRNSUNM
S1NFTF9VVE1JX0NMS1NFTAkJQklUKDIpCiAKICNkZWZpbmUgRVhZTk9TNV9EUkRfUEhZUkVTVU1F
CQkJMHgzNAorCiAjZGVmaW5lIEVYWU5PUzVfRFJEX0xJTktQT1JUCQkJMHg0NAogCiAvKiBVU0Ig
My4wIERSRCBQSFkgU1MgRnVuY3Rpb24gQ29udHJvbCBSZWc7IGFjY2Vzc2VkIGJ5IENSX1BPUlQg
Ki8KQEAgLTE0NywyOCArMTMzLDI4IEBACiAKIC8qIEV4eW5vczg1MDogVVNCIERSRCBQSFkgcmVn
aXN0ZXJzICovCiAjZGVmaW5lIEVYWU5PUzg1MF9EUkRfTElOS0NUUkwJCQkweDA0Ci0jZGVmaW5l
IExJTktDVFJMX0JVU19GSUxURVJfQllQQVNTKF94KQkJKChfeCkgPDwgNCkKICNkZWZpbmUgTElO
S0NUUkxfRk9SQ0VfUUFDVAkJCUJJVCg4KQorI2RlZmluZSBMSU5LQ1RSTF9CVVNfRklMVEVSX0JZ
UEFTUyhfeCkJCSgoX3gpIDw8IDQpCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9DTEtSU1QJCQkw
eDIwCi0jZGVmaW5lIENMS1JTVF9MSU5LX1NXX1JTVAkJCUJJVCgwKQotI2RlZmluZSBDTEtSU1Rf
UE9SVF9SU1QJCQkJQklUKDEpCiAjZGVmaW5lIENMS1JTVF9QSFlfU1dfUlNUCQkJQklUKDMpCisj
ZGVmaW5lIENMS1JTVF9QT1JUX1JTVAkJCQlCSVQoMSkKKyNkZWZpbmUgQ0xLUlNUX0xJTktfU1df
UlNUCQkJQklUKDApCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9VVE1JCQkJMHg1MAotI2RlZmlu
ZSBVVE1JX0ZPUkNFX1NMRUVQCQkJQklUKDApCi0jZGVmaW5lIFVUTUlfRk9SQ0VfU1VTUEVORAkJ
CUJJVCgxKQotI2RlZmluZSBVVE1JX0RNX1BVTExET1dOCQkJQklUKDIpCi0jZGVmaW5lIFVUTUlf
RFBfUFVMTERPV04JCQlCSVQoMykKLSNkZWZpbmUgVVRNSV9GT1JDRV9CVkFMSUQJCQlCSVQoNCkK
ICNkZWZpbmUgVVRNSV9GT1JDRV9WQlVTVkFMSUQJCQlCSVQoNSkKKyNkZWZpbmUgVVRNSV9GT1JD
RV9CVkFMSUQJCQlCSVQoNCkKKyNkZWZpbmUgVVRNSV9EUF9QVUxMRE9XTgkJCUJJVCgzKQorI2Rl
ZmluZSBVVE1JX0RNX1BVTExET1dOCQkJQklUKDIpCisjZGVmaW5lIFVUTUlfRk9SQ0VfU1VTUEVO
RAkJCUJJVCgxKQorI2RlZmluZSBVVE1JX0ZPUkNFX1NMRUVQCQkJQklUKDApCiAKICNkZWZpbmUg
RVhZTk9TODUwX0RSRF9IU1AJCQkweDU0Ci0jZGVmaW5lIEhTUF9DT01NT05PTk4JCQkJQklUKDgp
Ci0jZGVmaW5lIEhTUF9FTl9VVE1JU1VTUEVORAkJCUJJVCg5KQotI2RlZmluZSBIU1BfVkJVU1ZM
REVYVAkJCQlCSVQoMTIpCi0jZGVmaW5lIEhTUF9WQlVTVkxERVhUU0VMCQkJQklUKDEzKQogI2Rl
ZmluZSBIU1BfRlNWX09VVF9FTgkJCQlCSVQoMjQpCisjZGVmaW5lIEhTUF9WQlVTVkxERVhUU0VM
CQkJQklUKDEzKQorI2RlZmluZSBIU1BfVkJVU1ZMREVYVAkJCQlCSVQoMTIpCisjZGVmaW5lIEhT
UF9FTl9VVE1JU1VTUEVORAkJCUJJVCg5KQorI2RlZmluZSBIU1BfQ09NTU9OT05OCQkJCUJJVCg4
KQogCiAjZGVmaW5lIEVYWU5PUzg1MF9EUkRfSFNQX1RFU1QJCQkweDVjCiAjZGVmaW5lIEhTUF9U
RVNUX1NJRERRCQkJCUJJVCgyNCkKCi0tIAoyLjQ1LjAucmMxLjIyNS5nMmEzYWU4N2U3Zi1nb29n
CgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5
Cg==
