Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83264C0218D
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jan 2025 08:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r86sU6rVbxny9blaxLn7CFFDGQ4QNC/V2yiDM33+hvc=; b=4THCEc564YkXEL+gluA5Elciib
	Vy22S+MrM/YhpzuFCB9AO/CCu4U1sXKNj2bHt0fBxA756NFjl4GMPr3zsWgpPFNQWAdjJW4ybZ/81
	4cN4J3+us3XadskM28NpmKbzMYq9azyOOYrtyRYV4tH9TwKkrHzEjSykqRgeZ4NFwNcvBSaKNvrEh
	i8QBbkH5tg9DBiEJk1JZ0+QHorQnfq8HRLKmWjM2ZcT9uuyaqi/HEGywvSpEM0iL9xpEgFBfY4NUI
	FsOqd0G2YNSnqYIJjbfPeR2XBzyoueWZJz+ipMOerVolxIpKVgij43C162jh6eUQkYmkyDWK+NYUr
	pt3nMVcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1td3Rk-00000006Yyh-31rD;
	Wed, 29 Jan 2025 08:29:16 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1td3Ri-00000006YyI-0x3r
	for linux-phy@lists.infradead.org;
	Wed, 29 Jan 2025 08:29:15 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-437a92d7b96so66571645e9.2
        for <linux-phy@lists.infradead.org>; Wed, 29 Jan 2025 00:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738139352; x=1738744152; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KQNYCdG1yalzr+nhTkmask1WyrAuIEflxT0cAB6dcWI=;
        b=zFjeq6ZFLWFFerrZXu7joVJXhCeGqiyhNMBQewKHSBDjH5kz0nkohbm8Wy2xnhbHse
         my0abQueuBzLk4N8vK+Q1NrLm2CNb8nYJfpM9YCG5VTnSOqVQErYTf1eDC01ZQ91fLiu
         pTM/W8xqA4vpMj9cB43/TX3QMv/MJBUjGDKPo9D7nxbAoNz8FxLSw4waOeRcex5sDp+p
         tZhvMlnu+nLS+IcL9NGgVUTvxGC+qyqC73T62jNuuFNO1fv1VLW75L2tQYWyz7qyDNl0
         Dn0dhbUV2DnZPy+3NpWVidgZQedmXqTx6YFJdncu67ugqnlMdExbPZ8nfPOUE6SepRL3
         x8NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738139352; x=1738744152;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KQNYCdG1yalzr+nhTkmask1WyrAuIEflxT0cAB6dcWI=;
        b=nD9ifWc4yBodYpuNvwZb6XhrGbUfsd8CeektR4IF3QTEhUDdyN92wE/BTNAQuk80qF
         ep92SFOBd5l4E+XPezjlZeaecSyKI55KilGjm3V4SvPJE4zU4sm0RcYoZLFMlVvR6S8h
         l1eb5rTMkWCHv8b2Q0QKlTGiaNEKnVm7cBwDGpamR5GmPK0Z5DPbDKraIoHoEBt3VIaf
         xqYngAzy1UCUALzApFhl5WTXs5ChjMTuxuOzfSjJcqcmf4ZgJncjGIUWwpUVhLGJLx03
         v/h/i7m7lj+qqqdQQo/dlc0xSxIzGuCCI8RA1TolHhGFDvzVAEB5S/c1guro0VtGlVF8
         iYNg==
X-Forwarded-Encrypted: i=1; AJvYcCWNQc6i4cyMQr3qPmEaXE6p5hpvn/9FFW76aX7e4JAy27vggupW+fzaFWDVyOtm2+3MTj980zAEGHo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfnbHJOOBzJ1sSRxjZi79PkXDSJD1flyhYIpBsL2u+Wi2h25xr
	G3mxyDa+hLrCxL3TGWuK9pGVS0L646BSba5FlIclpR+YkfHSIRaTegNuzXSsDDI=
