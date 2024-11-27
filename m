Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4834D609D3
	for <linux-phy@archiver.kernel.org>; Wed, 27 Nov 2024 11:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrI7xTwWqclxDBuo9rfVxpDkHXazxGZX470Zmy4oIdo=; b=isyAUNo1E5a72U
	2Kd0yCHOAyV8SalgeqK1coh9T+A3n1+EJtDJ/pIc+//IsmkovksCaiE8nzF0HEWsuaDomOod9NEFR
	vYhq5+UZ5wlinrux4HFwxt4B3o9eha75e4WmpFf4+NSwXQAtkSEO/KgcUztOuIPjg7Xb/dTsz29CD
	OlxK/tesApeXcPJZNcXkoJiA8uWtWRTSwP0SY1UEMs9Y/yuMaadXKR+8bygAEhKQ1uasHO0fod0NO
	VU/ESCcrgDoqbaCsgX4LEZp/2Jxd3k3lQtnbU4RxAYDuB+QQMPJI6JMzWKhjTvijomXAt2CEP66XX
	dBLeS5bccOeh/2pXHpRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFsv-0000000Cx2N-2JE8;
	Wed, 27 Nov 2024 11:07:05 +0000
Received: from mail-ed1-f41.google.com ([209.85.208.41])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGFkQ-0000000CvFc-1Y4p
	for linux-phy@lists.infradead.org;
	Wed, 27 Nov 2024 10:58:20 +0000
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5ced377447bso8939211a12.1
        for <linux-phy@lists.infradead.org>; Wed, 27 Nov 2024 02:58:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732705096; x=1733309896; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d706DhbkVyX7Vrt0xFDuDzjHOlFjZMBwKWZfTRMnyD8=;
        b=X/glmkHQ/1812aI8WCuMd4j9TSpqqcdb1FoetcDB36gDeVUpWtaSPeShKQnMOW4VMK
         X+3Vw8MqnpYu/9gUNI13DGtyQnemdeFRJAKeeGjrmU9IvKK4DRdOuGAhdOK470ecjpJc
         OPXjJ1ZwTS43Q8zKHzT79OzjM++xfQLzdQGLyZODalOcSQ2F5MCKid+2x9K4KSD/omRn
         LNQ349qMzzpaSVcydRsQ4QVZDWowhFQWV6ptXQx10TfzmB93PbrB93amuzTvI6n9GjGn
         EWy0RT0j+CXeeq9V1on1w3SgDd0rAE6uk42aabWcNcCjQMNxtFGbMgaTgIfyNIC4C5Sd
         OkgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705096; x=1733309896;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=d706DhbkVyX7Vrt0xFDuDzjHOlFjZMBwKWZfTRMnyD8=;
        b=oOsWP8qmGWDtRrRMB4K6eVwZjR5vko6sxS+FlhWysgUxBiJS0SD+ZcaQx+8/pdb7Mo
         3/Utl+7DKzJmtvhbse2JRd5hGzsZQx2ZKXntwJTdKkK1M3X3sDDo5aif67IS0PZYEZhU
         HNOOqY9XtAmm6XtadZgSgplL6ks7sXy/ESbuf/5HDm7mrCa5sMqOsPLWlAxUKkx5Fc0s
         nLaIfX8op25ZoyE/AHVG1VYer6k0qC22cUxgjobQZuzea0c2TaGajEPottCxoA9hDlSp
         2//fY6URYcgPbWHqAjQ2vzUhu6LSjG+kt+J0uq8bzBvT5Liy5H/WumfuYq8RLAGJVm+W
         H/NA==
X-Forwarded-Encrypted: i=1; AJvYcCUjpIdQdu4mx/y15Lfg2w7+B7ryjQLvh0wSHQ5vpt4fOMbDAiQUuIfnGPztPCLxpfBzK5lgy7r1pCw=@lists.infradead.org
X-Gm-Message-State: AOJu0YzhTm/rVwHuO/EBHuCenPnHEEDkG/rhtnvveNAiWOE9/iA2/mTm
	q5cUXuCu4hXkch/J/+X7RJFcHbc4KFYAjhV8SHhTLYG7W3vKYh2WL3CYlNBkims=
