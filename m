Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F00BC7EE30
	for <linux-phy@archiver.kernel.org>; Wed, 25 Jun 2025 11:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WQJRzUinn4U5THFjFZx9AK6bKLXB+YZLhBzsZh8WaJY=; b=xevnfINVjSL4BxPnlV4lcdTo1s
	xOfn7dZcs1/u4/T8m9cfywtpKjfKTrvb0hXWOZd/+lgSeyTAbhgjFdFsziGb0XorxG0G1zy6JkmMt
	poLZ9qcdsux+OLEFt1curKq2tVC36wn59rdeHFftBf2Vr9E5sBlC4XrXcDJOb4MpRpK1t8nkiYfhu
	LUdXwY9cvnEAasXO5xugdhDGVnmLL5Hdx6ON+Ph99WewzhJORX7cmoLCGO3xFscPD7SoJNu9jYvP4
	z0zJg4r631NM5n6GHhPr/zK4IdZuaXSd2qPcqfjGoQI4hc+FcrjmpT1mp82/MSDJVBb6q7LHYTx0+
	qQ1Q7MPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUNyH-00000008Q7J-2r8v;
	Wed, 25 Jun 2025 11:07:17 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUN3E-00000008FuZ-0R1o
	for linux-phy@lists.infradead.org;
	Wed, 25 Jun 2025 10:08:21 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-450dd065828so11729225e9.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Jun 2025 03:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750846098; x=1751450898; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+k3DzyWH4Jr6uupx7HYmyik+quFvCWjaPQqy+deeO10=;
        b=kwD3rmXqd52ka0gszAgvErHIMIF8lVY9yBd5UNdHqYPKLP0dqPbuk/sPyKrxZLkhH3
         Kd8DKm8McmNziEjmSpGsf+Di4KFGgvoWynvfl6B7T3kqgFn2Cvf+3EnPMTl2kUL9hpnq
         W+CcfUaDQI9Kbv2/mPrMahtVK3x3W6MDr8fR+tHr8foTY67l4/c1lSikaUhD/sodTKRq
         3QAJh+bea7CxHDVdhEjCNMWErks6tuTNXBjbaw8psGGYS2IWdn6Kp500fHFZvNZaIMV6
         b2OZQdteoZLJkYi1Xhtji057vOdwDJzy0ZTDi9UmFhVYacw2QuEzxr7kJmg6XbjsfqRy
         9vMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750846098; x=1751450898;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+k3DzyWH4Jr6uupx7HYmyik+quFvCWjaPQqy+deeO10=;
        b=CBjZXUOJw43ZNBxHiCVrBS7SP8FbI+3LWDEBquajsoVxL3QxGYZb8TkVj0w8rOZCb0
         5jIykpjjg8V60dNQGl4s8BATMEGqAe3NjnB3HqLBTQd1jJBlYOfq7K38aiKLVpN+1wf5
         LGvVvCZzpfRi8JkB/qfzbmSR5P7EUHiBfI+vFWw3VoK+JTAObAg6j08E38MnkDgxZhOI
         DFLjOlGYOOX/F470Rs+uGc3e9+c1ZSen82gGEe7UjD4An5tN6X7VA6ztIt0ZpKdM3ejO
         AJWHXvtAjyVxm1UU1/jKkCzNMJFofljw1TBbHs0rd0z73geTu60PnA+IinHEf5gGWwIR
         PFXA==
X-Forwarded-Encrypted: i=1; AJvYcCVP6Q/CEVTwr/6kK6e7kpKSECgud9Ee/pFWbCDf9Yl/EuowGGi4kyazs5PE87yqAs77xa6rgIxRvtg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzI4i5E1AUu+bQOzMCR7mQT/xtO/noksBevCVJMSg1bfdR+RFue
	NDqrEzVs8TPPdTBoqcxnuG2KQYsbYAClCAlwM934mZlvKbKHiXi6O9UFHD1wvjwhleQ=
X-Gm-Gg: ASbGncuqhUljAV/DCiGvKErqBrHGN3zctqh1ajEcDzg+j6cW6iSchD8Nm6Kd4sXuaKD
	u5k5vesh60SHO0x7Kz11L2ynPdyGtmKKj4Aprr14J8J6BJfZYmJnNTVpV+VVjUt9itOunOyqg88
	s+dUGNnZHkuJ9T/HG3vRPt+GTeRPEm7VyTo40wGpDdXpoV145Mr/c4eUHNYLYHJke5XdThVlzce
	FYo0iVPAxPkwSy3WLJfbPV/slrEpar/F7DwXY2KaCt4q7dG3LBviG25scHPd+DHC+dQVImz1xwS
	+bZuMeqmn1MGRDDVnxCcVc9OB6LxTNPz56naCpch9l7CJGHWhK6FfjPwQUxN74ULGUs+hJqsfK7
	t2C5TlW1G3iBIjv/7TqatuDyDAwu23+hSSxja
X-Google-Smtp-Source: AGHT+IHE2dgeNi21VwtuCTw9LobXMX+5LWnzJekdeuK7dtjJ4RTE1kui3tw6ljIYJ1F6E+CxyZr0zA==
X-Received: by 2002:a05:600c:4e0c:b0:43d:9d5:474d with SMTP id 5b1f17b1804b1-45381a7651fmr22313705e9.0.1750846097926;
        Wed, 25 Jun 2025 03:08:17 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:b3df:bee7:215:e1a4? ([2a01:e0a:3d9:2080:b3df:bee7:215:e1a4])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6e80f2274sm4137080f8f.48.2025.06.25.03.08.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 03:08:17 -0700 (PDT)
Message-ID: <38a0abf9-e52f-4e27-8ea2-eb885312a209@linaro.org>
Date: Wed, 25 Jun 2025 12:08:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/4] phy: qcom: phy-qcom-snps-eusb2: Add missing write
 from init sequence
To: Luca Weiss <luca.weiss@fairphone.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
 <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
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
In-Reply-To: <20250625-sm7635-eusb-phy-v1-3-94d76e0667c1@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_030820_154614_08B4F237 
X-CRM114-Status: GOOD (  11.17  )
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

On 25/06/2025 11:14, Luca Weiss wrote:
> As per a commit from Qualcomm's downstream 6.1 kernel[0], the init
> sequence is missing writing 0x00 to USB_PHY_CFG0 at the end, as per the
> 'latest' HPG revision (as of November 2023).
> 
> [0] https://git.codelinaro.org/clo/la/kernel/qcom/-/commit/b77774a89e3fda3246e09dd39e16e2ab43cd1329
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   drivers/phy/phy-snps-eusb2.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
> index b73a1d7e57b32cfdfbe314ab938ec54746ed53be..e232b8b4d29100b8fee9e913e2124788af09f2aa 100644
> --- a/drivers/phy/phy-snps-eusb2.c
> +++ b/drivers/phy/phy-snps-eusb2.c
> @@ -437,6 +437,9 @@ static int qcom_snps_eusb2_hsphy_init(struct phy *p)
>   	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_HS_PHY_CTRL2,
>   				    USB2_SUSPEND_N_SEL, 0);
>   
> +	snps_eusb2_hsphy_write_mask(phy->base, QCOM_USB_PHY_CFG0,
> +				    CMN_CTRL_OVERRIDE_EN, 0);
> +
>   	return 0;
>   }
>   
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
