Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C3CC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 09:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ciDdag/A93hanTr3Ku1i8lpn/1f/lJru5AXqykoAQU4=; b=QrrMBh2ee5ox4U
	it9s1yw532+LY22Dnvb8xtJn1M9DyACQepz4YhKOkU7xeMvy9xouiViWhSJa8+oZIb3BXEMKzFV6K
	KxQ9xXY+I83ntvWYAaikoAgcfhhuvS5IP3a0szcc6GKUqIw1VCSZX7IvbeT4A734alRYkxw5i3aPZ
	0S9FJAY8YIp9AQ1P0HXRRN8vt7vulcub3AIjgz6PUl8hfZGH7C8N52GkBuUqrD0RbcLzGvQBng7PH
	M9i+4RnzWrf8C5Wdi8Qkcqmj2Je+/NV9EjHVfqyNo2x3CiaTkgPAzUxwoQhGnAunEUhjMjEAElY16
	p/agxAPwdJutVprBRTeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgJd-00GMEM-2S;
	Fri, 05 Jan 2024 09:16:33 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgJb-00GMDx-0o
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 09:16:32 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a28f66dc7ffso69778566b.0
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 01:16:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704446189; x=1705050989; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bJqK2boMhlBPvYPzwyxlpWb4GxEdD9+xMel7BalA1gY=;
        b=E07AHbdZUX/AsX8Uj5eeE9g7zUc+0oqO2aJwvFHFpVzw5zANS4/FcdM3FC2D00ootl
         D7BsImzJlPQWJrXSKSpWsiTASLXajzcwIzw+AXL1Efd6LyXSzcvT5RmxQt3ahjzRPiAy
         4jsKSFH1uxhpHEwZyA4Qu1d4D1k41xoGPU1ufvwWGUxWt/54yeYZDoEP/vRIfkFzX0pO
         ohVERxO9V9vSfqeCXIQ7NoVdy9TE7Diufi4JctkzwXjlregqKpiKpcX/XhYbby/J0/PG
         cLRH9kHthruFdZOg0FnyQUAtoNlCWj42/2Wbv1sijciFPboQvS8BEMv6+u2AOcPCw8e/
         Mz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704446189; x=1705050989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bJqK2boMhlBPvYPzwyxlpWb4GxEdD9+xMel7BalA1gY=;
        b=BLsnuI7gFta43wcX6dpTzstu5AYyjnAAc+ySb7Q+HvTD7NnLHqZ5SAMSjo0Urf1GtW
         o2Dq4q4rzi/+MrARr5OQqIjuOtV5/Zb/glTGSje3RL3keRkrJT56AgOxMoTlzUvlIUJH
         OwfodJDLL8eBK83Kp40GMxmMSV+Kyfy01yEblYu8ReYowm+h29tVN/MTibUTsVcoNwqk
         OklwW2Ry3/iKxS/xGLIKAWvve4QphisvEvOTtP8lCGEBROr1N5jlp6N3uYKmxymvLpyi
         Bv6XIvDuZyaoGLsgWbK+y4pfMflh0VXhJllp2RXNmlFdouTNMUzNR+TERM23g2VwWDVC
         zMsA==
X-Gm-Message-State: AOJu0YwjlIh+GgFO+/fFt/cEmbSfSO9K61RWGrnYu8KBllWgOyPHoiJD
	fvcpOEhFYH3U+RDCB3Gd9i+y5FMA95cs3w==
X-Google-Smtp-Source: AGHT+IE7Ems0dPZ1o0LW0EtS1iu6PYF+DxBcwjMzLo1TFWzXXKrSUypTKqAr3qn2Lye0u/OuOf1ekA==
X-Received: by 2002:a17:907:b9cc:b0:a28:bc4f:16ff with SMTP id xa12-20020a170907b9cc00b00a28bc4f16ffmr1788363ejc.28.1704446188930;
        Fri, 05 Jan 2024 01:16:28 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id t8-20020a056402020800b0055712dec5a6sm747448edv.2.2024.01.05.01.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 01:16:28 -0800 (PST)
Date: Fri, 5 Jan 2024 11:16:27 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qualcomm: eusb2-repeater: Drop the redundant
 zeroing
Message-ID: <ZZfI66Mj6v/Qjp5X@linaro.org>
References: <20240104-phy-qcom-eusb2-repeater-fixes-v1-0-047b7b6b8333@linaro.org>
 <20240104-phy-qcom-eusb2-repeater-fixes-v1-2-047b7b6b8333@linaro.org>
 <33b32e2b-fa35-448c-8b4c-c5c51a514922@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33b32e2b-fa35-448c-8b4c-c5c51a514922@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_011631_357373_78778AF2 
X-CRM114-Status: GOOD (  20.39  )
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

On 24-01-04 23:50:48, Konrad Dybcio wrote:
> On 4.01.2024 15:52, Abel Vesa wrote:
> > The local init_tlb is already zero initialized, so the entire zeroing loop
> > is useless in this case, since the initial values are copied over anyway,
> > before being written.
> > 
> > Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> 
> That's another good spot.. partial struct initialization of
> pm8550b_init_tbl zeroes out the uninitialized fields.
> 
> 
> >  drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 10 ----------
> >  1 file changed, 10 deletions(-)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> > index 5f5862a68b73..3060c0749797 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
> > @@ -156,16 +156,6 @@ static int eusb2_repeater_init(struct phy *phy)
> >  
> >  	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
> >  
> > -	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
> > -		if (init_tbl[i]) {
> > -			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
> > -		} else {
> > -			/* Write 0 if there's no value set */
> > -			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
> > -
> > -			regmap_field_update_bits(rptr->regs[i], mask, 0);
> > -		}
> > -	}
> >  	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
> 
> I think this patchset can be made even better, this memcpy is also
> useless and we can simply initialize init_tbl=rptr->cfg->init_tbl.

Actually no. The init_tbl in cfg is a pointer to const. Plus, if you do
that, you will end up with the same situation like in the other patch,
as there are some overrides based on DT values below this.

But now that I've had another look, maybe doing the exact same thing as
the other patch does (kmemdup) will probably look better anyway,
specially if we do that on probe.

> 
> Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
