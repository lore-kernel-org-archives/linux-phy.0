Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CED35C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 15:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XlbomZHJDk5OfjFerD/OiNytqPfWUS5BfzZZQq4skBs=; b=QGl0ohO2cLUMxoXCirH/23d/Sj
	3sFy4l6apEEmkk3MPWzp7s1oI1HmHn0QqLepHFPHVT+UuZTfMfwiDFtsaBH4aejqCyImmS+LUpDui
	QLpprzTE2WW+AEFSTToJAdW3FUEENQErbPZ5qltMqbnHcxxvd+9nseXCfpV2qlMu3aoGrTfyrIoQa
	ZoEunqwLFcWwkQp7mQb/oI3/lRnd7F4pIj88ILQL3EGtVeNsqi8bi7r0OWHFPv+QUzrCovnEx2naP
	/0akQ5zSxE74ey0P5nq3gTTC6r9zUqKCez6IfOjahA9JXQQhJ5DcFFIBVSvuqX6Jsvj1af/J32oe8
	2IObSm8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYfT-00000006JwO-2QeS;
	Tue, 18 Mar 2025 15:15:47 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYfR-00000006Jv5-1mSL
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 15:15:46 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3913d129c1aso4629518f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 18 Mar 2025 08:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742310944; x=1742915744; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMAu6MQINuflXuKN4gs2ELPnPkzz6J51pp9nuweT/JU=;
        b=Mg6xmCOsPGuLF19jkYjtkaZyLHONasPYLSStoeIH4aNY28/WWeoZiRpRw/8kJQPEYj
         c0x9ROjSRDpFy0BW2uXM5ykwIwJbwe9akGFpa7M43lO7Fc+BOc5jNuAJIgMqhwcibX1k
         NdPNAo2V9SpDl+X3XAUDDB1A/LHoSOdYX2kiG7+Ger3YAOqWmYiDwpu2F3vgoYPJSIsx
         4iAQAQvihOwvZdOwmDe4f5VuqZ6dL00UUety/9IIxEECkMXcdaEUYYTOLxyUmYFRFfnn
         qHZ7ldh50GPzv3VhkcJwcxmDqP2a66DO4ZNeoNAZ8vgpBGSJqM878WcFWJNPkmZnLcQe
         iEHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742310944; x=1742915744;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nMAu6MQINuflXuKN4gs2ELPnPkzz6J51pp9nuweT/JU=;
        b=BjwHhPTWZ08RyVqXaIGI4CynrTRNgazrwF+UsKoA3YxpyA3/p2kvJ7tB5sDwQGyN0A
         nL3ds2+numAw5SRNd+kU2lXcinK+ecgmtRZzSCQ1Xf61HvqzpGNkmkiXgyYUb4JeXLzf
         tOP8QAl0vguk7uNbvi/riSwlTkbbhHTfA36AFZc3VuVGmqPWrlFRYJ6d7F6v6iACydSV
         7owRhYo8x6O9YYZvZibfqCSi2sQ7tTLJYe4TRcDhpOjf8+H7VMrCDUWkqOhMrLSsXYVW
         385KSY7IAxfYnZo8HqFIEd/1tUoWfgBrJNaEdu7IKG3+ATMncIVSHZMyHIgnOeRdx6L+
         a9Xw==
X-Forwarded-Encrypted: i=1; AJvYcCWpyQddBCTiPOOaH1dXI2SHbeUU24iwemSv6CWSEDMZlMX9Nkj0n2RY4rrMAGeHJ82cLHPWav9NLj8=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFWRnFXVOfaTX6/bwzrX4EYqXoYPaQgkCytfeWpT4HMRZodTDJ
	4cEPX75Tc0rn25jNU0DLb/U3XctwKd4NtdG6zyY2jHd95+vOB3Js0d1o1fL9IoA=
