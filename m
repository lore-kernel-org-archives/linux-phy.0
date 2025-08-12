Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264B5CA0EE1
	for <linux-phy@archiver.kernel.org>; Tue, 12 Aug 2025 19:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wbZpdg1cdMNtzeT6f1Y2lpGsLZ5icqFZcapOuDT67B0=; b=iSIp9DPGUCUemZCviKAvEf7yR6
	F9zxEO3iaTsYydDY3YgK7TOcMDhuT9scEDLgMeHgOCv2dmgUf6X1m4wjqn1yt7JlROESGCyxoiYVJ
	2FdxRvKyG0G39ifwus2cORRMt+NmkIHOrSzFD+5tSzQpR2npATqMe7oe0+4fXpQfdribPdP6D4pTg
	fsPnxA2+WM8bwygymaJpvpM1L78P/0tEv32MsVNSzSESJlRqWT48O4S9Ata7LyW9Oh/cMfXnBF26C
	Syn3Zb115xkE86oB0DsWGOekAyVgp43enzfbxbA1YrBouF6OzcdJvWnUJeC3f+1V8DNrfFqFwyb+a
	f84oWMRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uluay-0000000BnNI-3Kzo;
	Tue, 12 Aug 2025 19:23:40 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulrYK-0000000BFwM-0IGU
	for linux-phy@lists.infradead.org;
	Tue, 12 Aug 2025 16:08:45 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-459e1338565so53019295e9.2
        for <linux-phy@lists.infradead.org>; Tue, 12 Aug 2025 09:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755014922; x=1755619722; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BFSWMsjZodOzDrOuJCoS7BkVLEszHuWpZmYI2ozmnzw=;
        b=BGh2chmyba9NIwCWRPOWH8hHdjRqnA3NZY73xYv7ElkszCYITrvTGd9YMmDX/bpamA
         uc8bG4kQyvMgs6wFmlqN49D18FBn0S5yb+0wfcsw31yO7pE0l3YpsEihf3nXbIv/LNBK
         ysPwvuxs5fko8clNFtm2gvrlYDWUQsEU38hIEtqPXBvoOlDLouwf1TvVKheUNZMjTF+0
         27AIepL0FjSZA5ysYuOouFGZTdH8BMj3C9LOBOUDCNdUjM7t9mYJKe4p1j9zjwpOReA/
         BTSdSgE7MnR64yHg506scnUMCKAnsg48SWY4mUuxShtxCLWhgzAsWPL0VS/a67mCuoQa
         kvoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755014922; x=1755619722;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BFSWMsjZodOzDrOuJCoS7BkVLEszHuWpZmYI2ozmnzw=;
        b=cGpxZrdKZHpvyxuS1cKOIl9QjBohVvoy0UQiMf64iZUVN6sH5j7kRx/FfNB8x6L3tB
         UNn8uUa82vGkuKeCESFdEorm/Hf+RADVUwYjzhsWZCeRE/mTum5ncGnet9rOwtPH9W7e
         RvfbYWNdp1grC9Leu8anH4X2+NudYicfby2ZYqMtOSD1iwRcjEsxnoNVJJz3WXmYo+8C
         HZfzi2dFyEvwlG3JefIhFvlTZkLQwxq5uIQHNiArrU7Leq81CXJ04rdN07cenkLaG8lC
         pviL1ehbvERq1idCDpM9DgpvAIE9V8byLcyOeOFDlOQ1Ngmi3EZiQhnnYkE+c3+yUl/w
         qxPA==
X-Forwarded-Encrypted: i=1; AJvYcCUQlydhQbhzein/Fml/lpA31HFOkb7OCsJVQ7eEbYo+Y3Mh+NUEZplzPkKnS4jVHL5x4o0yXrPTbsQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/wR9WDUM2R4pDrdQu/VsZvu1bdGKQwYaMxpNkS58X1o5gwT+i
	4T90EE4oOErpYYZ8W6kIE+UFTTqOzszzHr4dlWnf9SQXS2CdIeH06Y6MNYES1cdhVZQ=
