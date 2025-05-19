Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0ACEC2D0CD
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 13:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2fH6Bu/+MoZOPy14TTNgPEfqVIvjSMsh1vOOZNBRalg=; b=do+YGFRNTFkrZEHcKcEsri5xoc
	jsv6Uq44Et2t/Nm3G4Wjvl0ZKlnaZRD7ajO142/d+wRBne+nxB54LJlZ8RGN5k4ZRXBXnnShZvDFY
	ZnkJkCzq9owZRBNfAnVsDGXxqYIikxPAPuY0GcaS7sdHt45BGjI3ayJaX7qOcPlC8hADxKmfz1TzL
	Ulv/5AAWkCLLNhbeP4GxrD09W3B0xrLvF/YXlM6dndDLYjrL0I8uJNP51NLwd4RODgJqujMRg+KGb
	+8iiYf45n9GFRxl1Q3TaoUj6WppT8G6DYfOizo6L/o2SjJHu/Go4FPU6uqEKc3EhD8bDFxr/Iycyw
	N77USIsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH0O7-00000009Glz-1a7L;
	Mon, 19 May 2025 13:18:39 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH0HU-00000009FlB-3Fkw
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 13:11:49 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3a374f727dbso446888f8f.0
        for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 06:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747660307; x=1748265107; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UUn7TYIvH1lNPHVa4Z6ARWyUBajP1au4eKLX4WJWde8=;
        b=XHaQ62uvbe9w2TVaq9PiUik2BRx5fLjmpPXGP6zNfyuNu8Zs3+bzNJFsMFB37M/jXw
         C6+w4MTgHQM18IrFAYw13WVmJbO24uFo/lccIadg56X5VGuN0MfjmVOLZ0m2pI42YS8k
         xYuEO5O7moLPEYo8vnC6pU5XUrLbt+doFrpsDwgpN3z4r4PhBRJZoS/APoCLlhfTfIwi
         QbCz0ummao63gqgq2N08xUQ0yVLBV/P9cwJu7JFnvDKaIvq/aIfaErvtBYt2h5LyKVU6
         SLrNt86NfPXfG8W1Phs2kxvD+rYXQVTGZ9nAlkOzS2E6VL8grGAFpUiS3vmV9VBHjsT9
         9Nug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747660307; x=1748265107;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UUn7TYIvH1lNPHVa4Z6ARWyUBajP1au4eKLX4WJWde8=;
        b=w8IaoVFYX0MCnPdAL7rISsKMC8/xdU1ytzcBmm2uhv8mBrnolpGh5/cornpsfFpXKp
         jmA4j/l6Mc/5wfsP2QZ5yS7BxEbBUdGlhZebjhnHvq5oDybDGwqYqUf+oEECBvgkj8IU
         P13ZVN+nr/hGl+heZrbbC2w6crFct0zNtpEJaBC+B1LRwbXLZ4uD/lxRZXlgwSJqNZHh
         SwIU8Eg0rYfiYY13KlQZppsFmGTRsQGuf0LV7HGs68xfFPN7gYrze/W+yce3y0UzOMIp
         SCPc1UR5G12HyF/hO7pGwMsT7xnfxKg7zmdggZI1LtBHtw6d8DtaPUo3di3kVg2YzZxI
         17BQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+E72QWQ9kgjKJiC6Z9aN6ZvxqgIOTlDBBp+kddBCruc7doJ0qn5VUM6f5LNGduPhyucfCisrngUo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzP34R+gHL33glHy4ICRjEyAKQvhTF/tmDICruvjYjBSWNhuB3w
	iO9PT7BUxVLDw1Aw8kY0LSzB7pkA323mpuhMEbPWKyESPWoseRLdHfbvRsMzfr0FuQQ=
X-Gm-Gg: ASbGncvXR6aJfpTqwBD7PjtLzoS4PGCX8dN9YV4tqiGhUusHmW370Scch0jcfY5qWsT
	NK7iq6DXn+/pdDJUFlTIFQgfaAdUzj4KLH40xj8EikwR6FLN7xNRhP8S0YFtGuPbrnRrYLc+HaA
	1L2dblH78W7TF9+yFEcVvsuvUuYU63Umky2yclKJ9WaxkydCGzenNJ6GeLcPYWR9qJhO02ENXuz
	eh1pRBj1CyaIntNmSNqZ+I9heD5+PqkGSWRDkL0nsi5WpCqAua+qLT4tOVduV6FRORF79UV+yzq
	vDapXiVpKDy+WocbeztjZUOdaUiO4XhVHTARCugfJgYKz9WDdl6FbBhf+1PDEtBGvAcrUJfkopw
	Okp8qL+zw9FDdtVLR5Lm9Gv89eqeh
X-Google-Smtp-Source: AGHT+IE4enXPGAfVME6j5Ko4Zoits4KNwPjaTWmXOl8ZpSPczuQ/y48tyuM3P1pXZElfrIkB2Hl4dg==
X-Received: by 2002:a05:6000:420d:b0:3a3:779b:5b41 with SMTP id ffacd0b85a97d-3a3779b5b4fmr35519f8f.28.1747660307120;
        Mon, 19 May 2025 06:11:47 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:ce80:58bb:54b7:ad18? ([2a01:e0a:3d9:2080:ce80:58bb:54b7:ad18])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca88978sm13067516f8f.65.2025.05.19.06.11.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 06:11:46 -0700 (PDT)
Message-ID: <87a7a21e-a2c1-40d1-bc53-c55db8380973@linaro.org>
Date: Mon, 19 May 2025 15:11:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V5 06/11] phy: qcom-qmp-ufs: Rename qmp_ufs_power_off
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, manivannan.sadhasivam@linaro.org,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 bvanassche@acm.org, andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
 konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-7-quic_nitirawa@quicinc.com>
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
In-Reply-To: <20250515162722.6933-7-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_061148_821925_AA202C73 
X-CRM114-Status: GOOD (  14.62  )
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

On 15/05/2025 18:27, Nitin Rawat wrote:
> Rename qmp_ufs_disable to qmp_ufs_power_off to better represent its
> functionality. Additionally, inline qmp_ufs_exit into qmp_ufs_power_off
> function to preserve the functionality of .power_off.
> 
> There is no functional change.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 19 +------------------
>   1 file changed, 1 insertion(+), 18 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index d3f9ee490a32..a5974a1fb5bb 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1851,28 +1851,11 @@ static int qmp_ufs_power_off(struct phy *phy)
>   	qphy_clrbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>   			SW_PWRDN);
> 
> -	return 0;
> -}
> -
> -static int qmp_ufs_exit(struct phy *phy)
> -{
> -	struct qmp_ufs *qmp = phy_get_drvdata(phy);
> -
>   	qmp_ufs_com_exit(qmp);
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
> @@ -1921,7 +1904,7 @@ static int qmp_ufs_phy_init(struct phy *phy)
>   static const struct phy_ops qcom_qmp_ufs_phy_ops = {
>   	.init		= qmp_ufs_phy_init,
>   	.power_on	= qmp_ufs_power_on,
> -	.power_off	= qmp_ufs_disable,
> +	.power_off	= qmp_ufs_power_off,
>   	.calibrate	= qmp_ufs_phy_calibrate,
>   	.set_mode	= qmp_ufs_set_mode,
>   	.owner		= THIS_MODULE,
> --
> 2.48.1
> 

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