X-Gm-Gg: ASbGncsLp4T8TtUxxUp74XB5QH1HSGVjilMbkDQyReiZDwy5suJVbUy5zVi1gwDRmVU
	WjJF2uAztnXYa9hGKl3F/SfmKhcyzBhZVVzTdp1RVq/ZOMDedFUj2rZn+/5sDpxiehWVEjpKNuR
	s6si/ciaa0y4c5jJyg8nLowH6FxoiLDxI151MqtHvgwtAzZodMos9VWbgPQzyZbxTrNMs21YMTr
	klvd3mtnfpWOSU/bmJixp201mJpyASotvl4BsF5siE4vLH+eQDAYutK/beSHBPVj0CtSkkwZOHt
	S3cV0jQmnOQEZSoIH1BP8IhMVxH5oqoPYg==
X-Google-Smtp-Source: AGHT+IFxyNLQvFsWnKU+TtOMetky+Uzt8fcx1BHPsN1RlACtIuFqEyfUvWmlfpzjndBcHn9MinYV7Q==
X-Received: by 2002:a17:906:3cb1:b0:a9f:508:5f5a with SMTP id a640c23a62f3a-aa58103dcf8mr225475566b.40.1732705096199;
        Wed, 27 Nov 2024 02:58:16 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa54a6db906sm412183566b.41.2024.11.27.02.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 02:58:15 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 27 Nov 2024 10:58:18 +0000
Subject: [PATCH 8/9] phy: exynos5-usbdrd: subscribe to orientation notifier
 if required
