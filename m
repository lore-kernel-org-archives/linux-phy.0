Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92789C3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 10:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7fZiVPbqj4hzAtnZ5jq68F5wjrcU4Hlf/ccLWzL5fZE=; b=pITDmWGDD5PU3w
	d1O+ceQ08Sx+yByK3mappLYuwoUxa1LAAx9nY8selqG6DZXVdXDlkgajaMCaCH5PLt3XkX7WGsWKY
	iyUZI4LUvmyz6vqjy3o1vAh+QQVh+FEZS4dqpQMRfX7WYboAnqZkOpUNjSN08aZiZeMSq4gAgDxr9
	0bi24joCFyw2uzDWqnzbCSZB9rvX+Sq9z1tur7Q5+cgpTwQtbCBOeAFmpf2D/g7Ig4DFFGiNXGLs9
	jDgzENPakicQWwZ6TmpZw+2KmIVQ4YzGr4nqhgxZ/kfktsAuSMo1xWg8/9zcAvzV/fLxqK08nK/9p
	utBTUp+CA9WSklI/S2Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhIT-00GVe2-0v;
	Fri, 05 Jan 2024 10:19:25 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhIP-00GVd9-2a
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 10:19:23 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-55642663ac4so1617683a12.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704449959; x=1705054759; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+hknyE2eZjhSwC6c7qytx4LWJUxTBkHsXIiXR8AEB9g=;
        b=iVmxri9bfIOURCELM3c9osGrNQmf+aiNVdlcRlO/Qa7mMplKfq8vouCzSD1KuJ76ah
         UVJ4dSErqrVNqML9Q9SuJ+kXTHoRMyF7NeG30AwJMbUzPOF4jncL2ommkmO3/qkDsKoD
         7SpCD3TAog/zu/EiSCiKWR2V/3aKW7cmnuRMtm87ycRIfvBuTDF936QSRZp6fl7M9+ep
         RCvaM4GHjZgpXKETCt8541dHit2GtEcUxLDIcHnoNdNb6Wj3evU1rVD8ukE0VnIulcAp
         hQlmI+q9DuaLy11UB6YPzfkf4TWx8tWTn8dYpuJzJK9NOL2O0o8dWhRfPrAFsFKAOBZL
         tuoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704449959; x=1705054759;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+hknyE2eZjhSwC6c7qytx4LWJUxTBkHsXIiXR8AEB9g=;
        b=Adbh4ppJYYCgshmbEe/1rTKCN+0fl/L6SPDNSi/P0EH+OArXutnTaiDR6k2N/ki+jK
         9S8Wjz8Nm8/WPR7KGkEeI3bMfawL4A5rYBwGSXVosN4K4HvE4WhLj5Z4t54jGBmbH9I2
         rprDL3tbghv/bk1luRmq+Rw34RDReQQNmWtKm3yU5zrnlHnO6By79e3BZI8T8pSKgl5W
         DhGf+9EyL8oLjvByfQQo7KkyBbS3wwfrUE53PnCePrupsmEbCZFuHkyLfWk0o8N52KiL
         bGMqigFv1EYv63vazkdyelSzqY5s4HSCQSoL+xLgbgXHQBsN2ELKiHIRA0zYHDZBk+z9
         tsWQ==
X-Gm-Message-State: AOJu0YxuKrwoX9Prczo/KYQl1ejpHdB9yoVYQkoAC0JyQ2oTbWGb2m77
	Pjhatxv2vPcrg2EXshNmLCvYl85m/JOVRw==
X-Google-Smtp-Source: AGHT+IE3bIe0HFtRGAoE31PPV2ROxvMXnzIVTMTKatLvHoWI9px662D1ICE5geEVV4tgfp9SXYk4ig==
X-Received: by 2002:a50:d78c:0:b0:557:41c4:cbdf with SMTP id w12-20020a50d78c000000b0055741c4cbdfmr25edi.49.1704449959074;
        Fri, 05 Jan 2024 02:19:19 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id bt6-20020a0564020a4600b0055510f6527dsm799566edb.26.2024.01.05.02.19.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 02:19:18 -0800 (PST)
Date: Fri, 5 Jan 2024 12:19:17 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant
 zeroing
Message-ID: <ZZfXpWpFAELlUnUT@linaro.org>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
 <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
 <33b32e2b-fa35-448c-8b4c-c5c51a514922@linaro.org>
 <ZZfI66Mj6v/Qjp5X@linaro.org>
 <e216c027-dc23-415d-8d00-e6b1cbbd4248@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e216c027-dc23-415d-8d00-e6b1cbbd4248@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_021921_843972_289E4293 
X-CRM114-Status: GOOD (  26.06  )
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

On 24-01-05 11:09:33, Konrad Dybcio wrote:
> On 5.01.2024 10:16, Abel Vesa wrote:
> > On 24-01-04 23:50:48, Konrad Dybcio wrote:
> >> On 4.01.2024 15:52, Abel Vesa wrote:
> >>> The local init_tlb is already zero initialized, so the entire zeroing loop
> >>> is useless in this case, since the initial values are copied over anyway,
> >>> before being written.
> >>>
> >>> Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> >>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>> ---
> >>
> >> That's another good spot.. partial struct initialization of
> >> pm8550b_init_tbl zeroes out the uninitialized fields.
> >>
> >>
> >>>  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 10 ----------
> >>>  1 file changed, 10 deletions(-)
> >>>
> >>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> >>> index 5f5862a68b73..3060c0749797 100644
> >>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> >>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> >>> @@ -156,16 +156,6 @@ static int eusb2_repeater_init(struct phy *phy)
> >>>  
> >>>  	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
> >>>  
> >>> -	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
> >>> -		if (init_tbl[i]) {
> >>> -			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
> >>> -		} else {
> >>> -			/* Write 0 if there's no value set */
> >>> -			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
> >>> -
> >>> -			regmap_field_update_bits(rptr->regs[i], mask, 0);
> >>> -		}
> >>> -	}
> >>>  	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
> >>
> >> I think this patchset can be made even better, this memcpy is also
> >> useless and we can simply initialize init_tbl=rptr->cfg->init_tbl.
> > 
> > Actually no. The init_tbl in cfg is a pointer to const. Plus, if you do
> > that, you will end up with the same situation like in the other patch,
> > as there are some overrides based on DT values below this.
> 
> Hm, you're right. Maybe we should simple store *base and stop
> modifying these tables then. There's not a whole lot of regmap_rw
> calls, so making the first argument "rptr->base + rptr->regs[ASDF]"
> shouldn't add much fluff. Then we can make the cfg referernce const.
> 

Oh, sorry, did not see your reply in time before sending v2.

Have a look at v2 and we can decide if we want something different then.
https://lore.kernel.org/all/20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org/

Thanks for reviewing.

> Konrad
> 
> > 
> > But now that I've had another look, maybe doing the exact same thing as
> > the other patch does (kmemdup) will probably look better anyway,
> > specially if we do that on probe.
> > 
> >>
> >> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
