Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF31FE64A84
	for <linux-phy@archiver.kernel.org>; Tue,  3 Dec 2024 12:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ2kJ65YuQd805nxfYJMRtI6UEgPo90jjTC9KJu8FNQ=; b=zuRC4K8ktGArYg
	j3aMaygNlwTTKmDNz95pMFWef3LfbHOlOObkSDESKdvseD6miMvaeqYOdeSFm2TNxO7/VvZiG6lRr
	hZrPJkGRyE60NVj1L3esk7IlS379F5KndrIn3Xn4WXyvx+eLGCpxityutOo+wsxAmmcBX2onzjNeO
	GIIykciXH1UBJDXCu04JdiajKIwcwsx1dL/RQ2Kxp3l162Y1wYfSmhBNYdawYBBXzKnEH1eK8qQIX
	2jh3gjYL0OHucn5ftnqh4TvexRJ/z41YPxz7gmFrs4qZrtQmwP2v5rs1MkkdzmyIP4e090ruXDAPg
	7OPGkwd7w/3awO4dIKlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRtk-00000009PPu-1uix;
	Tue, 03 Dec 2024 12:21:00 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIRmu-00000009NgO-3Uhr
	for linux-phy@lists.infradead.org;
	Tue, 03 Dec 2024 12:13:58 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a9a0ef5179dso790243766b.1
        for <linux-phy@lists.infradead.org>; Tue, 03 Dec 2024 04:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228035; x=1733832835; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=54YjK1PSCj3noc28mh1Eh19wlGr7iBDWYo9sjvHvK0I=;
        b=ObPG3kFAsrMpqc3XKVzstTOH75yCAgaxQQf7QrncbzVBBH82qXsG1+EzP7tfPiD2y9
         00j1tWmkMaLbmIP4VfBu8gt4tpwGibDGUObjsY84AWRuvScftHjR49XO2hOEKeTGfPFg
         72mImbAW4gELHBLxlouCtbGa+iD6/JPeB0iQmBnZFNIhZOVFcAtVjhI1O23bC83qrWRw
         lkEBAvgAgfmm3Y3oObZbacjsThigYPbW8YxCXce3Mm04u6nIVhyBfPCCYZg9XZDWCUB6
         IlrUGi4WtA1uQNEPyMINMgm58R2xiICwg/3o5rRQE9NF5Bk70Ti+cwTkdGTML7yGma1g
         zHQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228035; x=1733832835;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=54YjK1PSCj3noc28mh1Eh19wlGr7iBDWYo9sjvHvK0I=;
        b=DoLRaV3kBlVX59o3LwtTZKKuVPESAfvvz3Inxtl4UILEvcZTu/IywzcGYCBQwuLY4D
         IRV4+BOyNmeui83QXYOg3yYpwXeKwdZ5KsPGEzkphi8l17GWfvVWnVXPrdIwrigo9y/w
         JOJyLGhzN+J8iJjxu1iu88SEa96njHDOJgVIjlODHIpPszUVaNhIHEzNxPxLS+lzsIux
         HxyCCxJqB7J+QO9pq1YCGy0inJGq7KqQF8Je5/VyFS/YCSFlpaE+zwQqdY1h9zgSl39K
         xG7zkagQMLDwS1nnAzjoKk7MZH5vWBVOunWjeLQf3MNb+cppHN2ddSSkghyoV9aq7VMl
         LwrA==
X-Forwarded-Encrypted: i=1; AJvYcCWsRfAJ6EIotdS5YUjsIU9N5ir2Ju+11+GsYVkwxvY7c8fcxF+hallcJqjJ8YAZSfK64XOVutE20Ik=@lists.infradead.org
X-Gm-Message-State: AOJu0YzlxrMXEwxr6eI/C7ifjRyvU1gbNeKN7U9zWUGd+i514bCQs9L3
	N8PlNkmItTvkWiWme6JnZBgeCn5vMeIdthc94pw9aisYfa3ldOWnC5WHv//qUSQ=
