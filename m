Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A72FC433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DOCQYcZJbz1kektNaFsguEG+/wGv0Dh3GCQj4TG/vfs=; b=m3H13NUWgnU1r3
	LUHdy8zJoGol/OF/6L6LD2bSURXDHKIpzhumlZ9wCev/+ELQ73EyChbIHoMdiAWm566uHm70wvsWX
	gvSIZMb/6tzVHRICzfaXJaqa1GlPYl83QdxVZqHmtlniWK48/D2WmKUTG57kRD1mxV+YiTKE9pxkX
	jP5PttmQG0enzii+Qj86zw8TziRiNrTDvEwd1Wh68OP3a4ftVbELOCG9e4fD9XCEFuB6CyyLpVcEg
	xjlkr80QLS6eKuc6r0hvjhDfZfTH4bMnIQSLpdUF3eU/TLeiRed1NfgO/eL+mg4DWEfmPmNuh1jKh
	WQAS49TKi/ORAPBrNicA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW60-00HJDJ-Q9; Mon, 14 Nov 2022 09:49:40 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW5y-00HJAJ-Bq
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 09:49:39 +0000
Received: by mail-lf1-x134.google.com with SMTP id g7so18378213lfv.5
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 01:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aJjyfBDsX+JRhsPEen5MxPycUVlZ3Pj+Kpu2ZuqdZ1A=;
        b=dzSiwp9ZB2kRHdTTKSTGc6XUetNf7VZKxzJNTLuEIzfQWkS6RsmdFP+LfZ2oCgbFWf
         1bmjDOe/QIX9twgxoMtuEnEv3kDcYKEjuXClp6OllOpVIADnmIYoxuA4q5fMbyqlTFM2
         uBpWiop5maEP30N6G5BcDGKwfRagKTEmaYaXQ8bM0Fv4zT5NjmXu+s0zYb0EQouGjkEB
         BlEF4LkaxcIXh1ZCivPaO5DQfudAOniqswvehdofaaYmobbMZwHdvY6/y6lB1kEsSR9F
         IUXQFQz31xdDF25PS39zMW6bzdZwCoHDNUamDKt8M5wOJzkj8ItCEtov2hAtTgm02wSV
         P+Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aJjyfBDsX+JRhsPEen5MxPycUVlZ3Pj+Kpu2ZuqdZ1A=;
        b=JWCfIKEHmOL6I2OoFw8NC/ETU/EU8pbulndAdWY8E7dDmRsPaU6XyYZBIh7YoSkvVN
         8JuhlFIjloxkxcy+/Ndu26XfWOKjdavktxS7Hs2a8kPd1xFNbjObpJhD04s75/oSAs8i
         HoCKoZsrJXO1ggr7pstBiz943+Es61H+tjmRaKmB8qwTZsbDOTuCCCXhBjxgVnoeOTrR
         G0FwBautHLrbKipWquvCz7+UqknFkMqCq6mWr4rQ5zMqEIEezhEmNhfdNE35Gbb4Ij1s
         SJj10/OY6jxhMGrWSwJ2Gt+YyzlxmWEaaRiAFheA1HbeQID+hhrhgc/yCxksgqMQW/0u
         YDLg==
X-Gm-Message-State: ANoB5plI76GFSnJMtofX03lpsAm197ZztS1IT0riv/1M93sEs0M5pzMi
	tMbqE9DuMgR3J7qcXGwfOE46Yw==
X-Google-Smtp-Source: AA0mqf6ejVdnbLOljN6vUt8XoVjEdS6I9gXRZKGNs8IUB8bBi9iDeTHLclSEgVl5teuYUARYNLwZ5Q==
X-Received: by 2002:a05:6512:6c5:b0:4a2:2223:a6e0 with SMTP id u5-20020a05651206c500b004a22223a6e0mr3810313lff.42.1668419373652;
        Mon, 14 Nov 2022 01:49:33 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id s8-20020a056512202800b00498f32ae907sm1769448lfs.95.2022.11.14.01.49.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 01:49:33 -0800 (PST)
Message-ID: <cba6d4c7-c3ca-1f2d-f6fa-86678e64f81c@linaro.org>
Date: Mon, 14 Nov 2022 12:49:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 16/22] phy: qcom-qmp-combo: add DP configuration tables
Content-Language: en-GB
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-17-johan+linaro@kernel.org>
 <56752623-d865-2848-3132-4df769a31d39@linaro.org>
 <Y3H+gpKZsOH05RET@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y3H+gpKZsOH05RET@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_014938_544557_8140601C 
X-CRM114-Status: GOOD (  15.87  )
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

On 14/11/2022 11:38, Johan Hovold wrote:
> On Sat, Nov 12, 2022 at 10:39:12AM +0300, Dmitry Baryshkov wrote:
>> On 11/11/2022 11:56, Johan Hovold wrote:
>>> In preparation for merging the USB and DP configurations, add dedicated
>>> pointers for the DP serdes and tx tables to the configurations.
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>> ---
>>>    drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 45 ++++++++++++-----------
>>>    1 file changed, 24 insertions(+), 21 deletions(-)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> index 499368e19e00..b27d1821116c 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
>>> @@ -816,6 +816,11 @@ struct qmp_phy_cfg {
>>>    	const struct qmp_phy_init_tbl *pcs_usb_tbl;
>>>    	int pcs_usb_tbl_num;
>>>    
>>> +	const struct qmp_phy_init_tbl *dp_serdes_tbl;
>>> +	int dp_serdes_tbl_num;
>>> +	const struct qmp_phy_init_tbl *dp_tx_tbl;
>>> +	int dp_tx_tbl_num;
>>> +
>>
>> I'd prefer to have DP-specific instance of struct qmp_phy_cfg_tbls here
>> instead of having separate dp-specific fields. WDYT?
> 
> No, I don't see any good reason for doing so currently.
> 
> You may be able to share a few pointers between some of the SoCs but
> only until it turns out they need to override certain sequences anyway
> (e.g. sc8280xp which mixes v4 and v5 tables currently).
> 
> You'd also need dedicated aggregate table structs for USB and DP and it
> seems all of this would just make things more opaque for little gain.

I was thinking about moving the qmp.*init_registers into the common 
library. However let's probably finish the cleanup before working on 
code consolidation.


-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
