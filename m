Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9D06E77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rOcFIlJgK/rOjFoTiogTrCVUI07hqZSu4zKgw1Ck+OU=; b=KudMb+VDLGR1z6
	SgrwRQioDsrSfPS9us7Za5t7DAzCjeHloMfk6TX0ECahiqQtAwwfDARFH+KJh2YArbaFo/ePwNf4/
	pzrDoMxbNQW40x+XVtl7+MnR4JSkauQJ4Ps5VR0WzYmlR4BdX8Zvd8fISQNtuCllBS7nTGRzHYsPj
	BRON8ylXTgM36JTfMoMuX80LwRlLfhRVTbys+10TyIsA7QJxLNAN4s2sIoDcJDCGfU/SawG1A4gA5
	UvFK7HFaURqKl4d6ubjK7hP0pPZcy6BG2ApeKRXP+ad+GIzslmAbAXT8h5bPDiSQezFI0njWuE4uJ
	Y5IHLkDqTCt7U560zIsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbLS-00000002CJe-2594;
	Fri, 06 Dec 2024 16:38:22 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEQ-00000002AGA-2wlp
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:09 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-aa51b8c5f4dso164923866b.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502665; x=1734107465; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uFUL3kCwx3cUbzg7B5UVd/jZ4AQMlp0js1yIPxGumCU=;
        b=U1RMAdwDHmwwJ/9S4iAJ+o3H7Q8+HWcWVhzfwXmQH7fLJrl6Ju+KdIULNhQw9jCnXf
         QGy2vOTod93SGUxi2uyDXJR+hf3iijB52xzt7d5kzPuGHjPL0iqYUjyOuxPnC1h6TdBV
         ttE56Z197btBsm3o3/ijmt0Gl8q3l49JKqdhvQ/3hQTuGVxDx2fDGInUc+AhYO1FDF4X
         mQhzuHG8IgocPVD7s2jgd325ax2cFP3t7WbF70fTXQt6O+RknCX6cFShd3yHuJU1oEwf
         qcWzb0X5rYjNKNuIKv2KqP4Jp38tJGiJ0ML3x6cQ/Isf/kPTbLhTSaDT4Fp5JVl6Ymoy
         lL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502665; x=1734107465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uFUL3kCwx3cUbzg7B5UVd/jZ4AQMlp0js1yIPxGumCU=;
        b=T7vMLrnCF9DTH9qmHQ81GVE5osjHfxGcEFQY93jUGctB1lG2wW08Gf1Ny/miwyDOwn
         V9ro0gPllFiSqTVTGeJ/xp0+kqiYabLLPJilOQW45BsoDh7Snw+mm9Cl0SwYxNrCK5oC
         C510OrfF1gY6L0O8OkjHwohwIfTH2XdR5LnPVJqCdXooKVyGzLPzgc4RK/fLLQd6x4z8
         /Ybg+9ISc7nbgZ/biUrhTWAURBTrykod4MSt1dci+enlZvUvDdNaRNLaXIqjL5EbePhG
         L9J5jk+47i0tJBTJPU1TXINUq+y6oRFcjx9+T8DYzOvC++6+9hA9cA2Wb0lrE+C1CYjL
         /5Pg==
X-Forwarded-Encrypted: i=1; AJvYcCUTcGA2GGGZC4G+n31XMckaCH/03TC8E2o6ESef4673dfHsnsSej4Pw+mg1N4WCPYYl0TRR2WPFAqE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyVTvpxeVSxPAFeDKRWw7plyDRK2jnMKaVSeDlJpXxlm7CwVZsI
	BILeaXpH+nbkOU7to8vO8G6xb6wvnPr6atKOSBN+ds6BA9eQhK3D+Ku4negYO5g=
