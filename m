Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68FAAC3DA6E
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 12:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3q/ioNLn32zLR/B/nMfKSlCK0c5xVSwgr31fKOvRuY=; b=FlsTq/czpdaAfn
	6AFkzo7DTC7qt8HNVcEeFm3OoB/cwXMu2rAWNHTtcwiE+sppS5jukJRzYtrQCHSn6JNOj+5JjeLeH
	Ktav7xzoBUraSx78GjsoxmyCg6Puya47WBAxxHiYesDFkHxUXa6zMVGNgayYOy0STVWFDrT1QD0Gr
	rFiLtYdYEKNOpM1S6A+Fng/IBaYsPPLyyprekeHE41lPfNZ4kh4545kT7fee3bLJwcmz1Vwp9jCS+
	a0hV/81AGmqMvWDvUXK75tqtlRrHLVR6/kKWIL620RWMj4WRjOuUKgQvtSPPDnZrY5pD12tCqlS05
	tSlot71yXEyTBlipiI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLjEA-00GqAN-0D;
	Fri, 05 Jan 2024 12:23:06 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLjE6-00GqA2-37
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 12:23:04 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dbd7248ac28so1278770276.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 04:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704457381; x=1705062181; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=C991Kcbi8EdmQDb3tJTHkkPG5xfVAMnq4S41RyLoAJA=;
        b=S81clxXwU1GMRlzHqECRG5FVf3QgDDVhIMdIuw03gUqYTmU1yapAcIlL28p4zkYry+
         TcxwWgKdVzMdI7R9iHw6uLqtaT3Ig/aw56gMJ9zbrK5qhAGaVWU5MF/HDyrb0m2kwG1+
         /3TNTrB+J1KFFLoOdBduo1YRR9N0Xxceheptf50paX3RqWfkjXWYHPkHhGhpYv6jDNZq
         UD8xyIdJU8Tq4YbSKRDGASAvemc72xkBDpCiVg0uLGMyQ/TDTPGNyKZIb+Bggu26Cj5u
         Wvla6qGIem57eCEdctfZr2pHVvHNnCF4DCr6oqkmjd8t1OCwG/X2n6MQlrsziHnf9Ibw
         q2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704457381; x=1705062181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C991Kcbi8EdmQDb3tJTHkkPG5xfVAMnq4S41RyLoAJA=;
        b=uBYSe04RghCj5z/9ReN/2wi+leKOoAz3J8okDmoyPLIdvvnoaEoU/ZPEA4XGvsMKdl
         QkuDNw1JA1qBWMca6ByGoRCE9iZEuSH17TAij+fEmTb+2Y/NpAUdM+45u1eHQQkcbTWH
         BPXclvoI9UX6KRcmIGYNSVH3/T8M6MqKXCsyiGGcYuBp0LRPOKnIiS7hrvMawGO6VyYV
         o0Imukh8I5QFI6/TVl9YhQAEdgqDQSX/vi2KUi53GvI9f5ViVpAjxgQDE5LNpdnsmpzL
         k+MIluwjxQivlQEzIFwCSbbV65ikZQWPhQCk5YnOa/8eHs08LAI89Vuwj3NJrlfyIcSM
         RzZQ==
X-Gm-Message-State: AOJu0YzShZ8Up468Egp7aWIjEY+8aNGPFk2muvZjrfyiM1ThNfg1p3dj
	FjljCI53G7tOVo1Q7vBkj519K88Q/ZfEJL1eZ4Eh5tbpDjvkBw==
X-Google-Smtp-Source: AGHT+IEQgV5OrCEbtp12b8sdijpFbATgHeBlCuEInqUi0Sz+2wa1gWwH/h4tiEQ1nlBc7EOO+X2z81ICI/1YvwpoHec=
X-Received: by 2002:a25:d64e:0:b0:dbe:32be:f6ab with SMTP id
 n75-20020a25d64e000000b00dbe32bef6abmr1591563ybg.47.1704457381162; Fri, 05
 Jan 2024 04:23:01 -0800 (PST)
MIME-Version: 1.0
References: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
 <20240105-phy-qcom-eusb2-repeater-fixes-v2-2-775d98e7df05@linaro.org> <158df3b2-a7fa-449d-9cc8-1e4cdf6ef49b@linaro.org>
In-Reply-To: <158df3b2-a7fa-449d-9cc8-1e4cdf6ef49b@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 5 Jan 2024 14:22:50 +0200
Message-ID: <CAA8EJpq88bhFFY2RcSEqaecoTw4a_ps6Osx5rJs3s0Mi7toXyQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qualcomm: eusb2-repeater: Rework init to drop
 redundant zero-out loop
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Elliot Berman <quic_eberman@quicinc.com>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_042303_027371_4B4659EC 
X-CRM114-Status: GOOD (  12.40  )
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

On Fri, 5 Jan 2024 at 13:44, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 5.01.2024 11:16, Abel Vesa wrote:
> > The device match config init table already has zero values, so rework
> > the container struct to hold a copy of the init table that can be
> > override be the DT specified values. By doing this, only the number of
> > vregs remain in the device match config that will be later needed, so
> > instead of holding the cfg after probe, store the number of vregs in the
> > container struct.
> >
> > Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
>
> This looks good as-is, though I think my proposal of storing the
> peripheral base reg instead is still better, as it'd require less
> memory (no kmemdup as the regs wouldn't be modified).

I'd second this. We usually handle such cases via the base + offset
rather than patching the data. If regfields can not handle this, then
the regfield should be fixed.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
