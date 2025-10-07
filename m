Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16DDACCA470
	for <linux-phy@archiver.kernel.org>; Tue,  7 Oct 2025 20:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bOY9ed8eeuRMoFsemiiJkzkA4OZrPMQ90EfmQPlaNA=; b=15R1jSbDeVOU8J
	uWtYQgwwZtWxF7v22mw38HmeaF4UeQOhlDcaMT8gp/E5Mqw3BD6S/xmnjgORIybwQaPzLtjQiqixD
	W2pkLTKREDgzTLLTNllD/2eVQ1sYF5twPJ2kDeL97Qg45ZxqCDv3XvmILLKErCJ4PYea7cr/LRB3j
	RGfx36sxGKm/mafQotnDF5GRT6dmUyquj0BmEsIR+3DUF/9Bs6y4b3WhF/tCKk0FLui72jA1VZNWj
	iZS9agcNUo31YrF9J5vAiTwiwTA8TLMEcvuvry24J5qlaJPegk7e+oWwM69fJ4U6KiX4i1tOXVQDB
	qk15KpW6xn5i6U1d3WwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6E96-00000002jmN-3Ys1;
	Tue, 07 Oct 2025 20:18:52 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6E94-00000002jlg-0Ob5
	for linux-phy@lists.infradead.org;
	Tue, 07 Oct 2025 20:18:51 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-64c771980e5so2976093eaf.1
        for <linux-phy@lists.infradead.org>; Tue, 07 Oct 2025 13:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759868329; x=1760473129; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t6o7XkzKv+u7CI1UFQteRyBrmLJdqDMJ8YxEK4sFqGo=;
        b=Myv1u+O38KC2rNMhLzPXx2uTZRf6vN8EB4HnuXCipzahfaafue8PiV25PmUc3/8w66
         epZ6HEIX4GcMuZJHt8yh+qPx9wuA+W06oKW2tRukP7MIFE7N2hPwbIq2KY/0N6uQDOtX
         F4pPu8R8clOU7VClRtWmedmH4uAppBW09Lus4ze79FjsBb7dCg5pEeyAN8blTgQ3GaCs
         tRI9+ap5OJovZYfpb53OfsXfaPrO2JjuS4H/mGVCEEbYvGhCc4f/7LsrJjqgRAEWyHV6
         /i9HnNj6tayDe+iclzPg4IKuC5A+uZRn1juemK66o6pf/uhPk0Z+LEVmR+a+yYMGPKNU
         GT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759868329; x=1760473129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t6o7XkzKv+u7CI1UFQteRyBrmLJdqDMJ8YxEK4sFqGo=;
        b=ApqYjik4bMJ/XALK4fNTm4jBSHTZQ0E4/JgYtFTBzXVb9UYAG0xeYyeXtT8Mes7vJo
         mIKtcbBhJKM9coFnjzRgp50GGw1/AZEsUBUhstkdb/bNCUAg4NfbOa8AYbpManGhTKER
         UfeRx0GxFrzZ5PdJxjAOg8lbFskhZra3PPJqTGy4puXttl4wHzKvDL5bsfB20RFFslgM
         nm9zTbFeyP3t1u8np7JCSMfFQfyj5mF+XdPjlcVZXKiaoTiAjjUTa7iAf9GTMOk4QA+n
         48HBTQUYhAIdI6QYQFYJUxgHcYiKRzsi2iwfaFcx44h0jirQksNU79ry7QZIArbEuA+3
         AIdg==
X-Forwarded-Encrypted: i=1; AJvYcCX+Ru2Lj2Cy78n6nkyTWpEqEk7fU7ZwR7K0/pdi5dvukvoxhCvIx6DRk3siKq+uW5jhdwa7PWESMpM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzcxOFk/GIEyRDTLrTieSu2mrgeYadFU117tzFH7ALhHsYkQpjy
	3v1JNkcn/5bHclyMPpicOoR/y6wheTPq97KynB9fdYE94N7YeHNgsmAKGT2hpDG9AsqQJ71msaG
	mEk8TC7VitiGsHUV8pl1T/M6mRB/ryycmGO1iVebxmQ==
X-Gm-Gg: ASbGncuZejQCx7eSc9qpgWoi6rj58rsJC6t93ljhsWTdnl9y5qAaeOHHHjzoDqrZdxZ
	8O7athJCgBXONeCfIy/oUFcHHKr2SzNeZDHIulS/lC4wLQzc/kQbPDCOQQb5SOJwOnY7wQXGJ5f
	jRKr6ot3tlg1nYGx08fw0VT7gx2ox/svqMtRs+EH6hP8plF40j5LWjNGVifePbH7m+IR1XLbo+J
	dviUtXH/KYk+5P++qM/oBdLgNwq+MiFnVb4rw==
X-Google-Smtp-Source: AGHT+IEL4dmypG8WFgpOU1UIUsrODE8etCKEY8zyKzUkyzhaZJQ8flhaIQqg8X0wJtfFE1WkEjdwwHsi6B9jL21hYVk=
X-Received: by 2002:a05:6820:a10e:b0:63d:bc20:a63f with SMTP id
 006d021491bc7-64fffe6daadmr379683eaf.3.1759868329050; Tue, 07 Oct 2025
 13:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
In-Reply-To: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Oct 2025 21:18:36 +0100
X-Gm-Features: AS18NWAMBYtEWn2vhviwKZeJuPljrJcOS2KOQNcYCHTnuQAmZAXGTQe_GLqqgoE
Message-ID: <CADrjBPoZpTUN5N_Gh6E0LFmndJs4_nnSpQ0t=XORQHwFn2=BNA@mail.gmail.com>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix clock prepare imbalance
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_131850_293919_0FE1B130 
X-CRM114-Status: UNSURE (   9.36  )
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

T24gTW9uLCA2IE9jdCAyMDI1IGF0IDA5OjA3LCBBbmRyw6kgRHJhc3ppayA8YW5kcmUuZHJhc3pp
a0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IENvbW1pdCBmNGZiOWM0ZDdmOTQgKCJwaHk6IGV4eW5v
czUtdXNiZHJkOiBhbGxvdyBEV0MzIHJ1bnRpbWUgc3VzcGVuZAo+IHdpdGggVURDIGJvdW5kIChF
ODUwKykiKSBpbmNvcnJlY3RseSBhZGRlZCBjbGtfYnVsa19kaXNhYmxlKCkgYXMgdGhlCj4gaW52
ZXJzZSBvZiBjbGtfYnVsa19wcmVwYXJlX2VuYWJsZSgpIHdoaWxlIGl0IHNob3VsZCBoYXZlIG9m
IGNvdXJzZQo+IHVzZWQgY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUoKS4gVGhpcyBtZWFucyBp
bmNvcnJlY3QgcmVmZXJlbmNlCj4gY291bnRzIHRvIHRoZSBDTVUgZHJpdmVyIHJlbWFpbi4KPgo+
IFVwZGF0ZSB0aGUgY29kZSBhY2NvcmRpbmdseS4KPgo+IEZpeGVzOiBmNGZiOWM0ZDdmOTQgKCJw
aHk6IGV4eW5vczUtdXNiZHJkOiBhbGxvdyBEV0MzIHJ1bnRpbWUgc3VzcGVuZCB3aXRoIFVEQyBi
b3VuZCAoRTg1MCspIikKPiBDQzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYt
Ynk6IEFuZHLDqSBEcmFzemlrIDxhbmRyZS5kcmFzemlrQGxpbmFyby5vcmc+Cj4gLS0tCgpSZXZp
ZXdlZC1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3JpZmZpbkBsaW5hcm8ub3JnPgoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
