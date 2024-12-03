Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB4D1E64A84
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UxwJE+MJMfiH1rzL3umObgd5ObTOQhZrUd449ekoYSM=; b=z7r+CygpCR0B6d
	qJVFim8K/uE3hNYY4xyFSG9AOqdYc0vOle9b/Yi2LfEET80PzclGmG3r5xE0cb3g3ed2bI0NAiQxv
	h+ekagWSkTXTYyftMje7E/R+UI5tlsYll4Wc7u3Y5Uboz81B84gpetXTcpsgr47CCpxaY4N8aahKc
	rh4hSFdrKsXXimwUl5o5TXiAiTZ/obSvss8BBOulypqUbQkd9He300JRMfjT7wjAQz1ro7+qxMz5M
	zaCDJvJMGRTfXyL826dgIkcPPFxC1ztv5P9XWTlVVIRf2MzuWrqb4QA3oXCIEoMSW8/d+vQd3Xjx9
	6AywqtwSzLFOX+4TkdKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRui-00000009Pc3-2hjv;
	Tue, 03 Dec 2024 12:22:00 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmu-00000009Nhq-3g8p
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:58 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5ceb03aadb1so6409454a12.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228035; x=1733832835; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uFpsvHW8LAP7lW2ogoOJaMBxsAjFS0igr/BkJ+LMT9c=;
        b=FfT1xiOvqPM07Wqtgxivikd+AlZmNLDoMT07+8NQ7YSZl4lROIgkUqM1wCFuqM60MB
         pxwVEl+ewohg9tFxrqH3L+nVxnVfJGv9KLFqlnxISKf2NGSOBgE9vml3qOFO8igH0E4w
         ksA1lZAe/zpvk4f1y2C06U7aTCmjoKcaf2NrWcdjdwcAntzQRwBNPJOkYcEjOYXfLIOi
         1xAWlbcrDTc55qRor56Xqj9DBfRKrREwCTHQkxSQIpIU0d6WZWR5+OMXqVUuNsUvNyAX
         ofq4EXMAbYarc0CaVDaAG8wjKYBpIT/kRwIXumBdk0MltIst1e2/xeNRmNgrLqHxaX+1
         1wZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228035; x=1733832835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFpsvHW8LAP7lW2ogoOJaMBxsAjFS0igr/BkJ+LMT9c=;
        b=kSvzfRXhO/jzzKHcZQAsBD5tyVbLgp7Lte1CNI9t0IctiV6+kqol2SHZMxX9rsxWxj
         /t5Sp6totJOJu6D14JlEe1TCRuWDVmsAj2+TTlvZc1gXqFFN+bEsiUWNizVlnI+DKsOo
         tLRZO59V1GoAKTEcaG293//F0ZhWahF7kbtVsoSL06xTfu29zIpfrtGt35iyJVLAgWgC
         4HxFwUs9deFZMmIJFzyl6+nqAUcXXxGVwaQE0l7puETYKMPtVe+t8CJgoo2+xxf9QkyN
         TrVs+q5NU18wzcXDU7QxM/UoTR9zexDXC1HEUMPgkuOC2ujCwUviqO4oonfJb7FIipJP
         XZsw==
X-Forwarded-Encrypted: i=1; AJvYcCXnbDQoa4BIgwG9PSQKRNI98AqBXxNKZxXRAyFZRAS8OjQf7nw64t6gMebeqek7bbxMZ8TsRJtnYZY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzpwrzZFbDGyQuN+mevd7u0KjwBCr/uiUcHCM+PQ0P0h5Pg3LC/
	HHc4TZmPStrUyGiocswVuHf3tUd/7Q3RVxfywY6Nt7Vlwgiar5OKSRBg1phLoSM=
X-Gm-Gg: ASbGncsTRCwq3u9eJ88ZOxFFq42vLZ1qFw52Tcg27JLeSr4JXr5I+rOvLSlT0yAtyoU
	bMVqBCkESqopgb+PJ+SKd6HKfURcgSAT0nCeBOvPFQ6/7WIeMYyzBsbD4S6hwaKNtanKA6oEsfT
	K4GBdtc94rooIx7iIq2PbLvNfZkhwy5E9bQwwMjkBFDtAQYsaGflvHd9ex5qhJkdUl4DKGL93OF
	mghcYTjetjQG7zfdz/gNtvSR9YLHLOZkOPEZ8CdFTdDbBWiVB9Bh78BUJjtKQDd45v4ZZ2SyDbp
	iRnlNZ1UAHREMmHlUSDVBCtVQ+L1iBL8Dw==
X-Google-Smtp-Source: AGHT+IGdrwALKg1GTwldZJOY7VYAVcWh5tQKqLrkKr8AXomCGAvvPrif7tTk5yapUjTCTN1a7cYNbg==
X-Received: by 2002:a17:906:4c1:b0:aa5:427e:6c76 with SMTP id a640c23a62f3a-aa5f7aaed08mr164681466b.0.1733228035286;
        Tue, 03 Dec 2024 04:13:55 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:54 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:56 +0000
Subject: [PATCH v2 8/8] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-8-40dcf1b7670d@linaro.org>
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
X-CRM114-CacheID: sfid-20241203_041356_956545_D24A5B58 
X-CRM114-Status: GOOD (  14.53  )
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
cy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRleCBiMTkxNGM2YzgwNmQuLjk0
ZTRmNzgzNDBmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11
c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBA
IC0xMTM3LDEzICsxMTM3LDE1IEBAIHN0YXRpYyB2b2lkIGV4eW5vczg1MF91c2JkcmRfdXRtaV9p
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
flNTUFBMTENUTF9GU0VMOwpAQCAtMTQwOCw5ICsxNDEwLDQ0IEBAIHN0YXRpYyBpbnQgZXh5bm9z
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
