Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E006AC71155
	for <linux-phy@archiver.kernel.org>; Mon, 16 Jun 2025 12:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TrYjNpTAGB66NyPU5dDxOD9Lm9GA9y2+uI6LOpo3nBQ=; b=ZTXXmLKtch6dpL
	QoQ5c/zwWAyLRnnu4WuZ5MqNa/HMNlcLb/DfJCf19/x8exepfR7ayL232utjxSALv1W/WUfiFcdfo
	W5Yog+CyOq4swhmYX6cTzCqbxiQbcX68/fKm4BfIhLbGpgiW9vEk0otkndja6V/v5PFRpRRTCIokT
	VoI+bBIwWovnK26T3daN36GFsGUdfzuAlT5AOh9f2wh2KFLWIdgpTeA97HXo1Sy4lsce6scCAbkgV
	fa+TrTuirz+APGJUIUrOSmONJHMlZbQvrCcbFvD2Fa9vlTkeMEi93In5EAmi4fUxousj7gbnMf2ZO
	blc4tPDt15c+8/G54FgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR9P9-00000004RuX-2lf9;
	Mon, 16 Jun 2025 12:57:39 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR8MM-00000004FlO-1aws
	for linux-phy@lists.infradead.org;
	Mon, 16 Jun 2025 11:50:43 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-ade326e366dso799780966b.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 04:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750074641; x=1750679441; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xuSf6RLaP8+rHWDi/+Q9MWXI6iUycqZnVn3e8MQYPzQ=;
        b=RJjDAx88YHTugnLYwUs9kifdRKi7ajQFA0ZEdB9x7JAR4P5dx9kyWiktA0sonieQnT
         FjU7dJZZIQ5DpmLNR9g+tIbz2E6MihRAiaCmxR7/u/VDZDAg+7j4SgOK+ibjpTQ0Csri
         giCO/oPLKX2S0Etz+MRvgOq8XgDAlSSYQBLKsqmktn68ejzNBOTCcUFGw7RSd7+AV1h5
         5MvnaiRucljkCcEcrHMTUGVG/y368piFGISVyRWGQgcpLjbbyRmwp8GNBdaWCG3Z8L9R
         ZRBjAiIhns3ZshkwM9fU78lK1iBM+St0XJsjpXvsWFjZ6ZFbrrrNSLxyLgQC0wvGeCBz
         Hm/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750074641; x=1750679441;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xuSf6RLaP8+rHWDi/+Q9MWXI6iUycqZnVn3e8MQYPzQ=;
        b=jUpIZDiMducsKZ+IWjFm1RU7okVjiUdhMpRhyv14QAFFh+erNEJUrwNZK0YfpwNS4R
         cw4FneGGetnXDP+Inxs0lrg1vE6O0JJeS748vp5KaA0OvfHB/h9EOzhTb/9QYjCdW+vI
         OCquphNL8wB44sMQ2G5XFAGnKdQFMYRnCpWpwWDNtsNmCfPQ3jgX9/FURDFGWKEKg0mS
         sc2a78GgDFAhViIpFSpssuQeIEKQ8hl/h5mbMKgqnoMBH7svdvCQ+9bsYZU+urB67vZL
         CfMn3QYBu1mBLBVlwYBX4WwD2P62mXU/FHqUzkAkwx4tjE3Xx+wEdPP4q1VOtj2znkju
         QFwA==
X-Forwarded-Encrypted: i=1; AJvYcCUEndFqvTcgHnfjXyw93qbrC6aLUBfAFwczqT3UjrgzLR7dRVXRwUnBG+jI+CGlgnODGkKMrvIAeBI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyczORIZqPpCi9BLqwK/tlY24Eajpa+y0wd2XAyxjfznhNEA804
	3IS1C02p/JkSCizB+n+sNGgvSKI5MtEF0p0O+OH8haHISPOBkn/WQVzf/VP1A28MQiw=
X-Gm-Gg: ASbGncvfr/A/l1f9DQ3Osqte2p0+w6+TDOtAEl8RDLz6aDNtzcQyBmic4xz5rmgo8q5
	P2uh+2qXoMxYJBkmk5u7b1lyh2XqrY6y7tm7HgmE9GHpp43cxvEmaiuJZUSTJrUmxjzZF/b7mbn
	HpVTVtHB/7GPCYCFYV9BoMObpU6k6RT1PeRt9Oiz5tSS+eC4IvBKKDKkkP2WO5jLv+aiI1VPlnu
	RJh/Qu9YDYEo4L4E458EnzzXlCFWKeSVMqZovP9DoiTWKw9tmZIXg2kijocwyTJgA2F/pfBmBmp
	tBZireWhUOqZ+8CaDdOIciwy0KoJEtvvhrlAsf4sO5YAUCi+bBmuTA8DFCBM8v4GjKjRs53mlH8
	R1UxfY72RhrEcHVTc775b3SeeBhTA5oc=
X-Google-Smtp-Source: AGHT+IEw/IbSDxrPrp5P71189l+YICG0EEl5mwsAYurOHLofD+R6bizDKSfCRwi4sa9axsT85oX+fQ==
X-Received: by 2002:a17:907:6d0d:b0:adb:2bb2:ee2 with SMTP id a640c23a62f3a-adfad451438mr946727766b.41.1750074640652;
        Mon, 16 Jun 2025 04:50:40 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88ff5d3sm657753466b.101.2025.06.16.04.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:50:40 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 16 Jun 2025 13:50:39 +0200