X-Gm-Gg: ASbGncvqPbIsWFk3ExSyeiB9hBAGELRwTqiML22CDJbEN1izFh3ZB7ukYQTKNsiCGgy
	i07kg3795qqkGLU3ELyrvX4pbVR8upSxMXKcjYXNF2NokAB7G8m76I7S5bamxdaS/6jT4NojDiT
	YFRBBo4aOOFhcCxZ5VvNyIcmK7Bl+BZ1LHKf/BkvXmawZ95IYh6c0NqhLw+YXjadfRwFGdyxRqI
	USpyHhLErXS0cEer8GJ3IwXVttMPzSBQpBKOASLpwrWqo3xHjv5AHMfbgrZiV8mlDHq3JvJ3azv
	q6YsP02MgFkxm/z69VUyd+lz+u9fh1WBMOq0t8ny0AuyVXOpglhARavD7ht0+hy8LzfedQDICgM
	bSP67z/JGhGhcD/bYEGiIQQ==
X-Google-Smtp-Source: AGHT+IEdAuoBBa6rqdfXyXVPdfsyoNBKCU13VR5rdKO1AHzkVgoZcyHxlV5xdWf54kCgyzIi1YY4cg==
X-Received: by 2002:a5d:5f93:0:b0:390:ec6e:43ea with SMTP id ffacd0b85a97d-3996bb51f57mr3474100f8f.15.1742310943702;
        Tue, 18 Mar 2025 08:15:43 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff? ([2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb318a96sm18690639f8f.69.2025.03.18.08.15.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:15:43 -0700 (PDT)
Message-ID: <73dd1253-1b73-436f-af1b-94c724b2069e@linaro.org>
Date: Tue, 18 Mar 2025 16:15:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 4/6] phy: qcom-qmp-ufs: Refactor qmp_ufs_exit callback.
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, manivannan.sadhasivam@linaro.org,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-5-quic_nitirawa@quicinc.com>
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
In-Reply-To: <20250318144944.19749-5-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_081545_474195_9D6F67B4 
X-CRM114-Status: GOOD (  16.54  )
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
> Rename qmp_ufs_disable to qmp_ufs_power_off and refactor
> the code to move all the power off sequence to qmp_ufs_power_off.
> 
> Co-developed-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 41 ++-----------------------
>   1 file changed, 3 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index 3a80c2c110d2..675fef106d3b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1757,19 +1757,6 @@ static void qmp_ufs_init_registers(struct qmp_ufs *qmp, const struct qmp_phy_cfg
>   	qmp_ufs_init_all(qmp, &cfg->tbls_hs_b);
>   }
> 
> -static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -
> -	reset_control_assert(qmp->ufs_reset);
> -
> -	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
> -
> -	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> -
> -	return 0;
> -}
> -
>   static int qmp_ufs_power_on(struct phy *phy)
>   {
>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> @@ -1839,39 +1826,17 @@ static int qmp_ufs_power_off(struct phy *phy)
>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> 
> -	/* PHY reset */
> -	if (!cfg->no_pcs_sw_reset)
> -		qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
> -
> -	/* stop SerDes */
> -	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_START_CTRL], SERDES_START);
> -
>   	/* Put PHY into POWER DOWN state: active low */
>   	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>   			SW_PWRDN);

So where goes this code ? I think it should go in a new exit PHY op.

> 
> -	return 0;
> -}
> -
> -static int qmp_ufs_exit(struct phy *phy)
> -{
> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> +	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
> 
> -	qmp_ufs_com_exit(qmp);
> +	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
> 
>   	return 0;
>   }
> 
> -static int qmp_ufs_disable(struct phy *phy)
> -{
> -	int ret;
> -
> -	ret = qmp_ufs_power_off(phy);
> -	if (ret)
> -		return ret;
> -	return qmp_ufs_exit(phy);
> -}
> -
>   static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>   {
>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> @@ -1890,7 +1855,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> 
>   static const struct phy_ops qcom_qmp_ufs_phy_ops = {
>   	.power_on	= qmp_ufs_power_on,
> -	.power_off	= qmp_ufs_disable,
> +	.power_off	= qmp_ufs_power_off,
>   	.calibrate	= qmp_ufs_phy_calibrate,
>   	.set_mode	= qmp_ufs_set_mode,
>   	.owner		= THIS_MODULE,
> --
> 2.48.1
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
