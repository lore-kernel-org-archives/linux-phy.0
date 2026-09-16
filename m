Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5049EC88E77
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 11:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKr/pVSFvBUg0MzFA4nOwhqulxjCOHxWX6ealqLiGsg=; b=wkDUX3EPprxhm3
	3mKbj3RJDpUoGnfYte+nIfiE+LPjVXc1yh+XTn2MO6Vwtw07YMrLffcgumao4oKKq7Njzj4z/GRhY
	XXYgq8wuPRR/MIBzcKq+iLE/KkGeXriloGRH1NVzLrLEvZbdY5RBTVVJRZcqTwT6+pywL70JkNz1a
	3D6PlY1QgBavT+A3a3WxnkIyegE4PisZOaEQ8XO2FYBIwzMaGWUGT3HCNkAHxBcfV7G8Qk3vtFgP9
	7qEmAuJuELpcuk1ZMDRowKLLEkKdODI9M/u5Aq79V8yNpaV1kqrVK9f0qbFwQf7j7kqIwMO81W2qh
	HDDFttiVhZJNQBqaZKcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6o3g-000000096dg-3dZ9;
	Wed, 16 Sep 2026 11:44:12 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6o3c-000000096cF-3u7o
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 11:44:11 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-6a9ac6aa620so2408429a12.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 04:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789559047; x=1790163847; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=+OkjIpCELnuJRozHROd7rQfIVtAzAlx7qACUrTNgcPM=;
        b=wAH13hHMwnFyQlywbUMFxqnk/Uo6y9oVtoEArLy40WGEBpPdgPioznVC5e4v5+4LFu
         Ag7oVREaYSvOfYOnmn90VBVc4m/NdD1d3A+dTKV9qLoRQ7OpilWpbaIAPCblDsGs/MXw
         t4utlZrVSqKh+I/tQKw9LciGZPrDCJz6B1bdu9qB+k/rdngZz+GN6mOvkvoS1gX9vgl4
         zmvyP9BwkV+0SXgY0R6oe87gMG8s+Ua8uMITGQJnXsxVlG1Sx6DDpS1fcC4nRxXnEcbj
         t0Aw5LsKiqHNu862GsQ9dhRiZVhuUBYMNz6FCBtN/uXWhrt0rUIAkmjITaboBsivAP5t
         dzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789559047; x=1790163847;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+OkjIpCELnuJRozHROd7rQfIVtAzAlx7qACUrTNgcPM=;
        b=BnwUKU/GJBlusMyieTK/GrDuDU7ztwKdHJsWtXGEDzEPLEgX8REllhpToH7VRMZRPZ
         wVJIz84opXNJyEi3hKaYakuLcN/l49qxzE8FKtIiN96mp5EcyUumkfC0zpOpc/gXzvQB
         m2rnsuKxklDdPyUUvzfQOFXsPXroG7pgAlO9e/FaWWv33KWubrKd1N7WE53d7eTwLy9e
         uwovP4XmyKEvF5EPdcSwmgWdXqaiHOgsHiZ2yz04xQPaWugf4InysNrmeCllUxFnHqHi
         mcX57mEJXsXQ1HgwczTJ8VKyShF1VzqVEZQHYerzrsnnzcjrjS4eOkKKaWg7Kfl3BQYF
         GoYA==
X-Forwarded-Encrypted: i=1; AKwUvBxnrT+HeY75KZEQN8IEeIGdKv3NatQU6Jr4Njt2hqDZStLo53Bc935xgJz33TuyaHwdXY21zoAIcxk=@lists.infradead.org
X-Gm-Message-State: AFuF++kNQiAp4yvHFuxlz34ozpXOZWCrJymhmp7hm4OLE+MtrE4FciLf
	dnmrZ5KQlRLGNoXta36BkMMdKZewAu6nHbpAgj6gmcY+j/dQ0j6iReeFpJOSQ8bOOdQ=