X-Gm-Gg: ASbGnctNUJtRuFxsNnJepZPBMN2mzp6tjLKqC4+D6idgiJtHFq1pfqjeQgje3AESzbh
	5bAePzPdQA5x3qL7DJ6FW228Z6F6GPP67/h46+Rk7Ch31ZceabGmidf/V5xmMe8XhRfMzP61mIj
	bkqZ/edYfOLC4nlxz5t/G27WxEQuS+IowE8uBkLKp2IUvatxRJVVtnI6+U55jh4D1cG99yLL2GB
	4zrKN2Nrnh/JnoCAyKroqUg+lg+5SHPcfO1zDEnIuj5AaR2093Hat9b7YKfI83y0fVxADMdXL/f
	JpPbEu2eMJQJUkLqp+ZslD2JeID0MJJkDbW4LRYp8ldI5PJxINtbg9SHJ5HxQekQwXJY
X-Google-Smtp-Source: AGHT+IFAr02Y7e6yIfhkFOqiUS1YKF/uSP0j+bSryAqDn2OKuFT4ZAHdeqJksqWGEDwv/Ztk59DZlA==
X-Received: by 2002:a5d:47cf:0:b0:38b:eb7b:316 with SMTP id ffacd0b85a97d-38c520bb8bdmr1512622f8f.47.1738139351871;
        Wed, 29 Jan 2025 00:29:11 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:b25e:a614:863b:566e? ([2a01:e0a:982:cbb0:b25e:a614:863b:566e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d697sm16047435f8f.29.2025.01.29.00.29.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2025 00:29:11 -0800 (PST)
Message-ID: <df1f825f-66a4-4bab-9ca4-90d594f2cb36@linaro.org>
Date: Wed, 29 Jan 2025 09:29:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Manivannan Sadhasivam <mani@kernel.org>, Qiang Yu <quic_qianyu@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org,
 manivannan.sadhasivam@linaro.org, quic_devipriy@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
 <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
 <188a9efd-718e-4ac5-b89a-29f2713e1dba@quicinc.com>
 <20250124070829.oar3hlkshkpam57d@thinkpad>
 <88c29161-17a8-40c6-a94b-c894de15ca37@oss.qualcomm.com>
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
In-Reply-To: <88c29161-17a8-40c6-a94b-c894de15ca37@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_002914_273970_44A9074B 
X-CRM114-Status: GOOD (  19.07  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 25/01/2025 14:10, Konrad Dybcio wrote:
> On 24.01.2025 8:08 AM, Manivannan Sadhasivam wrote:
>> + Mayank (with whom I discussed this topic internally)
>>
>> On Fri, Jan 24, 2025 at 02:22:01PM +0800, Qiang Yu wrote:
>>>
>>> On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
>>>> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>>>>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>>>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>>
>>>>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>>>>> Different than BCR reset that is used to reset entire PHY including
>>>>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>>>>> be reset but PHY registers will be retained,
>>>>>> I'm sorry, I can't parse this.
>>>>> The difference between no_csr reset and bcr reset is that no_csr reset
>>>>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>>>>> are programed. After Linux boot up, the registers will not be reset but
>>>>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>>>>> skip phy setting.
>>>> Please fix capitalization of the abbreviations (PHY, BCR) and add
>>>> similar text to the commit message.
>>>>
>>>>>>> which means PHY setting can
>>>>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>>>>> no_csr is toggled after that.
>>>>>>>
>>>>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>>>>> established with no_csr reset only.
>>>>>> This doesn't tell us why we want to do so. The general rule is not to
>>>>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>>>>> hard to update bootloaders, while it is relatively easy to update the
>>>>>> kernel. If the hardware team issues any kind of changes to the
>>>>>> programming tables, the kernel will get them earlier than the
>>>>>> bootloader.
> 
> We're assuming that if a product has shipped, the sequences used to power up
> the PHY in the bootloader (e.g. for NVMe) are already good.
> 
> If some tragedy happens and an erratum is needed, we can always introduce a
> small override with the existing driver infrastructure (i.e. adding a new
> entry with a couple registers worth of programming sequence, leaving the other
> values in tact)

Assuming Linux will be always ran directly after the bootloader is a wild assumption.

Yes, we should make use the noscr if the PHY is always programmed, but we should be
always able to reprogram the PHY entirely to recover a faulty programmation.

Neil


<snip>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
