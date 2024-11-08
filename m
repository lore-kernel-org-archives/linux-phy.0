Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648ECD5AE5E
	for <linux-phy@archiver.kernel.org>; Fri,  8 Nov 2024 12:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HoBd6oHwsDtFv3es7Yj0ZluF/drSuYQ1kmbrb0qeH0=; b=COQhwdaOhTAp9q
	LX5ky0rYgA4ZjDE2a1wzerLjEGxE0YZc5WLV0Up2Um7RrDnpF0lgFnph+FNXFPfYouPKJ3BeStx4W
	SR/WBoFEl+BDWwVdxK2iwri+81YKZ2NhePOsGRbpNOn0kSmABkBmJipClNwtBUy4dlNrS4bY3opgJ
	khl3n13QRmMYzKJ3z/mxJ1xtpUAbIle71jtjoQt5XF/0hXb6hM7bHvS8w9MbXSSxMoJqWEwkn/cBi
	NC7GnnM9410F+MmtcBYRL5BRNKCS4FERpAf1Mv/yuXNp4wcmeS56gBVyxjX3re0nGfLQwphOJrnt9
	djZLKNBz/5yQzI6yeieg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Nem-0000000AR1X-2jgp;
	Fri, 08 Nov 2024 12:00:04 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9MwA-0000000AJT8-224A
	for linux-phy@lists.infradead.org;
	Fri, 08 Nov 2024 11:13:59 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-37d4ee8d15aso194464f8f.2
        for <linux-phy@lists.infradead.org>; Fri, 08 Nov 2024 03:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731064437; x=1731669237; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NpKPj8SjhbwkBn42AczmN4c1ljluVubEaU7nZ5+f+GQ=;
        b=je/INGlaJ4xjxQ1oNh/903yikZ5IsjrQB+XhBWpEmPiEs7cf0UHYkv+aci/9iu4BwU
         3gp2Bf0ddVMubB+42vUadh40oOPf1psi6XpI+RUnYLi+G66iPKpR+Ltux7ySmrgNigDR
         iF98HrLtHFW+CAmzeFbc3drRgRHzCu5gOr+be5Y8RUE11JiHIDzcvgrHj2IFqnW30kqs
         wM9HEArpRZfSb0NCz5vRYEtlrpzq3ppHaXD5eDadwmxgBq8yYP2i8iE3xK/wKVcx7QUX
         mQgga5mGLS4f35C68l+3wZbY+XY8FEfJNDhdpGJ4IW+4C2mYp6B3yw/JXTbCeT/MM5Yw
         2rmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731064437; x=1731669237;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NpKPj8SjhbwkBn42AczmN4c1ljluVubEaU7nZ5+f+GQ=;
        b=oV+3jhTWkPILWD1Sjqs1akgtja+WmEkNgiOuZwwYpy/hkHlggGvKVYXVlDwludHGsr
         gI9E6Y0TMhrUBoKVVF+ZNKChbfHKZ3uqvhL8MS79avV97nNoSNI7i9nRw3G4AEPqrYHv
         xP9j5bSks/lHUhNyuKllBHFJEkF8KADPWJqPnALyuV/eg063w309zmbq+S8THr2qyjkq
         XwJ9dXb9MXzEDhsjBSev9IrJ31X0yAVq9Q3mTDoEyakwvH+L6VV6zuKG5NXjbAvIdv1I
         EQHu7sZMPqDkjhzi8XTY/hNSyjCbHF2V8JH0XvDlHuvZIq32O8dxkV9rw+RRKgLbRYO2
         HE8g==
X-Forwarded-Encrypted: i=1; AJvYcCX2mK+f8yJbMRIc88KYmUSpqtKplEGfTUPEwL1A/ghFdmhszyPu3fr3Hs9UQfuSZhRYEGDCF/XVEyk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0bNZrTPlB+6oe06Ze3n/Rz0UuJsHnn4m4vjrYy5mReQKEJ+Pi
	JdYWHA4M0FWgm3bT0GxfnttFRWcwcYa7E6Q1Wl696/9ydUUoAGPffH5THS24FRIZVSzBJAbp9Pg
	lWZ7G3g==
X-Google-Smtp-Source: AGHT+IGcKLBGhPChakVileqX8c+Uvu5bTSyx9WN/j0Z86QZwqy72MEiAUASNL/d2y51b+uW3cGQH+Q==
X-Received: by 2002:a05:6000:2a2:b0:378:955f:d47d with SMTP id ffacd0b85a97d-381f1822854mr935921f8f.11.1731064436787;
        Fri, 08 Nov 2024 03:13:56 -0800 (PST)
Received: from [172.16.24.83] ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432bb8c3b15sm172055e9.2.2024.11.08.03.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Nov 2024 03:13:55 -0800 (PST)
Message-ID: <6ee09986-054a-4a84-a0f1-6b6424135182@linaro.org>
Date: Fri, 8 Nov 2024 12:13:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: ocelot-serdes: Fix IS_ERR() vs NULL bug in
 serdes_probe()
To: Jinjie Ruan <ruanjinjie@huawei.com>, vkoul@kernel.org, kishon@kernel.org,
 florian.fainelli@broadcom.com, colin.foster@in-advantage.com,
 davem@davemloft.net, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241101061145.2282501-1-ruanjinjie@huawei.com>
 <ee6521c6-9038-ab16-0773-c9425aae54fd@huawei.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ee6521c6-9038-ab16-0773-c9425aae54fd@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_031358_578807_C382CB0D 
X-CRM114-Status: UNSURE (   4.33  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 07/11/2024 02:27, Jinjie Ruan wrote:
> Gentle ping.
> 
> On 2024/11/1 14:11, Jinjie Ruan wrote:

After seven days? Really? Limit is two weeks but anyway better relax,
and help out by reviewing other patches on the mailing lists in order to
relieve the burden of maintainers and move your patches higher up the list.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