X-Gm-Gg: AYBFou0KqJZPasrd3aVwyynH3VQ0UgB82U4/iVw6GS7TBPmJCkB1KUEMSna+0nV09xU
	JT5ldNcRKtkSAprT3cmc5ZZZcl+FJPRP2KJcBqMMbSOi9OFc+HSW92HmRqZlKa9qmcsSpII6Lzn
	Eaxc6qCVOhZ4Kvhcq3fC1wdy0cvTR2mf6BNIQefnfpaoe0K4MAdgfrqIaOCBOx8CyidQQi6uyJ8
	Xn9/F/gulORCNE1Vrovgjl/KTYbmvfHYOb7jYuU/fb7mllMqf2DZTLG/yXvvWYa/vMklBsVlYnu
	p43xMFWOzTisNJUPutg8DRCoefyqQDjBHl9W98emsZ0T/n2/oXRN5beOpIZffvWmB8Cu86UThKx
	V860JIayv+Iloun/AsI/Z6vHsBUBtD0yzdasgdOI/pYAWlVdiJEiE6u7MMHmteaCOR3FLrAOBIB
	J2vuGj72F+2bIJt3b6ACEJUaZdOE2S1G7v/XojMvos0loSsoiHDvZ1Gv5vIuS9V+MSrQE7KIwpb
	jxEr52xSiLY
X-Received: by 2002:a05:6402:114a:b0:6a9:8c23:e0c0 with SMTP id 4fb4d7f45d1cf-6aa04039ddamr3843480a12.19.1789559046925;
        Wed, 16 Sep 2026 04:44:06 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.116.194])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aa1d228de9sm1631723a12.6.2026.09.16.04.44.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2026 04:44:06 -0700 (PDT)
Message-ID: <1a2b8244-0e8b-49d0-8dce-775abb070c76@linaro.org>
Date: Wed, 16 Sep 2026 12:44:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v17 4/5] media: qcom: camss: Add support for PHY API
 devices
To: sashiko-reviews@lists.linux.dev
Cc: olteanv@gmail.com, neil.armstrong@linaro.org, devicetree@vger.kernel.org,
 media-ci@linuxtv.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, robh@kernel.org,
 conor+dt@kernel.org
References: <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-0-e2197a3e2551@linaro.org>
 <20260906-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v17-4-e2197a3e2551@linaro.org>
 <20260906143233.523A21F00A3A@smtp.kernel.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20260906143233.523A21F00A3A@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_044409_423982_DD13989A 
X-CRM114-Status: GOOD (  26.44  )
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

On 06/09/2026 15:32, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 3 potential issue(s) to consider:
> - [High] Selects a non-existent Kconfig symbol PHY_QCOM_MIPI_CSI2.
> - [High] Hardware PHY state and resources are leaked on early probe and registration error paths.
> - [Medium] Missing return value checks for phy_mipi_dphy_get_default_config_for_hsclk() and phy_set_mode() can lead to uninitialized PHY configuration.
> --
> 
> commit cc3786ea5902bcb687c49374e8e8db29c5127496
> Author: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> 
> media: qcom: camss: Add support for PHY API devices
> 
> Add the ability to use a PHY pointer which interacts with the standard PHY
> API. In the first instance the code will try to use the new PHY interface.
> If no PHYs are present in the DT then the legacy method will be attempted.
> 
>> diff --git a/drivers/media/platform/qcom/camss/Kconfig b/drivers/media/platform/qcom/camss/Kconfig
>> index 4eda48cb1adf0..1edc5e5a1829e 100644
>> --- a/drivers/media/platform/qcom/camss/Kconfig
>> +++ b/drivers/media/platform/qcom/camss/Kconfig
>> @@ -7,3 +7,4 @@ config VIDEO_QCOM_CAMSS
>>   	select VIDEO_V4L2_SUBDEV_API
>>   	select VIDEOBUF2_DMA_SG
>>   	select V4L2_FWNODE
>> +	select PHY_QCOM_MIPI_CSI2
> 
> [Severity: High]
> Does this select a nonexistent config symbol? Selecting a symbol that isn't
> defined anywhere in the kernel causes a silent build dependency failure,
> which will leave the required PHY infrastructure unbuilt.

