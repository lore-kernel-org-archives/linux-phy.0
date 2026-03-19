Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65091090238
	for <linux-phy@archiver.kernel.org>; Thu, 19 Mar 2026 14:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zG05e4bz36cdNehmM/s71K8XVk1v4DGJNUMEjHfVXh0=; b=IcoXGodPpdZJPr
	HNmMlqGXUgtXXah4wWaJylXxY/C4HGtY+RhPIIFE7cGiqdQHRRbn9buO2V2m+UT3lCVuqqOanipRw
	T2foTcQzkg5nMwr6U3aU1YPedXZqQ9U89jzOh4kR7aOSuOaupv96lmIDeUGHkdixtaU+qICcxHfG+
	TjJQo+0CZys7EzxhtoU8CX5NL1eyf9krRNIWZzACTtHSyiSxzhaJt3xcyoqWyyJ34T8VsH7RpdtPl
	fLqWAtARAtxpyELsRiwpqD80PwePhadjajTVJ3HpSvxjbQ6CNeRB2HgsocKRm1cfs1U/4xsnysWKz
	mrSaUSDtNGcTL8ta+XNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3EnS-0000000Aqbw-2P2F;
	Thu, 19 Mar 2026 14:56:26 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3EnQ-0000000AqbZ-0pAh
	for linux-phy@lists.infradead.org;
	Thu, 19 Mar 2026 14:56:25 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-386c441ba1dso950551fa.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Mar 2026 07:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773932182; x=1774536982; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFE8LLUUKG9iTuvDaB93WvqlPoGXC9p6rn4PhnM6x18=;
        b=psqibZO3gVUWGAmaFsbbAbm86dCxel2qP8Nz7lCID7UZa73+kkE6Z0SVSl47/NXhMJ
         zy5ZJRML7mfdLqhSFqWadAMlm+bU6QnACR3rDJHsn8mqP49zlbsKLg0fMiGepJAG/8iB
         9P50kcsaRhKwHlP11qUKhueqFxvPfxolyhKs0HCJeOtEvORaNkG+c3sUmNGy8qvXNbXz
         IFSf5UKGAsBRvCewN4tRVisfRwfcDhqzS1+U/jZxkGeWrJ50yQeyptr/Fltp8AL+OpQ/
         pK77vE/foG+4ax7QW4pcnl7TdT7jV4SqMcOlITQxYIUTvOX2RVUri1+sMFLyjmLOJfC7
         LVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773932182; x=1774536982;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFE8LLUUKG9iTuvDaB93WvqlPoGXC9p6rn4PhnM6x18=;
        b=hvFaVP/l/4y+VWj0l9vCdeq9nBZ8n5Y74fAemMlDjStnNyBKRKb72TK2TX3XgPHc7O
         k5R/eyX9hbwriBcatrBas8B5UEtCJpe5GzR1+MDtUkUczjx3Uu5LC+I/UjGalqfUiJ+l
         StoMpLaEBjG8ENZkPyJzzPYIp15RqIN20Ivc6S2NDfXgOiTELGzdR0nz28Fc3rxY15CO
         77JDpoMjKYvZUYZ6QNplZdg2VDdr3ahtc9Fh7faTzk1thhIM4+nNoWzXTjxG4RlyeBPE
         lY/v6D98SZh72vPJbN2hnRs6067Fmw5lgW+UhGyEOZn/UNpw9aX9vo1Y20QPvtFJ6ByE
         nh0g==
X-Forwarded-Encrypted: i=1; AJvYcCUdtvUXF8lSq4iMwdcxTGGtmJ28hgdRcq4yp1mevXdvkHxOaK8ctaudKNSe5zEgV3G47HZvrlBJ+Q8=@lists.infradead.org
X-Gm-Message-State: AOJu0YymCWPPfBqDBTeq+5P0d+LGgMHjpFURcCvzjwFC9jkj5ti9fb27
	wFGkvORddFHDJkgtLO9zYAm8nnmWPvz5Cr7YHm2lfenxllKTDbAX+byE9SqYEkiV9nguNxxL468
	PtXsA