X-Gm-Gg: ASbGncs+OjDsFFmmm62cMkrIAXkRgKbVuCOBA36C1g0z4nX/439UTbBG5SfjPIw8DHx
	EzfPenMvKmf0ybhnKWxjVzXjT/8Ion1G2VnMQvx7UxF9JQnASAsGiBcoGAIAMC9yrvFyUV0D7aT
	9S1OUe8qEnamYovCFOrH9zfZ3u3BsC9cv3TyjZ2URHhF8ZHInayuHF8eRuv1baT3egmu5vL5+si
	YIGsJM+8RPRX8zSi4iMfovS3kVtKq1d9nQTGuFAUNEnEYx6SxjLVhgBYa4v6TQTl7Ga4Cg/XFnH
	AYBB4VI9jFSBLHW+GurgWq72ZEVsD447pg==
X-Google-Smtp-Source: AGHT+IFdGgwrC3n71nQi/9MjgKXvQ3xt8s29XoT1ICJHQ14fSF1EZzWFJtu/VD99oVNhBiVQ1DgX2Q==
X-Received: by 2002:a17:906:310d:b0:aa6:2ff8:d62d with SMTP id a640c23a62f3a-aa63a2419ccmr313287766b.45.1733502665369;
        Fri, 06 Dec 2024 08:31:05 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:05 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:07 +0000
Subject: [PATCH v4 7/7] phy: exynos5-usbdrd: allow DWC3 runtime suspend
 with UDC bound (E850+)
