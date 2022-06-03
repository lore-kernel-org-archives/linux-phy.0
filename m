Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E204BC43334
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 07:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKrhrnsEvGjrdEFI29UEkVsOljWKckX8SHqZmEjBxnE=; b=KRYvCAu+syzpoB
	UlXJdEXLk0o7x3n3aOAKZ20/JW+e/wj6tp3thOnrrE2jmXBmDQHkvEjO9pc5fIxni4n0l6tU2PIPd
	4fjzv5PfW4SOe/RaoBNp9bNhl+SqrECJ+1+51F3jR8KrVaghC5kliJ0+O0TpjV5mCmGhTlU6bIoqS
	zTfiinLGnQASjZwXyujQbd9w/aKrWpGOBxH0M7zfcWCxMgYTpGnP8j+e5phxFtI01cYkRRCoWiL7m
	Hq5CfV2bFH2e7jpwz80+44Th9sXd3E8gNzqkeE1VySPbvuCkpwKz6tQeBatBLWDTW2A71MaD7vGMy
	JJJGIrFrz4igi9BU80Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1gx-006Ik0-86; Fri, 03 Jun 2022 07:25:55 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1gl-006IeV-QB
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 07:25:45 +0000
Received: by mail-ed1-x533.google.com with SMTP id b8so9009085edf.11
        for <linux-phy@lists.infradead.org>; Fri, 03 Jun 2022 00:25:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zG5AY7gRdR9REFolbYOoL6mkBmPRBxthFvw+JcZiEBI=;
        b=OokJ/+xIcnmapqXFSxrsQuJTABgsm0t0PF1D2E91yuSX2c6qoKpBTTMJi1+4qSRlUg
         wxX/dkg5rWq39IJqBxvZw76CSAGLpoXzly4PkOCzsZtRe4LOtaRkaP3t8dR0a8LdpNMl
         KsOORwvhI6cLQY+5nzcsMm2SVVRYIqI6lUPct275MyFDBXL9zahYpHzt/1hBbBoT9Aep
         TnSTseg2L0D+cS9Bf8O03NXFXvLoLx6wot0Xv0Qi7Z2qGtmM/iAz7g0PG3g3ONWvFdiZ
         cTnl4OxBbqG+mG1q9NVgNj6rs+HJ56F6i+K1ozjC+x+Gton2dPeE1YYGX4jhL4PGAQYC
         BBAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zG5AY7gRdR9REFolbYOoL6mkBmPRBxthFvw+JcZiEBI=;
        b=tz2VUhPQPH9mFD8ES3YJup06ca7MtOenPknaHyJwGflm+GXsEExFv7phslc/YKJvh7
         RKPG7vyRq49BWyAXeRUoR6mfrOnK9x/KtFiKV+n5i/l94jWU0ZFIY3ICA0hKwbMwvpsA
         TYUZ9VhqNkpGcPLMiaRfBdTCtIAOFpqnGFuIJ1i6RFBV63weTq8b6h+9+aU4U7Xq4bFs
         TdlMnMUmMCCGFW93eKsG10282yaUO3j7AnGYUzaBmQ5JdL/3jdCEzNs28WuwKqBC12h/
         s8CG2/dXeR9KKBDhwWjMehZ17XDGepoAUIzQZsmA7rrfX+Kx61oIHWz2+Ryc1P8CuxCz
         +nBQ==
X-Gm-Message-State: AOAM532xVBoe4FwbFNbV6V9aVQq+DyjhDcgUyseWbvrLycdKDTGzYlFP
	rqoRK1TmkGrr2iEp1oe7lXGYZw==
X-Google-Smtp-Source: ABdhPJzOolN1W6YFoKkVEOMoe+Drf+5VNDcIUTEWcWXTOzwVU81e3daQrXlTynC8ImczDTyd9p00EA==
X-Received: by 2002:a05:6402:528c:b0:42d:cf7e:bc87 with SMTP id en12-20020a056402528c00b0042dcf7ebc87mr9419571edb.70.1654241139408;
        Fri, 03 Jun 2022 00:25:39 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o19-20020a1709061b1300b006fed85c1a8fsm2568465ejg.202.2022.06.03.00.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jun 2022 00:25:39 -0700 (PDT)
Message-ID: <a26ff8ce-8d4a-ff41-13cb-0ac0cb9a74d6@linaro.org>
Date: Fri, 3 Jun 2022 09:25:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 2/6] phy: samsung: ufs: constify samsung_ufs_phy_cfg
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 'Kishon Vijay Abraham I' <kishon@ti.com>, 'Vinod Koul' <vkoul@kernel.org>,
 'Alim Akhtar' <alim.akhtar@samsung.com>, 'Rob Herring' <robh+dt@kernel.org>,
 'Krzysztof Kozlowski' <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p238f5019ff98e4d9fcf5fea0001a773a9@epcas2p2.samsung.com>
 <20220602053250.62593-3-chanho61.park@samsung.com>
 <58e06727-a9ae-7466-6bc3-feee92bd9bf1@linaro.org>
 <050401d87681$42e6cb70$c8b46250$@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <050401d87681$42e6cb70$c8b46250$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_002543_889123_3A85E5CE 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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

On 02/06/2022 15:04, Chanho Park wrote:
>>> @@ -75,7 +75,7 @@ static int samsung_ufs_phy_wait_for_lock_acq(struct
>>> phy *phy)  static int samsung_ufs_phy_calibrate(struct phy *phy)  {
>>>  	struct samsung_ufs_phy *ufs_phy = get_samsung_ufs_phy(phy);
>>> -	struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;
>>> +	const struct samsung_ufs_phy_cfg **cfgs = ufs_phy->cfg;
>>
>> This should be rather array of const pointers to const data.
> 
> The prototype of ufs_phy->cfg is 'const struct samsung_ufs_phy_cfg **' by this patch.
> So, it should be,
> 
> const struct samsung_ufs_phy_cfg ** const cfgs = ufs_phy->cfg;

Not entirely, that would be const pointer (array) of pointers to const
data. What you want is:
	const struct samsung_ufs_phy_cfg * const * cfgs = ufs_phy->cfg;



Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
