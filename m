Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ACE1C282EC
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 15:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NJ6JNLLu4TBDo9JD4IoyxCeXcd1jQJ+2lCGgRMRwcE8=; b=wD7wi2jbTnQU1CHmpQDIjjX7Jw
	Q1e4oJSqvNCxi1oCHNAFHI2oGKky9qOBfMEd2qX5LuyjCtHPkmJiNryIOUFjey8a9yqR0B3ovMAjs
	qcNMDuTOkatvEbn63G1ug3A8eDo4vDTP7u32btSA1RG3obXcfUfhJMtl8U8GQdSNHHXmqjmzBO9zQ
	TUn5gBxevMhO8dbab7Ytjyl5qAY9S44vYE7jYhZ7WWZdFavt7NLPE642kNWSfYCvCz5swpYa+cMdA
	W+waIk6wedib51iHAoXNJutRb6KAGVSA7njejbETcMo94sPb5zeKjdgeQ99CGd7j3GsV90IpIekWc
	Mlx2VFRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYZ9-00000006JEf-353O;
	Tue, 18 Mar 2025 15:09:15 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYZ7-00000006JEB-0x3x
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 15:09:14 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-391342fc148so3719362f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Mar 2025 08:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742310551; x=1742915351; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l9FvcL11IhRXEvcchOW8/VG/LDph+/nqjxi32WaTfiU=;
        b=i+tgIRjnLJclTVeYw2Z/VMq/zHNCyTj+I0hk3PYf1ffBWMGbhqULT7NBdvahA7jxj9
         3KNbZHJIOULKozenw79lhHxCXf9sWPYXBIaHCBo3g/IrHknSFVd2HxtUIQS+FfULgxCo
         DAwLru3eyFxAXi+hXT6O5pbE0WaaND9pHC6M8/pqi8tRImOjJak+7+4S6ixzejtPx84w
         jLS7ywLFQkzp4jq8K8lNbE66wuWi6Rvo4MgumO7890KPP1Wx5lvITjkc/IrcwcHrm2gO
         UqTQ/V6Ra5cgOjeKrsmUksBX/sYHYF7awa4rOTxh29eGVdpRngnTV60qQTKDSC3XqOvx
         /oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742310551; x=1742915351;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l9FvcL11IhRXEvcchOW8/VG/LDph+/nqjxi32WaTfiU=;
        b=BQg4OTa6driJk1EGUn6vQdmZbxZqboPoIq4olNBa/MJkjJEM89JcdNYO+vKx4c1nSN
         30ERbSfGs6WvbV+FXc2KPqNogUGbWLrftkopuFmboD3tiUo3QV8uTlx+18j07of2MRTf
         1AlO8/OpKvI6zTp8GTTKeeIuAv8jEAqE+c7ymiB5/ZmSAkf7ao63CyUPDzqwUPgb/B7b
         eWl6aHzjxvH9Hs4uD1IuW8ILEcWAP4mIsw1YntIjCEJt27SYgn1iA7MVVCVBmxcJgxu6
         NqN09BWSFSg3WWvmfmGPNue0ufIqZVH3fj6zNuAlOsA0y02WOk3N/sTDe4n8SxZWlz+y
         HFYg==
X-Forwarded-Encrypted: i=1; AJvYcCW5x7+OOCyHJVrde95YdgCrjBiKMgaSlpx9fowtBxTI2GvveKJwTe5RefehDuT7FRXC8uIdjGWKnL8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxN30GSoTog6FysKZ+f3evuyLk6vJ9zkI3OLxUJfGapLsEDgdIx
	74/jLS1NtZxMOMI+lFxuvn2M8tYtDUPuJpBHRQZkakvD7D/6AUgQYcc1TaGogYs=
X-Gm-Gg: ASbGnctoaOpMdOet8gbOt3bqxdQHtn6ADX+gwmu+Gu4SEaskCjSCrP5FzMvlqPlS7Bb
	dU7AMAihTcfaiaMOpSu84EABkOB28VWH8iR8gC2XQ5qNJVf6kB7vSvATPXd8O5uO+YgZcTa8Mvv
	ePo0kW4iyhR4gfnVgSqbP2KzcSj5PWauz+lhQ986YOXTIcNysGKn8q72Z/7Fni31G5b8e2IKEc7
	z/t1nyrOGORgt1YUn0hx544q1Y7HrgLbWGT7kyg3Cji0OzKtvKfxHc8ewa3apQ71tShenzEyPbT
	rH9iY4iXyW6zK3C8PWOoe9i/Sle0XLf6z6Ywp4sKxY7O/PV12Mh4/UGFjvgRek5MzPd61G4a69C
	k97VFVSgywx/aZcRXcPLyxA==
