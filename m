Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABDF2CA1016
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 18:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0E3SAi4mEvVyiq2oI1xtdNLRkBoFPdQCKLnX2pM2azs=; b=ktHwnu+tIkC3KMzV9JbQUseApg
	OR+8BtaxKDJbSdIsIbq96r5/93X/vDokJ8LGrmFI4PejP3JedONBj3pcYQ+l8eIg4IQl86Oe/DBD9
	8czK8oPY8Uy2zgKJ4ER2gdRphvFGrphmxhoxC2UYwr9QUpDBOWORG0NGfL4Gi+Gf2nxBCdC+KmorU
	yPWJjHdXTsakl0w4unYQVbBPg6IrK18gVhqoKL659bxufQwhLVGEPtjGFDrG9JPwQ7bEtbqEfHgKi
	zXzs4PUmJJPfMbZycf/wGXUmuvJ5+a8OZD8JnPXDTcwI0N/aXjGCqfh9BY2JDFFD3UdRJsdM6hEoX
	znyusKLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvgUi-00000001VCz-1lAf;
	Mon, 08 Sep 2025 18:21:36 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvcWl-0000000Halg-0W2m
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 14:07:28 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-45dd7b15a64so27524965e9.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757340445; x=1757945245; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rdc/gAsQZ6uhaHdORjf30XQWPTkhf47P6Ih3PEktLz0=;
        b=P05BZ0jhD2qfKN2+AOXH7KD2I4J0+4yzkq1Gx3dpOp6S0chxoG319jglnZhqAjHSjS
         63IvF8FDBPmd/ciGULtz7f6cu4f7B1i18tyZ6ZFwi+rUTpN2apPA+qKl2YE4NMGy+tls
         vUve3vULlw0s1BkxbWE+yhBp9i1S++Z7Q/tBbYcnFJ8owtkXTJ2E3QSRj+QZM0jNepqw
         Ex7F0+SBV02aDvG2VOrJMSna1fdZQDjz8nbVuHFvc67CdZfjkKmD8+NutKUd8+Gfhmgl
         vLDPYHP/20SlCiV02DmciksNz9ROKGFD4/vJlmnWWpnPcxaR16SdLe/V9y0xpoFgtUCA
         bu2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757340445; x=1757945245;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Rdc/gAsQZ6uhaHdORjf30XQWPTkhf47P6Ih3PEktLz0=;
        b=UQ+DKJ4lSPZ1ddL8L656TBTVoiWA9sQhZQQiYdTLcm/Z8/hS28d3nyicln2RDRYarH
         BksjpSbMOcq+PauHcRPWkSWW+2PaLs/XXGRC9R8CSRy/6NXdUyyS0Gq1edSFy6vIKHb5
         EJABqFP55KlRGc2g+BmIMcieBvrMS0lCpA4cpv0nmL7NAdeqO6I95BJ5sVnfcNwHNoYn
         1V/u84QgkPhsdNQbi3uxB0LewyQfn53cM1qjK677Y/c7QTHaw9gXCQ2Hm+IOYS4wCY2q
         1PHwTeVjG9T80Ul2Q0QSP/2ZkAoXUbORrFwXHFgikgF8lt76O8HIJR+kYNqUQGbx8gZC
         so/Q==
X-Forwarded-Encrypted: i=1; AJvYcCUeRTz9o+fmx96wtIgzoXDxAGsH12O7p2PJtFbrYvOtPwv7zyl5tnfAALxxzbuJfiXW+92Kyl1TD2U=@lists.infradead.org
X-Gm-Message-State: AOJu0YyyNu7ZvGLrraXaaKuZlVuSkLZ6d1+jzLwxyt6VI1c4GHM06fOe
	pNWjQ7sbWThgN0wqsIeTT9U90Mq3qa1d8C6gGqR5fm7xpJbtBZ39dTFjSxz0jWfR+uw=
