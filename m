Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19AB2CF31A6
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 11:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9Mgmo6avu6vjaOUaT9V9BOWUid650A242+pPy44280=; b=nLNPqKxDn+hXSR
	PcJT4FyIo0lDiUPNxWpfHpwcWckq0f9wVtSgadzJS3cqfE7Ry7QEsyl5vA9ngSbe+rO7v84m+z/Bf
	Pez3GhgAUSdVTV3XHmYTBRS520qBF2H9MyiG7oCGPohvYE5UhJusndtOPB4Bte83o9O9hlKv777EK
	CU5aswKKGJr581wdcFMCMqpmi1yFC8mp0toyY5vfXWJaMoQI3a8pbm4t2xTZI/ugRXbgMi92fX6tk
	swBPJk7qEBC8zTsyqae1k7RGZERI/zipCvyAf1E8bPOZWFWNt6zaFkAeim+E7aYqNlX9RGucS0uP4
	d4i0JVHMLQEg/Bark0/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgBA-0000000316K-2Ec2;
	Wed, 19 Nov 2025 11:16:52 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLgB8-00000003152-0fAh
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 11:16:51 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so46405135e9.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Nov 2025 03:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763551008; x=1764155808; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Jfm1+IV0dmKR6UvATXbNPaNXa4YJ4/UDhZCRc24a46A=;
        b=u+kpZzIuSyl3WaTl6x5FgxNPT36cefiq8ZQwl7wslgm7r1el7zf641ATlT4UX8rp+s
         Re2apG5HWwTGRkH/eCtR7PeDA7tNt323AHuzO19LmPqDszC1eokW7W6/9243HpkwqaOh
         gKPuLtdZBxy2n7i0hj8gf6KeTkiabb+CH60Udz8lyse2Hop9xuV8X2vFiMF1UYMC7BGj
         zTUaaxHa6rQqruHwfQl7W2cjHA5/oxaD6XTTl7m2SJjKw1tYHJh7xsCaVuw+BXraozLR
         iO5VOFM6aDT8CVRLJfPzJ8qpDqCcct/n3sjCJ/vdzF5MUDTcNm738nhLR7tKNbmrE464
         i46Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763551008; x=1764155808;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jfm1+IV0dmKR6UvATXbNPaNXa4YJ4/UDhZCRc24a46A=;
        b=bYGjtymjqesiDQ8H/02jjIYBdIB8ldPxmLpinRym132Xgaqn+g6tySSIHWLntfLlAf
         jnL1FygjYg2Nq5DXOMnu06jpz4wiA94mNCBTc8AnoJokhZREhBIgDnZ9BpOKGt9PEhp4
         Xa177TCGk7m8cuL47tr2Tbn2hRapwcDEwMGdpSW81QlWnmTq78fhR/CkRnCPC8elO9Ut
         P6gvzPsskC2EDSB/gPugyU4Ottv8/Umb+3M8i4vHsIz/uFVpYXUNCAhbewYFVPUxPoNV
         D16/9Pnstyyb1UAyFbp/tA3Ivx7Hcrj7FLHa/jxrjPkMYPOTRJraP5HkCiAWyNVuNIK/
         q2ew==
X-Forwarded-Encrypted: i=1; AJvYcCUickdW3NA3lsxEWPT0s5YHD2Nme87cEqjkx4SHyT0whTdaEX5ZotQLs4BtwA6e5Ff3ru8RGTQgZf0=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywfe4e8ULGqK8S4hKuHiO/Sui+wK5NJnPtN7y3bDmiZCTnQGpZd
	wDrWYEOaWmZQoBPzjooPgKWz/CIXGcdFwdFCKJXn7K/SAZTwuLl0IgdxU/yED1lAjE0=
