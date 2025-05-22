Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58210C54E65
	for <linux-phy@archiver.kernel.org>; Thu, 22 May 2025 07:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o+O5ZHqP0s4EMWmx7qKFXXqZ1mnbHQTlUCQqNY775GU=; b=0G7NckshTneH3gY0X2eXU0uQ9u
	aStDmEBo9j22I5w3GrTGa/PlopKlsYZAXUG8hdRk3PLi/w8DH+mLQyMWXTLTrG7eelBGFzAOTpAJt
	S1bLSLK8lGKVIKcr4xhtVGuVwlU6a0kx9siLM1bEZhUxgb8A+Aa8kBGnLlxZByStydffd6OJ6jCBj
	mFDoum2gqQMD2+D9UbDOVL8X6tu0EH21VgD2ykwV9E3g5USSwKgt4cJNKddLrX9M5sp0l4syUcuuz
	bvHGzeJyc1JqEUUt6poM2Z/Kj9sgzcWKtWtMxGJjHCI3Q0nBRXCNypvvv++yX6wJerTpJcTJFNQLl
	zgyt/ZOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0IX-000000007XS-0AOH;
	Thu, 22 May 2025 07:25:01 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI0Fl-0000000075F-3j6N
	for linux-phy@lists.infradead.org;
	Thu, 22 May 2025 07:22:11 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3a37ed01aa0so1567363f8f.2
        for <linux-phy@lists.infradead.org>; Thu, 22 May 2025 00:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747898528; x=1748503328; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yKU1imWgjnCI3avar2mUIPQzX7TLviFQtJlqfZ793SY=;
        b=Uc1fU1xru+TbY7Gwh4IpKPrz+N/bji8KKLa7h11QrF5ZliHjpKQ34vDmlbatnTf18b
         Vw5FZfoOA/hO/VDufrvxkev/DqtV+M/4Il63a/Em8xiBfkB+2eodRhuVIGWq2zwfI4G3
         PAolC8R6PEXDLc5Q/popEh7HZ2Dxf3maYcyv/TB2Straf6OfotDSWAj5pz1X2Xcx+B2q
         lF7wnloE73QCdNfa3rFD/TTfNSMYze9cByjpERrM8zv5IJia7qcfFnMqJygVJOC1AMqY
         a7wcya9kYjYFV28zkV9qsrzHOKB7hV9mNTC2gVVjZFXGCLAJFzd2giFPtBNjFS6hdElb
         GQSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747898528; x=1748503328;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yKU1imWgjnCI3avar2mUIPQzX7TLviFQtJlqfZ793SY=;
        b=WdqHEFhhMmsL0L4s11Jq4MhJMJs3qZDR+1Y2LyX3N6hjcVm6aX3/tklsnMEDyo8yLB
         AgtJWV9EyB66DM/xEK9LVpQIxI6M4JISAG4+hX+e9v/9VvvavH+BLsORsNQosiSlhoWA
         jA5IVmleBWhFCVtNFPdizPc+LXlHQMR0NigdAfw8rkEJae1sDrFxQ8EiYWBUA0Kw3CjO
         XUX0FXoGF5rGL+eJ6If9N4lLhwdVLXoJpQbq+ro4p43yCIQvULg10gn/svCLtV/JFlI7
         j6r7BEZB8lYqD21bKXQHXsmiMsLgYk3zar54sFE60rqU5AgjRKJlP0FOuEdYSLyx1ZV3
         9IwA==
X-Gm-Message-State: AOJu0Yw0elgCN+YCzTgqLQ7VbGOesDeLb+Ppayefgb9xJ3T7Y2W8PU2j
	OUnNtfrdJNYMXuQAviMJUXFlEcajPD5+JLpcAGCNgEZzgr47AUSr473z098unfF4K9w=
