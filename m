Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF34C28B2F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 15:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+nd+3luJbqX02WSxtgBDfJEuCIDJykmK5q2cKU/NGS0=; b=QgfSNxx/E41tyghnvz5oyDVxBa
	0i14EaVtTp0qDd8+TgEkHo429JwZd5wzoztm/FOQ8reR8vAziSNjZ+aA3Wz7725kX+eC1og8EBzWZ
	HRUoS0E0TIR0fruREUsVRMiIJqsD7euWj0pWus6+KcVDIB8xRx7iS2F3rBVCeiMzFN5YfGDEx1uca
	BxchVVxanf/OMWmefW7/5UqvZyUkXC/RA0nOsQJTSX2n6Jkagbs+SonE+aQGT6NgYp+L9oPtQartO
	yANZIdZ9AzJ/98tkUUmuoL9JWi0StFL7ZQgWvGloJwVrzl6IZhTha+oWqDR62TDPxoqkKKclhZOzh
	0aSrS6EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYVM-00000006IcK-2ljK;
	Tue, 18 Mar 2025 15:05:20 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYVK-00000006Ibc-1IZP
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 15:05:19 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-43d0782d787so23850115e9.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Mar 2025 08:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742310316; x=1742915116; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s7z3efMccsfKBdFpHk+eX1kiGNX1+yreBt4Fj6qD5jo=;
        b=Ex/NDtcw2j/QobzIDcrWnL2pt1iokv7C1BZDkeqg5d8iIc1GfDaiTPatwxMN0wRHi4
         E7bFWQbJQx+aaeFDm0gNk/bDHzrzGqfHhrA33N264hb8sfRI2TeH6CuZZ9H8FBzC2LWG
         1xzZsCgW7Drhf+TcAS+kVoHJnHdaaJ7a58xkZRQJKgbudD+vAZ+gWhZDVq9Uu6iDqfE7
         f7ouRQWnNVkRJVZnRVStwjEY7U8CpUwgdRAvNaDEEWHb9PPkyTNMTEAhw89oSx24iPoB
         OlXERW3EgUsFnfbM1DqIp3Nq82LmOX530fX5uad+sfscsiXgKqoJoJjy/u3NQTvMCt+d
         ZdVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742310316; x=1742915116;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=s7z3efMccsfKBdFpHk+eX1kiGNX1+yreBt4Fj6qD5jo=;
        b=MG71XZ+1cLkd03NuNtll1+P+aet/oHQ4k2VhuBrNzGn3upefdYfflyIhjjNZV5xYED
         9eB5xQFZIRFWdAjOryx9ez9t3Zp5mMUDAso2OxwabQeXFoiQoSGjbG3dO4J0l6Xv9T5q
         KHV5YY+uILD9EJQU/rp55vCWi79l/rGuWNaUbk6R84pIcX0NcjUKnyWemokemQujOFPU
         sQhA/fhnFK7tDfnJ/xitEEWtMl9h4iNFlvh07OwW6rGE4F7Dqx4eF4uhrkUCzF5GpBi5
         wXCDAn47BTL8Uv3y7Bj5Iu2mZvAGzJevcmMLkQmpt3j91L9Hz1h8QEsZLUEmQCey0UmS
         JJJw==
X-Forwarded-Encrypted: i=1; AJvYcCXQk8mZuU4AZ9pOtAb36hf4fz8TLn1rrxzWoQFKH05kdCXDufDDIi1cSH8L56L0teflvm6Np2nRJRg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+wVhJSOSySpngg5V50tct61RHHZS7qJ6vTM/x6oCUy7oQ1DFP
	VYQFnsdi8a3YRoz9JwxurgQCAUIhhmb+zc4Lzn+PHqSJMsgLLdDMwH7RTI9vyXo=
X-Gm-Gg: ASbGnct3/nafgu6ZIs2Din/Zl7CkWu0rhIcCnDSX5HqYWZgwMkvFB67YtIncbzgUci3
	ofHxBCYjD3Ulx5+9vCJuFyECdDii9AA5W3hpHbv0e3cZimC1mvO/27+Rkzt1fEmNaGcWCJAjCJs
	etB0UmZ41Vp01YiUrxvAALIN7YbsFZnbcq/clnZs6Jz3HbsAH/Hghpa3v5Qfxof2t938ITDYSYU
	arA/PRra0wY3oC4oE/bmrecBururYC3HB/f1lJ/Yyn32L7LtZMyxp8DMzrfQnt+QVRUYFOOGqJy
	OioBQxp6RD+ALxvu0CDBKiN1SDp8aBMKfWk17FNj3uZzCNPx9cUzUWOw481eUnsomc+VLN/ErV/
	qdBgT6re2F1hdncdgKS5f6w==
X-Google-Smtp-Source: AGHT+IFvHjliDhhrMFfSHKDFTbiDpIfzsiyAIrlmrzEJuRyFcEuNWlnzrwIPGgDXN2d4wUB2n4VJZA==
X-Received: by 2002:a05:600c:4587:b0:43c:eb63:415d with SMTP id 5b1f17b1804b1-43d3b9a4273mr24879565e9.14.1742310311971;
        Tue, 18 Mar 2025 08:05:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff? ([2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d3ae040f9sm18471835e9.0.2025.03.18.08.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:05:11 -0700 (PDT)
Message-ID: <89e743e5-7ff6-43fe-bd52-97f0ca6ab07e@linaro.org>
Date: Tue, 18 Mar 2025 16:05:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 1/6] phy: qcom-qmp-ufs: Rename qmp_ufs_enable and
 qmp_ufs_power_on
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, manivannan.sadhasivam@linaro.org,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-2-quic_nitirawa@quicinc.com>
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
In-Reply-To: <20250318144944.19749-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_080518_357795_2DED285C 
X-CRM114-Status: GOOD (  12.96  )
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

On 18/03/2025 15:49, Nitin Rawat wrote:
> Rename qmp_ufs_enable to qmp_ufs_power_on and qmp_ufs_power_on to
> qmp_ufs_phy_calibrate to better reflect functionality. Also
> update function calls and structure assignments accordingly.
> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 45b3b792696e..bb836bc0f736 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1837,7 +1837,7 @@ static int qmp_ufs_init(struct phy *phy)
>   	return 0;
>   }
> 
> -static int qmp_ufs_power_on(struct phy *phy)
> +static int qmp_ufs_phy_calibrate(struct phy *phy)
>   {
>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -1898,7 +1898,7 @@ static int qmp_ufs_exit(struct phy *phy)
>   	return 0;
>   }
> 
> -static int qmp_ufs_enable(struct phy *phy)
> +static int qmp_ufs_power_on(struct phy *phy)
>   {
>   	int ret;
> 
> @@ -1906,7 +1906,7 @@ static int qmp_ufs_enable(struct phy *phy)
>   	if (ret)
>   		return ret;
> 
> -	ret = qmp_ufs_power_on(phy);
> +	ret = qmp_ufs_phy_calibrate(phy);
>   	if (ret)
>   		qmp_ufs_exit(phy);
> 
> @@ -1940,7 +1940,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>   }
> 
>   static const struct phy_ops qcom_qmp_ufs_phy_ops = {
> -	.power_on	= qmp_ufs_enable,
> +	.power_on	= qmp_ufs_power_on,
>   	.power_off	= qmp_ufs_disable,
>   	.set_mode	= qmp_ufs_set_mode,
>   	.owner		= THIS_MODULE,
> --
> 2.48.1
> 
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
