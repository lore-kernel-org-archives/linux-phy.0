Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0392C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 10:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDYgoJnx/9mce5K6OlXeSCLInWCdiMyzdACrTx+7Y38=; b=mJTsNsRSDgvHnU
	jN+V8YY9WrXvzozyIsdosq84fNSuUKU0Xgq9ak2WRGMQq2fPh/0LudNrTvYOlgSlb6Cu/4m9FLEOz
	9Megj74330senXjUbiTdCiotH+cbX//6izmRxlOUy2lh/ZJAjiWfIBCxbIb5tMsQhGftabR02AGNZ
	0maSqzHZ2ZikUiaelVgHj6bEZ912po6EXm9eC9Q+oeYCaJadPXe7CoLTyROkF1aoTCa2QrNKS7jlZ
	yyVrAEJ2L5mTth3di2xqfbdX2V6QJ2Sud6PXc4HfkuWqzs01zDKnOq5Q8UOiO3Xflrhhr14odPQi2
	dhXAwjXrMl6UIrTP7mow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oclGZ-0044tT-La; Mon, 26 Sep 2022 10:23:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oclFp-0044HW-7R
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 10:22:26 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bu25so8182062lfb.3
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 03:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=zkcOb24Evi1ksE1lwkoQgL5n/a7zuiGn5FgVHGwVjjk=;
        b=ccclXjfhbZ9g6sNaMs7j8J17AqDo8SuTkaQsosFYpKCZAot5wuamdGIH9ecTb7TAPz
         z9hu4DV98CZo7qo/B2ZKQRWZS7s5fjrzdMq49PJy91ayuZBF/IXyGwcmsLqPtdCSw46X
         GlC3Sqm/Sjdi/t3Jgx5wyrWsSQJSkMaPBq+f2L65OyAkr+mHBcaz6hK4Iga0hRAdQKJQ
         YkqMOogeSQai2WNgcUZmh13NVUpyIh0tQhFFjpYQoOmfv6b0PZ+Cn/1d+G/yvHp0rzww
         Wep8gfekmgcywOKFOrJtzMBJTsQvZ2q8Y2IuIkn8w+vQ04087NbbnkjybP74gBrGEGmE
         EeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=zkcOb24Evi1ksE1lwkoQgL5n/a7zuiGn5FgVHGwVjjk=;
        b=O24KIkOscHZIBxYWuZWQG6Z2ThkhJ9R6COaKdt45kCNKUjK6JiAGvC0bRexq1sEwmJ
         aRF38u9ba4B/cOq+8HXrR/7sVcZ32e9B2spnf6uoCwWc5PbtFBzVup+RJaQZx/w/CVsg
         S9MOvP/CLdti8k2xdEcda6Jy1Dkt1EiY218ncIVSfWj4hFeJrHFvwpvdV9qnsjosf4LY
         vAjQBYyC+K2N2ryP6LZUL8Y5f+xpbigVKQZWNEVHsv7Bb9pEwq38FgtaE0CThgYnGzRK
         QdpS79c711+pSEV/t2rC26AGQTC3TSINX+CN+plCajRpV13mXSTph9ro5azn/fr5kBHi
         4psA==
X-Gm-Message-State: ACrzQf1R21zrdxRjHp/TAGligZKpc9Hz1k0Cy9JI3hsMg9Hwet7Q7QZZ
	rtfCtaqghMMMbNyw/57487ncpcCojouCvQ==
X-Google-Smtp-Source: AMsMyM7LGod3qiCYNpJ7TH3RuskDdwJcAyDevsVmmvUUQSsLPsbj1fJLvCd60O4HF8gDG91s1bw3+Q==
X-Received: by 2002:a05:6512:685:b0:49f:4929:4c6e with SMTP id t5-20020a056512068500b0049f49294c6emr9222096lfe.642.1664187740702;
        Mon, 26 Sep 2022 03:22:20 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x28-20020a056512047c00b00497a32e2576sm2487979lfd.32.2022.09.26.03.22.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 03:22:20 -0700 (PDT)
Message-ID: <9f66ac8e-6d35-3046-e237-936bc10ba86f@linaro.org>
Date: Mon, 26 Sep 2022 13:22:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 1/6] phy: qcom-qmp-pcie: split register tables into
 common and extra parts
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
 <20220924160302.285875-2-dmitry.baryshkov@linaro.org>
 <YzFHi3IQcBF70uCG@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YzFHi3IQcBF70uCG@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_032225_335728_7A81A144 
X-CRM114-Status: GOOD (  18.21  )
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

On 26/09/2022 09:32, Johan Hovold wrote:
> On Sat, Sep 24, 2022 at 07:02:57PM +0300, Dmitry Baryshkov wrote:
>> SM8250 configuration tables are split into two parts: the common one and
>> the PHY-specific tables. Make this split more formal. Rather than having
>> a blind renamed copy of all QMP table fields, add separate struct
>> qmp_phy_cfg_tables and add two instances of this structure to the struct
>> qmp_phy_cfg. Later on this will be used to support different PHY modes
>> (RC vs EP).
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 129 ++++++++++++++---------
>>   1 file changed, 77 insertions(+), 52 deletions(-)
>>
>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> index 7aff3f9940a5..30806816c8b0 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>> @@ -1300,31 +1300,30 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_pcs_misc_tbl[] = {
>>   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
>>   };
>>   
>> -/* struct qmp_phy_cfg - per-PHY initialization config */
>> -struct qmp_phy_cfg {
>> -	int lanes;
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
>> +	int lanes;
>> +
>> +	/* Main init sequence for PHY blocks - serdes, tx, rx, pcs */
>> +	struct qmp_phy_cfg_tables common;
>> +	/*
>> +	 * Additional init sequence for PHY blocks, providing additional
>> +	 * register programming. Unless required it can be left omitted.
>> +	 */
>> +	struct qmp_phy_cfg_tables *extra;
>>   
>>   	/* clock ids to be requested */
>>   	const char * const *clk_list;
> 
>> @@ -1949,31 +1974,31 @@ static int qmp_pcie_power_on(struct phy *phy)
>>   	}
>>   
>>   	/* Tx, Rx, and PCS configurations */
>> -	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
>> -	qmp_pcie_configure_lane(tx, cfg->regs, cfg->tx_tbl_sec, cfg->tx_tbl_num_sec, 1);
>> +	qmp_pcie_configure_lane(tx, cfg->regs, cfg->common.tx_tbl, cfg->common.tx_tbl_num, 1);
>> +	qmp_pcie_configure_lane(tx, cfg->regs, cfg->extra->tx_tbl, cfg->extra->tx_tbl_num, 1);
> 
> Hmm. How did you test this?
> 
> With your later versions of this series, cfg->extra is generally NULL so
> this would dereference a NULL pointer.

I must admit, I tested this only on sm8450. Mea culpa.

> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
