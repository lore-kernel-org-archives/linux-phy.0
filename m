Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569ECC4345F
	for <linux-phy@archiver.kernel.org>; Thu, 25 Apr 2024 12:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ohmwSBr6ZwYYFmloHUP0rrQjLcJb8Q3Aj2nqWcfPRc=; b=YO7DhYa0fsop/w
	o1fyurm71nskQwQ7ttrc15Uafbp1eBl1pa2A/mgBXGLO49QiJU6m+oJgCmR9ITRLcUfyIeEdEljUJ
	j1cNkBkvKszFJgHtytnwfWVFvDYLPvyu4LpwU6FI+1jlmtZ8m9LM7rNVtn/PWTwKasXJetXLw/j+9
	O0N39tkbKw0eZfGqrZOMpel7f8hU+eza/CzScgmyQq2VlnC+zS9bRa9dmgIOP/rgAuxj+YnuzH5mu
	722k0laans7WIEioG6EYAv2EMg5TUlv6tlHaVFybvCubOHgiRBuVYkLq652GhobWyiC020/r5+TLx
	MaMOdA1+/qYtJHqTEpwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxod-0000000873s-45Kl;
	Thu, 25 Apr 2024 12:03:03 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxoa-0000000872b-1ylV
	for linux-phy@lists.infradead.org;
	Thu, 25 Apr 2024 12:03:02 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-343d2b20c4bso661097f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 25 Apr 2024 05:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714046578; x=1714651378; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AZtgfXbbk2xQsw1Lmj4dmQHGao3EmNipVbMSfwpwCWw=;
        b=hlmgcMyrtQBNiKuwiokhQgvrFX5Cf7idAegDTDvsvw7BqgnfNM17RRj2Vdg8OiK+rj
         rQ60SOj6C81rBBsrQNxqszbsCvg6J1kEPfzNgla1Rd2ZK2xusZAjTV6i7ycsgYPT31VI
         2QwWpn/FrHJ8HJg2b8UPReGyP/1AoWucpJlXz7qFYn5RNL+HsGp5JnEY6xmjfFxu7uzD
         lbn73tJmo7uOWXUZLVoI6VZjQmG1nP+62nK6feAu/s3wE7FeDik7OGcCdK9KfHP40Wsc
         ZI7Gwmr9I5JIerju07fDAsE8cIJcV4++nciNzdIJ0kJzztmVR6mI1rbnGKO0RApBUZXj
         eMOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714046578; x=1714651378;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AZtgfXbbk2xQsw1Lmj4dmQHGao3EmNipVbMSfwpwCWw=;
        b=h053hlaOdLboKRly+WkdHfM0Ko46tSBcQzweeIynINmN3QH+OrcbEGUV/HbBPhpJcj
         LmQ9P+NbSOFIEjmUPk8CZgWPMLwf4EmWzhM07l7GRplzRpwzS7CUKnLaY0G/Lg+NL2Qd
         CbAtEqVUuya4K59cizc3G+AEDhMdesjWRYp19sDlI4slQpw0Vz222a1572rQc1M9ulzt
         KS/iMX/uPAQdru6JuUOkSL+21zZSXVWWJ+/KavvwQMGYgSyXMWuNqh6Zr4XAP+3lZXlf
         TvxtOypDM5iH3xZ0agDkB3PoZARcRDJuJ28oLZAtpc17PNlVq2iwbc9R8QL/eaJM5YfR
         5R/g==
X-Forwarded-Encrypted: i=1; AJvYcCUaJsDnG8P6QYUjLAQykl3p/XQadEWcAl2LxSIjP7gkBUBQQBZ6bMcjMlZVqgA7+BSucFdoZvbXiO5Eyx2zWGks2z35nJet318i1BUEWg==
X-Gm-Message-State: AOJu0YwuRznTJWeDwiv/GiyNTBXXBBfypSWyzKeWam8qEYXCgj7DcfMo
	QCHNYanDpApLovkEdrwMxL+W9neOYAWDB+X2C8jdJ+hMoxvJedNZ1vuL6EYBVXc=
X-Google-Smtp-Source: AGHT+IEzZdSed4XOrE4rETuECmfdaxcVqf4C7+1LXgTcZDv2J71RTHhX+CpK/z2WbiePkXS0N6SWDw==
X-Received: by 2002:adf:eeca:0:b0:34b:147f:df67 with SMTP id a10-20020adfeeca000000b0034b147fdf67mr3840631wrp.53.1714046577733;
        Thu, 25 Apr 2024 05:02:57 -0700 (PDT)
Received: from [10.1.1.109] ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id w20-20020adfe054000000b0034a366f26b0sm18062178wrh.87.2024.04.25.05.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 05:02:57 -0700 (PDT)
Message-ID: <52403f522a4f7513c5ee5dae48856988f7141825.camel@linaro.org>
Subject: Re: [PATCH v2 06/14] arm64: dts: exynos: gs101: Add ufs, ufs-phy
 and ufs regulator dt nodes
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com, 
 James.Bottomley@HansenPartnership.com, ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Thu, 25 Apr 2024 13:02:55 +0100
