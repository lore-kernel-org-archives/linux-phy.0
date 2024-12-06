Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F22E77173
	for <linux-phy@archiver.kernel.org>; Fri,  6 Dec 2024 16:37:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfYoGc/K8S74HEotv6P0zBm2OjWx1FbOhaTNbiRY0lM=; b=1pVL4R9XnNaZq4
	Ifi1xHuCAhd9z5VQsskSj9BwmwM8klqdeYr/OSKU5A0gO5b0OB53cMFLuZYwh1hfi4h37l3sVdoAQ
	XflbnKjJI30vaM5cUpeX5/Rz06DtpBHIfiRo+nvqlD+agBxlN9bR1drNCOb7SV4cKcz75Ko3CtB+L
	k43v5ovZORLjair05RftMGS+IIaTk++UkRvyejgpOptOgJoW4xG/eGMHpzpYahswGMu6L1MlhUule
	WEpSy727+Fqj9PgLnIj74urnTLsGn0Bs05ylWuwVU+C+PFZ3oMv+BztASj6q0eelXj2aw20/XhTux
	u1sujoAOChIZXvfbTBMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbKR-00000002C3l-2Ghm;
	Fri, 06 Dec 2024 16:37:19 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJbEQ-00000002AF4-1CIn
	for linux-phy@lists.infradead.org;
	Fri, 06 Dec 2024 16:31:08 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-aa5325af6a0so356924966b.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Dec 2024 08:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502665; x=1734107465; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LXCLmnvsdZndLgej1FOJpSFQm/25z8Ym6KzN52uYasw=;
        b=McPxZ9z8Pa71EdrFKQvo/Gr9RgYXjsJqqpD9flocWiIxoSTsBqut7/pLGKKesdR4jA
         HH4SDCfoxGQGWALCr+RrMLkKtCxF6PHzzMZVTEVpE2T8eyTTeS5wT6t9q0JLMLoMQKB0
         OjIrlXhAklEzYnHgtGZ8wd6+TCudJlqJmG4+NgOnaA1o/dYRn+fiYa4pReMzPOavsMpp
         JIyd9gp3VpwVhyGOX7Cgd+dKBwGOoZNlipzFSDO05u1C9q5rvIT4KybdjZ6nsvYQvjR8
         mPoEMQ2ThxHhMpGcsrcXWIQoC3Uh4IW6dALI8ESyWj6f3vVNc4gebdgUI0Q/5k0Gnex7
         ygTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502665; x=1734107465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LXCLmnvsdZndLgej1FOJpSFQm/25z8Ym6KzN52uYasw=;
        b=Fax1+dme+xkY51/EIrCpMATg8GN926HC1QD+H8FG5ZKs+o8fFv7e8vgDSdfC9BiHwV
         LEkw/I56SU6hMEmCbsPFJ14tOLxQK30VDUM2x5ZySNir0mRKse95rfVdA4mKg55iRSE/
         PjOFxuk+YIhfiisrDqFdixyezhp6A6XLq+LHd24eXgxTXCpyO3+/h1cZDHumxq0kxCPD
         FlaZZ0p+ovtwF40dTYPByoSYJKPaLIo7q65MwXeiQr6nJIugHhH17T/oh+o3eRPR1Bk8
         nWP1+skmgUmH6hnZsRA9y2oNE45oluAwiN9GaVn6PepaBlpsbum/IHKZXB6BJbb+YK2W
         vMag==
X-Forwarded-Encrypted: i=1; AJvYcCWg6J+RnfpxOTly/aWbXSQGmmcbTIYh0YvDfaLAY1UA+/Htl99B8LXJ6GLe/618XkgAFbC/EKBk/qk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOb47lFMOnrxKHBvGY86ltSph9M8sq3aYZ+yC9K5hBrIuzyEUT
	rF9VSKJpbqPSoGY6MoK8/b8c6AOQCogdyUooqG2kAmXnhEpXslOwnEojpz4Tx6o=
X-Gm-Gg: ASbGncuuRH8cpC6ylFKCDzi+sB3Krpa9cVnDsymICBfronAEzzkVBQxRFToCLhuyyAz
	8U6QCjP6oLxxWAUebiZeLJDbTGVUYkxDvyj7kujWlTGT4f3LlTFFwBbXPUnBBE8uiKSZjBhDB+B
	gnGEiL2PqtxNYirtw/KoX+DZP1TptuXWRFwCLucuTMXz1BqyDL6pgO3oc46KkM+HW5IlgNBKoIm
	tB0t4kfr6JNLeXk5RpzJlZrKbnmtqn7eqDcerSuEUBa8/mIoROPvgQgKoKUOtSr2FxkRgv36KFy
	+PE7IELCOhVPFSVFU2PIzpTAMD155e6bgg==
