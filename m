Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40A48C4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 09:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SrmSR6wtS3yCVMnU8DrQ5erODZOFIGvY1vL+z8381UM=; b=bcTaF7UIJ9m541
	thnQigO9u0viQNX313RtE12c1VKqFagUoWUMwoL9v18va4HxAiDfn4ScZj1c5V7afTs5KMYT0Okdc
	jjbBPz0Qi49skMTmcY+rfDWVEa50WI05Fg3+VqtkJdrEiTI6pHYuxwy5bdAtMUXHqb6HupxTPXsH/
	sVR5f9cyFJ8ImJ7b5anFQ6Okfr53HeKknovgy8U0DldnTcx1K+WxCrhPLZUodA52YvAk6aHoSPvec
	9qo+Rs+0pyTR3iSt9m6nbcgNTxkjrIIsmGzWTkgjXIC2Jy3j8Uo5oD9jhckvbgSKfLxL3Iep4v4Bh
	vGagcVmnnVXSKsgOP6Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s268E-00000008wwB-3TDw;
	Wed, 01 May 2024 09:20:06 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s267s-00000008wig-2S33
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 09:19:50 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a5544fd07easo874583066b.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 02:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714555180; x=1715159980; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AUeLm56aXaKJ3j7lV7reH0G/1KMdXe/YGgnuhtOmcYA=;
        b=RFu2vAI3jd9iD/E9DFTAv+1U2TG7ZVFbWYKQ7EYjpAqWmf3rlCQ48qhGHjLdPwIjDb
         c48uy3tdsxK0a0ykpnbb8B8O9At1WqZH8Fb2GI3TM5XJ7UEiw45cGJPAbsgwiQL86h58
         XLS4qg8Q423YGrNa+E7CT3BbWpEEuljblD5Vk04Ww6+a2SyxSEhnxT0vrQyRpql+w2dC
         PBZkqeSIq+JZvZ3ii0Kcu6rY3ezP2NaxYz0leuSkGzSGDi3Au7fkP7Rbk52cKHxSWbOx
         mJnPJp1seX2RsYrzJ7AM43ccP0upM4UmJW/LG20lt+NvKk8yuEqbKifryD2xxyjOo22j
         1fIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714555180; x=1715159980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUeLm56aXaKJ3j7lV7reH0G/1KMdXe/YGgnuhtOmcYA=;
        b=ctJAQQiIxXzpNkEN66tOd3Q/1TFylSbEKsVVLWnqC+mg1Em4vdzpGrNP66xIw1wx0W
         QdPbol3o8Di0x4QwQZ3mV4bzL31lJdlvSFZzl51yvTgVp2+tgLCMEv4Tsxq0MwDJlir4
         CJh52fIB0VM77QXUy2h3a/uVDXOhnVVRpeQo+W/6DG62YJf031nWXVrdrLe+JpKTDHX7
         kowIKcaYD5saeKlf4sOqRMYoplNoiepbynNKFs6vRsbM7yzQURxM8tue1bqRuQiK7r6x
         hejmCgyba4OicTtgiTBnenAlvJykdOssrpyUV04+ucpM93SSthkwhx9ZyJPmzEoq8zSr
         NmHw==
X-Forwarded-Encrypted: i=1; AJvYcCVxlcltTmf18X+Js/Wz+wUOCkZ3fvz/HLhVVCmlvWtglfJDSIT2Z8irTnbSbIOGPfdt4LJQhveMA0IZ1ZFLapIZ6h5JEEwsdu79z3wsvQ==
X-Gm-Message-State: AOJu0YzL/jkrYgAONFmoIwH00jjqLDMJMMbdkneyvZj57YdruQwVQuWG
	+s/377MLdLsdZxy+P/Vj4+CtuVn/Liuhx2iCgnpADA1J0+W+rADaRQ9fhnCWapI=
X-Google-Smtp-Source: AGHT+IFtv+d0KYeiBc0zvVXr50XHiQxtl/aTHZVrGYJIG31OJxdDdNjjVQB2H56WV1MWD+r5jjzDrw==
X-Received: by 2002:a17:906:5603:b0:a58:a37d:7192 with SMTP id f3-20020a170906560300b00a58a37d7192mr1324135ejq.76.1714555179815;
        Wed, 01 May 2024 02:19:39 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id bw13-20020a170906c1cd00b00a58de09fd92sm5425674ejb.27.2024.05.01.02.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 02:19:39 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 01 May 2024 10:19:40 +0100
Subject: [PATCH v2 5/7] phy: exynos5-usbdrd: uniform order of register bit
 macros
