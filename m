Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCF08C71157
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 08:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GmzLsZihYXlk+b0Q96Ovi6s+JLjHk+RujTbzLqQ2JYA=; b=WMd1VSBgr+E8fG/z+eiAgTGV8p
	kD87fmvyG7zJW2wwRMpGcsYzw7MBz/crbKTvTV8Bq7og24zk98MDmhzRtfsNNka6KlX3eLKgEAQDY
	aA5iLgokCDS9LNPvaOZD+UscLQ/693Mv+4iRd96IfpPmppRZrqUmwr3qe33tER1/BhumnBtpdmOiZ
	35Vl6sKrY1NPeaWAi33vN1UOOrPcC3OQpafGjWYaA0c/FQNMKVxepIlx446DOadCTjH/RW5xYOSoO
	oFMBz9UoVCjhmEWlzFVjl96nPLHkUJ10/DQjCtV+Kn90vWKjO1mrT+RfnQ5ZqZtiveLexFSmZ+Nhk
	lQIgIdlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRso-00000006csj-2hUm;
	Tue, 17 Jun 2025 08:41:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRYd-00000006a3r-2GbN
	for linux-phy@bombadil.infradead.org;
	Tue, 17 Jun 2025 08:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:Subject:Reply-To:From:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description;
	bh=rRutXZGiZkOK4IPQRRMmCzuE+5vrVS6DYaoEnbP08XU=; b=ZLbmgdcGza8Hpk+GKVYWSt9FGD
	T+/gSFCxh+lINvaV/FFiuXmCGlpuOsBCsD35a/4S4YezSHILfjlPry051GFeQrYVxyPyZxYWGcaGw
	WbKPR3ueOV2mkCz+NX6njTVQh+yYOD7raa/5Ibcu/GGr2D9y/YXcojmmU+p/xvUU2UuLh8Eu5jGQ+
	zGS00yQvl1Nnd0KB/QaKZXP7LwHIz7qxs/a8XpXkaBsBXZsNHtZ3R7/XvyfYMGdmL1enrHpMIr+Q/
	4rDw8mggLPOKREyIiI4BOCi1+jWzLRGRW68zdmCXA3KXRUCscuLvzWBAduBqRrbS5u4CWxAXuSg9d
	wrK1xy1w==;
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRRYV-00000003k9D-2YfO
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 08:20:39 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3a50fc819f2so4544861f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Jun 2025 01:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750148426; x=1750753226; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rRutXZGiZkOK4IPQRRMmCzuE+5vrVS6DYaoEnbP08XU=;
        b=px4Am1nfSP0jYt8prhlbDSB4eF4H0d5r0yLU8rC7sg0e0tzGrdm19TbSJBZ9Kv42xd
         We5Z+6bv/n5k4M6BGP/gT6UyNlCbeSUtdD1ASZCxc5tIHOFpqcd6v5fM+9qvXQw743C6
         jRwYGRfmTClsP1tbxcMaYcpa1vyqs168ZNP67ujQ71TVBkOyOBug5iaIJUWNNEok5g8S
         SofqyP1Guifl5eiSN1foy7KGo/7WvD4Zymh0cqmQ3qGeDQXfkdguW4Dei8kYSy8KZ6Vy
         mF0KS8sJERDC1rJHLP41/1+C3o894aclYSJkfpyHAbYmH4RArcn+fSd8mDxQAX1J2Tr8
         fyvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148426; x=1750753226;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rRutXZGiZkOK4IPQRRMmCzuE+5vrVS6DYaoEnbP08XU=;
        b=Z5pQN6z8vp0PO7UdFp5dBTGoiEHFFwqLpcljBAf6w2zEK25TOLqS+82YShas90By8q
         7PDsmYbLEjiTALfHlKiBLnrQuMfvHbxS6joJ1GdqmSQUcH/HZz0zT8t6ACu3pleSUnoZ
         8hPtUr8UaGr7kMz4zS7EALVXZ/AKwi9VMVBmyIJspXGoBtKGEnh2EeMc57mRNnV7YmCj
         qWovC2abqKvwLBMWjNx8/b6NP8WQp3kP/CXHhLdVpgDf1gYNe/FmoSRkx4TVUk/DqoSs
         4Xs32uKmR3laM84QgV/ltGpzjYb7mT8KsvG17OsqAnHoR9dedcYf7olA+V8idpmQI6KQ
         h2nA==