X-Google-Smtp-Source: AGHT+IE3dSSPOFbEcuaDJ4aqvtGwpINMyqS4vaGKxwRrqFEWJNjc/LOYtTgNWvcadsFJ1ENxhoDVuw==
X-Received: by 2002:a17:907:6196:b0:aa4:a3be:28dd with SMTP id a640c23a62f3a-aa63a254ab9mr340005666b.55.1733502664857;
        Fri, 06 Dec 2024 08:31:04 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:04 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:06 +0000
Subject: [PATCH v4 6/7] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
MIME-Version: 1.0
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-6-f5961268b149@linaro.org>
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
X-CRM114-CacheID: sfid-20241206_083106_317106_5CD04510 
X-CRM114-Status: GOOD (  20.34  )
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

Z3MxMDEncyBTUyBwaHkgbmVlZHMgdG8gYmUgY29uZmlndXJlZCBkaWZmZXJlbnRseSBiYXNlZCBv
biB0aGUKY29ubmVjdG9yIG9yaWVudGF0aW9uLCBhcyB0aGUgU1MgbGluayBjYW4gb25seSBiZSBl
c3RhYmxpc2hlZCBpZiB0aGUKbXV4IGlzIGNvbmZpZ3VyZWQgY29ycmVjdGx5LgoKVGhlIGNvZGUg
dG8gaGFuZGxlIHByb2dyYW1taW5nIG9mIHRoZSBtdXggaXMgaW4gcGxhY2UgYWxyZWFkeSwgdGhp
cyBjb21taXQKbm93IGFkZHMgdGhlIG1pc3NpbmcgcGllY2VzIHRvIHN1YnNjcmliZSB0byB0aGUg
VHlwZS1DIG9yaWVudGF0aW9uCnN3aXRjaCBldmVudC4KCk5vdGUgdGhhdCBmb3IgdGhpcyBhbGwg
dG8gd29yayB3ZSByZWx5IG9uIHRoZSBVU0IgY29udHJvbGxlcgpyZS1pbml0aWFsaXNpbmcgdXMu
IEl0IHNob3VsZCBpbnZva2Ugb3VyIC5leGl0KCkgdXBvbiBjYWJsZSB1bnBsdWcsIGFuZApkdXJp
bmcgY2FibGUgcGx1ZyB3ZSdsbCByZWNlaXZlIHRoZSBvcmllbnRhdGlvbiBldmVudCBhZnRlciB3
aGljaCB3ZQpleHBlY3Qgb3VyIC5pbml0KCkgdG8gYmUgY2FsbGVkLgoKQWJvdmUgcmVpbml0aWFs
aXNhdGlvbiBoYXBwZW5zIGlmIHRoZSBEV0MzIGNvbnRyb2xsZXIgY2FuIGVudGVyIHJ1bnRpbWUK
c3VzcGVuZCBhdXRvbWF0aWNhbGx5LiBGb3IgdGhlIERXQzMgZHJpdmVyLCB0aGlzIGlzIGFuIG9w
dC1pbjoKICAgIGVjaG8gYXV0byA+IC9zeXMvZGV2aWNlcy8uLi4vMTExMTAwMDAudXNiL3Bvd2Vy
L2NvbnRyb2wKT25jZSBkb25lLCB0aGluZ3Mgd29yayBhcyBsb25nIGFzIHRoZSBVREMgaXMgbm90
IGJvdW5kIGFzIG90aGVyd2lzZSBpdApzdGF5cyBidXN5IGJlY2F1c2UgaXQgZG9lc24ndCBjYW5j
ZWwgLyBzdG9wIG91dHN0YW5kaW5nIFRSQnMuIEZvciBub3cKd2UgaGF2ZSB0byBtYW51YWxseSB1
bmJpbmQgdGhlIFVEQyBpbiB0aGF0IGNhc2U6CiAgICAgZWNobyAiIiA+IHN5cy9rZXJuZWwvY29u
ZmlnL3VzYl9nYWRnZXQvLi4uL1VEQwoKTm90ZSB0aGF0IGlmIHRoZSBvcmllbnRhdGlvbi1zd2l0
Y2ggcHJvcGVydHkgaXMgbWlzc2luZyBmcm9tIHRoZSBEVCwKdGhlIGNvZGUgd2lsbCBiZWhhdmUg
YXMgYmVmb3JlIHRoaXMgY29tbWl0IChtZWFuaW5nIGZvciBnczEwMSBpdCB3aWxsCndvcmsgaW4g
U1MgbW9kZSBpbiBvbmUgb3JpZW50YXRpb24gb25seSkuIE90aGVyIHBsYXRmb3JtcyBhcmUgbm90
CmFmZmVjdGVkIGVpdGhlciB3YXkuCgpTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5k
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0tCnYzOgoqIGRyb3AgaW5pdCB0byAtMSBvZiBwaHlf
ZHJkLT5vcmllbnRhdGlvbiAoVmlub2QpCiogYXZvaWQgI2lmZGVmIGFuZCBzd2l0Y2ggdG8gbm9y
bWFsIGNvbmRpdGlvbmFsIElTX0VOQUJMRUQoKSBmb3IKICBDT05GSUdfVFlQRUMKCnYyOgoqIG1v
dmUgI2luY2x1ZGUgdHlwZWNfbXV4LmggZnJvbSBwYXJlbnQgcGF0Y2ggaW50byB0aGlzIG9uZSAo
UGV0ZXIpCi0tLQogZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICAgICB8ICAx
ICsKIGRyaXZlcnMvcGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA1NiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9LY29uZmlnCmluZGV4IGYxMGFmYTNkN2ZmNS4uZmM3YmQxMDg4NTc2IDEwMDY0
NAotLS0gYS9kcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcKKysrIGIvZHJpdmVycy9waHkvc2Ft
c3VuZy9LY29uZmlnCkBAIC04MCw2ICs4MCw3IEBAIGNvbmZpZyBQSFlfRVhZTk9TNV9VU0JEUkQK
IAl0cmlzdGF0ZSAiRXh5bm9zNSBTb0Mgc2VyaWVzIFVTQiBEUkQgUEhZIGRyaXZlciIKIAlkZXBl
bmRzIG9uIChBUkNIX0VYWU5PUyAmJiBPRikgfHwgQ09NUElMRV9URVNUCiAJZGVwZW5kcyBvbiBI
QVNfSU9NRU0KKwlkZXBlbmRzIG9uIFRZUEVDIHx8IChUWVBFQz1uICYmIENPTVBJTEVfVEVTVCkK
IAlkZXBlbmRzIG9uIFVTQl9EV0MzX0VYWU5PUwogCXNlbGVjdCBHRU5FUklDX1BIWQogCXNlbGVj
dCBNRkRfU1lTQ09OCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1
LXVzYmRyZC5jIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRl
eCA2MWUwZGU0YjNkNGIuLjhmYzE1ODQ3Y2ZkOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ft
c3VuZy9waHktZXh5bm9zNS11c2JkcmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1l
eHlub3M1LXVzYmRyZC5jCkBAIC0yNCw2ICsyNCw3IEBACiAjaW5jbHVkZSA8bGludXgvcmVndWxh
dG9yL2NvbnN1bWVyLmg+CiAjaW5jbHVkZSA8bGludXgvc29jL3NhbXN1bmcvZXh5bm9zLXJlZ3Mt
cG11Lmg+CiAjaW5jbHVkZSA8bGludXgvdXNiL3R5cGVjLmg+CisjaW5jbHVkZSA8bGludXgvdXNi
L3R5cGVjX211eC5oPgogCiAvKiBFeHlub3MgVVNCIFBIWSByZWdpc3RlcnMgKi8KICNkZWZpbmUg
RVhZTk9TNV9GU0VMXzlNSFo2CQkweDAKQEAgLTM5NCw2ICszOTUsNyBAQCBzdHJ1Y3QgZXh5bm9z
NV91c2JkcmRfcGh5X2RydmRhdGEgewogICogQGV4dHJlZmNsazogZnJlcXVlbmN5IHNlbGVjdCBz
ZXR0aW5ncyB3aGVuIHVzaW5nICdzZXBhcmF0ZQogICoJICAgICAgIHJlZmVyZW5jZSBjbG9ja3Mn
IGZvciBTUyBhbmQgSFMgb3BlcmF0aW9ucwogICogQHJlZ3VsYXRvcnM6IHJlZ3VsYXRvcnMgZm9y
IHBoeQorICogQHN3OiBUeXBlQyBvcmllbnRhdGlvbiBzd2l0Y2ggaGFuZGxlCiAgKiBAb3JpZW50
YXRpb246IFR5cGVDIGNvbm5lY3RvciBvcmllbnRhdGlvbiAtIG5vcm1hbCBvciBmbGlwcGVkCiAg
Ki8KIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgewpAQCAtNDE1LDYgKzQxNyw3IEBAIHN0cnVj
dCBleHlub3M1X3VzYmRyZF9waHkgewogCXUzMiBleHRyZWZjbGs7CiAJc3RydWN0IHJlZ3VsYXRv
cl9idWxrX2RhdGEgKnJlZ3VsYXRvcnM7CiAKKwlzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3c7
CiAJZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlvbjsKIH07CiAKQEAgLTEzOTcsNiAr
MTQwMCw1NSBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9jbGtfaGFuZGxlKHN0cnVj
dCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBp
bnQgZXh5bm9zNV91c2JkcmRfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpz
dywKKwkJCQkgICAgICAgZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlvbikKK3sKKwlz
dHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkID0gdHlwZWNfc3dpdGNoX2dldF9kcnZk
YXRhKHN3KTsKKworCXNjb3BlZF9ndWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkKKwkJ
cGh5X2RyZC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKKworCXJldHVybiAwOworfQorCitz
dGF0aWMgdm9pZCBleHlub3M1X3VzYmRyZF9vcmllbl9zd2l0Y2hfdW5yZWdpc3Rlcih2b2lkICpk
YXRhKQoreworCXN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQgPSBkYXRhOworCisJ
dHlwZWNfc3dpdGNoX3VucmVnaXN0ZXIocGh5X2RyZC0+c3cpOworfQorCitzdGF0aWMgaW50IGV4
eW5vczVfdXNiZHJkX3NldHVwX25vdGlmaWVycyhzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpw
aHlfZHJkKQoreworCWludCByZXQ7CisKKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX1RZUEVDKSkK
KwkJcmV0dXJuIDA7CisKKwlpZiAoZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQocGh5X2RyZC0+ZGV2
LCAib3JpZW50YXRpb24tc3dpdGNoIikpIHsKKwkJc3RydWN0IHR5cGVjX3N3aXRjaF9kZXNjIHN3
X2Rlc2MgPSB7IH07CisKKwkJc3dfZGVzYy5kcnZkYXRhID0gcGh5X2RyZDsKKwkJc3dfZGVzYy5m
d25vZGUgPSBkZXZfZndub2RlKHBoeV9kcmQtPmRldik7CisJCXN3X2Rlc2Muc2V0ID0gZXh5bm9z
NV91c2JkcmRfb3JpZW5fc3dfc2V0OworCisJCXBoeV9kcmQtPnN3ID0gdHlwZWNfc3dpdGNoX3Jl
Z2lzdGVyKHBoeV9kcmQtPmRldiwgJnN3X2Rlc2MpOworCQlpZiAoSVNfRVJSKHBoeV9kcmQtPnN3
KSkKKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKHBoeV9kcmQtPmRldiwKKwkJCQkJICAgICBQVFJf
RVJSKHBoeV9kcmQtPnN3KSwKKwkJCQkJICAgICAiRmFpbGVkIHRvIHJlZ2lzdGVyIFR5cGVDIG9y
aWVudGF0aW9uIHN3aXRjaFxuIik7CisKKwkJcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0
KHBoeV9kcmQtPmRldiwKKwkJCQkJICAgICAgIGV4eW5vczVfdXNiZHJkX29yaWVuX3N3aXRjaF91
bnJlZ2lzdGVyLAorCQkJCQkgICAgICAgcGh5X2RyZCk7CisJCWlmIChyZXQpCisJCQlyZXR1cm4g
ZGV2X2Vycl9wcm9iZShwaHlfZHJkLT5kZXYsIHJldCwKKwkJCQkJICAgICAiRmFpbGVkIHRvIHJl
Z2lzdGVyIFR5cGVDIG9yaWVudGF0aW9uIGRldm0gYWN0aW9uXG4iKTsKKwl9CisKKwlyZXR1cm4g
MDsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHlfY29uZmlnIHBo
eV9jZmdfZXh5bm9zNVtdID0gewogCXsKIAkJLmlkCQk9IEVYWU5PUzVfRFJEUEhZX1VUTUksCkBA
IC0xNzg2LDYgKzE4MzgsMTAgQEAgc3RhdGljIGludCBleHlub3M1X3VzYmRyZF9waHlfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAlpZiAocmV0KQogCQlyZXR1cm4gZGV2X2Vy
cl9wcm9iZShkZXYsIHJldCwgImZhaWxlZCB0byBnZXQgcmVndWxhdG9yc1xuIik7CiAKKwlyZXQg
PSBleHlub3M1X3VzYmRyZF9zZXR1cF9ub3RpZmllcnMocGh5X2RyZCk7CisJaWYgKHJldCkKKwkJ
cmV0dXJuIHJldDsKKwogCWRldl92ZGJnKGRldiwgIkNyZWF0aW5nIHVzYmRyZF9waHkgcGh5XG4i
KTsKIAogCWZvciAoaSA9IDA7IGkgPCBFWFlOT1M1X0RSRFBIWVNfTlVNOyBpKyspIHsKCi0tIAoy
LjQ3LjAuMzM4Lmc2MGNjYTE1ODE5LWdvb2cKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