MIME-Version: 1.0
Message-Id: <20240501-usb-phy-gs101-v2-5-ed9f14a1bd6d@linaro.org>
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
X-CRM114-CacheID: sfid-20240501_021944_879529_737AEACA 
X-CRM114-Status: UNSURE (   9.32  )
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
bm9zNS11c2JkcmQuYwppbmRleCA0ZjMwY2VkNDM5YjkuLjIwMDI4NWZhODIzYiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJz
L3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0zNiwxMyArMzYsMTEgQEAKIAog
LyogRXh5bm9zNTogVVNCIDMuMCBEUkQgUEhZIHJlZ2lzdGVycyAqLwogI2RlZmluZSBFWFlOT1M1
X0RSRF9MSU5LU1lTVEVNCQkJMHgwNAotCisjZGVmaW5lIExJTktTWVNURU1fWEhDSV9WRVJTSU9O
X0NPTlRST0wJCUJJVCgyNykKICNkZWZpbmUgTElOS1NZU1RFTV9GTEFESl9NQVNLCQkJKDB4M2Yg
PDwgMSkKICNkZWZpbmUgTElOS1NZU1RFTV9GTEFESihfeCkJCQkoKF94KSA8PCAxKQotI2RlZmlu
ZSBMSU5LU1lTVEVNX1hIQ0lfVkVSU0lPTl9DT05UUk9MCQlCSVQoMjcpCiAKICNkZWZpbmUgRVhZ
Tk9TNV9EUkRfUEhZVVRNSQkJCTB4MDgKLQogI2RlZmluZSBQSFlVVE1JX09UR0RJU0FCTEUJCQlC
SVQoNikKICNkZWZpbmUgUEhZVVRNSV9GT1JDRVNVU1BFTkQJCQlCSVQoMSkKICNkZWZpbmUgUEhZ
VVRNSV9GT1JDRVNMRUVQCQkJQklUKDApCkBAIC01MCw0MCArNDgsMzEgQEAKICNkZWZpbmUgRVhZ
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
CkBAIC0xMDEsMzAgKzkwLDI3IEBACiAjZGVmaW5lIFBIWVJFRzFfQ1JfQUNLCQkJCUJJVCgwKQog
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
Ki8KQEAgLTE0OCwzMSArMTM0LDMxIEBACiAKIC8qIEV4eW5vczg1MDogVVNCIERSRCBQSFkgcmVn
aXN0ZXJzICovCiAjZGVmaW5lIEVYWU5PUzg1MF9EUkRfTElOS0NUUkwJCQkweDA0Ci0jZGVmaW5l
IExJTktDVFJMX0JVU19GSUxURVJfQllQQVNTKF94KQkJKChfeCkgPDwgNCkKICNkZWZpbmUgTElO
S0NUUkxfRk9SQ0VfUUFDVAkJCUJJVCg4KQorI2RlZmluZSBMSU5LQ1RSTF9CVVNfRklMVEVSX0JZ
UEFTUyhfeCkJCSgoX3gpIDw8IDQpCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9DTEtSU1QJCQkw
eDIwCi0jZGVmaW5lIENMS1JTVF9MSU5LX1NXX1JTVAkJCUJJVCgwKQotI2RlZmluZSBDTEtSU1Rf
UE9SVF9SU1QJCQkJQklUKDEpCiAjZGVmaW5lIENMS1JTVF9QSFlfU1dfUlNUCQkJQklUKDMpCisj
ZGVmaW5lIENMS1JTVF9QT1JUX1JTVAkJCQlCSVQoMSkKKyNkZWZpbmUgQ0xLUlNUX0xJTktfU1df
UlNUCQkJQklUKDApCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9TU1BQTExDVEwJCQkweDMwCiAj
ZGVmaW5lIFNTUFBMTENUTF9GU0VMCQkJCUdFTk1BU0soMiwgMCkKIAogI2RlZmluZSBFWFlOT1M4
NTBfRFJEX1VUTUkJCQkweDUwCi0jZGVmaW5lIFVUTUlfRk9SQ0VfU0xFRVAJCQlCSVQoMCkKLSNk
ZWZpbmUgVVRNSV9GT1JDRV9TVVNQRU5ECQkJQklUKDEpCi0jZGVmaW5lIFVUTUlfRE1fUFVMTERP
V04JCQlCSVQoMikKLSNkZWZpbmUgVVRNSV9EUF9QVUxMRE9XTgkJCUJJVCgzKQotI2RlZmluZSBV
VE1JX0ZPUkNFX0JWQUxJRAkJCUJJVCg0KQogI2RlZmluZSBVVE1JX0ZPUkNFX1ZCVVNWQUxJRAkJ
CUJJVCg1KQorI2RlZmluZSBVVE1JX0ZPUkNFX0JWQUxJRAkJCUJJVCg0KQorI2RlZmluZSBVVE1J
X0RQX1BVTExET1dOCQkJQklUKDMpCisjZGVmaW5lIFVUTUlfRE1fUFVMTERPV04JCQlCSVQoMikK
KyNkZWZpbmUgVVRNSV9GT1JDRV9TVVNQRU5ECQkJQklUKDEpCisjZGVmaW5lIFVUTUlfRk9SQ0Vf
U0xFRVAJCQlCSVQoMCkKIAogI2RlZmluZSBFWFlOT1M4NTBfRFJEX0hTUAkJCTB4NTQKLSNkZWZp
bmUgSFNQX0NPTU1PTk9OTgkJCQlCSVQoOCkKLSNkZWZpbmUgSFNQX0VOX1VUTUlTVVNQRU5ECQkJ
QklUKDkpCi0jZGVmaW5lIEhTUF9WQlVTVkxERVhUCQkJCUJJVCgxMikKLSNkZWZpbmUgSFNQX1ZC
VVNWTERFWFRTRUwJCQlCSVQoMTMpCiAjZGVmaW5lIEhTUF9GU1ZfT1VUX0VOCQkJCUJJVCgyNCkK
KyNkZWZpbmUgSFNQX1ZCVVNWTERFWFRTRUwJCQlCSVQoMTMpCisjZGVmaW5lIEhTUF9WQlVTVkxE
RVhUCQkJCUJJVCgxMikKKyNkZWZpbmUgSFNQX0VOX1VUTUlTVVNQRU5ECQkJQklUKDkpCisjZGVm
aW5lIEhTUF9DT01NT05PTk4JCQkJQklUKDgpCiAKICNkZWZpbmUgRVhZTk9TODUwX0RSRF9IU1Bf
VEVTVAkJCTB4NWMKICNkZWZpbmUgSFNQX1RFU1RfU0lERFEJCQkJQklUKDI0KQoKLS0gCjIuNDUu
MC5yYzAuMTk3LmdiYWU1ODQwYjNiLWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
