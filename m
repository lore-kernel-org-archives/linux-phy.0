Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8FFDECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 07:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74O1hjRVphB2daBH3kFchDHdv1snFDJj8qBsLQ91KBE=; b=LknZpU/CUhRnDJ
	juojVS/6u/RNpFzVj13emNnw5a/djzY9tTXfnNeVgOIOIQ8HnAFcUb+8YrDnBlqeGYHDtUGpQ/GC2
	Twh6SuZmKuoky/GOxyIM9Da6CnhFITlLo75/p+WsHwEYkg6OpbQJO/QXuB/oE6q8TTq45juhZfNVw
	rMNtq/bw4sopHvXdjzWKo/0xon5ZqL3J7KHYnSz+QCo64pHq4GbO0yudTJzDy1Vj32McVcE0eqetU
	LuK2vhUN0saKcBK2ZjtMVBxhf3TmtFz7bKpuPCKt4K94ohefXGLCDit/02OcevuduuVf4mQk1hWyP
	j/G/KeDxRqtmCG6rB8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvWC-00EjDv-8F; Tue, 30 Aug 2022 07:18:40 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvW9-00EjDD-QI
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 07:18:39 +0000
Received: by mail-lf1-x129.google.com with SMTP id m7so5378395lfq.8
        for <linux-phy@lists.infradead.org>; Tue, 30 Aug 2022 00:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=W6h8dpQt+6IKb91NzEndI9mBuZUXBODe+03ODQBGbuI=;
        b=ouJUOpHFwHOkE2h+N3/OkYo8R16gJe9AUl1TJBu3Ve9XfarXUnHlxq2cQEsM0t6k9A
         o/2Wiz9VwDeICllVTfeeE2V9DR8jlFkm1bfJUVzYIkL6BzwhMwGWyt23wIMb5Y8H9Lan
         xZfmvr2Ye60LpkpmUV7fv51Gf6dt5fyxELjFuH41TBCmgMz4nYRv/P7+Yh4fb8HJIANa
         6zUYYbrPzw3jOQwlERzAihKpdDTawy68J60qkF4HyrpqeaPv3EjuiIeCtNFYPUF6Tx0N
         0kMcx/uz5LAO1npL44UBbUBYah3i8Mtghps4jbeLES/nabrolJlikJ/Ba7okjt0q5MO7
         RJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=W6h8dpQt+6IKb91NzEndI9mBuZUXBODe+03ODQBGbuI=;
        b=l+TT7oOWd7lQ/Mui0zdC2dX2A1FexCNQHigI1PnVdTQBqSrYPh/Zob22Ob8xMNcMDA
         XL0tTxQjzpaMUqLsCI2GjF4noiSeeXVr1PmGh3bMB3ssV3n74oY8E06AACEmqbZg9vOa
         EgppGjIZDnEWwL+C1hgSkYZ5di0sHDSO71Gm781/HCySGicO3AfFFX9HhNDuAuHsIAy+
         MJorS6SPj/LmPXj17NfNX9HPt4meDwaNffAjivgGIk6vRhBPIcE3Hc8FNtTaDtMt0KVJ
         seaLvq8DeH0J9Duo1jCW7poAQ09oGw8ztk0uHHi8xieqohWoM/W4cINBO8+BfRls+R8P
         HPcA==
X-Gm-Message-State: ACgBeo0DEQTnoU7/K/R4xWUTUhDIpUO+jDzTneWcHFltvAbeTTmTl+hc
	/I61ecWvy/Yer9tKAv04x9nYiQ==
X-Google-Smtp-Source: AA6agR48RiXIlhOzRcxivMG+L0nFgg6LKn2aBbAPwcSmk2L+EVRO7FoiHFZXNQZiQkBklQnDl1kdYw==
X-Received: by 2002:a05:6512:b89:b0:492:e4bf:adcf with SMTP id b9-20020a0565120b8900b00492e4bfadcfmr7032021lfv.203.1661843914714;
        Tue, 30 Aug 2022 00:18:34 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g15-20020a2eb5cf000000b0026455099704sm874135ljn.114.2022.08.30.00.18.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 00:18:34 -0700 (PDT)
Message-ID: <a77a0a6a-b4cf-51d8-51be-70075d0e6601@linaro.org>
Date: Tue, 30 Aug 2022 10:18:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-pcie: split register tables into
 primary and secondary part
Content-Language: en-GB
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn@kryo.se>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
 <20220825105044.636209-3-dmitry.baryshkov@linaro.org>
 <Yw24sgVksGzvgr8Q@matsya>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yw24sgVksGzvgr8Q@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_001837_906454_A402E454 
X-CRM114-Status: GOOD (  18.25  )
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

On 30/08/2022 10:13, Vinod Koul wrote:
> On 25-08-22, 13:50, Dmitry Baryshkov wrote:
>> SM8250 configuration tables are split into two parts: the common one and
>> the PHY-specific tables. Make this split more formal. Rather than having
>> a blind renamed copy of all QMP table fields, add separate struct
>> qmp_phy_cfg_tables and add two instances of this structure to the struct
>> qmp_phy_cfg. Later on this will be used to support different PHY modes
>> (RC vs EP).
> 
> This lgtm with once nit
> 
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 141 +++++++++++++----------
>>   1 file changed, 83 insertions(+), 58 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index c84846020272..60cbd2eae346 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -1346,34 +1346,33 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>>   
>>   struct qmp_phy;
>>   
>> -/* struct qmp_phy_cfg - per-PHY initialization config */
>> -struct qmp_phy_cfg {
>> -	/* phy-type - PCIE/UFS/USB */
>> -	unsigned int type;
>> -	/* number of lanes provided by phy */
>> -	int nlanes;
>> -
>> -	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>> +struct qmp_phy_cfg_tables {
>>   	const struct qmp_phy_init_tbl *serdes_tbl;
>>   	int serdes_tbl_num;
>> -	const struct qmp_phy_init_tbl *serdes_tbl_sec;
>> -	int serdes_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *tx_tbl;
>>   	int tx_tbl_num;
>> -	const struct qmp_phy_init_tbl *tx_tbl_sec;
>> -	int tx_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *rx_tbl;
>>   	int rx_tbl_num;
>> -	const struct qmp_phy_init_tbl *rx_tbl_sec;
>> -	int rx_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *pcs_tbl;
>>   	int pcs_tbl_num;
>> -	const struct qmp_phy_init_tbl *pcs_tbl_sec;
>> -	int pcs_tbl_num_sec;
>>   	const struct qmp_phy_init_tbl *pcs_misc_tbl;
>>   	int pcs_misc_tbl_num;
>> -	const struct qmp_phy_init_tbl *pcs_misc_tbl_sec;
>> -	int pcs_misc_tbl_num_sec;
>> +};
>> +
>> +/* struct qmp_phy_cfg - per-PHY initialization config */
>> +struct qmp_phy_cfg {
>> +	/* phy-type - PCIE/UFS/USB */
>> +	unsigned int type;
>> +	/* number of lanes provided by phy */
>> +	int nlanes;
>> +
>> +	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>> +	struct qmp_phy_cfg_tables primary;
>> +	/*
>> +	 * Init sequence for PHY blocks, providing additional register
>> +	 * programming. Unless required it can be left omitted.
>> +	 */
>> +	struct qmp_phy_cfg_tables secondary;
> 
> since this is optional but always defined, we would waste memory here,
> can we make this a pointer and initialize to null when secondary is not
> present

Ack.



-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