MIME-Version: 1.0
Message-Id: <20241127-gs101-phy-lanes-orientation-phy-v1-8-1b7fce24960b@linaro.org>
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
X-CRM114-CacheID: sfid-20241127_025818_431397_25EA1706 
X-CRM114-Status: GOOD (  18.28  )
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
ZmlnL3VzYl9nYWRnZXQvLi4uL1VEQwoKU2lnbmVkLW9mZi1ieTogQW5kcsOpIERyYXN6aWsgPGFu
ZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KLS0tCiBkcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcg
ICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9waHkvc2Ftc3VuZy9waHktZXh5bm9zNS11c2Jk
cmQuYyB8IDYwICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5n
ZWQsIDYxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9zYW1zdW5nL0tj
b25maWcgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcKaW5kZXggZjEwYWZhM2Q3ZmY1Li5m
YzdiZDEwODg1NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5L3NhbXN1bmcvS2NvbmZpZworKysg
Yi9kcml2ZXJzL3BoeS9zYW1zdW5nL0tjb25maWcKQEAgLTgwLDYgKzgwLDcgQEAgY29uZmlnIFBI
WV9FWFlOT1M1X1VTQkRSRAogCXRyaXN0YXRlICJFeHlub3M1IFNvQyBzZXJpZXMgVVNCIERSRCBQ
SFkgZHJpdmVyIgogCWRlcGVuZHMgb24gKEFSQ0hfRVhZTk9TICYmIE9GKSB8fCBDT01QSUxFX1RF
U1QKIAlkZXBlbmRzIG9uIEhBU19JT01FTQorCWRlcGVuZHMgb24gVFlQRUMgfHwgKFRZUEVDPW4g
JiYgQ09NUElMRV9URVNUKQogCWRlcGVuZHMgb24gVVNCX0RXQzNfRVhZTk9TCiAJc2VsZWN0IEdF
TkVSSUNfUEhZCiAJc2VsZWN0IE1GRF9TWVNDT04KZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Nh
bXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMgYi9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlu
b3M1LXVzYmRyZC5jCmluZGV4IDFhMzRlOWI0NjE4YS4uMjAxMGQyNWVlODE3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3BoeS9zYW1zdW5nL3BoeS1leHlub3M1LXVzYmRyZC5jCisrKyBiL2RyaXZlcnMv
cGh5L3NhbXN1bmcvcGh5LWV4eW5vczUtdXNiZHJkLmMKQEAgLTM5NCw2ICszOTQsNyBAQCBzdHJ1
Y3QgZXh5bm9zNV91c2JkcmRfcGh5X2RydmRhdGEgewogICogQGV4dHJlZmNsazogZnJlcXVlbmN5
IHNlbGVjdCBzZXR0aW5ncyB3aGVuIHVzaW5nICdzZXBhcmF0ZQogICoJICAgICAgIHJlZmVyZW5j
ZSBjbG9ja3MnIGZvciBTUyBhbmQgSFMgb3BlcmF0aW9ucwogICogQHJlZ3VsYXRvcnM6IHJlZ3Vs
YXRvcnMgZm9yIHBoeQorICogQHN3OiBUeXBlQyBvcmllbnRhdGlvbiBzd2l0Y2ggaGFuZGxlCiAg
KiBAb3JpZW50YXRpb246IFR5cGVDIGNvbm5lY3RvciBvcmllbnRhdGlvbiAtIG5vcm1hbCBvciBm
bGlwcGVkCiAgKi8KIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgewpAQCAtNDE1LDYgKzQxNiw3
IEBAIHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgewogCXUzMiBleHRyZWZjbGs7CiAJc3RydWN0
IHJlZ3VsYXRvcl9idWxrX2RhdGEgKnJlZ3VsYXRvcnM7CiAKKwlzdHJ1Y3QgdHlwZWNfc3dpdGNo
X2RldiAqc3c7CiAJZW51bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlvbjsKIH07CiAKQEAg
LTE0MDAsNiArMTQwMiw2MCBAQCBzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3BoeV9jbGtfaGFu
ZGxlKHN0cnVjdCBleHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQpCiAJcmV0dXJuIDA7CiB9CiAK
KyNpZiBJU19FTkFCTEVEKENPTkZJR19UWVBFQykKK3N0YXRpYyBpbnQgZXh5bm9zNV91c2JkcmRf
b3JpZW5fc3dfc2V0KHN0cnVjdCB0eXBlY19zd2l0Y2hfZGV2ICpzdywKKwkJCQkgICAgICAgZW51
bSB0eXBlY19vcmllbnRhdGlvbiBvcmllbnRhdGlvbikKK3sKKwlzdHJ1Y3QgZXh5bm9zNV91c2Jk
cmRfcGh5ICpwaHlfZHJkID0gdHlwZWNfc3dpdGNoX2dldF9kcnZkYXRhKHN3KTsKKworCXNjb3Bl
ZF9ndWFyZChtdXRleCwgJnBoeV9kcmQtPnBoeV9tdXRleCkKKwkJcGh5X2RyZC0+b3JpZW50YXRp
b24gPSBvcmllbnRhdGlvbjsKKworCXJldHVybiAwOworfQorCitzdGF0aWMgdm9pZCBleHlub3M1
X3VzYmRyZF9vcmllbl9zd2l0Y2hfdW5yZWdpc3Rlcih2b2lkICpkYXRhKQoreworCXN0cnVjdCBl
eHlub3M1X3VzYmRyZF9waHkgKnBoeV9kcmQgPSBkYXRhOworCisJdHlwZWNfc3dpdGNoX3VucmVn
aXN0ZXIocGh5X2RyZC0+c3cpOworfQorCitzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3NldHVw
X25vdGlmaWVycyhzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQoreworCWludCBy
ZXQ7CisKKwlwaHlfZHJkLT5vcmllbnRhdGlvbiA9IChlbnVtIHR5cGVjX29yaWVudGF0aW9uKS0x
OworCWlmIChkZXZpY2VfcHJvcGVydHlfcHJlc2VudChwaHlfZHJkLT5kZXYsICJvcmllbnRhdGlv
bi1zd2l0Y2giKSkgeworCQlzdHJ1Y3QgdHlwZWNfc3dpdGNoX2Rlc2Mgc3dfZGVzYyA9IHsgfTsK
KworCQlzd19kZXNjLmRydmRhdGEgPSBwaHlfZHJkOworCQlzd19kZXNjLmZ3bm9kZSA9IGRldl9m
d25vZGUocGh5X2RyZC0+ZGV2KTsKKwkJc3dfZGVzYy5zZXQgPSBleHlub3M1X3VzYmRyZF9vcmll
bl9zd19zZXQ7CisKKwkJcGh5X2RyZC0+c3cgPSB0eXBlY19zd2l0Y2hfcmVnaXN0ZXIocGh5X2Ry
ZC0+ZGV2LCAmc3dfZGVzYyk7CisJCWlmIChJU19FUlIocGh5X2RyZC0+c3cpKQorCQkJcmV0dXJu
IGRldl9lcnJfcHJvYmUocGh5X2RyZC0+ZGV2LAorCQkJCQkgICAgIFBUUl9FUlIocGh5X2RyZC0+
c3cpLAorCQkJCQkgICAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgVHlwZUMgb3JpZW50YXRpb24gc3dp
dGNoXG4iKTsKKworCQlyZXQgPSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQocGh5X2RyZC0+ZGV2
LAorCQkJCQkgICAgICAgZXh5bm9zNV91c2JkcmRfb3JpZW5fc3dpdGNoX3VucmVnaXN0ZXIsCisJ
CQkJCSAgICAgICBwaHlfZHJkKTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiBkZXZfZXJyX3Byb2Jl
KHBoeV9kcmQtPmRldiwgcmV0LAorCQkJCQkgICAgICJGYWlsZWQgdG8gcmVnaXN0ZXIgVHlwZUMg
b3JpZW50YXRpb24gZGV2bSBhY3Rpb25cbiIpOworCX0KKworCXJldHVybiAwOworfQorI2Vsc2Ug
LyogQ09ORklHX1RZUEVDICovCitzdGF0aWMgaW50IGV4eW5vczVfdXNiZHJkX3NldHVwX25vdGlm
aWVycyhzdHJ1Y3QgZXh5bm9zNV91c2JkcmRfcGh5ICpwaHlfZHJkKQoreworCXJldHVybiAwOwor
fQorI2VuZGlmIC8qIENPTkZJR19UWVBFQyAqLworCiBzdGF0aWMgY29uc3Qgc3RydWN0IGV4eW5v
czVfdXNiZHJkX3BoeV9jb25maWcgcGh5X2NmZ19leHlub3M1W10gPSB7CiAJewogCQkuaWQJCT0g
RVhZTk9TNV9EUkRQSFlfVVRNSSwKQEAgLTE3ODksNiArMTg0NSwxMCBAQCBzdGF0aWMgaW50IGV4
eW5vczVfdXNiZHJkX3BoeV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlm
IChyZXQpCiAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiZmFpbGVkIHRvIGdldCBy
ZWd1bGF0b3JzXG4iKTsKIAorCXJldCA9IGV4eW5vczVfdXNiZHJkX3NldHVwX25vdGlmaWVycyhw
aHlfZHJkKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCiAJZGV2X3ZkYmcoZGV2LCAiQ3Jl
YXRpbmcgdXNiZHJkX3BoeSBwaHlcbiIpOwogCiAJZm9yIChpID0gMDsgaSA8IEVYWU5PUzVfRFJE
UEhZU19OVU07IGkrKykgewoKLS0gCjIuNDcuMC4zMzguZzYwY2NhMTU4MTktZ29vZwoKCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
