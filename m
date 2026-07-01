Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C01EC43458
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 15:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI5wgwg/qNKtXbzW7awsE6uS17uioqYNPxawqtJi904=; b=DxfY7c3k1r6PNc
	HJxJCl+l8/CTKWZB5fupl5VWtKnxvPU072Qb5lwNEvrNlFKK5KRfDqs6Y/Q8+NOjAd15HXjVFbgwf
	qi7H26QBnqnHmm/YX8AUnpY5CTcIcjrZYedqIqQme3UFrnYR1+LT1es1tq4BUZGqK/mTQGRY+hap+
	eHrYUfTEcKwtIYUR13NCsNRmN6XaAkEWR1/2F13CQ4ndqHpGaML6jCfwzl7tarz1eUzQi7Pss0a5W
	2KKMtj9MAvup9v6uMcGJIv0uVAGiM7SzW7q8Gg9A9W195B+4EE4YwOdHlt3TUG+DGMCUwETNtDG9O
	NMBi+B1OTgXOX4eafGBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexFn-00000002RdS-3LH8;
	Wed, 01 Jul 2026 15:53:35 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wexFk-00000002RcX-2KDy
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 15:53:35 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4939a809b24so7971275e9.1
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 08:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782921210; x=1783526010; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=upLoHwuqws7rrBOx3O6MmxFWpeRxrfgF8hyyVKwGdoE=;
        b=Ek/6rNE+/0b1ykNcVKXmLrFsTkNj7h3pYN36mXDVSYmpezcjnX70gQjTSql/vdC4HU
         lE/XmcVOTfAgft2mcaDpmhROPpv8UhM5/S1BGFkuWin/UfPwh3Qjd4Yke/DDqAoZJ60p
         oT730tQPGsFgeTWyKgf2VX222JsSQ5QYJLb0uLe2qOGiFmEppSDUM3oWfiCnWFWJ3/iZ
         tutCsuvobWblzCXU55IGIVnsoTwehW1PRAYXbV81LHmpqUfEHB7CqjWl0QdOmL4y17OF
         5v0DbuPd5Vt/XP/zXu9eeUd/l2LIk3kDZYlXB2rxtyXpYA1JLzMxa7cIBP7VSFesyGXz
         q6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782921210; x=1783526010;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=upLoHwuqws7rrBOx3O6MmxFWpeRxrfgF8hyyVKwGdoE=;
        b=omaCI0M8bSXHzSBZDAbHcoMQpYF6xlMF2/GYnFuZLm9t5udfLF3DtkmO+BP1PEsAyQ
         VcphtGGPY/t1IyO6S7PaQya5sCBgsHXqG0so5f1SYc2Iy0OLrqNF3DmCfgynAAEFYzRV
         oK6km1nvnT4PLYa3Pv5pvZSASmiycKSsghfJxxtapykByUUxKLxX8KyzcrKWz09AghnQ
         fCE8vMvTKHkw4CTYvVgqth5liMTgAZgxQrDGWJD2Pb12QV56EAekMfj3ipw2soUBHeH+
         +DO+u3dVjprdnf0zPXgE/t6LsKKXioTD4ESTuVoLICi4NzJqV5bTBcEDMnYA/9OPOvYH
         OXWA==
X-Forwarded-Encrypted: i=1; AFNElJ8zrWYEc517SCS7zopskta9iBBh0olwfTpffkBQBf2PkDta44zXmOHJzeADmlyu8GBNZGOqXsVtzYg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4dgZfwGEP0z4pa1CaWJC6zEa6087xRf3ODzFi+eTm9ielq6ZY
	I4dQPEeRKcWE8ziJZMFbR9EeMzhNsLaTyfXqD60lf86yZ7ICD3tqja99z8BILwdwIAY=