X-Forwarded-Encrypted: i=1; AJvYcCXmPCWlAgcAqe/Sf8lniaI8D1lFOCx65eEg5i3mEVLKtn1ABSirbuuGhtmmM8i7twQX4nZn91Nz5Og=@lists.infradead.org
X-Gm-Message-State: AOJu0YxT++k0+njMtzFwd/QqCC0I/mCEFj09fRq8Q+Zuy/gcNsO3Z2uV
	deXFt/P/FfsbnXFBXMWtWx2WH6SCFoYil4j2MhE7WPpfwDat518sw8srxBhDwBEhMZg=
X-Gm-Gg: ASbGncuhw76FbTUu5aey1NXaKE2oQPzko6bZApriE/3bbwrUcpk2IBlorMM1mIkle5V
	dArGXLR95OOteq0HBpTCPyT1aWHKipnsy0OZKtBV88yQig8q481zF3E/XDYkg5E4WqxhGMF+MZ8
	4XSfXJVq9JX2ywqi338gnUdl3XqvenDOsOCju/yIffRovB9as9nJ3mgSeP4UxG4Gt0MdVBklCA3
	7YNqkPYiL64WUPLWWJR0wzU7TEycwoYgJmKocK36hKtZ8GE+UWj8pxoBLeRbZLv3kwRKCDB2pzh
	9AeIPFm/NO7WJ+bojJRAoqG9dWXihwY5SqVORlOooY6qneQsj/7fiGtBkg5s0oeqAUeoWX3GOfj
	7fiaB+NCFVZfxAPC/FZDr9u/ln5oAV1rfriFE6lq8dt9VzbZ2jw==
X-Google-Smtp-Source: AGHT+IFEN/PY92LwnlT1UIgo+2I6xRqQ1JxYeqAwOpj11+y0e6KjDrQEgfFE+cFB2pOIqzh1vYyHiA==
X-Received: by 2002:a05:6000:2486:b0:3a5:52d4:5b39 with SMTP id ffacd0b85a97d-3a572398ea5mr10039548f8f.8.1750148426115;
        Tue, 17 Jun 2025 01:20:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:3819:3250:4f73:db31? ([2a01:e0a:3d9:2080:3819:3250:4f73:db31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4532e268de2sm168241545e9.40.2025.06.17.01.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jun 2025 01:20:25 -0700 (PDT)
Message-ID: <b56ae254-2b13-4a28-bd97-c815ee773abb@linaro.org>
Date: Tue, 17 Jun 2025 10:20:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH] phy: qcom: m31-eusb2: fix match data santity check
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>,
 Melody Olvera <melody.olvera@oss.qualcomm.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250617080503.11262-1-johan+linaro@kernel.org>
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
In-Reply-To: <20250617080503.11262-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_092031_823625_13383CCA 
X-CRM114-Status: GOOD (  13.00  )
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

On 17/06/2025 10:05, Johan Hovold wrote:
> The device_get_match_data() helper returns NULL if a new entry is ever
> added without corresponding match data.
> 
> Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
> Cc: Wesley Cheng <quic_wcheng@quicinc.com>
> Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> index 9b987911fcdb..9ad7af503baa 100644
> --- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> +++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
> @@ -252,7 +252,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
>   		return -ENOMEM;
>   
>   	data = device_get_match_data(dev);
> -	if (IS_ERR(data))
> +	if (!data)
>   		return -EINVAL;
>   	phy->data = data;
>   

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
