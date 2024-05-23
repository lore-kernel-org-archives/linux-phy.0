Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10957C25B75
	for <linux-phy@archiver.kernel.org>; Thu, 23 May 2024 09:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2PZ7cO0dzCvRR2uLYYMwGaQ+L/Kb6J2Ox5xOR07iA74=; b=zl6Q2Hv0X6lcTVyfPlQ76sBjUO
	kW/3UB2HGvC5uFkdWiraXiEr/KhZhjWrAX0QkMFZnuUatYcJXdqtdevsEOXew+mPqEwxi4m2h3wPc
	hZuRs8nkmQGXhlPkTh0I6/M/ahVJNjSZnCB+/g13zyeYruOFYxgzLZ/nRbOCM57RDGtZHOxzK3kUT
	aEoGOGZDXZ0nWT64jajgXjqAeTMbDrDa0F98sEQI68OqS5zceSJc5hOdFuhS8z3EBUhNjJnSc1/dX
	39YiXDTCElXIBVfnAZLeC8DDFwucQsgqSrBuTPSnyIc3p+9ZlgnUYx2wLXBAPiDoN/2nCBxqk6fKm
	beeeJPmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4PQ-00000005bl8-35Wb;
	Thu, 23 May 2024 09:06:48 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA4PL-00000005biP-2hPC
	for linux-phy@lists.infradead.org;
	Thu, 23 May 2024 09:06:47 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5708d8beec6so11601858a12.0
        for <linux-phy@lists.infradead.org>; Thu, 23 May 2024 02:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716455200; x=1717060000; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KeTryMhYF8Bv+Eu9Cw5VgyH5Tkq4hHi6Ok4bLDS0p0g=;
        b=RlLHcasSL/mSS9ZfjU5sUoQc3SeMsNhEmE/Gsu1lacR+FxnV75aDsTso2K2oH/PSF1
         AqEb3Qc77t9OOTqqo5d24KRYG4NVpfh0LsgsALe59cNpGQtFm78dZWymNhAGbOCGWdCv
         xX3qdAaEAzvpplLWvC2NtbrEcUi9/cNvO6oyDQjy5/J6c4daSFwf2Gbsn0na9ggGlWNU
         VaemWEnOFvxXoQeARe1DGLaz7MKGY3FLQwpTZIBezOny2uNeTTkZIXw6M7WRSF0d+qbh
         wQ52OVd6LbYWRCEoCTdKRPEj01/w7g9i9/Qz4GNcbkmh7j5Npso2UZ5xlqP+hdgle5dA
         oWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455200; x=1717060000;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KeTryMhYF8Bv+Eu9Cw5VgyH5Tkq4hHi6Ok4bLDS0p0g=;
        b=mttpcENhHEVg+1yyk+WLfd4gheKpIDP2QdhmPAD+CEc8QjLz4X3TeChevQUSwRBRK+
         hXvQ/rIvulnnUpqR9quMf8K0/86LdCnwyoyxCovbYxsNvQVVddTd3AW9duY0hcbFvFvA
         mIiqATXObR983kd1tmisE+Wf+aVN4CAyFwmKcD3iXJYMh6P53VLhPgNQFefJXOk1/Xkn
         J18Ui1JRan/qP1ZlrRmCQAgKhQfqeFRx/mMJwLOX1mw5jviu1BN0Ep19I7+9b1yNFMb9
         KpniayQkYey/pFL3Xjlhj5PnqppZYjjum1RJe9qMKgpHoJRNWqwKO+Dyy7zSBWo397OH
         e7ig==
X-Forwarded-Encrypted: i=1; AJvYcCVmwiZYts7fHKlDWRsV4YHgq8aG2z0fdUkTibxwFF5fMLMZfENjfwP2mMjmzkdP7oJQJnq0lWrvq5Od4hWuuniAH0p3UTbWXlnfnIpikQ==
X-Gm-Message-State: AOJu0YyoWXuxjNtjxi9l5NSJIWrH8tz7B57RHAIMAYLtv2tFGTnQ+N+G
	qdrNF9bSC1hIysM6WDCS5phkFlu7Kz+4o0ZEsVl1pVH+uYYEd1/ZrcmZIvrRu9w=
X-Google-Smtp-Source: AGHT+IEs1c5xO8f7f8eqHoNwr3xE5DYwUOIKsTj7els7FbsktBhUyhhk9D0XSIWDR3Tha3n4T/gYAg==
X-Received: by 2002:a17:906:1593:b0:a59:c2c3:bb4c with SMTP id a640c23a62f3a-a622820a6abmr368800266b.70.1716455199946;
        Thu, 23 May 2024 02:06:39 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:825d:600a:c16:a973? ([2a01:e0a:982:cbb0:825d:600a:c16:a973])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a1781d2dcsm1904867366b.44.2024.05.23.02.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 May 2024 02:06:39 -0700 (PDT)
Message-ID: <cbc8a2c6-0047-4345-8c93-afdba9c2bd10@linaro.org>
Date: Thu, 23 May 2024 11:06:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Luca Weiss <luca.weiss@fairphone.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Abhinav Kumar
 <quic_abhinavk@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org>
 <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com>
 <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org>
 <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
 <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
 <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com>
 <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org>
 <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com>
 <f2d96f99-d8ac-4ff1-83fa-742e541565e4@linaro.org>
 <864063fb-eeae-4eb7-9089-0d98011a0343@linaro.org>
 <D15RKEU49B4G.1B6A2MYB4LH3X@fairphone.com>
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
In-Reply-To: <D15RKEU49B4G.1B6A2MYB4LH3X@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_020643_894925_632676AA 
X-CRM114-Status: GOOD (  16.79  )
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

Hi Lucas,

On 10/05/2024 08:51, Luca Weiss wrote:
> On Tue Apr 23, 2024 at 4:08 PM CEST,  wrote:
>> On 23/04/2024 15:03, Konrad Dybcio wrote:
>>>
>>>
>>> On 4/5/24 12:19, Luca Weiss wrote:

<snip>

> 
> Next, with DP 4 lane (not working on mainline but still plugged into a
> screen) the diff is quite a bit bigger.
> 
> See attachments for the full files:
> * usb_1_qmpphy_20240503_151052_android_4lane.txt
> * usb_1_qmpphy_20240503_122443_mainline_4lane.txt
> 
> Not attaching the diff because it's quite a lot
> $ diff --ignore-case -U0 usb_1_qmpphy_20240503_151052_android_4lane.txt usb_1_qmpphy_20240503_122443_mainline_4lane.txt
> 
> Not sure this is helpful to anyone, but at least wanted to share what
> I've done so far here.

Thanks a lot for the traces, it founds out the QPHY_V3_DP_COM_PHY_MODE_CTRL stays at 0x3,
which means the mode doesn't get broadcasted to the phy because.... the retimer only broadcasts
the orientation and not the mode... and it works on the HDKs and the X13s because they don't have retimers.

So I made the changes in nb7vpq904m and ptn36502 drivers to get the next mux and broadcast the typec mode,
if you find time could you test it ?

Bjorn could you also test on the rb3gen2 ?

The changes:
https://git.codelinaro.org/neil.armstrong/linux/-/commit/a61fb3b816ecbe28a12480367d9e09b700ec09e1
https://git.codelinaro.org/neil.armstrong/linux/-/commit/f6f976ff692bad430cd945f02b835e355f19632b

Thanks,
Neil

> 
> Regards
> Luca
> 
>>
>> Neil
>>
>>>
>>> Konrad
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
