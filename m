Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47170CD5BA4
	for <linux-phy@archiver.kernel.org>; Wed, 20 May 2026 17:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQVLP7hr2f9vWVpaHqH+wAeoZNPRnMvX0hoGw+SAVpA=; b=2ShocGNTa6oQyT
	BhDAwrZwnE+2BkiFGcV2bD4yaYJolQFmX7L3iDinpXpEr9Z2cXQolmSOqOLJS37EgplM/tevNYWhT
	RJZyPM/pzHW//xkcJ7ZP7yDLavl95PS2ro/CynlBkGLDuXnFZHm0A7uyixb0ItqkOfwTGeF4nU3Me
	4gn3RSjZfHeN119D3NCRJN4WLTZ1+txm4FhlTZB3hkhs1RpcdQ/3Bp/6QqmNU2y4HRpqMWU9i0RrA
	hmM5fT1URBw5iFZIXAMpQMyff/o9YUH5s9biivPuv3CX+VfT0ljwKjdH4/pNJRzO0R4X3FxAMJR+U
	iVeJqxKjdBXdw8rka9lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPkN3-00000005G1u-0QKP;
	Wed, 20 May 2026 17:06:14 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPkN0-00000005G0u-0Us7
	for linux-phy@lists.infradead.org;
	Wed, 20 May 2026 17:06:11 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-488b150559bso39820905e9.1
        for <linux-phy@lists.infradead.org>; Wed, 20 May 2026 10:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779296768; x=1779901568; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FJ2IHJqYxmFCyCy0y/0mCJBJ621zTHkH62ufit0bSyQ=;
        b=kT4cKNi9X1iodDoA+OU2G7xzebTz4ZfmlhFhIQQCp+07+iFSBlX4tfd8h1/+fCZ4ME
         lbVieAO+kI08eb35oYJX7IYsnRNJtmGg7PpOJTdG1EkjTJVof0Uq3FLIWobnC1Y4BX2S
         E4aBV8zGhXYNg1iAFG0OQRZdqF8e2YJQeBbLfySyBWs7EDjgQoM8ebS3xEk2o9ZX6GTO
         XTk1lsZWTWhB/HnU5stdMLmLaN7KFanlTRMPtrcU1almrCXMHrJYQ0EiZDibyiyRWLJC
         dnntuQCDHwsoh/r0qwlbaK4kszUyITcHEPC/GhgzqxIeV7cHrwG1GAbJUTOWdIY8v3/D
         Yk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779296768; x=1779901568;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FJ2IHJqYxmFCyCy0y/0mCJBJ621zTHkH62ufit0bSyQ=;
        b=hrAblYxS7aW84gAibyiVt5qYtwa/idX6YhD5WpxD0OVilcLq37WXzfTYwffexoziiA
         nl+FZjlkFm/G8irt3Upud3w5bqVTBIU/axndOA6lpkJe17EjfIpuxlcm6L+dX7w0rbaw
         qRcNqY+Gq/C5lsQVKVNhIWotq8hSdcjRQ+ujAUzMRtyZ7/xVrGKzyiChhnhE6UPvJ0H/
         TOstmic0hHEus85shw4u7grIncJaeV287UZqU4qf4XDA4gmcneHd32vczoNrz2uUaeSZ
         iKJWiQstrOC+wRXI+THq4eRioJiOKyVb2sLF5YSuvZA+YxNQaps57IAF/Htv1sKgNQDl
         6BDQ==
X-Forwarded-Encrypted: i=1; AFNElJ+J59QHEnw5cijiIWZOzo+nORnseJcDbddtN8aHM6kUkec0t+16BL10EgkbQGMdoxKOZHSypr0eb40=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6QmLm8G+3zkA9gFTF2TZGIZvypWKB2WxBYpl3U5EZwRhATRWK
	HCggHtqwpkgw1rzY3T7+P2VSr4+iZEUUZ0lp/YXGmdtjsw1NPppHNR1WKqQbPMDT42s=
X-Gm-Gg: Acq92OHaImz8VJnxDudrCRbXQfdNqlEc8Jol7+SAqs765TGEUvFXahgvVwdWuyt5YuD
	0RIFEBPaknf3LR3rlN3Yrd36lcchYf+s8OJwy8IubTPeeam+0lUPVBrwdeAPeqaxDGVsFXvptL0
	FXFnB7Eu89YfGbUmV0i4T8UnE9tAdnu50JLm6z8s8GgYMsaeWNjpHMmWcIb4c2ak5fY6oq3DqZk
	6qJ9hdkPu5bobB9PshzkI+HRdJ6vo6AU3T4ZYXR8a0Rv6LRCVvm5PgL+baq3jGmbOlEs6JmOoMW
	rSIvR0a6URN9JlvjsDpVcU87CXqQTqKgmfR1SztMfTmSZgOcvaVm+kDSSUHnpBNFHhMNteTGO/c
	AYXDnG9s4GAgE03fNl96I/4Nz4i3vjmnGIGEosjUoet+5gfYLJhkPsQLVKAbTWsSys+5N4Heupn
	1Fol+0l5qn9mM5NtCnjW5qARabbmobayU=
X-Received: by 2002:a05:600c:46cf:b0:48f:d5a0:284e with SMTP id 5b1f17b1804b1-48fe66267eemr368182925e9.28.1779296767731;
        Wed, 20 May 2026 10:06:07 -0700 (PDT)
Received: from [10.11.12.109] ([82.76.215.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49033d5f21dsm5156135e9.13.2026.05.20.10.06.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2026 10:06:07 -0700 (PDT)
Message-ID: <3d0ef4a0-f943-444b-acc3-6d44e690fa16@linaro.org>
Date: Wed, 20 May 2026 20:06:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: exynos5-usbdrd: Remove error print for
 devm_add_action_or_reset()
To: Waqar Hameed <waqar.hameed@axis.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: kernel@axis.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 Juan Yescas <jyescas@google.com>
References: <pnd34a6m7tc.a.out@axis.com> <pnd7bx2j2pi.a.out@axis.com>
 <pndjysynn55.a.out@axis.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <pndjysynn55.a.out@axis.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_100610_180737_66F7D210 
X-CRM114-Status: GOOD (  10.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



On 5/20/26 5:58 PM, Waqar Hameed wrote:
> On Fri, Oct 10, 2025 at 15:39 +0200 Waqar Hameed <waqar.hameed@axis.com> wrote:
> 
>> On Tue, Aug 05, 2025 at 11:33 +0200 Waqar Hameed <waqar.hameed@axis.com> wrote:
> 
> [...]
> 
>> Friendly ping incoming!
> 
> Friendly ping 2 incoming!
> 
> This will be the last ping for the original patch [1]. I'll interpret
> the silence as a NACK (though it would preferable to get an explicit

The patch is fine, I think it just slipped through the cracks:

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

> one...). All other patches in the previous patch series has been merged
> [2].
> 
> [1] https://lore.kernel.org/all/pnd34a6m7tc.a.out@axis.com/
> [2] https://lore.kernel.org/all/pnd7c0s6ji2.fsf@axis.com/
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