Message-Id: <DANXOMLSCTUE.149W1NJZ0U8M0@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Abel Vesa"
 <abel.vesa@linaro.org>, "Konrad Dybcio" <konradybcio@kernel.org>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: Don't
 zero-out registers
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a
References: <20250616-eusb2-repeater-tuning-v1-0-9457ff0fbf75@fairphone.com>
 <20250616-eusb2-repeater-tuning-v1-2-9457ff0fbf75@fairphone.com>
 <qmcoh5lysln46mg7tbmeelmnzc7s6o7bssir3a7r3n3x5lnboq@cizzodjel4ut>
In-Reply-To: <qmcoh5lysln46mg7tbmeelmnzc7s6o7bssir3a7r3n3x5lnboq@cizzodjel4ut>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_045042_432252_5BDEC1AB 
X-CRM114-Status: GOOD (  18.24  )
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

On Mon Jun 16, 2025 at 1:40 PM CEST, Dmitry Baryshkov wrote:
> On Mon, Jun 16, 2025 at 11:45:12AM +0200, Luca Weiss wrote:
>> Zeroing out registers does not happen in the downstream kernel, and will
>> "tune" the repeater in surely unexpected ways since most registers don't
>> have a reset value of 0x0.
>> 
>> Stop doing that and instead just set the registers that are in the init
>> sequence (though long term I don't think there's actually PMIC-specific
>> init sequences, there's board specific tuning, but that's a story for
>> another day).
>> 
>> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 63 +++++++++++++-------------
>>  1 file changed, 32 insertions(+), 31 deletions(-)
>> 
>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> index 6bd1b3c75c779d2db2744703262e132cc439f76e..a246c897fedb2edfd376ac5fdc0423607f8c562b 100644
>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>> @@ -61,8 +61,13 @@ enum eusb2_reg_layout {
>>  	LAYOUT_SIZE,
>>  };
>>  
>> +struct eusb2_repeater_init_tbl_reg {
>> +	u8 reg;
>> +	u8 value;
>> +};
>> +
>>  struct eusb2_repeater_cfg {
>> -	const u32 *init_tbl;
>> +	const struct eusb2_repeater_init_tbl_reg *init_tbl;
>>  	int init_tbl_num;
>>  	const char * const *vreg_list;
>>  	int num_vregs;
>> @@ -82,16 +87,16 @@ static const char * const pm8550b_vreg_l[] = {
>>  	"vdd18", "vdd3",
>>  };
>>  
>> -static const u32 pm8550b_init_tbl[NUM_TUNE_FIELDS] = {
>> -	[TUNE_IUSB2] = 0x8,
>> -	[TUNE_SQUELCH_U] = 0x3,
>> -	[TUNE_USB2_PREEM] = 0x5,
>> +static const struct eusb2_repeater_init_tbl_reg pm8550b_init_tbl[] = {
>> +	{ TUNE_IUSB2, 0x8 },
>> +	{ TUNE_SQUELCH_U, 0x3 },
>> +	{ TUNE_USB2_PREEM, 0x5 },
>>  };
>>  
>> -static const u32 smb2360_init_tbl[NUM_TUNE_FIELDS] = {
>> -	[TUNE_IUSB2] = 0x5,
>> -	[TUNE_SQUELCH_U] = 0x3,
>> -	[TUNE_USB2_PREEM] = 0x2,
>> +static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
>> +	{ TUNE_IUSB2, 0x5 },
>> +	{ TUNE_SQUELCH_U, 0x3 },
>> +	{ TUNE_USB2_PREEM, 0x2 },
>>  };
>>  
>>  static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
>> @@ -129,17 +134,10 @@ static int eusb2_repeater_init(struct phy *phy)
>>  	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
>>  	struct device_node *np = rptr->dev->of_node;
>>  	struct regmap *regmap = rptr->regmap;
>> -	const u32 *init_tbl = rptr->cfg->init_tbl;
>> -	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
>> -	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
>> -	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
>>  	u32 base = rptr->base;
>> -	u32 val;
>> +	u32 poll_val;
>>  	int ret;
>> -
>> -	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
>> -	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
>> -	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
>> +	u8 val;
>>  
>>  	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
>>  	if (ret)
>> @@ -147,21 +145,24 @@ static int eusb2_repeater_init(struct phy *phy)
>>  
>>  	regmap_write(regmap, base + EUSB2_EN_CTL1, EUSB2_RPTR_EN);
>>  
>> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_HS_COMP_CUR, init_tbl[TUNE_EUSB_HS_COMP_CUR]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_EQU, init_tbl[TUNE_EUSB_EQU]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_EUSB_SLEW, init_tbl[TUNE_EUSB_SLEW]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
>> +	/* Write registers from init table */
>> +	for (int i = 0; i < rptr->cfg->init_tbl_num; i++)
>> +		regmap_write(regmap, base + rptr->cfg->init_tbl[i].reg,
>
> Init tables have TUNE_foo values in the .reg field instead of
> EUSB2_TUNE_foo, which means that writes go to a random location.

Right, stupid mistake. Thanks for spotting!

I will fix the init tables to use EUSB2_TUNE_*, and probably drop this
"enum eusb2_reg_layout" completely.

Regards
Luca

>
>> +			     rptr->cfg->init_tbl[i].value);
>>  
>> -	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
>> -	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
>> -	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
>> +	/* Override registers from devicetree values */
>> +	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &val))
>> +		regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, val);
>>  
>> -	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
>> +	if (!of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &val))
>> +		regmap_write(regmap, base + EUSB2_TUNE_HSDISC, val);
>> +
>> +	if (!of_property_read_u8(np, "qcom,tune-usb2-preem", &val))
>> +		regmap_write(regmap, base + EUSB2_TUNE_IUSB2, val);
>> +
>> +	/* Wait for status OK */
>> +	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, poll_val,
>> +				       poll_val & RPTR_OK, 10, 5);
>>  	if (ret)
>>  		dev_err(rptr->dev, "initialization timed-out\n");
>>  
>> 
>> -- 
>> 2.49.0
>> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
