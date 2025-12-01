Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7FC9D116F3
	for <linux-phy@archiver.kernel.org>; Mon,  1 Dec 2025 13:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i7IjGNJ4PRflxX8yKS3LMBTX4g9E2gXMk68VV0D0Lg=; b=IKgA68Y6uGJgjB
	+kTByc8eDOfJSMs+tri8mgkusE/3SHNBBYaGrS630L0EE3BdQ8ZnDmTdvXuh1+42/3UoflEUcVwW8
	ibBcL21uCiiLWsa4rC0cmMYX/qvqUjRifsh2uqhhuWnOFMRRjVjo2B0izsJmIlVJRRRnnhuZ/yy8B
	X0vz+PByP6PRQ9Dx94XQGqm12z1m7qxiReOZgPGq7a+U/VT3spnjHsj0ms/WFjM6X2n+YHg+CKqqH
	pcqzjn9YYGyI/zyzvM3cpJPdOFgeVYgsEWZ96d95nxLqSBD8rWF4XOG+z/62llQQenQcl7s33Sjr9
	qQkPmqhxq03e4QrRNE/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4Hd-000000042mO-1w6z;
	Mon, 01 Dec 2025 13:49:41 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4Ha-000000042lX-1KEe
	for linux-phy@lists.infradead.org;
	Mon, 01 Dec 2025 13:49:39 +0000
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-9490b441c3bso193422439f.0
        for <linux-phy@lists.infradead.org>; Mon, 01 Dec 2025 05:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1764596977; x=1765201777; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LX4Z8WF4/u+atBhlBwzBrhy4vIEbhmKBOl8pVRCNa2E=;
        b=t0BWIpVsMy3EE/+OOjgbYqcrHu6PKRTE65SuRFen68Tv1H85J/Bl/vddsCajwWtEAO
         wzKiwLKC4526Nlau/bTse9UrSpWEoeoUrtgdav3nWbeOO1D4SuOLxDTib5NcsR3DOCDp
         9gPjf3BDDbp1zU/TcADQFYZl2actr6HzlHJjYt/DtDaM6wIsT03iy5FhOqqmUMs+tyAp
         N11RE67AQZv3InJ9UfFAzDWhFCMKlcj3DW+wUHdInr5m4fkv7v/mp+2vsXyrVLozBc/b
         6tHji+PHWIJprd73XRClBTVnzvOHKobNMQQhSaHiotA64Iw7mG0CGMloXSbyTZ4KMm1Z
         Ovrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764596977; x=1765201777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LX4Z8WF4/u+atBhlBwzBrhy4vIEbhmKBOl8pVRCNa2E=;
        b=AZXz81VyzAQGODYkJ3TcTWjSeKF8lyWU3q9BtiGfhiuwscPvPoao+RryCP7KwyJMHq
         tBz4lJlTz3Om+7R+7Y2O3bGSivAp4Y49feEkQbLgYadq4kYDsyxixNfes/cGeOYTF8Nl
         wZgVcmqTQIxYSlqUznsxkA+U27Atx5Hg9C4b9q2MNefw+/svuV2ueoe10cXiOZ+pQKvH
         hVrUOVGH/sdDiSwz0ZNoKVSZz9FV9cmoYswDPim3jhWMUg3r9rY+K6C27d7C8LuYW7gF
         yYhG0ixnnLf9/iV0fYqzOXr714TNQo/8Jbb0cQ5/5Jit5J6LhnuFHJVakCxONW4naKP1
         FqXg==
X-Forwarded-Encrypted: i=1; AJvYcCVHLQ4f2Wgk+WyxwVaV3QhmdiPpu+a2VyJliDUGh0tRSmKjm3PNEy9tFtxyRpJKR/xgswp/oXhxI8M=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzxsb0swXBQz/VLYagCapYDeThbclIf/EJBRjmravLGZcS7LV12
	mTN/dnvK61BqxKNU+rj9wFvmG/fmK9g4B4Lpr3L7freAaYTnKSnixXijMy0MkQmIAeA=
X-Gm-Gg: ASbGnctbEx3825mX89nV0izkZqB1qZg1q4kVfzQz4qDlDkEeMyFur7K5qIzLBry/flH
	TTh2D95AKvJTewI37ErSgtBqINjDde4H8MO4OGATF306MhzqQrhK4RH2sBQxN225hnB4yT+IX6R
	KlMP7WWJg2xmL5oOYz/HJr8jVf7O2bBjxEvNSrPvEpjFt1a1/5R9fBuX/a+zRBe2Jr9hhilXvSG
	p8Hp6ozv3lddRyI+BzpauQQQ22+rc1BzP0b2M3LzPbVvom/FkXhQvVO6j/gu9Og2JjJDZCxVomJ
	jkpT1QvEV+FqWbyQucgfwZY/yq4sSf+5kZuZjXVsQN54noMr+Pe7gE0vTRZdq+vpkyYa9+EUYku
	2IVNl1fAXhjv11yTKUaqncOsjC3uhatIkIFGQRryhJUS2eVwJ2pYfEn6NiH34eUYucGDt8qa8to
	7lGJhEkr8Ot6NWnfTkIYHOkvuon1GWBRvQ1idL5j46QeKQq2xeUQ==
X-Google-Smtp-Source: AGHT+IGpW4lDtcEJPQ43JCM3nfwACbMBWQNMoO/13AWgIOHeyQlkqEJM34cP/OgXfBBv5XVqjVJ6NA==
X-Received: by 2002:a05:6602:6411:b0:948:a6b9:3d08 with SMTP id ca18e2360f4ac-949488ae3b6mr3137565939f.3.1764596976940;
        Mon, 01 Dec 2025 05:49:36 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-9498fbee405sm609850439f.8.2025.12.01.05.49.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:49:36 -0800 (PST)
Message-ID: <bd9680a1-5b91-4e80-890b-8331ce8ef302@riscstar.com>
Date: Mon, 1 Dec 2025 07:49:34 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/7] phy: spacemit: Introduce PCIe/combo PHY
To: Neil Armstrong <neil.armstrong@linaro.org>, vkoul@kernel.org,
 kishon@kernel.org
Cc: p.zabel@pengutronix.de, dlan@gentoo.org, aurelien@aurel32.net,
 guodong@riscstar.com, linux-phy@lists.infradead.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, Junzhong Pan <panjunzhong@linux.spacemit.com>
References: <20251113214540.2623070-1-elder@riscstar.com>
 <20251113214540.2623070-5-elder@riscstar.com>
 <ba532f8d-a452-40e5-af46-b58b89f70a92@linaro.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <ba532f8d-a452-40e5-af46-b58b89f70a92@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_054938_591135_142DDE31 
X-CRM114-Status: UNSURE (   5.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/18/25 2:56 AM, Neil Armstrong wrote:
> 
> Anyway, no big comment on the code or the API usage, all looks good:
> 
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

Vinod, I never saw any indication this would be merged
(and the bindings in patches 1 and 2).  Was November 18
too late for the 6.18 release?

Should I expect someone else to take this PHY driver?

Thanks.

					-Alex

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
