Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5145ECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ra83W/O7ZMllNk5yVpGqzQq9gljMXb9yWlUjPdx+Jdo=; b=ee0CbXz9oHc7EJz+3qjogx0SCS
	oFDLHaVFxwCMy8UAGuWIqbQtK04IUK8qz6RPJjrUaSP6Iar60kfnzREPLhZ4XZS57ktiE4rPf7IPE
	4Adfsk1KyPp2m+WZz2Pr5Y4v9jf2R06uIEl/DW4zA5RIfH7botd6/LlUNm0nrYll6Jh4rMcPdFAtj
	VIw2zctMDJBGg9COW9EleeversPpkv8DEctag0QUi7jlx9B+d3XZsC3mfeuWkYP+z53B/0Nfy8dYo
	IKDdkIqLZhWOmTCyTXHw71/pJmxKEI9zB3FT8e9lQPdsIdrI1E+5PU1iWdad2hnFII98ND8w763sT
	T37xR8Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQYc-00HDYO-88; Thu, 22 Sep 2022 18:04:18 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQYZ-00HDWe-IZ
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:04:16 +0000
Received: by mail-lf1-x12e.google.com with SMTP id s6so15990644lfo.7
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Cp85iI0TQdLsLCfuvpK7iznKKPb7bjdE0o2CLpGmQWI=;
        b=DX6POr78vXwYPv4oLHURm29u9IRx7BsjpNzdD7pXXfcVDMYYsdPzTY4v61KeL3EUhD
         z55YVKBUGIkPCWqUOOIthpFU+asopGNPPRl3dtRIjazHP6G3kK/kk4sBe4UmjikylkQr
         Qs0AwrpI8rGbb68JcFYr9cvIcGgD2h1g6ogCRthtxIr+75bzHhMouYoJrsHtt0WQWYLI
         hoXdHuhPUpMFbldn9tgSFVzJLOwwPfEGe/qxu5ttK8ARvjwojSGgbPb12I9XhFsg4GYz
         iYA00ykObTdfq8RvPE8E4LvNJ73B4tcm2cW/kU93unPF4HB9WetcQ227I9x7yEfCbgHe
         1D/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Cp85iI0TQdLsLCfuvpK7iznKKPb7bjdE0o2CLpGmQWI=;
        b=Y42il418al4bYDXf0s3rVJc9Uh/uRaFN7y+gJXjSI1JeC8vdRyDcq7UBu8vP3n+H0I
         CcR+WZTybfiuB8RPpa+nOTlJxkSSFc8kf77zLCjnVtYOFEa1v8n3wfKqRVDBS/vJTRsN
         nnsqGo+rzDkqf9sHuUpOrrdirnZjYrdjGVX+2neQEtl45IZv/eAzyKjR5ExJRXt1otxJ
         Ep6F+g7P9GXkZqoFcQrhJ6nKUR86hcYc52YKoKYF9u/C16LO5A3BFCSCyn3yJWjYbiVi
         FoWnU8S5OTUUJXyCqIj36ZR09Hjv9yIIVr/k7LdN7N3v+6jShW7qCiSvQIwg///KldtZ
         wQjA==
X-Gm-Message-State: ACrzQf05+3XRZ/PxE2q8daJNdwxZ7tQGywqD2qSAtVXsE6E3lrnoHSWI
	fK1NH7R0djBnHLw2SroMrKabtQ==
X-Google-Smtp-Source: AMsMyM5GZh7KHQbmQl7t9bBvNAnBsDkJhci5NdYii1rhp4/MdDipgssEm0EzujLmV/aktXLjugIYiA==
X-Received: by 2002:a05:6512:2612:b0:49f:15dd:290a with SMTP id bt18-20020a056512261200b0049f15dd290amr1634962lfb.361.1663869851817;
        Thu, 22 Sep 2022 11:04:11 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o3-20020a198c03000000b00497ad9ae486sm1048129lfd.62.2022.09.22.11.04.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:04:11 -0700 (PDT)
Message-ID: <ec2a6966-7764-032c-b603-7887e17827b1@linaro.org>
Date: Thu, 22 Sep 2022 21:04:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 5/7] phy: qcom-qmp-usb: Use dev_err_probe() to simplify
 code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-6-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-6-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110415_641452_E61FDC11 
X-CRM114-Status: GOOD (  10.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 22/09/2022 14:12, Yuan Can wrote:
> In the probe path, dev_err() can be replaced with dev_err_probe()
> which will check if error code is -EPROBE_DEFER and prints the
> error name. It also sets the defer probe reason which can be
> checked later through debugfs.
> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 9 +++------
>   1 file changed, 3 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