X-Gm-Gg: ASbGncuMfwWlTN2sViiVGuW5VVtz2xdx5NT0wvfW/zskUGe3ZHEOVgnO/lT98DM2cyw
	A6dhfLysqDa8PZCT/B5jIt02BgP+9vBQ5KhsEmd7mI1fZK8CfLNNHkPnbGZsmxE5VrfJhjxFBxw
	1JuKZwyuIOZI0kC1licQERKHcZBaB2bZaL3FcGAQe0T+1JZBpr1GwSl2vPwyw8QLHaGsnBj9KwE
	ysli0CzWJvpx72si5y7ZP6JlRejIbZlStlQqdUu6NMGJ4tcuss70cEA0I94rGhwvHGKcjOKG1QD
	MtF8Js0YUJWt+ySEoGcJTcox2oiKqNHlOMRzVQcjJGRhoSoTOEoOZ63YhAOP+n6zeqI6bl1fyKy
	XYp/dEqjliCU+dM0W4XjGGg+ZxWTan3ij8ZF1UjhALztjkka6vu+QZETkJRux6vaHqWeEXeNSSD
	kvGSacLiQhhQ5rlPIP+g==
X-Google-Smtp-Source: AGHT+IHxUjgdNCXTiwpOfnXS2oC4TBNMEII+w8M+hOGIH0Djg1ZSLLta8lC5CXkAR753ngvyVq70XA==
X-Received: by 2002:a05:600c:3542:b0:471:115e:87bd with SMTP id 5b1f17b1804b1-4778fe7d0ecmr189079235e9.26.1763551007791;
        Wed, 19 Nov 2025 03:16:47 -0800 (PST)
Received: from [10.1.1.13] ([212.129.77.152])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477b1013edcsm42553585e9.4.2025.11.19.03.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 03:16:47 -0800 (PST)
Message-ID: <643a5776c383a501b129cd0f867395c0ccf80566.camel@linaro.org>
Subject: Re: [PATCH] phy: exynos5-usbdrd: fix clock prepare imbalance
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus	
 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, Kishon Vijay Abraham
 I	 <kishon@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar	
 <alim.akhtar@samsung.com>
Date: Wed, 19 Nov 2025 11:16:46 +0000
In-Reply-To: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
References: <20251006-gs101-usb-phy-clk-imbalance-v1-1-205b206126cf@linaro.org>
User-Agent: Evolution 3.56.2-7 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_031650_221746_7F0C8A93 
X-CRM114-Status: UNSURE (   7.85  )
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

T24gTW9uLCAyMDI1LTEwLTA2IGF0IDA5OjA3ICswMTAwLCBBbmRyw6kgRHJhc3ppayB3cm90ZToK
PiBDb21taXQgZjRmYjljNGQ3Zjk0ICgicGh5OiBleHlub3M1LXVzYmRyZDogYWxsb3cgRFdDMyBy
dW50aW1lIHN1c3BlbmQKPiB3aXRoIFVEQyBib3VuZCAoRTg1MCspIikgaW5jb3JyZWN0bHkgYWRk
ZWQgY2xrX2J1bGtfZGlzYWJsZSgpIGFzIHRoZQo+IGludmVyc2Ugb2YgY2xrX2J1bGtfcHJlcGFy
ZV9lbmFibGUoKSB3aGlsZSBpdCBzaG91bGQgaGF2ZSBvZiBjb3Vyc2UKPiB1c2VkIGNsa19idWxr
X2Rpc2FibGVfdW5wcmVwYXJlKCkuIFRoaXMgbWVhbnMgaW5jb3JyZWN0IHJlZmVyZW5jZQo+IGNv
dW50cyB0byB0aGUgQ01VIGRyaXZlciByZW1haW4uCj4gCj4gVXBkYXRlIHRoZSBjb2RlIGFjY29y
ZGluZ2x5Lgo+IAo+IEZpeGVzOiBmNGZiOWM0ZDdmOTQgKCJwaHk6IGV4eW5vczUtdXNiZHJkOiBh
bGxvdyBEV0MzIHJ1bnRpbWUgc3VzcGVuZCB3aXRoIFVEQyBib3VuZCAoRTg1MCspIikKPiBDQzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IEFuZHLDqSBEcmFzemlrIDxh
bmRyZS5kcmFzemlrQGxpbmFyby5vcmc+CgpGcmllbmRseSBwaW5nLgoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
