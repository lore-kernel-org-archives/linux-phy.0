Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71842C2D0CD
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 13:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zllAn3/Lg1gzrdiZHZ34ZgP1bOKAi5duJRsWaGThUok=; b=YDGGfXuEjHFp3NZ2iPnDWS1BFt
	Ab/vAggyH4hCbKtDeUkPm+i3skuG5NA+kK2KK+VD6hs6jL7fVaH28sTWsop2rgkB5V0ElYy9pDMwx
	InetS/M7njyI+fI/ZKYJPJPit7rLmtZqf2au6YzJNtt6QQjaxELMXG7xt+G78JCiLAPNfzjvOXP8F
	aQBwsCCAiLkTsGH7BDUPf1inwJN4UXX/73du9rbA0Me2attDk4bz1g9np93pUuedF9gqaJJf1SaI7
	zdOHWjTt3a7emC1Pl44bJimb/TcjY6FYKxsXuQn3vmJgR78LfRp5squz19xU4R5GvJ5kYqO3qLxux
	+0iEwnEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjRK-0000000Fvni-0Pt4;
	Wed, 21 May 2025 13:24:58 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHizq-0000000Fqlo-0bbb
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 12:56:35 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so54430865e9.1
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 05:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747832192; x=1748436992; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lFIDlDb5icsBjUnjw7c2gJhHJtxbm8Ehn5sVOvHqQ7c=;
        b=YXAIPBK2I7jxjC/enT+vasxi6Cf2CR5MKMwOgIb8y0Y1RDFoucRfkDF2DZ7M0lJGyO
         nLwQfWsTZH9msWty/6dp2ptPrMg5ZzAHqhORBymUIODZswF1r3COZzoSggyX3YzT66xh
         an2xWZ85OvSdzTbwhXBTuLN7lIxTXyM3s1fQn4BYBDLTEPxQNkrgAKk9rP0/HVOMR5Ob
         Uh/3HQzNuHpX/OwV2cl/zjy46AzTeLM2r0CugMl21rDFldsUzdd06guG+2q4v3dZyvjX
         lxSFeoM5nozPQoiKjUGrw8Hzz3lFepBLKm7luyr81OqPu2hqJV1UmO2giGdcnciFggvP
         ww4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747832192; x=1748436992;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lFIDlDb5icsBjUnjw7c2gJhHJtxbm8Ehn5sVOvHqQ7c=;
        b=JzfEgIp2ri395SxTTc/1zM780b7ESyqzMJVfTQFRs3H30wEG21xX9Q1BLVdVbZuwhy
         LUDyqT4S7EIP3XBgMKPUurAne8qHS+xhXO3zXQpzDAY020ICR+0hGY7gzshZiiOwNPcm
         MYSfVZcr4Lw5v07M4M9D8AnHT7JJdNei/3ufpCEVqkcWJQ2FY76guTOW21K5Xk4+gs/M
         MifQLLGUrcoKNO6FCWlEUt2hWtQH1r6843bqzwdtXVROqPCqWCt9EPoY0T/w1tbL7pPA
         9i3QPFKytbkJaMyDK4/z+AF1qAAM0jdVk91iOLq6c8pzwUuWteea+t00IwvHDD96BZj5
         Pzfw==
X-Gm-Message-State: AOJu0YwTof1Xd5ao/sQyeYr+tVwQyaETZKkUAdXRMgff8smjrpb7YwQN
	OrrEQ0MLijNko5wUIhubjzHkDPsYNioXJGXTBcdZmTbZPDdRcARYAYgEx38NjQHDZqU=
X-Gm-Gg: ASbGncuuWuAd1uuQWoq5+ODJqVZPOUnelbmYtVqAijfBdP4V7z26Yn/PCuLSBqkJdaw
	xhrEvTDbFTJxdBn1MqrSvtiPg2Ok/0mwFO5kQqTUgPNUF62f7bejhOCydeg1xZ/ZKJ8Bk1n6YWa
	gTCcTUGBnh24jLUPbbenaXPH1f8XG5o/m6MRTq9sH10sGN0lHemcLI2EYuZEbbR2JjY5V4v0jB/
	ShQZ9B8UqkrJ8hQo5E8qDDXgLh8uFsIpRGectfSvCQDDmuFQMBMHoXer+54cUaB126yO8VqHelC
	lFJgBGQ2ICwwg8HuDV+6YqwG4TkuQMSj2dJBK7Vt51qjGbahva9GFO8aeLvHZM2MggX9CZnDQtK
	gFIxYHnZtAYgu5GwL8uDke6w/DQGx
