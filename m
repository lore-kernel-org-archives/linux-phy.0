Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A9CFD6EBF1
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 09:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrxG+E6TSkF7fEVAivGBddmtgqh9lCNO1QC/XDO1b2k=; b=n0irILwL/Zbohh
	k88tn7ahutTvkB4w2A8tRQLgYs5U7eLhTtpRCkbYpId+ewatou71i2jLOeP2+tUi5pmgcfTJtuBrm
	s8Weslwv+p8p2mEIV8NakeZvkgX3kwvSnS4m/j9XaqHA3jsWS4uKm8ubT7Ii2JWGDjyKv8jCpUPV3
	08K8ju3/TqcLXWZjllgu4BVT79ZVQFTBTpCTF51+8qyl7f+cdtuPonpvgb/+tBpG0lu7VMwISLl8o
	Ae//dB935/D7xsn5wvs67GSvReFWSC/liVFTwHJyoA9cybpaqQqWBE3M7+kbKI6zFZgZLtlq1J9fo
	vWKu8Ki6aIXAXPU6rglg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxDq-0000000HJmO-0mQO;
	Fri, 29 Nov 2024 09:23:34 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGxCq-0000000HJeM-29JS
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 09:22:34 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-2965e65ce89so942257fac.3
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 01:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732872151; x=1733476951; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JiIfkNNTfG2wLwCrL8SHt4I5iayU11reYKOyFG1OMt8=;
        b=VAhey4tKqqca3isrFu8vWwtwGE7W2b0xaRPoVcOCFBxn+4OtyKmf3hB1zk8GrIK+Ai
         eYWR9x8T0gyHoCREUM9tU9Pg1IZItlKDqH1UL3POWRG4o7Sx+okIsLI+tZsEHiIF7kLc
         g186mWlf1zlPYNk0jZ4+4Ncpo3+9uOxmjZXw7bFRNtDbp0YUV43pVGq4V4k6APKis3mF
         XUhla+4R/R8GwQLSmJQRLz+H0nItRRexiPA63V8I6LG8DQaM9v14II5MzyiqrW2I1rlt
         RC4F0O3Kzmwpa1J9xrJGXNWx0PHx3DFy3MCDHvtaqbu0PnsahpCWGLtWkGqvPp0S/hUh
         l4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732872151; x=1733476951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JiIfkNNTfG2wLwCrL8SHt4I5iayU11reYKOyFG1OMt8=;
        b=nRKGXYAXBgx9MIGecgm71TB/HnRDhPsqjZLDE5TgNol3tRn3qhl0QTHVgLias43LBT
         AWurBolHyMHfcN+dn/pJ/if1VfMLoliGkH2aUmF25dAdzsh+NhP85Bav1z0oxfj6ACTL
         iiQQGCjoBwBU0O7a486ImSiKYszaSyXIXkx0PfatHqYifq/U8Nd3OM9AO4kUzDF7RyQo
         JSlWOCqa97Ruzs+0/BjwLw9l+NmwKDSq9HZMyIH9w5j35T8/W2OMK8u/IsrYeU9G6jl7
         vOdMeLy0bA/jDCP7x200O93QAGArTWAmdh2RPDfv65a7w+OqvfCsgHzBVbyCjuRAO2ER
         OtEA==
X-Forwarded-Encrypted: i=1; AJvYcCX2a58zQEtM15Anolo/w5B4oCNz0+VmwNMLB5Xm9fTcHeteFR/lLOPP4sSEFuqy5a628VvrzPnkNIo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwT1X0idyuwOybJNzy8Aw6eoAn8kFe+Bpr1pb1zbNKHpNyMn6HE
	KJZTIK5wjl+us/6pnyUFqev0TYReWdOXKYJWtjUaAM+Zg1ThzJfKnrMEjv5sfeC3jfoMm43eoBx
	OOu0Ilnit9KcWAV/TicSlee+egj2dzHHnyfEPMQ==
X-Gm-Gg: ASbGnct7cKkdVwXAGOqLnF2vOrMBKhSVpoWldpd0xXxaEfd0rGYkQHApgWChSpIDo0y
	g7f833SAtHf7JQDgnUzuGZcEQ6Q2H2B+K
