Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6933C3DA63
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jul 2024 06:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpR4Fn8RmTOHeie76VyGfveqBxIy27CVcLQFv4APDxk=; b=d0h2Mk1PBruy2b
	g6kVM+pcdEEPLRVu41QkUnXPVAsl6sAw1aGrt5YYxy0swg8o2fSaDj1BDKavI3aDHZoC8oZDA2pwt
	RvcljeZ9XW4AI5FJKG3DGUfc0Tc5qEFFFbIl+021X8ni67BhOrp84QdeePZMF9HiAaLso8z8KClWR
	neopPOqIkfoUTV7pl56z17xq4kgatKR+YMBkz9GW2HhQ59ri5Wyes3ACLAdJJK/fyDBGEx1eJ89gI
	B4bMOPjOTObPUi7wUeDAMYDK6s8ILdEmgdSc1mv9OVzetJyFXIaS33EDBG8CT3+B4kjRk8DosAAOY
	E4XYzEqwBM3+KnQ0fUYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXE2K-000000030Kx-1XpP;
	Fri, 26 Jul 2024 06:02:40 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXE1u-000000030FN-3sVO
	for linux-phy@lists.infradead.org;
	Fri, 26 Jul 2024 06:02:16 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-427db004e36so12457415e9.3
        for <linux-phy@lists.infradead.org>; Thu, 25 Jul 2024 23:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721973732; x=1722578532; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rNgR2JbRnvuvQ8FNSWDeS5hOPWs2py2ht5Ejpugq7pM=;
        b=LKrfXvqB2FT0WRna4oSiFyfPrqe6kWwqwCwersab/lW4WfN14gvPSHsO+9nLFrFOVi
         Xda5AVOKV6x6Uf+6LCfkZOI1R/0Eg67zalIXkCU79GemP9GQ/ow5vAx/wjQWnmVfN9W5
         DPYyTmVasVWOlLtdkx2aFXkWPYdYLqEu1AtF50u4tpeIIFFsYHFi2+AmSd5eo7gUgz8J
         eEnfsx8KInC/P7Njlwk6CbefAnJAPRdwONMNrCCddUrh2w8xveHyE4JpyLoKU+Dm6C68
         a3zed4QcEQ8gd31GdWs+zhWWjlBhg3OyPJ+r0DEcjBu6413XkUBUwHaEtxn5LCZnXi1s
         UdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721973732; x=1722578532;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rNgR2JbRnvuvQ8FNSWDeS5hOPWs2py2ht5Ejpugq7pM=;
        b=GQDClA6hrr2Ezo0q3eEi0INPeGHMgKGssUVhWg2zRPcYhH4gtqCY0j0Ezg726fqsCm
         s3ba5BDIWAcQpeaZQ3t6kw9C0h2e5eFl/RxLZ0mP71OlIH71MkIHgDoNrPovqB3pncBU
         n3Hm2/Gc5AoSEGeYmg7Nlde0uFP9+7tMQo3QWXgB91U8RtB9LjS+JIv/95mXjECWiyVI
         LQV9wmOuYEqJN5hpw0zGYSvC3Ezfse4/4jhccz6K4W5wAVlTEvs2eCx3YmMgNnyrwPLE
         YySCTmWdc1eEFUkbpn1BPweBLDNgicUFelRnxLFPHgi+n84gboSx/sLYfkVYyK8d9Szd
         LjVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYjqEju0n8LW6VopaQiFMS6fa80mqxoFM9yomRvR5RlxshCm2lEk52tJyHggEPgMOEOfotg4xBMQp2HhfmxEurf8g8njCzaiR874YeYw==
X-Gm-Message-State: AOJu0YykAScYsQb7o3Z4umXBTHK0G34S4nWxpgFurZRxzRpLuji9Jf2w
	5wy/2nnzjengp8G8pr5USrpgB3822EIUzcFFkVxCeM/0C3/Bxti4PH/paclCcxo=
X-Google-Smtp-Source: AGHT+IGZITgAy64Un/8wyyMq4vbFh/xNWJjrD62oeqgqKxJlyGVdbqIZ92b5GkG6r6jaxg78Jk2SnA==
X-Received: by 2002:a05:600c:3551:b0:426:67f0:b4fa with SMTP id 5b1f17b1804b1-4280546dec3mr29466515e9.1.1721973732563;
        Thu, 25 Jul 2024 23:02:12 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4280574b2c2sm60659955e9.28.2024.07.25.23.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jul 2024 23:02:12 -0700 (PDT)
Message-ID: <ace0b95ad77fe044881068a4cf1944e10b306730.camel@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: convert some FIELD_PREP_CONST() to
 FIELD_PREP()
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,  Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Fri, 26 Jul 2024 07:02:11 +0100
In-Reply-To: <20240710-phy-field-prep-v1-1-2fa3f7dc4fc7@linaro.org>
References: <20240710-phy-field-prep-v1-1-2fa3f7dc4fc7@linaro.org>
User-Agent: Evolution 3.52.1-4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_230214_997256_149C5936 
X-CRM114-Status: GOOD (  10.20  )
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

SGksCgpPbiBXZWQsIDIwMjQtMDctMTAgYXQgMDc6NDUgKzAxMDAsIEFuZHLDqSBEcmFzemlrIHdy
b3RlOgo+IFVzZSBvZiBGSUVMRF9QUkVQX0NPTlNUKCkgd2FzIGEgdGhpbmtvIC0gaXQncyBtZWFu
dCB0byBiZSB1c2VkIGZvcgo+IChjb25zdGFudCkgaW5pdGlhbGlzZXJzLCBub3QgY29uc3RhbnQg
dmFsdWVzLgo+IAo+IFVzZSBGSUVMRF9QUkVQKCkgd2hlcmUgcG9zc2libGUuIEl0IGhhcyBiZXR0
ZXIgZXJyb3IgY2hlY2tpbmcgYW5kIGlzCj4gdGhlcmVmb3JlIHRoZSBwcmVmZXJyZWQgbWFjcm8g
dG8gdXNlIGluIHRob3NlIGNhc2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlr
IDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCj4gwqBkcml2ZXJzL3BoeS9zYW1zdW5n
L3BoeS1leHlub3M1LXVzYmRyZC5jIHwgMTIgKysrKysrLS0tLS0tCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKQW55IGNvbW1lbnRzIG9uIHRoaXMg
cGF0Y2g/CgpDaGVlcnMsCkFuZHJlJwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