X-Gm-Gg: ASbGncuznOmrbddzMvR0FNWPrscjKpBiLi2m7uJ6GJ37O+m2z+9dEL+9dqrt/1oQo3T
	WZYTvP46MgubPT4NiKpWYCNPZD7hB7s7B8SXv1LplYd2zETNNGkFNg9pZ4iVBGp8WfulHd8dh6O
	ygFCZpipMcOuZ0IBNTChcn3cpKafMj1SY8CERV+oqsEFdrdaAJyWBz9F42qGvf5U7T8SgYsJCfN
	wLXZOnPi6JwtiWMaO40r6jGBjsUCKHJR2N78heNPBsMLrwAyW8nKBqH7ZS3B6TXUCcguKmHQm8e
	d2hZn/knQYSIUV0RNZq63VU4E0tDWcxpAw1AjHSUsjNM1fLSkiRzMA1BGnihuZQFjo3PsQYWOmG
	w4RaUr7y8kd67wlzQi/cwUsg7goHb9n5ytp9XpS74RVuuD/b8XuH63E/Pxo1hzqrBHTwo0W9Mrt
	v2lJef67xC0w==
X-Google-Smtp-Source: AGHT+IGWhSp2YqDcC+/Jt+aP3cE7/6QMFB+yYZoU2vCD1m9RO2LLMzcUXXdfrtNNkB+uXFFUtvtc/g==
X-Received: by 2002:a05:600c:1c88:b0:456:11cc:360d with SMTP id 5b1f17b1804b1-45a15b17f2amr3800875e9.9.1755014921954;
        Tue, 12 Aug 2025 09:08:41 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:9086:bd36:16a7:1f8b? ([2a01:e0a:3d9:2080:9086:bd36:16a7:1f8b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e5843021sm328553675e9.3.2025.08.12.09.08.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 09:08:41 -0700 (PDT)
Message-ID: <8b8207bf-e841-4033-8356-dffa2c2e2d25@linaro.org>
Date: Tue, 12 Aug 2025 18:08:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <d7949778-73c4-4575-8db3-a3724f75eb38@linaro.org>
 <16e4883a-a056-46c3-a7c7-a87ff5da89a1@linaro.org>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <16e4883a-a056-46c3-a7c7-a87ff5da89a1@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_090844_126963_17979DE0 
X-CRM114-Status: UNSURE (   7.24  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMTIvMDgvMjAyNSAxNzowNSwgQnJ5YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxMi8wOC8y
MDI1IDE0OjM5LCBuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnIHdyb3RlOgo+Pj4gK8KgwqDCoCAu
Y2xrX2ZyZXEgPSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgemVybywKPj4KPj4gSXQgc2VlbXMgY2xh
bmcgZG9lc24ndCBsaWtlIHRoaXMgYXQgYWxsOgo+PiBkcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1taXBpLWNzaTItM3BoLWRwaHkuYzo0ODY6MzogZXJyb3I6IGluaXRpYWxpemVyIGVsZW1l
bnQgaXMgbm90IGEgY29tcGlsZS10aW1lIGNvbnN0YW50Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHplcm8sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF5+
fn4KPj4gMSBlcnJvciBnZW5lcmF0ZWQuCj4gCj4gV2VpcmRseSBJIGNvbXBpbGUgd2l0aCBjbGFu
Zy4uCgpUaGUgdHV4bWFrZSBsb2cgaXMgYXZhaWxhYmxlIGF0IGh0dHBzOi8vc3RvcmFnZS50dXhz
dWl0ZS5jb20vcHVibGljL2xpbmFyby9uZWlsLmFybXN0cm9uZy9idWlsZHMvMzFCb3NzMzFLNm1l
ZVlBeHFoSlVabzh5aHdLL2J1aWxkLmxvZwoKSXQgdXNlcyBjbGFuZy0xNgoKTmVpbAoKPiAKPiB0
aHggdGhvdWdoCj4gCj4gLS0tCj4gYm9kCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