X-Google-Smtp-Source: AGHT+IHvlxzqwfXaCVzPmrYzPKC5fQvHlhgdEJUw2990YoCs9+4bYKBjVnCrGTnpC0BhEynFW8In2Q==
X-Received: by 2002:a05:600c:c13:b0:43d:79:ae1b with SMTP id 5b1f17b1804b1-442fd627416mr198031985e9.14.1747832191898;
        Wed, 21 May 2025 05:56:31 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:80b6:c1af:bc94:958d? ([2a01:e0a:3d9:2080:80b6:c1af:bc94:958d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f6b29633sm72893415e9.8.2025.05.21.05.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 05:56:31 -0700 (PDT)
Message-ID: <42ddb5c6-0f17-41ed-8bd4-ab58880515b1@linaro.org>
Date: Wed, 21 May 2025 14:56:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: 'Neil Armstrong' <neil.armstrong@linaro.org>
Subject: Re: [PATCH v2 2/2] phy: exyons5-usbdrd: support HS phy for
 ExynosAutov920
To: Pritam Manohar Sutar <pritam.sutar@samsung.com>, vkoul@kernel.org,
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
In-Reply-To: <000101dbca1d$78ca5570$6a5f0050$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_055634_214109_4E663177 
X-CRM114-Status: GOOD (  21.02  )
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

On 21/05/2025 08:56, Pritam Manohar Sutar wrote:
> Hi Neil,
> 
> Thank you for reviewing the patches.
> 
>> -----Original Message-----
>> From: neil.armstrong@linaro.org <neil.armstrong@linaro.org>
>> Sent: 20 May 2025 01:10 PM
>> To: Pritam Manohar Sutar <pritam.sutar@samsung.com>; vkoul@kernel.org;
>> kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
>> conor+dt@kernel.org; alim.akhtar@samsung.com; andre.draszik@linaro.org;
>> peter.griffin@linaro.org; kauschluss@disroot.org;
>> m.szyprowski@samsung.com; s.nawrocki@samsung.com
>> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-samsung-
>> soc@vger.kernel.org; rosa.pila@samsung.com; dev.tailor@samsung.com;
>> faraz.ata@samsung.com; muhammed.ali@samsung.com;
>> selvarasu.g@samsung.com
>> Subject: Re: [PATCH v2 2/2] phy: exyons5-usbdrd: support HS phy for
>> ExynosAutov920
>>
>> On 16/05/2025 12:26, Pritam Manohar Sutar wrote:
>>> This SoC has a single USB 3.1 DRD combo phy and three USB2.0 DRD HS
>>> phy controllers those only support the UTMI+ interface.
>>>
>>> Support only UTMI+ for this SoC which is very similar to what the
>>> existing Exynos850 supports.
>>>
>>> The combo phy supports both UTMI+ (HS) and PIPE3 (SS) and is out of
>>> scope of this commit.
>>>
>>> Add required change in phy driver to support HS phy for this SoC.
>>>
>>> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
>>> ---
>>>    drivers/phy/samsung/phy-exynos5-usbdrd.c | 85
>> ++++++++++++++++++++++++
>>>    1 file changed, 85 insertions(+)
>>>
>>> diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c
>>> b/drivers/phy/samsung/phy-exynos5-usbdrd.c
>>> index 634c4310c660..b440b56c6595 100644
>>> --- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
>>> +++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
>>> @@ -177,6 +177,9 @@
>>>    #define HSPHYPLLTUNE_PLL_P_TUNE			GENMASK(3, 0)
>>>
>>>    /* Exynos850: USB DRD PHY registers */
>>> +#define EXYNOSAUTOv920_DRD_CTRL_VER		0x00
>>> +#define CTRL_VER_MAJOR_VERSION			GENMASK(31, 24)
>>> +
>>>    #define EXYNOS850_DRD_LINKCTRL			0x04
>>>    #define LINKCTRL_FORCE_RXELECIDLE		BIT(18)
>>>    #define LINKCTRL_FORCE_PHYSTATUS		BIT(17)
>>> @@ -1772,6 +1775,10 @@ static const char * const
>> exynos5_regulator_names[] = {
>>>    	"vbus", "vbus-boost",
>>>    };
>>>
>>> +static const char * const exynosautov920_clk_names[] = {
>>> +	"ext_xtal",
>>> +};
>>> +
>>>    static const struct exynos5_usbdrd_phy_drvdata exynos5420_usbdrd_phy = {
>>>    	.phy_cfg		= phy_cfg_exynos5,
>>>    	.phy_ops		= &exynos5_usbdrd_phy_ops,
>>> @@ -1847,6 +1854,81 @@ static const struct exynos5_usbdrd_phy_drvdata
>> exynos850_usbdrd_phy = {
>>>    	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
>>>    };
>>>
>>> +static void exynosautov920_usbdrd_utmi_init(struct exynos5_usbdrd_phy
>>> +*phy_drd) {
>>> +	u32 version;
>>> +
>>> +	version = readl(phy_drd->reg_phy +
>> EXYNOSAUTOv920_DRD_CTRL_VER);
>>> +	dev_info(phy_drd->dev, "usbphy: version:0x%x\n", version);
>>
>> Please do not add mode info to boot log, use dev_dbg instead.
> 
> Will replace dev_info by dev_dbg.
> 
>>
>>> +
>>> +	if (FIELD_GET(CTRL_VER_MAJOR_VERSION, version) == 0x3)
>>> +		/* utmi init for exynosautov920 HS phy */
>>> +		exynos850_usbdrd_utmi_init(phy_drd);
>>> +}
>>> +
>>> +static int exynosautov920_usbdrd_phy_init(struct phy *phy) {
>>> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
>>> +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
>>> +	int ret = 0;
>>> +
>>> +	ret = clk_bulk_prepare_enable(phy_drd->drv_data->n_clks, phy_drd-
>>> clks);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	/* UTMI or PIPE3 specific init */
>>> +	inst->phy_cfg->phy_init(phy_drd);
>>> +
>>> +	clk_bulk_disable_unprepare(phy_drd->drv_data->n_clks,
>>> +phy_drd->clks);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static void exynosautov920_v3p1_phy_dis(struct phy *phy) {
>>> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
>>> +	struct exynos5_usbdrd_phy *phy_drd = to_usbdrd_phy(inst);
>>> +	void __iomem *reg_phy = phy_drd->reg_phy;
>>> +	u32 version;
>>> +
>>> +	version = readl(reg_phy + EXYNOSAUTOv920_DRD_CTRL_VER);
>>> +
>>> +	if (FIELD_GET(CTRL_VER_MAJOR_VERSION, version) == 0x3)
>>> +		exynos850_usbdrd_phy_exit(phy);
>>> +}
>>> +
>>> +static int exynosautov920_usbdrd_phy_exit(struct phy *phy) {
>>> +	struct phy_usb_instance *inst = phy_get_drvdata(phy);
>>> +
>>> +	if (inst->phy_cfg->id == EXYNOS5_DRDPHY_UTMI)
>>> +		exynosautov920_v3p1_phy_dis(phy);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static const struct phy_ops exynosautov920_usbdrd_phy_ops = {
>>> +	.init		= exynosautov920_usbdrd_phy_init,
>>> +	.exit		= exynosautov920_usbdrd_phy_exit,
>>
>> <snip>
>>
>>> +		.id		= EXYNOS5_DRDPHY_UTMI,
>>> +		.phy_init	= exynosautov920_usbdrd_utmi_init,
>>
>> <snip>
>>
>>> +	}, {
>>> +		.compatible = "samsung,exynosautov920-usb31drd-phy",
>>> +		.data = &exynosautov920_usb31drd_phy
>>
>> All those new ops are only called when matching this compatible, it it really
>> necessary to check the version ? is there "samsung,exynosautov920-usb31drd-
>> phy" PHYs with version different from 3 in the wild ?
>>
> 
> This SoC has a single USB 3.1 DRD combo phy of version v400 (major : minor versions) and three USB2.0
> DRD phy v303 (major : minor versions) controllers those only support the UTMI+ interface. Currently,
> supporting only v303 phys in this patch-set, and planning v400 phy later (soon).
> 
> Yes, there's v400 phy version that is different from v303 phy. Hence, phy version check is needed to support both the phys for same compatible.

OK so add 2 compatibles, one for the usb31drd and one for the usb2drd since those are 2 difference hardware.

Neil

> 
>> Neil
>>
>>>    	},
>>>    	{ },
>>>    };
> 
> 
> Thank you,
> Pritam
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
