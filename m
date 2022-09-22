Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D47EECAAD8
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 18:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kv5ZvOS+ILcpww1NA1sl5s5VmZMApxarOrv6DCpHNxc=; b=cHYzURLvPF22IVbBqrmU+Ef9PR
	rSOOj0czk/aeHdN1QHLHYk5pSNq5IBjAobiaac6AUCiIRi2LO22wt9AL+dAg2XObLX9gwvXQwwUBx
	enmYZhBNdjcu4Hup05pCVCkTnB1zic3WjDs9DL7GL/+uLvjEJv1HcaZuf1ISgUdyZyno5MAxy0w9R
	ZjFihAQTEqUEN56e4OIIMkQ1cURCMn7Yze3xCAEbjq+6ZYlXv9+qy53+U74IAR0b2S8vNJmzAxy4o
	7RJIRnlj6o8EeD9B68NT/xiH+u9c4+zvgZRX415Lo+MxeXXD++L2mUHD/lvu03rQzg/OwLFgu/KAh
	oi9Qomsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQa4-00HE0e-1i; Thu, 22 Sep 2022 18:05:48 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQa1-00HDyM-E0
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 18:05:46 +0000
Received: by mail-lf1-x135.google.com with SMTP id f14so16013238lfg.5
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 11:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=O46UPXCIh6xeUVI7w8DMXEAehKpkJIvnLoZUqTHUtqk=;
        b=bQ2Kg5JmadYfkLGFdppZYQAiPloTisImfMCyytjqNncjrTKzkgfccljYQkDoaa86KZ
         tAEn8+4bcFywqjTSU42yWbpsFeglla+UTePOgMHqRH142Uun8y9OAnimSDUzrNBEwQqz
         DCjuz8Q+UnJ8VNQDW066TcUyMS4SotdGs1j3vxyzS0uLYOX1L7dnCxaGi5B/gWp8QIQJ
         EE15tyzXI5VpoGEKBVrr28erLToz5TRC2y4xciLo2yo0r+ZbKUsAfF1sm7P6B43UhUf1
         4Vka8J+vr2uaoKHOsveiQYycaaUGff14j3NeenEAMmWaTQb2Gx2/S6zNGW65EZ65h9sz
         9gGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=O46UPXCIh6xeUVI7w8DMXEAehKpkJIvnLoZUqTHUtqk=;
        b=ZpIw7GSYHEa68avT6ZYnWUpw+TX6YZkIhgCBm8EXKEiCdCB0opK7g4AKB56Klj9lsr
         wskgomQv4V/R0K9FSC9VdbNjkwrQrh0SbzK+zkW+Rsko8T6Ws1Zgqb9ss4KHvpZ7Lnt2
         owGiTYCViAd1tU8QXB4+DfYWUt1J208NBUh2ypVMxFhf1nYCiyvWYD0vJeoN1IPVniXH
         NAA2JGnjOfxQk4w5852PUXe78nA9//hZ1lh2xygzxQI9zLT6dwZF5B3XdwI6fDzurKdV
         UBHNXFgnMVKkPURG15LZlc6E6YUUjTxf8cGQaREqritdvCNY7hLXbukv/dGlUMVPQF3y
         1NNg==
X-Gm-Message-State: ACrzQf0TByi5QcIl7uZYYDB/VcSkwQtquJB4AyBbKzv9Y6N3kYc+0Til
	FSnW3Fu7M5g1V74DkE2GfLMKMQ==
X-Google-Smtp-Source: AMsMyM4+MkUezedxxh/gkjwpbHDAyw4WUriLTChGSflindRV0/x7SG/HxOetgXVwHPiZs/mJOG9iyQ==
X-Received: by 2002:a05:6512:c19:b0:499:29e:5e4f with SMTP id z25-20020a0565120c1900b00499029e5e4fmr1763665lfu.578.1663869941658;
        Thu, 22 Sep 2022 11:05:41 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t12-20020a056512068c00b00496d3e6b131sm1036307lfe.234.2022.09.22.11.05.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 11:05:41 -0700 (PDT)
Message-ID: <878a616d-dbe8-a6aa-835a-3124729234e9@linaro.org>
Date: Thu, 22 Sep 2022 21:05:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 7/7] phy: qcom-snps: Use dev_err_probe() to simplify code
Content-Language: en-GB
To: Yuan Can <yuancan@huawei.com>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@somainline.org, kishon@ti.com, vkoul@kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220922111228.36355-1-yuancan@huawei.com>
 <20220922111228.36355-8-yuancan@huawei.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220922111228.36355-8-yuancan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_110545_499694_BCF3E5D9 
X-CRM114-Status: GOOD (  10.06  )
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
>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 18 ++++++------------
>   1 file changed, 6 insertions(+), 12 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