X-Gm-Gg: ASbGncttpMzZYE6q1BzAep9Y1ElHbZh25gLPqUkvjas3wXRzPHmGDALn+4ya5nvNYq5
	8uthRYUXs2NTwCuQ8fO3SzpByQfbqGRwSxyweIXuMZXC6SGGGW0qCwL/vJp0dmkrLEedTlIPefQ
	SQnqnAstFELD0fue2CFJz0jPZe1gHBzo7B6VLZ7vwKuW2KZMwVjPGE0pJsrz+CT7j+3CeZZcMc7
	/vL0QvAmHp3QuM5F2Lmq00VF4voXjk7MGKMFm2crLpizxv5UajFb7PCzglaHs/friQCh/ugKElE
	Srj+lPfoNI+VsDkqC7b+EBPquauvqg3excPQeDSpA1yeOsauySQUagioMJ66IPV5Nfgr8g2id+4
	eBQFxQpYC978/vNhYMgxWK3DO+vrNM4q8Z+UFo6zlzE/Ik8NRA1q29iKCIwFy7vK9Hr1D539wbl
	8dyK+gk/VsZQ==
X-Google-Smtp-Source: AGHT+IFgaJMZWp+yGKsLkm2e55jSKRrdRQJMjkwsfeyTYzu9PP+AiFfrM1Y4iCzAOP2g1/eX7se7mQ==
X-Received: by 2002:a05:600c:c0c5:b0:45d:e531:99df with SMTP id 5b1f17b1804b1-45de64869d9mr26259825e9.3.1757340443694;
        Mon, 08 Sep 2025 07:07:23 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:61c1:5d31:4427:381b? ([2a01:e0a:3d9:2080:61c1:5d31:4427:381b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45c6faad9cfsm266392505e9.0.2025.09.08.07.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 07:07:23 -0700 (PDT)
Message-ID: <a0d8f2de-2456-4f18-b901-e8b003eece44@linaro.org>
Date: Mon, 8 Sep 2025 16:07:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 2/5] drm/bridge: simple: add Realtek RTD2171 DP-to-HDMI
 bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maud Spierings <maud_spierings@hotmail.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 andersson@kernel.org, andrzej.hajda@intel.com, conor+dt@kernel.org,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, kishon@kernel.org,
 konradybcio@kernel.org, krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, rfoss@kernel.org,
 robh@kernel.org, simona@ffwll.ch, tzimmermann@suse.de, vkoul@kernel.org
References: <20250908-topic-x1e80100-hdmi-v3-2-c53b0f2bc2fb@linaro.org>
 <AM7P189MB100924E3244B953F0EA6D462E30CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
 <u3qwrzwcr4knq7ueinws3siz2frugbkj75r5zp6i7qmkhnyauf@lrmiqhtbgzfj>
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
In-Reply-To: <u3qwrzwcr4knq7ueinws3siz2frugbkj75r5zp6i7qmkhnyauf@lrmiqhtbgzfj>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_070727_171122_F4BC059E 
X-CRM114-Status: GOOD (  17.91  )
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

Hi,

On 08/09/2025 15:45, Dmitry Baryshkov wrote:
> On Mon, Sep 08, 2025 at 03:35:23PM +0200, Maud Spierings wrote:
>> Hello Neil,
>>
>>> Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
>>> index 1f16d568bcc4e0fb56c763244389e6fecbcb2231..e4d0bc2200f8632bcc883102c89c270a17c68d0c 100644
>>> --- a/drivers/gpu/drm/bridge/simple-bridge.c
>>> +++ b/drivers/gpu/drm/bridge/simple-bridge.c
>>> @@ -266,6 +266,11 @@ static const struct of_device_id simple_bridge_match[] = {
>>>   		.data = &(const struct simple_bridge_info) {
>>>   			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
>>>   		},
>>> +	}, {
>>> +		.compatible = "realtek,rtd2171",
>>> +		.data = &(const struct simple_bridge_info) {
>>> +			.connector_type = DRM_MODE_CONNECTOR_HDMIA,
>>> +		},
>>>   	}, {
>>>   		.compatible = "ti,opa362",
>>>   		.data = &(const struct simple_bridge_info) {
>>>
>>> -- 
>>> 2.34.1
>>
>> I would like to ask again if it may not be a better idea to introduce a
>> fallback compatible, once this patchseries lands I will be adding the
> 
> I'd say, that's not a good idea. We usually don't have fully datasheets
> for those bridges, so we can't be sure that there are no strapping pins
> / other GPIO controls.
> 
>> parade,ps185hdm. I don't know how many other variants there are that are
>> just simple dp->hdmi bridges that don't require anything other than the
>> connector type set to HDMIA. The Thinkbook 16 and zenbook a14 both have HDMI
>> connectors, likely with simple bridges too.

Sorry for the late reply, yes I have the same position, they are simple bridge
until we found out it's not the case...

Neil

>>
>> Kind regards,
>> Maud
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