X-Gm-Gg: ASbGnctFmO9btMZFA97ZRSL96v7f9xtiVF+DfKPMotzKYlW7i/IAsbu/3IpaVwGJOrT
	mqMCdNCuzmxy2reG2QuIZVOGzgCZ4TQiXzFfhOXIpjG2P/3nVTPiOK9a1KwpujvUVSWDYJNOCzP
	0RCLStaDHkkXg7wmAJoQBxZSKpJI8wYF/i/Cnwf49Lai8gy9ii3XIDoC7thQP5wiYhtSTVLzNw7
	oy0IgqgufGz5S4ySLeLpxzNt13/v4oGv6h7aCSR1DcLart7KEyNDpp0+fSEerAn6VdNUDolddnV
	NdH15GlchkCbgmTGck0Q65WiXjaEsZh7L/wa8kksiryPGjfeRqYPWF67pEFZkI1XJ9IVT+iBoKg
	LEvCKus5Rx5mMmPSpnf66lEN8nTvc
X-Google-Smtp-Source: AGHT+IE3G6efsN69U61nJWH6Wm1uz9RoCxH2Y5mDFgiyh9RV68lG2Ng8GLSEqrPwcUEbVLsLRT5P9w==
X-Received: by 2002:adf:e385:0:b0:3a3:6282:693a with SMTP id ffacd0b85a97d-3a362826998mr17022969f8f.44.1747898528052;
        Thu, 22 May 2025 00:22:08 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5? ([2a01:e0a:3d9:2080:ca6a:4d93:cd32:83a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca6210asm21904363f8f.41.2025.05.22.00.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 00:22:07 -0700 (PDT)
Message-ID: <09533aad-fbec-477d-a088-5ecbe181368b@linaro.org>
Date: Thu, 22 May 2025 09:22:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Pritam Manohar Sutar <pritam.sutar@samsung.com>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, andre.draszik@linaro.org, peter.griffin@linaro.org,
 kauschluss@disroot.org, m.szyprowski@samsung.com, s.nawrocki@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
 dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
 selvarasu.g@samsung.com
References: <20250516102650.2144487-1-pritam.sutar@samsung.com>
 <CGME20250516101803epcas5p2d9403d89d840dcad88a03d437a48aceb@epcas5p2.samsung.com>
 <20250516102650.2144487-3-pritam.sutar@samsung.com>
 <a5c1a064-d760-4140-9e78-d74823b400a8@linaro.org>
 <000101dbca1d$78ca5570$6a5f0050$@samsung.com>
 <42ddb5c6-0f17-41ed-8bd4-ab58880515b1@linaro.org>
 <bd9ab640-2469-4455-bd69-302dd3898c7b@kernel.org>
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
In-Reply-To: <bd9ab640-2469-4455-bd69-302dd3898c7b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_002209_946205_9D10D647 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 21/05/2025 14:58, Krzysztof Kozlowski wrote:
> On 21/05/2025 14:56, 'Neil Armstrong' wrote:
>>>> <snip>
>>>>
>>>>> +	}, {
>>>>> +		.compatible = "samsung,exynosautov920-usb31drd-phy",
>>>>> +		.data = &exynosautov920_usb31drd_phy
>>>>
>>>> All those new ops are only called when matching this compatible, it it really
>>>> necessary to check the version ? is there "samsung,exynosautov920-usb31drd-
>>>> phy" PHYs with version different from 3 in the wild ?
>>>>
>>>
>>> This SoC has a single USB 3.1 DRD combo phy of version v400 (major : minor versions) and three USB2.0
>>> DRD phy v303 (major : minor versions) controllers those only support the UTMI+ interface. Currently,
>>> supporting only v303 phys in this patch-set, and planning v400 phy later (soon).
>>>
>>> Yes, there's v400 phy version that is different from v303 phy. Hence, phy version check is needed to support both the phys for same compatible.
>>
>> OK so add 2 compatibles, one for the usb31drd and one for the usb2drd since those are 2 difference hardware.
> 
> ...unless this is fully detectable hardware, then use fallbacks and only
> one compatible in the driver.

But use proper compatible like "samsung,exynosautov92-usb-phy", but still those are
2 very different PHYs connected to different HW blocks, I won't mix USB3.1 and USB2 PHY
compatibles.

Neil

> 
> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
