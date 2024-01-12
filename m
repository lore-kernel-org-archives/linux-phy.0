Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2429C4707C
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jan 2024 22:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQQ8xRG1pnwREFIYfdbHUT57SxY/mMmP+XwL4GFjlPI=; b=lsrZTJuFRA31do
	FNfrNU5vHigQIegyt63OEPkG005k0cSY1nnVuvSRF0RjNnyZmS7mN4lIBwjv6IpilO07xu3/Cu0pF
	ZwNtSMh+VJkX9p8XVAe/QehhNRkrEI++9jRN7DpEg6xTBI2HyRfHScbmClIfqje5Oh3b8C94vjvHc
	2KEn+z45+B7/sHVuIq3ii64tEGV8AbG8tEbwOM/f6fp+WM8AfHDYY6jwHV83yonPC6azeuPkXE30B
	IH/1oEE/7lwmhGPZYpZpMTTiA8lu7+IdeEUPe96GQ0KkFrto5XtkihFDK6WiYB+0f1qi0GfyMBym6
	IZ8IggotOveYNiqs7Kqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOQ1H-0048NK-1c;
	Fri, 12 Jan 2024 22:28:55 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOQ1E-0048My-28
	for linux-phy@lists.infradead.org;
	Fri, 12 Jan 2024 22:28:54 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a29c4bbb2f4so748991766b.1
        for <linux-phy@lists.infradead.org>; Fri, 12 Jan 2024 14:28:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705098529; x=1705703329; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=k+g8KAN/GocAbP+Hjj0VU3R5oOrMC5lRs+LQJKDyZbc=;
        b=I+HB7d3+U/ezJu1wa5Uj6N37AXM0i8XXlTCJr8vqktf/IN4dKncCm2muI6A54shEiX
         RMSfdA/+GmlGl8K4zHrE9+XGKh4u9fuMDhKL7kuyMXTdeKsQtI8nTIhxl/M/9gVjS5Ez
         rd+EAL5TqkLOU4W6SCxwZLr5Xn9hzKMXsTChArd0KGuD40mbiEZPWAH/d2RLbt3NA6yj
         nKL8C95BC4HQ0iIpgT38PNb/ZiUJea/zYL7RQU7gAo3wZ95hLe1NQU0FU/2oy1vd8bGv
         POGq8V0/YVJ5Vxeipx489u2mZwSA9epOqQrC07hbxpg2yCL9laHPQELV6rzPF0oaG3lt
         KpPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705098529; x=1705703329;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k+g8KAN/GocAbP+Hjj0VU3R5oOrMC5lRs+LQJKDyZbc=;
        b=UETxeg1HWPfRmQuuzmVxxpfFJmGZ36ntjHv5cCWdl4t/NT/s/vg7gWwzUU2NLzDbL6
         ORpnkUf/JUZHnV7RHYqSfBbbgnxNDRkGbfgRTZU3QQMnefB9NP4WpmLJiZl4b7TobIrw
         Wn/e5HfFb/18Z5IbfynzowYQvGzJn0+Ztoc6ybHu1qtlhvH6LmOs93Xj1ZMAgBqZ0jJt
         vnIONKTXHv9mwCu4gGwHNDoSL6y1SOcBtIFcR5mHwMyfwgxKi6FqoOV9XrYkEkaFt5oe
         GY6EiRw+b1HUsmQvVWf3IBIx75XTPE23fL0TO3tXD9Bz+tU9NvqsAckp5nEcEmAIaOh3
         kCGA==
X-Gm-Message-State: AOJu0Yww3BatRh0NcX3wNxzAdv2rWsMAR1VzaSTpZJmBlLhtOjdU3mbd
	WB7SVbDY5NJ65qcskNN5Ye3qalEgYMPEOw==
X-Google-Smtp-Source: AGHT+IE6Y1CQAvSWgVhfPTkwN2W/RAJPjIutDlo+/cj2s9k6qNsUhtuGUhJR5tGNazvTNT3GoTlf0A==
X-Received: by 2002:a17:906:a202:b0:a2c:4b7d:69db with SMTP id r2-20020a170906a20200b00a2c4b7d69dbmr1054995ejy.18.1705098529417;
        Fri, 12 Jan 2024 14:28:49 -0800 (PST)
