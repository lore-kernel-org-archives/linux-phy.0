Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA928C64EC4
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 11:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFc2qrB9xNDcGklrZ2pcz9/hQ/6n9HGGgHh47ExdscA=; b=hTC7Z6X+ty0FUR
	IAXbbFa8aeYJtdjPkIf6Zip8AbRLe66bQa8r56US4KTGZib4v3HlOw3F+rErow/4egOGAQ3dF9v4n
	eMLX+JXKBeHVLoyU7If43ppUrOZfJnzcJ12dLgjk3y+m5Wzp54JFmS4HikQKlYKyR2BWoJUTIBNzx
	N9kFZVSzbYlF1sMiq6aBs690a6s1457nxx9p0PMF+J5jvq4hCInWCNweUBBpmg3qh0D941cVArImq
	syPAh9Y/mAKrwVk1JU5bE9f4wsnN49N5fFmJ0PS+wWCEojZ5a6Hhhubxtt/2DR9w0516PwEc3JlQF
	tYswEk8MRem53ZXW+hHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrls-004ZQW-66; Wed, 08 Mar 2023 11:15:48 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrlo-004ZOO-SV
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 11:15:46 +0000
Received: by mail-lf1-x12e.google.com with SMTP id s22so20833784lfi.9
        for <linux-phy@lists.infradead.org>; Wed, 08 Mar 2023 03:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678274142;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cz0PeM+B0eQ33qul29Nk8o+XDr5rI2u92dlLH1wyCRw=;
        b=u9L/BW52fkJTFMv0G1nHSj0BToTicCSmoGAOHPCnd6BostvT19Pwy/uA5oLeJwlRdk
         4xyL8cU1W3QBgrMLyQBCagcRs4vvBpvq9NsYhpYTgXgENQMTQ3jnE222EP+JT+RW+2mQ
         X5xZFi9U0qExg3OwtiHkaipyb6gareDdrm23NpN4R93ni+Z5dDd+zlcdn10i2qEBbLfd
         siJudg5dLv0h5htnrAZ5Zzuc2iJTAvv34Cokrycbeq498yfjK2XCRymfJM9BpkR8wkXX
         0QFCgDvWq3zVAaPllpqpeahC/0e7LIEbqTuq2q/wHCaQmf0PXrT0xttnsD/K/fK4i9O4
         8n9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678274142;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cz0PeM+B0eQ33qul29Nk8o+XDr5rI2u92dlLH1wyCRw=;
        b=7xjAAvI35fY8vDtun12+FYQQ9rPZ/4OGp7mgZvzywAUXsi/nBVKNqU/5jNu+IAeVfk
         tjPJ/uEpiTtXFxLniV8d7i+ZpkpzsInhBL0wwO7x9doD+ETE3Ac+hyOtxDDnzkEhZlLC
         teU7gNhSgzA1Irq0GQgAe4fh+I61NzMQd3K7ZtgxpASE5NYe3kADL4znyYiMptLkyfQt
         emTaZfRMY4md/Dv0hf5exxgcqEhVqg7t2P6QP40CDMuZC5qe+NXDbBP9fxRi0OSs8zJM
         Nao6cW3RTLXUwDMJ4FBSxR34TMYoroLQ2Br6pEvXtyfVibQuQ7QRsOLDpLEDPDGU4+Pd
         Esrw==
X-Gm-Message-State: AO0yUKV+RknNoT1SB6JFkRGGECUEowBvNigv7fUpaHwKXR5VoGxmFUh2
	Hvrtcxh0oWCgaC5QG23gSTRVZA==
X-Google-Smtp-Source: AK7set/dgjPcQT+ZnAEcKKpqEFtOfwkM51MutRzzCDQ8hJL5c1DYwiTXltCOcjox7fFpSfEqVYY1CA==
X-Received: by 2002:ac2:4432:0:b0:4cb:41ca:1841 with SMTP id w18-20020ac24432000000b004cb41ca1841mr4599858lfl.48.1678274142049;
        Wed, 08 Mar 2023 03:15:42 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id 9-20020ac25689000000b004dc4d984911sm2298796lfr.271.2023.03.08.03.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 03:15:41 -0800 (PST)
Message-ID: <64ab4061-6a8b-662e-1c7a-99b0da26751c@linaro.org>
Date: Wed, 8 Mar 2023 12:15:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>
Cc: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
 bvanassche@acm.org, keescook@chromium.org, tony.luck@intel.com,
 gpiccoli@igalia.com, ~postmarketos/upstreaming@lists.sr.ht,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, linux-hardening@vger.kernel.org,
 phone-devel@vger.kernel.org, martin.botka@somainline.org,
 marijn.suijten@somainline.org
References: <20230306170817.3806-1-they@mint.lgbt>
 <20230306170817.3806-4-they@mint.lgbt>
 <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org>
 <ZAhrT1ICTQjfdeGq@hovoldconsulting.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ZAhrT1ICTQjfdeGq@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_031544_958987_A2F1B986 
X-CRM114-Status: GOOD (  16.48  )
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



On 8.03.2023 12:02, Johan Hovold wrote:
> On Wed, Mar 08, 2023 at 11:09:48AM +0100, Konrad Dybcio wrote:
>>
>>
>> On 6.03.2023 18:08, Lux Aliaga wrote:
>>> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
>>> compatible for it and modify the config from SM6115 to make them
>>> compatible with the SC8280XP binding
>>>
>>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>>> Reviewed-by: Martin Botka <martin.botka@somainline.org>
>>> ---
>>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 12 ++++++++++++
>>>  1 file changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>> index 318eea35b972..44c29fdfc551 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>>> @@ -620,6 +620,13 @@ static const char * const qmp_phy_vreg_l[] = {
>>>  	"vdda-phy", "vdda-pll",
>>>  };
>>>  
>>> +static const struct qmp_ufs_offsets qmp_ufs_offsets_v3_660 = {
>>> +	.serdes		= 0,
>>> +	.pcs		= 0xc00,
>>> +	.tx		= 0x400,
>>> +	.rx		= 0x600,
>>> +};
>>> +
>>>  static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
>>>  	.serdes		= 0,
>>>  	.pcs		= 0xc00,
>>> @@ -693,6 +700,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>>>  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>>>  	.lanes			= 1,
>>>  
>>> +	.offsets		= &qmp_ufs_offsets_v3_660,
>> Will this not trigger OOB r/w for the users of qcom,sm6115-smp-ufs-phy
>> which specify the regions separately (old binding style)?
> 
> No, that should work fine.
So do you think the SM6115 binding could be updated too? Or should
we keep it as-is for ABI purposes?..

> 
> But looks like this series needs to be rebased on 6.3-rc1 as these
> offsets are now already set in mainline.
..Or did you do that already and I can't find it?

Konrad
> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