X-Gm-Gg: ASbGncug+zgHfAQMyMuVtjD4/JKMEQqCpdS9vSfBpwXwqX94BqCo1AglcXzRwqExDVR
	mBWXyVnapuhUh048WtW2xC1lyFLrwVXsVwhVKZMOEHsfJANpdCOdcT+LXLC0MGLb56e4fhWhhbz
	DbBDnK/puB0xJErzLl8Pi0i2+vH7GtmLq7REF2kpKr38IFTuN+68R1HehngG8XK03DQ5TlBgReU
	pL0igG4egYrQL46flsAto1BkQbbw7DUqNEzCoHhvPzqEqi/2LbA70ckoHLWCszP8zRklW3o0t0g
	Ah/0rbzIBJB5IPu8Uhp8XCGe/MKomxNPnw==
X-Google-Smtp-Source: AGHT+IGlYONH0INC2ObUF4IvK3DPpOMeryroZsQD2npmBCwLgaYdxtB/m6WRr2IlPYlTnp1MvA4eXw==
X-Received: by 2002:a17:906:3ca2:b0:aa5:f39a:bd7b with SMTP id a640c23a62f3a-aa5f7ccdc77mr167906966b.4.1733228034789;
        Tue, 03 Dec 2024 04:13:54 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:54 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:55 +0000
Subject: [PATCH v2 7/8] phy: exynos5-usbdrd: subscribe to orientation
 notifier if required