No the dependency is described in the cover-letter
> 
> [ ... ]
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.c b/drivers/media/platform/qcom/camss/camss-csiphy.c
>> index 539ac4888b608..e00748dd83b02 100644
>> --- a/drivers/media/platform/qcom/camss/camss-csiphy.c
>> +++ b/drivers/media/platform/qcom/camss/camss-csiphy.c
> 
> [ ... ]
> 
>> @@ -306,11 +308,88 @@ static int csiphy_stream_on(struct csiphy_device *csiphy)
>> +	link_freq = camss_get_link_freq(&csiphy->subdev.entity, bpp, num_lanes);
>> +
>> +	if (link_freq < 0) {
>> +		dev_err(dev,
>> +			"Cannot get CSI2 transmitter's link frequency\n");
>> +		return -EINVAL;
>> +	}
>> +
>> +	phy_mipi_dphy_get_default_config_for_hsclk(link_freq, num_lanes, dphy_cfg);
>> +
>> +	phy_set_mode(csiphy->phy, PHY_MODE_MIPI_DPHY);
>> +
>> +	ret = phy_configure(csiphy->phy, &dphy_opts);
> 
> [Severity: Medium]
> Should we check the return values of phy_mipi_dphy_get_default_config_for_hsclk()
> and phy_set_mode() here?
> 
> If link_freq evaluates to 0, it appears phy_mipi_dphy_get_default_config_for_hsclk()
> could return -EINVAL and leave the output dphy_opts structure zero-filled. Passing
> this uninitialized configuration directly to phy_configure() could lead to
> erratic hardware behavior.

Yeah but no link_freq <= 0 should cover that case. I'll add the 
evaluation of the return types anyway.

> 
> [ ... ]
> 
>> @@ -709,6 +788,56 @@ int msm_csiphy_subdev_init(struct camss *camss,
>> +	ret = phy_init(csiphy->phy);
>> +	if (ret)
>> +		dev_err(dev, "%s init fail %d\n", csiphy->name, ret);
>> +
>> +done:
>> +	return ret;
>> +}
> 
> [ ... ]
> 
>> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
>> index 2123f6388e3d7..84097d82d99c9 100644
>> --- a/drivers/media/platform/qcom/camss/camss.c
>> +++ b/drivers/media/platform/qcom/camss/camss.c
> 
> [ ... ]
> 
>> @@ -4832,14 +4890,21 @@ static int camss_init_subdevices(struct camss *camss)
>>   	unsigned int i;
>>   	int ret;
>>   
>> +	camss_detect_legacy_phy(camss);
>> +
>>   	for (i = 0; i < camss->res->csiphy_num; i++) {
>> -		ret = msm_csiphy_subdev_init(camss, &camss->csiphy[i],
>> -					     &res->csiphy_res[i],
>> -					     res->csiphy_res[i].csiphy.id);
>> +		if (!camss->legacy_phy) {
>> +			ret = msm_csiphy_subdev_init(camss, i);
>> +		} else {
>> +			ret = msm_csiphy_subdev_init_legacy(camss,
>> +							    &camss->csiphy[i],
>> +							    &res->csiphy_res[i],
>> +							    res->csiphy_res[i].csiphy.id);
>> +		}
>> +
>>   		if (ret < 0) {
>> -			dev_err(camss->dev,
>> -				"Failed to init csiphy%d sub-device: %d\n",
>> -				i, ret);
>> +			dev_err(camss->dev, "csiphy %d init fail\n",
>> +				res->csiphy_res[i].csiphy.id);
>>   			return ret;
>>   		}
>>   	}
> 
> [Severity: High]
> Does this error path leak the PHY initialization state?
> 
> When msm_csiphy_subdev_init() succeeds, it calls phy_init() to acquire the PHY.
> If a subsequent iteration of this loop fails, or if a later initialization step
> like camss_probe() fails, the code returns immediately or goes to an error label
> without rolling back the previously initialized PHYs (which require phy_exit()).
> 
> Additionally, in msm_csiphy_register_entity() located in camss-csiphy.c:
> 
> 	ret = csiphy_init_formats(sd, NULL);
> 	if (ret < 0) {
> 		dev_err(dev, "Failed to init format: %d\n", ret);
> 		return ret;
> 	}
> 
> A failure here returns early without calling phy_exit(). When the calling code
> in camss_register_entities() rolls back, it decrements the index and skips this
> failing entity, which seems to permanently leak its PHY initialization state.
> 

yes missed the unwind.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