In-Reply-To: <20240423205006.1785138-7-peter.griffin@linaro.org>
References: <20240423205006.1785138-1-peter.griffin@linaro.org>
	 <20240423205006.1785138-7-peter.griffin@linaro.org>
User-Agent: Evolution 3.50.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_050300_560759_B4535D4B 
X-CRM114-Status: UNSURE (   8.14  )
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

T24gVHVlLCAyMDI0LTA0LTIzIGF0IDIxOjQ5ICswMTAwLCBQZXRlciBHcmlmZmluIHdyb3RlOgo+
IEVuYWJsZSB0aGUgdWZzIGNvbnRyb2xsZXIsIHVmcyBwaHkgYW5kIHVmcyByZWd1bGF0b3IgaW4g
ZGV2aWNlIHRyZWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR3JpZmZpbiA8cGV0ZXIuZ3Jp
ZmZpbkBsaW5hcm8ub3JnPgo+IC0tLQo+IMKgLi4uL2Jvb3QvZHRzL2V4eW5vcy9nb29nbGUvZ3Mx
MDEtb3Jpb2xlLmR0c8KgwqAgfCAxOCArKysrKysrKysrCj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRz
L2V4eW5vcy9nb29nbGUvZ3MxMDEuZHRzacKgIHwgMzYgKysrKysrKysrKysrKysrKysrKwo+IMKg
MiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspCj4gCgpbLi4uXQoKPiArCj4gKwkJdWZz
XzA6IHVmc0AxNDcwMDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAiZ29vZ2xlLGdzMTAxLXVmcyI7
Cj4gKwkJCXJlZyA9IDwweDE0NzAwMDAwIDB4MjAwPiwKPiArCQkJwqDCoMKgwqDCoCA8MHgxNDcw
MTEwMCAweDIwMD4sCj4gKwkJCcKgwqDCoMKgwqAgPDB4MTQ3ODAwMDAgMHhhMDAwPiwKPiArCQkJ
wqDCoMKgwqDCoCA8MHgxNDYwMDAwMCAweDEwMD47Cj4gKwkJCXJlZy1uYW1lcyA9ICJoY2kiLCAi
dnNfaGNpIiwgInVuaXBybyIsICJ1ZnNwIjsKPiArCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDUz
MiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+ICsJCQljbG9ja3MgPSA8JmNtdV9oc2kyIENMS19H
T1VUX0hTSTJfVUZTX0VNQkRfSV9BQ0xLPiwKPiArCQkJCSA8JmNtdV9oc2kyIENMS19HT1VUX0hT
STJfVUZTX0VNQkRfSV9DTEtfVU5JUFJPPiwKPiArCQkJCSA8JmNtdV9oc2kyIENMS19HT1VUX0hT
STJfVUZTX0VNQkRfSV9GTVBfQ0xLPiwKPiArCQkJCSA8JmNtdV9oc2kyIENMS19HT1VUX0hTSTJf
UUVfVUZTX0VNQkRfSFNJMl9BQ0xLPiwKPiArCQkJCSA8JmNtdV9oc2kyIENMS19HT1VUX0hTSTJf
UUVfVUZTX0VNQkRfSFNJMl9QQ0xLPiwKPiArCQkJCSA8JmNtdV9oc2kyIENMS19HT1VUX0hTSTJf
U1lTUkVHX0hTSTJfUENMSz47Cj4gKwkJCWNsb2NrLW5hbWVzID0gImNvcmVfY2xrIiwgInNjbGtf
dW5pcHJvX21haW4iLCAiZm1wIiwKPiArCQkJCcKgwqDCoMKgwqAgInVmc19hY2xrIiwgInVmc19w
Y2xrIiwgInN5c3JlZyI7Cj4gKwkJCWZyZXEtdGFibGUtaHogPSA8MCAwPiwgPDAgMD4sIDwwIDA+
LCA8MCAwPiwgPDAgMD4sIDwwIDA+Owo+ICsJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ICsJCQlwaW5jdHJsLTAgPSA8JnVmc19yc3RfbiAmdWZzX3JlZmNsa19vdXQ+OwoKVGhlIHByZWZl
cnJlZCBvcmRlciBpcyBwaW5jdHJsLTAgYmVmb3JlIHBpbmN0cmwtbmFtZXMgKHNpbWlsYXIgdG8g
Y2xvY2stbmFtZXMgYW5kIHJlZy1uYW1lcykuCgpPdGhlciB0aGFuIHRoYXQsCgpBY2tlZC1ieTog
QW5kcsOpIERyYXN6aWsgPGFuZHJlLmRyYXN6aWtAbGluYXJvLm9yZz4KCgotLSAKbGludXgtcGh5
IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
