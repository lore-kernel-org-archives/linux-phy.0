Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 507B2C531F9
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jul 2026 10:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqTq4RNr7qdkn6ClZI3aca7UfpUTXEWrDnaH+GNr/SY=; b=pX/bPbFZ7NIbkq
	AHH5t2NezrYU8q2ZVtGec4YNVIDIFGdJ/gU+LTOsKavEWN82kzS0UbfptyYhK7/gvxHP89YBkjmc0
	P/FksXr55vCyzC7zYJJTNR5eAm6GBlVceVz507t26h/eRiYM69dIwb3o7r/oxBNPEbyMry12kZ8YL
	kRfvtCTOV5T/vTAB89vxYPfE7Qr3i/2C/lPMhcQQTQjng5kr2/kiuIkB1n4T5sxkGwi5zTElF8l/4
	79CmXqmFDfiu/OiSN+JPEYRF5uPKujIA/WL0gh2ZWziue/JZIfW6KOiKdVbGTFTpVV0TkH/Sk8Ja6
	5+HtSBn2pja15WMpzTXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woewe-00000004wtb-3WVm;
	Tue, 28 Jul 2026 10:21:56 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woewc-00000004wt3-3krQ
	for linux-phy@lists.infradead.org;
	Tue, 28 Jul 2026 10:21:56 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-c1671ec8692so436844666b.0
        for <linux-phy@lists.infradead.org>; Tue, 28 Jul 2026 03:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1785234113; x=1785838913; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YVzux6UVfcA+2FPkP8ofIMape/wgcKMMpR+shB5OFes=;
        b=K4FeCVZ89+MGxrMrxgwhsX3gNsWWhmVJSv3ei0ddwlIa87G17M09Xo1eZ1AgxSCTMz
         VtD61tOtw7aE1Yt16XbQ7cWTldi5hW/n6sdLlTl7qXyqk3HBw7c+Todyip7q0x++5KRH
         qzY0JjXqGup7TOio3FBraBCCcPnXV7zAxWrRHfNmDprVup4rnyxENgampCzuLT2gF8GQ
         RavoVqCsmsY5E4Dgv5IFZIGKB9ME8G7r5E5rfD7HD9tpnEAiaCAlXL3TTb36rU4lVMUu
         Y56gzQ2RKAiIG2g23EWE+EK0uSDcVZWjOnd6sFL5twf7E/cEkjNb2c16hE4ckI/fatqi
         0XnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785234113; x=1785838913;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YVzux6UVfcA+2FPkP8ofIMape/wgcKMMpR+shB5OFes=;
        b=WH6pWNst1khjQAOejJthLMd5XeEb1Z3ZQ35HPNTTocnXEURdy13ftfmJQ6B8aAnVqB
         v72LhDSKT0hpOCGIhRT98+53DzyUK+kqrQph5sdCcuunt3P6Hoocibg0iHbdWI6nnvWW
         Vy+zhcZPDoQE3l0aestXNYJ/gcWjuuHZFY5+6SpNp4/+EnsoUpq9ZJz6bwp02mTlbV6f
         hbgZ9iDgxq+aT435rzB+ATiZCat5znZH2XDktaw5nJ6VYvR7F3FePm9aLBAKAhvz1/MZ
         EJpCXuM3AS7RViF9gdtWwU0IIJugQ6A6wZzv8jJ2sNGFgvgl0ffp4EXjWcMAkNXtSyFy
         hO3w==
X-Forwarded-Encrypted: i=1; AHgh+RrcrsSr4SpQunbnmCDJr74JQ6hF4IS3h5X0fCSspK6ZzNRTDrYVNoCglbKKrzAUWJd3lE9TekEgcFk=@lists.infradead.org
X-Gm-Message-State: AOJu0YylvdK+bo+IY4DoEEBTyflUwNIU2APip1S1WJjn/+maabTFEkR0
	xJGTCjz0jNxrNZPEFKrm3A0GwnwB4RX6AxiIWsBifauYuBrulZs9CX0EVMTuZjPiS9w=
X-Gm-Gg: AR+sD12NVCnh9WYQmhAKXil5CWlZz4tNknGDPOalhcw6QEKbyIlb2nVatii8feNiz7d
	Q/IJ4xWUFERonbs1us5JW+zxJaPWBBfWocxwvJVX1mD/Z+C732iCDxxpHCr2OPuC8uUqI4U1Zuq
	aIuWqfiJPkd0XpwbBCXpcaKEIcANTfmYHqHFKT5gdO70376T5/kwMyL3+jwr4wZM+pCfn6Ic98X
	EWCeJzGMM0g7FlmA+0i6VLinphJS/0rcbZQZD5GWq2U2y8awjJdCmtUlJkaB1A+CjrYzmXjXJY1
	y6AEJ/0qPuKUK8XfDD7pE/j9ctiIl0/SK0T9gye6n4yXxngMO3VfFUlENAr+Qq7ZvZ59JXqBPlY
	f6aAvJcl9kD/AFZDUeJXZ+o5j/e8VOwCptESWgm6+p7hCNqOr0P1sx73HlDH9BBY+XCiFdMnBwp
	rMf9fYZ3pXzEZnJw==
X-Received: by 2002:a17:907:ea6:b0:c16:1901:6ba1 with SMTP id a640c23a62f3a-c1f720f92f1mr101362666b.34.1785234112728;
        Tue, 28 Jul 2026 03:21:52 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.204.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c1c32ac7eacsm751144366b.17.2026.07.28.03.21.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jul 2026 03:21:52 -0700 (PDT)
Message-ID: <4dcc3b8c-8702-4d23-91f2-e3f84567dee4@linaro.org>
Date: Tue, 28 Jul 2026 11:21:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 2/5] phy: core: Add devm_phy_get_by_of_node()
To: sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, robh@kernel.org, devicetree@vger.kernel.org,
 vkoul@kernel.org, olteanv@gmail.com, conor+dt@kernel.org,
 media-ci@linuxtv.org, linux-phy@lists.infradead.org
References: <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-0-ae811e2f0799@linaro.org>
 <20260728-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v13-2-ae811e2f0799@linaro.org>
 <20260728094717.DD9A61F000E9@smtp.kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260728094717.DD9A61F000E9@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_032154_954084_3A96839E 
X-CRM114-Status: GOOD (  11.42  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/07/2026 10:47, sashiko-bot@kernel.org wrote:
>> +struct phy *devm_phy_get_by_of_node(struct device *dev, struct device_node *np)
>> +{
>> +	struct phy **ptr, *phy;
>> +	struct device_link *link;
>> +
>> +	ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
>> +	if (!ptr)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	phy = phy_get_by_of_node(np);
> [Severity: High]
> This is a pre-existing issue, but does a TOCTOU race condition exist in the
> underlying phy_get_by_of_node() that could lead to a use-after-free here?
> 
> Looking at phy_get_by_of_node(), it calls _of_phy_get_with_args() to look up
> the PHY. Inside _of_phy_get_with_args(), the function temporarily elevates the
> provider's module refcount, calls of_xlate() (which returns a bare phy
> pointer without incrementing the device refcount), and then drops the module
> refcount and unlocks phy_provider_mutex before returning the raw phy pointer.

This is an interesting idea.

Sounds not implausible and I haven't taken the mutex given in this file 
which is used for adding.

Yes taking the phy_provider mutex seems warranted until the get_device() 
completes.

Actually this is a result of functional decomposition so, I think I 
should add a patch prior here to take the mutex and hold until the 
get_device() in the existing code, then decompose that.

thx

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