MIME-Version: 1.0
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-7-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
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
X-CRM114-CacheID: sfid-20241206_083106_754088_A789D8ED 
X-CRM114-Status: GOOD (  13.35  )
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
emlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgotLS0KdjM6CiogdXBkYXRlIGV4eW5vczVf
dXNiZHJkX29yaWVuX3N3X3NldCgpIHRvIG5vdCB0ZXN0IGFnYWluc3QgcHJldmlvdXMKICBvcmll
bnRhdGlvbgotLS0KIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA1
MCArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQyIGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYyBiL2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5v
czUtdXNiZHJkLmMKaW5kZXggOGZjMTU4NDdjZmQ4Li5iYWMxZGM5MjdiMjYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKKysrIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwpAQCAtMTEzNywxMyArMTEzNywxNSBAQCBz
dGF0aWMgdm9pZCBleHlub3M4NTBfdXNiZHJkX3V0bWlfaW5pdChzdHJ1Y3QgZXh5bm9zNV91c2Jk
cmRfcGh5ICpwaHlfZHJkKQogCXJlZyB8PSBMSU5LQ1RSTF9CVVNfRklMVEVSX0JZUEFTUygweGYp
OwogCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfTElOS0NUUkwpOwogCi0J
cmVnID0gcmVhZGwocmVnc19iYXNlICsgRVhZTk9TODUwX0RSRF9VVE1JKTsKLQlyZWcgfD0gVVRN
SV9GT1JDRV9CVkFMSUQgfCBVVE1JX0ZPUkNFX1ZCVVNWQUxJRDsKLQl3cml0ZWwocmVnLCByZWdz
X2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VUTUkpOwotCi0JcmVnID0gcmVhZGwocmVnc19iYXNlICsg
RVhZTk9TODUwX0RSRF9IU1ApOwotCXJlZyB8PSBIU1BfVkJVU1ZMREVYVCB8IEhTUF9WQlVTVkxE
RVhUU0VMOwotCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwlp
ZiAoIXBoeV9kcmQtPnN3KSB7CisJCXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9E
UkRfVVRNSSk7CisJCXJlZyB8PSBVVE1JX0ZPUkNFX0JWQUxJRCB8IFVUTUlfRk9SQ0VfVkJVU1ZB
TElEOworCQl3cml0ZWwocmVnLCByZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VUTUkpOworCisJ
CXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwkJcmVnIHw9IEhT
UF9WQlVTVkxERVhUIHwgSFNQX1ZCVVNWTERFWFRTRUw7CisJCXdyaXRlbChyZWcsIHJlZ3NfYmFz
ZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwl9CiAKIAlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBF
WFlOT1M4NTBfRFJEX1NTUFBMTENUTCk7CiAJcmVnICY9IH5TU1BQTExDVExfRlNFTDsKQEAgLTE0
MDQsOSArMTQwNiw0MSBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX29yaWVuX3N3X3NldChz
dHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3csCiAJCQkJICAgICAgIGVudW0gdHlwZWNfb3JpZW50
YXRpb24gb3JpZW50YXRpb24pCiB7CiAJc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeSAqcGh5X2Ry
ZCA9IHR5cGVjX3N3aXRjaF9nZXRfZHJ2ZGF0YShzdyk7CisJaW50IHJldDsKKworCXJldCA9IGNs
a19idWxrX3ByZXBhcmVfZW5hYmxlKHBoeV9kcmQtPmRydl9kYXRhLT5uX2Nsa3MsIHBoeV9kcmQt
PmNsa3MpOworCWlmIChyZXQpIHsKKwkJZGV2X2VycihwaHlfZHJkLT5kZXYsICJGYWlsZWQgdG8g
ZW5hYmxlIFBIWSBjbG9ja3MocylcbiIpOworCQlyZXR1cm4gcmV0OworCX0KKworCXNjb3BlZF9n
dWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkgeworCQl2b2lkIF9faW9tZW0gKiBjb25z
dCByZWdzX2Jhc2UgPSBwaHlfZHJkLT5yZWdfcGh5OworCQl1bnNpZ25lZCBpbnQgcmVnOworCisJ
CWlmIChvcmllbnRhdGlvbiA9PSBUWVBFQ19PUklFTlRBVElPTl9OT05FKSB7CisJCQlyZWcgPSBy
ZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX1VUTUkpOworCQkJcmVnICY9IH4oVVRNSV9G
T1JDRV9WQlVTVkFMSUQgfCBVVE1JX0ZPUkNFX0JWQUxJRCk7CisJCQl3cml0ZWwocmVnLCByZWdz
X2Jhc2UgKyAgRVhZTk9TODUwX0RSRF9VVE1JKTsKKworCQkJcmVnID0gcmVhZGwocmVnc19iYXNl
ICsgRVhZTk9TODUwX0RSRF9IU1ApOworCQkJcmVnIHw9IEhTUF9WQlVTVkxERVhUU0VMOworCQkJ
cmVnICY9IH5IU1BfVkJVU1ZMREVYVDsKKwkJCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArIEVYWU5P
Uzg1MF9EUkRfSFNQKTsKKwkJfSBlbHNlIHsKKwkJCXJlZyA9IHJlYWRsKHJlZ3NfYmFzZSArIEVY
WU5PUzg1MF9EUkRfVVRNSSk7CisJCQlyZWcgfD0gVVRNSV9GT1JDRV9WQlVTVkFMSUQgfCBVVE1J
X0ZPUkNFX0JWQUxJRDsKKwkJCXdyaXRlbChyZWcsIHJlZ3NfYmFzZSArICBFWFlOT1M4NTBfRFJE
X1VUTUkpOworCisJCQlyZWcgPSByZWFkbChyZWdzX2Jhc2UgKyBFWFlOT1M4NTBfRFJEX0hTUCk7
CisJCQlyZWcgfD0gSFNQX1ZCVVNWTERFWFRTRUwgfCBIU1BfVkJVU1ZMREVYVDsKKwkJCXdyaXRl
bChyZWcsIHJlZ3NfYmFzZSArIEVYWU5PUzg1MF9EUkRfSFNQKTsKKwkJfQogCi0Jc2NvcGVkX2d1
YXJkKG11dGV4LCAmcGh5X2RyZC0+cGh5X211dGV4KQogCQlwaHlfZHJkLT5vcmllbnRhdGlvbiA9
IG9yaWVudGF0aW9uOworCX0KKworCWNsa19idWxrX2Rpc2FibGUocGh5X2RyZC0+ZHJ2X2RhdGEt
Pm5fY2xrcywgcGh5X2RyZC0+Y2xrcyk7CiAKIAlyZXR1cm4gMDsKIH0KCi0tIAoyLjQ3LjAuMzM4
Lmc2MGNjYTE1ODE5LWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
