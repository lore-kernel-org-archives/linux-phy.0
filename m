Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B133ECAAA1
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 09:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6HXb702MxUaIULGuPO51wpJ2UGcjrNbe0w+tZ+INJQ=; b=LvgXfmfIlBKf4M
	z+V3xx0Jfl1aW0wYINE9CVSgSbukyAUQUjFdXxaC186yV5Ot5aLhhV9wn5FqBnNVzDQbKL+HqSBMQ
	5vhAdTmhOL+09OKAz+iXgnNauduuuv8A3304yaJPsJ4YUBIAm0eoBmufm+DN9apgCduZVAbn5Pd+e
	7msF7BM/r+qgaC9Vqjb68YfgeLzL9Rpz8qQZ2e9UD1Cyc1o/38uxB0IdR05fSyV2IR+JemS6PO1k6
	ph0MbZwiieF3Wkq4xOWmmyFLLrVdBppAp8Uy2EYIMP9m9qdAVLb/ft8kRAHxLlGUMjLPPB+XIarOM
	galwpgluC011RfdQA01w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxZY-00Few9-76; Tue, 30 Aug 2022 09:30:16 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSxZ3-00FeZl-IA
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 09:29:50 +0000
Received: by mail-lf1-x131.google.com with SMTP id bq23so14699202lfb.7
        for <linux-phy@lists.infradead.org>; Tue, 30 Aug 2022 02:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=RGUqkEAMYcKdlxASVSFfqtFS0Ow4eDh7fj2KOS3N7cc=;
        b=duvxjG2yG05W77RsYVgchCQxXXuysvwY/I0a7Tn/GslnycXVvQ6AQfWnIgUgZZ+K4g
         SKJ+DurBhGQtpKl7C47uXbeGI0houeGHpZTzGBNEMxd+C4S/rXJF6j/d+Dt+X+VeOFsV
         b1JWw6wOTkiq8uik9ki4DPVID9S5KN/yQg+ZFDFZtAIEQ9r0/F24+HbSlL7wf4oSZkOS
         u1xsyVXESvALtYKjXf9Knooh+Jk5++CWWFb5AisvpI489RNNA6CiS8tNvh+Y49FA3Mgm
         9PnCPfKhswxcvTLwYAO6Qr7CxJ6Rdcng0kFWBRfcJmVSSwA1pI/BXB1JYmw3Zl/n020f
         jXqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=RGUqkEAMYcKdlxASVSFfqtFS0Ow4eDh7fj2KOS3N7cc=;
        b=NBC3274BQ7iO/nePIegSNQO+U/J8R1LQ8RU1aUH241G6T3BeD4atYo/QK+t+5LVdv6
         QHZ7GoSkwVU0+Mhu10lYLBtgX+rlat+QI0hQhQHAXbOk2I6kp38BFU2qQRU+kzDWepNN
         SMITo9WdJlEVLW3l2o7JHgHhH5Zpdt//AnwOIzqI7eWwVGXL/zuPviiqrkhr57ITgMdC
         92ZHB2P/Rx6p70WcuxleMGcSaQgmR3o8rjaG+sSUQZL149d3HsOanpZx/3T+K6f9lN2Q
         jdKS6WRn20gfzq9HkAYobqvRV3IJz77WUTLkWbIy1S1ogsBM3sknUKCGgRFh/bZjuMa1
         KXcw==
X-Gm-Message-State: ACgBeo2QUydJl0HRhW/M/+SjEKnivvkXKo1bK1lNnFxxln6uNq7IKzeL
	PpMTiWnPILAv1sm6Vk340myENA==
X-Google-Smtp-Source: AA6agR4IWI7kP1cAa/pXkx98zqiF1r1A2zAWpv5R30sR9R2HKmZsVBdBLuRtOqzeUM+4p3ajRxdqLA==
X-Received: by 2002:a05:6512:1527:b0:48b:99:f3ff with SMTP id bq39-20020a056512152700b0048b0099f3ffmr7439961lfb.81.1661851783238;
        Tue, 30 Aug 2022 02:29:43 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v11-20020a2ea60b000000b0025e00e0116esm1697453ljp.128.2022.08.30.02.29.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 02:29:42 -0700 (PDT)
Message-ID: <9e428ef0-509c-eb09-0d4c-13cdd74fad8f@linaro.org>
Date: Tue, 30 Aug 2022 12:29:41 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH v2 2/6] phy: qcom-qmp-pcie: split register tables into
 primary and secondary part
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn@kryo.se>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
 <20220825105044.636209-3-dmitry.baryshkov@linaro.org>
 <Yw2+aVbqBfMSUcWq@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yw2+aVbqBfMSUcWq@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_022948_621579_857F0EBE 
X-CRM114-Status: GOOD (  26.34  )
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

On 30/08/2022 10:38, Johan Hovold wrote:
> On Thu, Aug 25, 2022 at 01:50:40PM +0300, Dmitry Baryshkov wrote:
>> SM8250 configuration tables are split into two parts: the common one and
>> the PHY-specific tables. Make this split more formal. Rather than having
>> a blind renamed copy of all QMP table fields, add separate struct
>> qmp_phy_cfg_tables and add two instances of this structure to the struct
>> qmp_phy_cfg. Later on this will be used to support different PHY modes
>> (RC vs EP).
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
> I haven't really had time to look at this series yet, but it seems the
> way these structures are named and organised could be improved.
> 
> First, "primary" and "secondary" says nothing about what these
> structures are and the names are also unnecessarily long.

I started with 'pri'/'sec', but was asked to improve them. Any sensible 
suggestion is welcomed here. 'main'/'aux'?

Regarding 'saying nothing'. It's true, initially it just followed the 
existing split for the sm8250. Then I added the `secondary_ep` table.

> 
> Second, once you add a containing structure, the "_tbl" suffixes could
> be removed (e.g. in "pcs_misc_tbl").
> 
> Doing something like below should make the code cleaner:
> 
> 	struct qmp_phy_cfg_tables {
> 		const struct qmp_phy_init_tbl *serdes;
> 		const struct qmp_phy_init_tbl *tx;
> 		...
> 	};
> 
> 	struct qmp_phy_cfg {
> 		struct qmp_phy_cfg_tables tbls1;
> 		struct qmp_phy_cfg_tables tbls2;
> 		...
> 	};
> 	
> as the tables can be referred to as
> 
> 	cfg.tbls2.serdes
> 
> instead of
> 	
> 	cfg.secondary.serdes_tbl;

Nice suggestion, I'll implement it for v3 if Vinod doesn't object.

> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