X-Gm-Gg: AfdE7cmD5WujbT/Y/tSbMHVbR78BEkLDceldtFMZxJo6AhWNsYqKE8zcjs1S3geQOiv
	UZMjujFUhC1fNz+8O49w8V9iBv8haBFfINdSiHqLL4tmjYq7xeZ7K1m8XzVWGwxZjbXdGbb6emA
	9TWzufji6QQy9f2WRz8mwiqijZR9LJfsEiPm6stMfGkJs9ebgkbCPvT/ZDAMrICM//Hgufp6Mo7
	CB9cEGs3ExhHPtKGLuas+s/0hhh4rRcbAzVqHB+JiJJ/nwM43mSL79DxNBW9ZmcakX/uXrwqROU
	wZNopj8krWUtfUh4yHzLYWRydSXNGyiOVhUjv5Sazx0XmLP2c4gppsiiRZYgINa/2r6uH48FFHC
	lmCd5sEZFTHOCkwk3sYLzPZSk4XBCBYtoSZ3zMd8I8mXJ6t9dHpL3T+tiWT560zf0vTNbLFfrn9
	Cdbw33aMgQmzpUZ7BsRsIMcIY=
X-Received: by 2002:a05:600c:c171:b0:493:b6e2:1b0f with SMTP id 5b1f17b1804b1-493c2b99a63mr35052815e9.33.1782921210480;
        Wed, 01 Jul 2026 08:53:30 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.66.240])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493be4d8f5asm127457835e9.8.2026.07.01.08.53.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 08:53:29 -0700 (PDT)
Message-ID: <cdcea32f-0160-4501-9dfd-9103807c4d93@linaro.org>
Date: Wed, 1 Jul 2026 16:53:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Bryan O'Donoghue
 <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-2-a85668459521@linaro.org>
 <54904b61-222d-4600-ad4c-c03a9952d337@linaro.org>
 <be3e1abe-5148-4247-930b-2e23164eea73@linaro.org>
 <c6aetoiz3dcedlxwjmt5cqh2mngswtmanf6p4s2molemnviwdc@btotpaqwcsoy>
 <f6c91099-0002-4580-a5e8-5611b089024b@linaro.org>
 <v4vz7cistjb2iuzha4oykglar7duw4y2uuyhumzs33yvpwrxcu@i5tsg4uzpuwc>
 <8eb709ce-3469-4303-9c3d-8d1a221cb8de@linaro.org>
 <b6a8c860-8b47-4250-a428-5225d0e64a1c@oss.qualcomm.com>
 <htxqjgwjczsghunsbvo44lwkadzeg2kp6wfcksf3hkmcubvs2d@cw5r67uxskvu>
 <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <59331aa7-8430-4754-861c-4ba6a4810ccd@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_085332_622417_D2696450 
X-CRM114-Status: UNSURE (   7.55  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMDUvMDYvMjAyNiAxMDozMSwgTmloYWwgS3VtYXIgR3VwdGEgd3JvdGU6Cj4+IEhhdmluZyBj
bG9jay1uYW1lcyBwcm9wZXJ0eSBkb2Vzbid0IG1lYW4gdGhhdCBhbGwgdmFsdWVzIGFyZSB2YWxp
ZC4KPj4KPiBDU0lfQ09NTU9OX0NUUkw1IGlzIGEgcGh5c2ljYWwgbGFuZSBwb3dlci11cCBiaXRt
YXA6Cj4gLSBCaXRzIFswLDIsNCw2XSDihpIgRC1QSFkgZGF0YSBsYW5lcyhMTjAsIExOMiwgTE40
LCBMTjYpCj4gLSBCaXRzIFsxLDMsNV0g4oaSIEMtUEhZIHRyaW8gbGFuZXMoTE4xLCBMTjMsIExO
NSkKPiAtIEJpdCBbN10g4oaSIEQtUEhZIGNsb2NrIGxhbmUoTE5DSykgZGVkaWNhdGVkIGNsb2Nr
IGVuYWJsZQo+IAo+IEluIGNvbWJvIG1vZGUsIG9ubHkgTE42IGNhbiBiZSBjb25maWd1cmFibGUg
YXMgYSBjbG9jayBsYW5lLgoKVGhpcyBpcyBhIHJlYWxseSBleGNlbGxlbnQgY29tbWVudCBhbmQg
SSdtIGdvaW5nIHRvIGNvcHkvcGFzdGUgdGhlIHRleHQgCmVudGlyZWx5IGludG8gdGhlIGRyaXZl
ciBhcyBhIGNvbW1lbnQuCgp0eQoKLS0tCmJvZAoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