X-Google-Smtp-Source: AGHT+IFjSIqaNaKVZ3/NuPe/UxWWplbF+FKubgmNFJXh3rXD7HgOiYLcq/AbS7MVH0EyqYNXM/cmA1yMxrA0FbnycFY=
X-Received: by 2002:a05:6870:7d13:b0:278:2c82:e056 with SMTP id
 586e51a60fabf-29dc4199014mr6752255fac.23.1732872151330; Fri, 29 Nov 2024
 01:22:31 -0800 (PST)
MIME-Version: 1.0
References: <20241127-gs101-phy-lanes-orientation-phy-v1-0-1b7fce24960b@linaro.org>
 <20241127-gs101-phy-lanes-orientation-phy-v1-5-1b7fce24960b@linaro.org>
In-Reply-To: <20241127-gs101-phy-lanes-orientation-phy-v1-5-1b7fce24960b@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 29 Nov 2024 09:22:20 +0000
Message-ID: <CADrjBPqUUXxjKapaSdWQz2PL8MsYVr74HCP_OqZZSG4w58_U1Q@mail.gmail.com>
Subject: Re: [PATCH 5/9] phy: exynos5-usbdrd: fix EDS distribution tuning (gs101)
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	Roy Luo <royluo@google.com>, kernel-team@android.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_012232_589297_C7020524 
X-CRM114-Status: GOOD (  14.20  )
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

SGkgQW5kcsOpLAoKT24gV2VkLCAyNyBOb3YgMjAyNCBhdCAxMDo1OCwgQW5kcsOpIERyYXN6aWsg
PGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBUaGlzIGNvZGUncyBpbnRlbnRp
b24gaXMgdG8gY29uZmlndXJlIGxhbmUwIGFuZCBsYW5lMiB0dW5pbmdzLCBidXQgZm9yCj4gbGFu
ZTIgdGhlcmUgaXMgYSB0eXBvIGFuZCBpdCBlbmRzIHVwIHR1bmluZyBzb21ldGhpbmcgZWxzZS4K
Pgo+IEZpeCB0aGUgdHlwbywgYXMgaXQgZG9lc24ndCBhcHBlYXIgdG8gbWFrZSBzZW5zZSB0byBh
cHBseSBkaWZmZXJlbnQKPiB0dW5pbmdzIGZvciBsYW5lMCB2cyBsYW5lMi4KPgo+IFRoZSBzYW1l
IHR5cG8gYXBwZWFycyB0byBleGlzdCBpbiB0aGUgYm9vdGxvYWRlciwgaGVuY2Ugd2UgcmVzdG9y
ZSB0aGUKPiBvcmlnaW5hbCB2YWx1ZSBpbiB0aGUgdHlwbydkIHJlZ2lzdGVycyBhcyB3ZWxsLiBU
aGlzIGNhbiBiZSByZW1vdmVkCj4gb25jZSAvIGlmIHRoZSBib290bG9hZGVyIGlzIHVwZGF0ZWQu
Cj4KPiBOb3RlIHRoYXQgdGhpcyBpcyBpbmNvcnJlY3QgaW4gdGhlIGRvd25zdHJlYW0gZHJpdmVy
IGFzIHdlbGwgLSB0aGUKPiB2YWx1ZXMgaGFkIGJlZW4gY29waWVkIGZyb20gdGhlcmUuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3ppa0BsaW5hcm8ub3JnPgo+
IC0tLQoKUmV2aWV3ZWQtYnk6IFBldGVyIEdyaWZmaW4gPHBldGVyLmdyaWZmaW5AbGluYXJvLm9y
Zz4KVGVzdGVkLWJ5OiBQZXRlciBHcmlmZmluIDxwZXRlci5ncmlmZmluQGxpbmFyby5vcmc+CgpW
YWxpZGF0ZWQgdGhhdCBhIHN1cGVyLXNwZWVkIFVTQiBsaW5rIGlzIGVzdGFibGlzaGVkIGJldHdl
ZW4gUGl4ZWwgNgpwaG9uZSBhbmQgbXkgbGFwdG9wIHdpdGggdGhpcyBwYXRjaCBhcHBsaWVkIGFu
ZCB0aGF0IGFkYiB3b3Jrcy4KCnJlZ2FyZHMsCgpQZXRlcgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5n
IGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
