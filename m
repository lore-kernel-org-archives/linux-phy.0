Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76762CAC581
	for <linux-phy@archiver.kernel.org>; Mon,  8 Sep 2025 17:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gIJ7gJfre3jTaUd+3F7vjxxEaCzlgwqpXQYAwKLvTko=; b=D4eomTAOFlCIuDOopu0Nid+2My
	zCjBg9kd+3tnd8P3UatZuoR/OGpS98pTjsvgcmVVJWmV5FFbyFOwNfPX69gXZS7b2zxJkTX6De2HI
	9xamF+OQC6FnBfuDLS50Iu/8y2dP+DfzDZkHCVIgNYsr3cHJoVelYdUy3qUGKkTU3gxUDjsdj9+gJ
	s6uyyKOtVp6n1mqfnGaVlAU5cAiEFXiGmix5pcLY0g9AmAm8cy0OqUxes7bJHKpplG4i0KMN7nqOB
	gCqB4UQbCMAnlRihvnReaAU/92wSS+heHbd17rbkCuaNb9agnRt61zgojWajsD3fHNFNf2yOMpUh2
	NZPlziLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvfNO-000000013J0-0lYy;
	Mon, 08 Sep 2025 17:09:58 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvbZ8-0000000HFZo-10nu
	for linux-phy@lists.infradead.org;
	Mon, 08 Sep 2025 13:05:51 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3d1bf79d7acso2609055f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Sep 2025 06:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757336749; x=1757941549; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u5chc44wHZ1zV1Y72wQqklmYPWfkYptX0wWGS8/7Iz8=;
        b=d2k6AyZLq2hH1JD2E8n4lPt1KAGtb34vQIaqhIkeDutAOLsxjpKPwzT7nOjB6Odycu
         o+i6EoRbqOTf4LClc7l//njVlTxj/RlkOj0L4VX1xT/rqzGqZLESxoHb7dI3gdHhQ7W+
         CIA4hYgD/NV8Q2S0JKfO5UMDJ3G41lz9ZyNxBjJsZxVzjMFngt55SpcBXCsZSKCRDyMA
         FN/Uana7oFA92vFYrDYWubh+UrWSgs6hYGoU2lf1RGcbDZXXBwhHNvyIEUbvYYvEavWN
         gEUXqfVpcHN/6Xnf+IZuZC1x3dZvQvvv3qMystBOU63MWeq4iW1LL0jTwGT+wbHryq+p
         85pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757336749; x=1757941549;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=u5chc44wHZ1zV1Y72wQqklmYPWfkYptX0wWGS8/7Iz8=;
        b=NSyJPN+xHgip3dlrZTiDj+kqmnSStFKAlC/B1d2/Cw7wL44qIonwNV2dTr42YiYgD8
         43q7EK9HdUwkBVOy9O9Xz47gn87DgbD7P520MZnx9VEkZXZplny8uTQSVtwfhw3r5j48
         ppl5j7FJcYCYAEYARTdjb2ux+u6BJ1hLN1y2RXA+d6K4OTpYQ117wacW/2P/9szQLAHL
         8wdBq/u3/g6pjqqec5n13q5OPgiZnltdoh+buK8yAYT2Jdxa97xHuod3Tg2sokBwWLRZ
         Gl9aB4Mw1TZ7Fuegf9iELk74ZLwL3etunpNdB23+RbHz/2q4tS9fMIKkPn6bApvLKbcF
         oiOw==
X-Forwarded-Encrypted: i=1; AJvYcCXmPN4snMxMygTvU52H1Wm8ZagSPY4AyF6ovRJ/p3dO0iauca6p7kWOALvvv1lk6E/uG95bS+zzzNg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyPqcPlfd1QTL+yX0sgzO6/dYbP9eUgLSEtQImfom7vWYIAR+/R
	fToiX+FKFqDaNKg66OV2fXQXTlZ0C2GPKSQlmmX+iEzVGkaKsAYe9Y/iONEgKU909Ij+w7UdYbA
	VEEVoLik=
X-Gm-Gg: ASbGncuOI4zZ0HZaPmHnPzXuHnCcI+YWA8mYOklga3FebJpkOxJsGMLO9mVo1sCu9Vt
	QQLM8Rw+g1UIwLJR+cQnl+aENixidm5ZMRTT/7yUCRH2GjNbE92NQv2jy0kuPikrojrC3p1bd8g
	wf/MMAERRxS2Puuf+NXDzJ0TRat+NGEfigZeOu4NkK8A6woY5JLD3ikRkuw6I+0w64inES30dTG
	yVuGAqC+wCWwA3qgFT3fw6K/WMpXKOFTkRFKp5mwhUHJXsZWgnAUw5X26f8S4wOuCFCWhG9tELw
	5mt5Un9QXB2xycjI02iLkOJ84h6jaxAdLLa0u5tLdZtRHre8Ekn6zHd+CSiQdYPwSKP5QwiI8/f
	O7EAMERl3WUDF2iANIWvcAUP9OSL2E4EZE9RVqn+wRs50VFwhTGcdccVAGUWWOOx2N9pPG0ThHj
	TIYHXIDymAYg==
X-Google-Smtp-Source: AGHT+IEPgn/6M8XG6uNtkAHbgUnHhrF1VcVsINtk7OaZFicYzT9+CmrAjlGK+/IQepoHlqkM1JUPpg==
X-Received: by 2002:a05:6000:43cc:20b0:3e7:404f:685 with SMTP id ffacd0b85a97d-3e7404f09a2mr4422330f8f.44.1757336748536;
        Mon, 08 Sep 2025 06:05:48 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:61c1:5d31:4427:381b? ([2a01:e0a:3d9:2080:61c1:5d31:4427:381b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7483597ccsm4673380f8f.31.2025.09.08.06.05.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Sep 2025 06:05:48 -0700 (PDT)
Message-ID: <eadb4276-e5c5-48f6-af50-e5c1df52479d@linaro.org>
Date: Mon, 8 Sep 2025 15:05:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH RFC 0/3] phy: qcom: qmp-combo: set default qmpphy_mode
 from DT for Thinkpad HDMI support
To: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <fe92c4e7-6a1d-4cec-a3d1-c50adff9f7f5@oldschoolsolutions.biz>
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
In-Reply-To: <fe92c4e7-6a1d-4cec-a3d1-c50adff9f7f5@oldschoolsolutions.biz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_060550_282977_34D12425 
X-CRM114-Status: UNSURE (   9.96  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 06/09/2025 10:45, Jens Glathe wrote:
> On 21.08.25 15:53, Neil Armstrong wrote:
>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
>> connected to the third QMP Combo PHY 4 lanes.
> 
> Hi Neil,
> 
> thank you for the patch. Integrated it on my tree and tested on the T14s, working very well. Also tested hotplug and suspend/resume.
> 
> Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>

Thanks a lot for testing !

I've sent a new version, which is quite different due to different feedbacks so I didn't take your Tested-by.

If you can re-test, it would be very welcome !

Neil

> 
> with best regards
> 
> Jens
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
