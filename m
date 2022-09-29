Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FEB2C04A95
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 07:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulstK7UOhZNlazuPuMrOpiiAtQzCcjYU99o8EPf/gUU=; b=jv2Igo1fgu2t46
	JdxbG1k96t1X1agXcZr68LM6jZH47B+WQytH5u5AaY79jV14ictDVqNg1W8GSGoYAigkAxX/QbKwH
	OkHH/tDK8ld9hT+hQsd//CP6y8KExOiGT/FnDPV6r3R6jE4dFKrMVnuwotrrZvnWm6IpiKdbDSGsY
	0HhpeWqWhpcF2Okanq2tVXKazLreBqm5KlvZ5ANtvAjPrChT0JC+j8u7bfp5a3YbM39tWnPFTFhmU
	tfHaHGXtvK/2ailaYisPCtILDzHH38eVci/YnnRnMJRnJyVOfs9tLN8Bpd+33XnPb+aBoZVoC/VZd
	7k/qYpKNWH4fOKDVD4/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odo03-001ZqN-VS; Thu, 29 Sep 2022 07:30:27 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odo01-001Zot-Bw
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 07:30:26 +0000
Received: by mail-lj1-x233.google.com with SMTP id h3so600401lja.1
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 00:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=OqkWyQYUuDRkm7zgyVEX1I32YrHW4vNoTuwMudpxXDQ=;
        b=M/Of4/LnK1AKOSsdNO9WzfJyoy+sI5QdeIZBrmSLoV6q6cONr8NMF6++ud4b0nZG+0
         1Wps92ejomNXmRTLhs/T6mzAVkiqDO8tICuzDTPYoll3Qi6Uk5RjkXNEZfiX8nTgsNWA
         lNfH3p4+t/1H/1B9G6up7jplAXvEoZSyiQ/wvG7w7P1/U/auLaNBXrdb9qXnmO37+pub
         pjRGwON+EuskIqrOrms7cdUFsQAAZVaYz0KWu54s1MMUgxBViPxLYzCP/cgg7u0NRzGE
         cdFSX+O/d3fAhafn7JxYSvnBBLmvuYD3gM3ZbY0fhdpD26C1wUAoXw3yHU1ApJ70Y3nK
         D9RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=OqkWyQYUuDRkm7zgyVEX1I32YrHW4vNoTuwMudpxXDQ=;
        b=mW3RKs52dHz4wjltbt/5pxquLLxzoUSoyDtlmpdBy47KTLiZF+hs/CdlJuE5sQXvGl
         RMhnLv6MWnC5bG07lQBoegTJ4guDFI0Z3rmiY3X4yOk+Ljrh0q/oszlBrekFDg6Tt0Re
         9E9zrgIenQZ7NOe3dgGTL6PI4MlaRmGtJqGv1bQonwAWn8g/8LTev2BEkWvpfdJG15nj
         a5Qqf2LIkJ5sJpjcRLbcKmc9GoT1Sob0hKgaOlFi+Gp3PEgcErQOzBm8rEBdBPcV6ya5
         ziaiK+nsJ90zIEPqENi34GG7stIY6dDcEChI9idq3Xvfj+nTyPczUAm9kMCOfggZ6pNr
         uiIQ==
X-Gm-Message-State: ACrzQf3WJ7NIstIdAiPbxcSueDPYrivge66zzpbplIWn1k/sggOI06ig
	jfj00ynGsjnXNzjol7jjtiPNAw==
X-Google-Smtp-Source: AMsMyM4ILN/PXRDClqWGg7oAxUN4BU0A6IzD09RlvPlrnNNjJZ4iA+Hmfs/JXaRi7sEpTeApVP+N0Q==
X-Received: by 2002:a2e:be0a:0:b0:26b:eb1d:9651 with SMTP id z10-20020a2ebe0a000000b0026beb1d9651mr641868ljq.196.1664436621484;
        Thu, 29 Sep 2022 00:30:21 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id a5-20020a056512200500b0049301e29e41sm700855lfb.233.2022.09.29.00.30.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Sep 2022 00:30:21 -0700 (PDT)
Message-ID: <7f577974-7433-107a-a43a-4a3a5f999018@linaro.org>
Date: Thu, 29 Sep 2022 10:30:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 07/13] phy: qcom-qmp-pcie: clean up power-down handling
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-8-johan+linaro@kernel.org>
 <c3d39c4e-2099-b09a-8486-8abae7336611@linaro.org>
 <YzVIhK5z3I6hjzLU@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <YzVIhK5z3I6hjzLU@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_003025_447255_6C69078B 
X-CRM114-Status: GOOD (  17.76  )
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

On 29/09/2022 10:25, Johan Hovold wrote:
> On Wed, Sep 28, 2022 at 10:15:46PM +0300, Dmitry Baryshkov wrote:
>> On 28/09/2022 18:28, Johan Hovold wrote:
>>> Always define the POWER_DOWN_CONTROL register instead of falling back to
>>> the v2 offset during power on and power off.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 20 ++++++--------------
>>>    1 file changed, 6 insertions(+), 14 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> index eea66c24cf7e..47cdb9ed80cd 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
>>> @@ -90,12 +90,14 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>>>    	[QPHY_SW_RESET]			= 0x00,
>>>    	[QPHY_START_CTRL]		= 0x08,
>>>    	[QPHY_PCS_STATUS]		= 0x174,
>>> +	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
>>>    };
>>
>> Without symbolic names it's not obvious that 0x04 (and thus this
>> regs_layout) can be used for v2 and v3, but not for v4.
> 
> It's no less obvious than it was when we were falling back to the v2
> define when it wasn't in the table.

Yes, that's without doubts. Anyway, I've sent my view on the regs 
layouts standing on top of your six patches from this series. Could you 
please take a glance?

> 
>> @@ -1872,13 +1874,8 @@ static int qmp_pcie_init(struct phy *phy)
>>        if (ret)
>>                goto err_assert_reset;
>> -     if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
>> -             qphy_setbits(pcs,
>> -                             cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> -                             cfg->pwrdn_ctrl);
>> -     else
>> -             qphy_setbits(pcs, QPHY_V2_PCS_POWER_DOWN_CONTROL,
>> -                             cfg->pwrdn_ctrl);
>> +     qphy_setbits(pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>> +                     cfg->pwrdn_ctrl);
> 
> This is the cruft I'm getting rid of.
> 
> Johan

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