MIME-Version: 1.0
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-7-40dcf1b7670d@linaro.org>
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
X-CRM114-CacheID: sfid-20241203_041356_917051_338E78E6 
X-CRM114-Status: GOOD (  21.02  )
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
cmUuZHJhc3ppa0BsaW5hcm8ub3JnPgoKLS0tCnYyOgoqIG1vdmUgI2luY2x1ZGUgdHlwZWNfbXV4
LmggZnJvbSBwYXJlbnQgcGF0Y2ggaW50byB0aGlzIG9uZSAoUGV0ZXIpCi0tLQogZHJpdmVycy9w
aHkvc2Ftc3VuZy9LY29uZmlnICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvcGh5L3NhbXN1
bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgfCA2MSArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvc2Ftc3VuZy9LY29uZmlnIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCmlu
ZGV4IGYxMGFmYTNkN2ZmNS4uZmM3YmQxMDg4NTc2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9z
YW1zdW5nL0tjb25maWcKKysrIGIvZHJpdmVycy9waHkvc2Ftc3VuZy9LY29uZmlnCkBAIC04MCw2
ICs4MCw3IEBAIGNvbmZpZyBQSFlfRVhZTk9TNV9VU0JEUkQKIAl0cmlzdGF0ZSAiRXh5bm9zNSBT
b0Mgc2VyaWVzIFVTQiBEUkQgUEhZIGRyaXZlciIKIAlkZXBlbmRzIG9uIChBUkNIX0VYWU5PUyAm
JiBPRikgfHwgQ09NUElMRV9URVNUCiAJZGVwZW5kcyBvbiBIQVNfSU9NRU0KKwlkZXBlbmRzIG9u
IFRZUEVDIHx8IChUWVBFQz1uICYmIENPTVBJTEVfVEVTVCkKIAlkZXBlbmRzIG9uIFVTQl9EV0Mz
X0VYWU5PUwogCXNlbGVjdCBHRU5FUklDX1BIWQogCXNlbGVjdCBNRkRfU1lTQ09OCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jIGIvZHJpdmVycy9w
aHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2JkcmQuYwppbmRleCAyMDY0ODNjN2NhNTUuLmIxOTE0
YzZjODA2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2Jk
cmQuYworKysgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCkBAIC0y
NCw2ICsyNCw3IEBACiAjaW5jbHVkZSA8bGludXgvcmVndWxhdG9yL2NvbnN1bWVyLmg+CiAjaW5j
bHVkZSA8bGludXgvc29jL3NhbXN1bmcvZXh5bm9zLXJlZ3MtcG11Lmg+CiAjaW5jbHVkZSA8bGlu
dXgvdXNiL3R5cGVjLmg+CisjaW5jbHVkZSA8bGludXgvdXNiL3R5cGVjX211eC5oPgogCiAvKiBF
eHlub3MgVVNCIFBIWSByZWdpc3RlcnMgKi8KICNkZWZpbmUgRVhZTk9TNV9GU0VMXzlNSFo2CQkw
eDAKQEAgLTM5NCw2ICszOTUsNyBAQCBzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEg
ewogICogQGV4dHJlZmNsazogZnJlcXVlbmN5IHNlbGVjdCBzZXR0aW5ncyB3aGVuIHVzaW5nICdz
ZXBhcmF0ZQogICoJICAgICAgIHJlZmVyZW5jZSBjbG9ja3MnIGZvciBTUyBhbmQgSFMgb3BlcmF0
aW9ucwogICogQHJlZ3VsYXRvcnM6IHJlZ3VsYXRvcnMgZm9yIHBoeQorICogQHN3OiBUeXBlQyBv
cmllbnRhdGlvbiBzd2l0Y2ggaGFuZGxlCiAgKiBAb3JpZW50YXRpb246IFR5cGVDIGNvbm5lY3Rv
ciBvcmllbnRhdGlvbiAtIG5vcm1hbCBvciBmbGlwcGVkCiAgKi8KIHN0cnVjdCBleHlub3M1X3Vz
YmRyZF9waHkgewpAQCAtNDE1LDYgKzQxNyw3IEBAIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkg
ewogCXUzMiBleHRyZWZjbGs7CiAJc3RydWN0IHJlZ3VsYXRvcl9idWxrX2RhdGEgKnJlZ3VsYXRv
cnM7CiAKKwlzdHJ1Y3QgdHlwZWNfc3dpdGNoX2RldiAqc3c7CiAJZW51bSB0eXBlY19vcmllbnRh
dGlvbiBvcmllbnRhdGlvbjsKIH07CiAKQEAgLTE0MDAsNiArMTQwMyw2MCBAQCBzdGF0aWMgaW50
IGV4eW5vczVfdXNiZHJkX3BoeV9jbGtfaGFuZGxlKHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkg
KnBoeV9kcmQpCiAJcmV0dXJuIDA7CiB9CiAKKyNpZiBJU19FTkFCTEVEKENPTkZJR19UWVBFQykK
K3N0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRfb3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0
Y2hfZGV2ICpzdywKKwkJCQkgICAgICAgZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlv
bikKK3sKKwlzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkID0gdHlwZWNfc3dpdGNo
X2dldF9kcnZkYXRhKHN3KTsKKworCXNjb3BlZF9ndWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9t
dXRleCkKKwkJcGh5X2RyZC0+b3JpZW50YXRpb24gPSBvcmllbnRhdGlvbjsKKworCXJldHVybiAw
OworfQorCitzdGF0aWMgdm9pZCBleHlub3M1X3VzYmRyZF9vcmllbl9zd2l0Y2hfdW5yZWdpc3Rl
cih2b2lkICpkYXRhKQoreworCXN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQgPSBk
YXRhOworCisJdHlwZWNfc3dpdGNoX3VucmVnaXN0ZXIocGh5X2RyZC0+c3cpOworfQorCitzdGF0
aWMgaW50IGV4eW5vczVfdXNiZHJkX3NldHVwX25vdGlmaWVycyhzdHJ1Y3QgZXh5bm9zNV91c2Jk
cmRfcGh5ICpwaHlfZHJkKQoreworCWludCByZXQ7CisKKwlwaHlfZHJkLT5vcmllbnRhdGlvbiA9
IChlbnVtIHR5cGVjX29yaWVudGF0aW9uKS0xOworCWlmIChkZXZpY2VfcHJvcGVydHlfcHJlc2Vu
dChwaHlfZHJkLT5kZXYsICJvcmllbnRhdGlvbi1zd2l0Y2giKSkgeworCQlzdHJ1Y3QgdHlwZWNf
c3dpdGNoX2Rlc2Mgc3dfZGVzYyA9IHsgfTsKKworCQlzd19kZXNjLmRydmRhdGEgPSBwaHlfZHJk
OworCQlzd19kZXNjLmZ3bm9kZSA9IGRldl9md25vZGUocGh5X2RyZC0+ZGV2KTsKKwkJc3dfZGVz
Yy5zZXQgPSBleHlub3M1X3VzYmRyZF9vcmllbl9zd19zZXQ7CisKKwkJcGh5X2RyZC0+c3cgPSB0
eXBlY19zd2l0Y2hfcmVnaXN0ZXIocGh5X2RyZC0+ZGV2LCAmc3dfZGVzYyk7CisJCWlmIChJU19F
UlIocGh5X2RyZC0+c3cpKQorCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUocGh5X2RyZC0+ZGV2LAor
CQkJCQkgICAgIFBUUl9FUlIocGh5X2RyZC0+c3cpLAorCQkJCQkgICAgICJGYWlsZWQgdG8gcmVn
aXN0ZXIgVHlwZUMgb3JpZW50YXRpb24gc3dpdGNoXG4iKTsKKworCQlyZXQgPSBkZXZtX2FkZF9h
Y3Rpb25fb3JfcmVzZXQocGh5X2RyZC0+ZGV2LAorCQkJCQkgICAgICAgZXh5bm9zNV91c2JkcmRf
b3JpZW5fc3dpdGNoX3VucmVnaXN0ZXIsCisJCQkJCSAgICAgICBwaHlfZHJkKTsKKwkJaWYgKHJl
dCkKKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKHBoeV9kcmQtPmRldiwgcmV0LAorCQkJCQkgICAg
ICJGYWlsZWQgdG8gcmVnaXN0ZXIgVHlwZUMgb3JpZW50YXRpb24gZGV2bSBhY3Rpb25cbiIpOwor
CX0KKworCXJldHVybiAwOworfQorI2Vsc2UgLyogQ09ORklHX1RZUEVDICovCitzdGF0aWMgaW50
IGV4eW5vczVfdXNiZHJkX3NldHVwX25vdGlmaWVycyhzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5
ICpwaHlfZHJkKQoreworCXJldHVybiAwOworfQorI2VuZGlmIC8qIENPTkZJR19UWVBFQyAqLwor
CiBzdGF0aWMgY29uc3Qgc3RydWN0IGV4eW5vczVfdXNiZHJkX3BoeV9jb25maWcgcGh5X2NmZ19l
eHlub3M1W10gPSB7CiAJewogCQkuaWQJCT0gRVhZTk9TNV9EUkRQSFlfVVRNSSwKQEAgLTE3ODks
NiArMTg0NiwxMCBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmIChyZXQpCiAJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KGRldiwgcmV0LCAiZmFpbGVkIHRvIGdldCByZWd1bGF0b3JzXG4iKTsKIAorCXJldCA9IGV4eW5v
czVfdXNiZHJkX3NldHVwX25vdGlmaWVycyhwaHlfZHJkKTsKKwlpZiAocmV0KQorCQlyZXR1cm4g
cmV0OworCiAJZGV2X3ZkYmcoZGV2LCAiQ3JlYXRpbmcgdXNiZHJkX3BoeSBwaHlcbiIpOwogCiAJ
Zm9yIChpID0gMDsgaSA8IEVYWU5PUzVfRFJEUEhZU19OVU07IGkrKykgewoKLS0gCjIuNDcuMC4z
MzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