X-Google-Smtp-Source: AGHT+IHbtr+9S+oor3PLqFFIkT9ev1XX2FkdR7McQ0/Nli+raQ51d4FH0a0etvq/qd5v5iYmXtWD2A==
X-Received: by 2002:a05:6000:4020:b0:391:31f2:b99a with SMTP id ffacd0b85a97d-3971d13607fmr18401484f8f.5.1742310551515;
        Tue, 18 Mar 2025 08:09:11 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff? ([2a01:e0a:3d9:2080:eac1:f2d4:84a8:c5ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395cb7ebe3csm18709729f8f.99.2025.03.18.08.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 08:09:11 -0700 (PDT)
Message-ID: <ab3639e0-61bb-46f0-9e54-f1bbd034b939@linaro.org>
Date: Tue, 18 Mar 2025 16:09:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH V2 2/6] phy: qcom-qmp-ufs: Refactor phy_power_on and
 phy_calibrate callbacks
To: Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, manivannan.sadhasivam@linaro.org,
 James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
 konrad.dybcio@oss.qualcomm.com
Cc: quic_rdwivedi@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, Can Guo <quic_cang@quicinc.com>
References: <20250318144944.19749-1-quic_nitirawa@quicinc.com>
 <20250318144944.19749-3-quic_nitirawa@quicinc.com>
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
In-Reply-To: <20250318144944.19749-3-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_080913_280160_87CED974 
X-CRM114-Status: GOOD (  19.76  )
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
> Commit 052553af6a31 ("ufs/phy: qcom: Refactor to use phy_init call")
> puts enabling regulators & clks, calibrating UFS PHY, starting serdes
> and polling PCS ready status into phy_power_on.
> 
> In Current code regulators enable, clks enable, calibrating UFS PHY,
> start_serdes and polling PCS_ready_status are part of phy_power_on.
> 
> UFS PHY registers are retained after power collapse, meaning calibrating
> UFS PHY, start_serdes and polling PCS_ready_status can be done only when
> hba is powered_on, and not needed every time when phy_power_on is called
> during resume. Hence keep the code which enables PHY's regulators & clks
> in phy_power_on and move the rest steps into phy_calibrate function.
> 
> Refactor the code to retain PHY regulators & clks in phy_power_on and
> move out rest of the code to new phy_calibrate function.
> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 18 ++----------------
>   1 file changed, 2 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> index bb836bc0f736..0089ee80f852 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> @@ -1796,7 +1796,7 @@ static int qmp_ufs_com_exit(struct qmp_ufs *qmp)
>   	return 0;
>   }
> 
> -static int qmp_ufs_init(struct phy *phy)
> +static int qmp_ufs_power_on(struct phy *phy)
>   {
>   	struct qmp_ufs *qmp = phy_get_drvdata(phy);
>   	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -1898,21 +1898,6 @@ static int qmp_ufs_exit(struct phy *phy)
>   	return 0;
>   }
> 
> -static int qmp_ufs_power_on(struct phy *phy)
> -{
> -	int ret;
> -
> -	ret = qmp_ufs_init(phy);
> -	if (ret)
> -		return ret;
> -
> -	ret = qmp_ufs_phy_calibrate(phy);
> -	if (ret)
> -		qmp_ufs_exit(phy);
> -
> -	return ret;
> -}
> -
>   static int qmp_ufs_disable(struct phy *phy)
>   {
>   	int ret;
> @@ -1942,6 +1927,7 @@ static int qmp_ufs_set_mode(struct phy *phy, enum phy_mode mode, int submode)
>   static const struct phy_ops qcom_qmp_ufs_phy_ops = {
>   	.power_on	= qmp_ufs_power_on,
>   	.power_off	= qmp_ufs_disable,
> +	.calibrate	= qmp_ufs_phy_calibrate,

Ok so this will break the UFS until patch 5 is applied,
breaking bisectability.

Make sure UFS host driver calls calibrate first, and then
do the refactor in the PHY driver.

And either all would go in a single tree or either PHY
or SCSI maintainer would need to provide an immutable
branch for the final merge.

>   	.set_mode	= qmp_ufs_set_mode,
>   	.owner		= THIS_MODULE,
>   };
> --
> 2.48.1
> 
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