X-Gm-Gg: ATEYQzwcoXQeWmQQ74Scz6m8oLstU/hliqw/hOVdUXDr6oYgc2yU1b7duieAdIQD68u
	8TXcXIT8UxNJSXcNJSmpAgZ0maFYuEN5gb3jU9+x93xBTNwlVU9OgPyH+Kq4XIMBFnqCEjmWiSR
	0NHKif9BFaKq6MypxKW72ODSmbPadUC4/kCieGeHsDOelJIRUn6dH0oycmAHh6UdsOIPHTDK7K5
	HJ+ytbH9GbR3xhP75WYQwDkyUpKjoDUd1931+SXp+PbkYDAHXM3ki3YoG4Ad7zayfm7HCi7FN8j
	X46xadEcExtRnMJWxqtw+c4+x379/28FDHobHtNEe6ztwphonU/76PGV8ZBC+biJLN4L8sbCql/
	XI5fo2HLYcuDHY0BNmXo2s+eNkdPhIKO5gyR5AIMHGvAE1ZFXmHpu38fMFU+v0eLHdIICpFFS/A
	SLaRE9JIiqnVmB6bjmC36ukbCNwGpUbv1YDCYcXlRmCOzhiFDC2HPNu6UPx1hOMh4xCgUhs+g45
	PuopQ==
X-Received: by 2002:a05:6512:3b82:b0:5a2:7c19:414f with SMTP id 2adb3069b0e04-5a27c1941bfmr1196514e87.3.1773932181770;
        Thu, 19 Mar 2026 07:56:21 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c2be56sm1230577e87.19.2026.03.19.07.56.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 07:56:21 -0700 (PDT)
Message-ID: <d6616fc0-75fb-47e2-96cd-ae81fa1a8e82@linaro.org>
Date: Thu, 19 Mar 2026 16:56:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Bryan O'Donoghue <bod@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260315-x1e-csi2-phy-v4-0-90c09203888d@linaro.org>
 <20260315-x1e-csi2-phy-v4-2-90c09203888d@linaro.org>
 <3f11de22-b729-4d06-b6c8-18e649e1979c@linaro.org>
 <80ddc2b4-d6f8-4e8d-a45e-69c05d100aa2@linaro.org>
 <16b10f17-ecd3-4cdd-ac3f-f64127d60ace@linaro.org>
 <ulenfus552ggobis4gmi7eh27tikdaxbgm2oj63b5l2vemlfxc@ib5f2xaqurj6>
 <26XTdUyQTB41Oc4D5HnMtSm_QpZRjlkljQRJVw-u1Zp3Ltn9s4LVU-LQkP6drdl3Z3GGssLCCbsVYPFEqssHcQ==@protonmail.internalid>
 <65e06b2e-eeb9-45af-97ac-4ae60f652361@linaro.org>
 <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <9578400d-30ac-4d8c-9295-ee4ec8af3b2c@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_075624_270090_9E6B3A0E 
X-CRM114-Status: GOOD (  13.37  )
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

On 3/19/26 15:17, Bryan O'Donoghue wrote:
> On 19/03/2026 13:08, Vladimir Zapolskiy wrote:
>>> Why do you want a media driver? Isn't PHY driver enough?
>>>
>> As for today CAMSS CSIPHY are already media devices, and a user applies media
>> specific properties to them, for instance media bus format, resolution etc.
>> Technically this might be removed from CAMSS, but if so, then it should be
>> done before this new PHY driver model is applied.
>>
>> --
>> Best wishes,
> 
> There's no reason to remove that from CAMSS - it would be an ABI break
> in user-space anyway.

If technically CAMSS CSIPHY could be excluded from the list of CAMSS media
subdevices, then for the sake of simplification it should be done for all
supported platforms in advance, such a change will be independent from this
particular phy series, and vice versa, this CAMSS only driver change will
prepare a ground for media-less CAMSS CSIPHY device drivers, hence it shall
precede this particular CAMSS CSIPHY series.

For backward compatibility with userspace a noop stub will be good enough,
it's not an issue at all.

> The media entity in CAMSS msm_csiphyX handles format negotiation and
> pipeline routing. The PHY driver handles electrical configuration. They
> don't conflict and there multiple cited examples of this upstream already.
> 

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