Received: from [192.168.174.25] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id hx25-20020a170906847900b00a26ac57b951sm2215051ejc.23.2024.01.12.14.28.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jan 2024 14:28:48 -0800 (PST)
Message-ID: <2a8ad790-6f3b-43d8-af31-0e6dcca72c54@linaro.org>
Date: Fri, 12 Jan 2024 23:28:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 1/2] scsi: ufs: qcom : Refactor phy_power_on/off calls
To: Nitin Rawat <quic_nitirawa@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 Can Guo <quic_cang@quicinc.com>,
 Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
References: <20240112153348.2778-1-quic_nitirawa@quicinc.com>
 <20240112153348.2778-2-quic_nitirawa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240112153348.2778-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_142852_738084_59828A51 
X-CRM114-Status: GOOD (  19.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 12.01.2024 16:33, Nitin Rawat wrote:
> Commit 3f6d1767b1a0 ("phy: ufs-qcom: Refactor all init steps into
> phy_poweron") removes the phy_power_on/off from ufs_qcom_setup_clocks
> to suspend/resume func.
> 
> To have a better power saving, remove the phy_power_on/off calls from
> resume/suspend path and put them back to ufs_qcom_setup_clocks, so that
> PHY's regulators & clks can be turned on/off along with UFS's clocks.
> 
> Since phy phy_power_on is separated out from phy calibrate, make
> separate calls to phy_power_on and phy_calibrate calls from ufs qcom
> driver.
> 
> Also add a mutex lock to protect the usage of is_phy_pwr_on against
> possible racing.
> 
> Co-developed-by: Can Guo <quic_cang@quicinc.com>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>
> Co-developed-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
> Signed-off-by: Naveen Kumar Goud Arepalli <quic_narepall@quicinc.com>
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  drivers/ufs/host/ufs-qcom.c | 104 +++++++++++++++++++++++-------------
>  drivers/ufs/host/ufs-qcom.h |   4 ++
>  2 files changed, 72 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 39eef470f8fa..2721a30f0db8 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -338,6 +338,46 @@ static u32 ufs_qcom_get_hs_gear(struct ufs_hba *hba)
>  	return UFS_HS_G3;
>  }
> 
> +static int ufs_qcom_phy_power_on(struct ufs_hba *hba)
> +{
> +	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> +	struct phy *phy = host->generic_phy;
> +	int ret = 0;
> +
> +	mutex_lock(&host->phy_mutex);

guard(mutex)(&host->phy_mutex);

and you can drop the _unlock calls

> +	if (!host->is_phy_pwr_on) {
> +		ret = phy_power_on(phy);
> +		if (ret) {
> +			mutex_unlock(&host->phy_mutex);
> +			return ret;

And with the _unlock now being unnecessary, you can rewrite this
as:

if (!host->is_phy_pwr_on) {
	ret = phy_power_on(phy);
	if (!ret)
		host->is_phy_pwr_on = true;
}

return ret
> +		}
> +		host->is_phy_pwr_on = true;
> +	}
> +	mutex_unlock(&host->phy_mutex);
> +
> +	return ret;
> +}

[...]

>  static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  {
>  	struct ufs_qcom_host *host = ufshcd_get_variant(hba);
> @@ -378,13 +418,18 @@ static int ufs_qcom_power_up_sequence(struct ufs_hba *hba)
>  		goto out_disable_phy;
> 
>  	/* power on phy - start serdes and phy's power and clocks */
> -	ret = phy_power_on(phy);
> +	ret = ufs_qcom_phy_power_on(hba);
>  	if (ret) {
>  		dev_err(hba->dev, "%s: phy power on failed, ret = %d\n",
>  			__func__, ret);
>  		goto out_disable_phy;
>  	}
> 
> +	ret = phy_calibrate(phy);
> +	if (ret) {
> +		dev_err(hba->dev, "%s: Failed to calibrate PHY %d\n",
> +				  __func__, ret);
> +	}

You can drop the overly verbose __func__, unwrap the line and remove the
curly braces, similar for dev_err-s below

Actually, shouldn't this error out if calibrate fails??

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
