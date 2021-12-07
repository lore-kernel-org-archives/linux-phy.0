Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8443C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Dec 2021 15:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YqBGyXYP8YLtPQ2pIv7/J/oKaDhRWUODJuVYO9gS3Io=; b=AgZnIr5Hp29NyXzu9kxJdp2GMa
	QymcT8VgYvkkSyhR6pmoilgebe7Wj6HyaUu0hkIL82qF3qqFy8qY8Vxi9o/lmEfFLWFhAkUNVor/j
	xtx/8YfO/l118Md45O6DWo9/s8ZS1SWFi7qBCmNVuclyeZOlidn1iQfyp/I5CymGhs1QXiT3rOKpE
	Thuaz/P8bLPzp936AEGTWBq6IuhRnEvT9d0wehTaC+cyb9qvZGgjb7iYk4kwlArSan1RqFNfnd+6F
	TPWhzw4SkdRbtTfn8jRmz94FP4EFXhaFTN9szJsEgjODLtXgnBH21UL7vUDzhtuV65GzO8xKyvZd1
	5DadbWTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mubzl-0094vd-Mh; Tue, 07 Dec 2021 15:03:05 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mubYg-008xYA-Ps
 for linux-phy@lists.infradead.org; Tue, 07 Dec 2021 14:35:08 +0000
Received: by mail-lj1-x230.google.com with SMTP id 13so27695115ljj.11
 for <linux-phy@lists.infradead.org>; Tue, 07 Dec 2021 06:35:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=SuFyxr/7dnNItpWRDLc4VXiPbAiF5MgQk734KTvizFc=;
 b=gaEha2TS7Y3zGJZ8QdeuQLLileAK9Sjrr/Oi3pGhR2/TH4c/KMEN76GEvZi+LG0pcj
 IdmvLV/PuvEShtltY0Tk/H1uRGDIQiQZ5gUIDVU9dxD00u+MwRpfelvNM9r9/o223598
 jF9J73QSdnxrDUVIgkOzi785PTvQezxBrKDvyPoZiIPK93GDOSmI1XlX0mzmeQ1g4ABB
 MN0rOh7AbwjZ5o+jwNqQ/+fo/g+TEPIXhq2UUjikF+0GhysLlauisxiENjJ9pZRZUY4g
 336+YNnTUPyubGpr5/HRY2DCi12RuhNqGsyF8IfDCjQ3dcCYBXTOVJAOPVcEEGf6KZxo
 W2rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SuFyxr/7dnNItpWRDLc4VXiPbAiF5MgQk734KTvizFc=;
 b=0TOgdoa1uJjvKTSUlfvXGtBBxJ5r8SbAhUZczzJiPC0+l67+9+oxnCgfZ44yvIV5ss
 LTPVwdw8omOSHniBnK2Oaie74FVWcOU/p1X9TUKlvIm3L0LpN14G4FefQB6jCVzzqvUO
 IfIT72C9URuSYBK5PSjxXlit8BSbBH3A87+qIRuQXyqMKY/tiMPqaxdljFKWk5SeMQZH
 lhXApVPsZnfxdYQepOvPXCsxWwWBWuvhOy+Dy1HVJiTrSGpD42khhinlNRY8l1pJsGvz
 pYRHXSJzscJszy+hQT91jmKg2ODMLtvCTvunPXniH+R9MSdz7umF1MY7jYHF78tYb2OJ
 MZrA==
X-Gm-Message-State: AOAM532AJQh5BH5Xac1bKKKQOuIAu0ozjAtNnbgYqgtEiKy8Mz7jJ0Cx
 fMbZfGLtfS7jQC6Cfm0Wi9s=
X-Google-Smtp-Source: ABdhPJyPwFkf34m4EXALN2Gz+aIAxU89K6YqR+pL9+eWborz/W9yqp7d6SfeTg8EGvmwKRxXJAKrRg==
X-Received: by 2002:a2e:99cf:: with SMTP id l15mr43253417ljj.111.1638887703840; 
 Tue, 07 Dec 2021 06:35:03 -0800 (PST)
Received: from [192.168.2.145] (94-29-46-111.dynamic.spd-mgts.ru.
 [94.29.46.111])
 by smtp.googlemail.com with ESMTPSA id f35sm1709226lfv.98.2021.12.07.06.35.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Dec 2021 06:35:03 -0800 (PST)
Subject: Re: [PATCH] phy: tegra: add missing put_device() call in
 tegra210_xusb_padctl_probe()
To: Qing Wang <wangqing@vivo.com>, JC Kuo <jckuo@nvidia.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1638881776-3308-1-git-send-email-wangqing@vivo.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <b56a0b92-cf64-570c-08f8-e7a54fc55946@gmail.com>
Date: Tue, 7 Dec 2021 17:35:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1638881776-3308-1-git-send-email-wangqing@vivo.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_063506_893204_31C1FC39 
X-CRM114-Status: GOOD (  17.26  )
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

MDcuMTIuMjAyMSAxNTo1NiwgUWluZyBXYW5nINC/0LjRiNC10YI6Cj4gRnJvbTogV2FuZyBRaW5n
IDx3YW5ncWluZ0B2aXZvLmNvbT4KPiAKPiBvZl9maW5kX2RldmljZV9ieV9ub2RlKCkgdGFrZXMg
YSByZWZlcmVuY2UgdG8gdGhlIGVtYmVkZGVkIHN0cnVjdCBkZXZpY2UgCj4gd2hpY2ggbmVlZHMg
dG8gYmUgZHJvcHBlZCB3aGVuIGVycm9yIHJldHVybi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBXYW5n
IFFpbmcgPHdhbmdxaW5nQHZpdm8uY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS90ZWdyYS94dXNi
LXRlZ3JhMjEwLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRl
Z3JhMjEwLmMgYi9kcml2ZXJzL3BoeS90ZWdyYS94dXNiLXRlZ3JhMjEwLmMKPiBpbmRleCBlZWRm
YzdjLi4wNWEwODAwCj4gLS0tIGEvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTIxMC5jCj4g
KysrIGIvZHJpdmVycy9waHkvdGVncmEveHVzYi10ZWdyYTIxMC5jCj4gQEAgLTMxNzAsOCArMzE3
MCwxMCBAQCB0ZWdyYTIxMF94dXNiX3BhZGN0bF9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4g
IAkJZ290byBvdXQ7Cj4gIAl9Cj4gIAo+IC0JaWYgKCFwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2
KSkKPiArCWlmICghcGxhdGZvcm1fZ2V0X2RydmRhdGEocGRldikpIHsKPiArCQlwdXRfZGV2aWNl
KCZwZGV2LT5kZXYpOwo+ICAJCXJldHVybiBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwo+ICsJfQo+
ICAKPiAgCXBhZGN0bC0+cmVnbWFwID0gZGV2X2dldF9yZWdtYXAoJnBkZXYtPmRldiwgInVzYl9z
bGVlcHdhbGsiKTsKPiAgCWlmICghcGFkY3RsLT5yZWdtYXApCj4gCgpXaGF0IGlmIGRldl9nZXRf
cmVnbWFwKCkgZmFpbHM/IFdoYXQgaWYgZHJpdmVyIGlzIHJlbW92ZWQ/CgpQbGVhc2UgZWl0aGVy
IGZpeCBpdCBwcm9wZXJseSBvciBkb24ndCBmaXggaXQuCgotLSAKbGludXgtcGh5IG1haWxpbmcg
bGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
