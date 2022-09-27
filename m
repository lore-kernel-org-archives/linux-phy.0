Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BEC0C6FA83
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6p2m81NW8gDBHFIL4hrS5cEvKD2UrPoJi0FtQL+slM=; b=mGS6GWAhqB0PlB
	YqjQSNJSrsBxB1AePsO9P3Sgq+pRMtzfQpijD1ZzPa/Z7FMwMP4VmYywBdmnmZxctI9fHBc7dgLSj
	Tp+xdbfu8tkl7cfcB3kCwPditssSK1Cquqt1gRbR9S1+dvHuVP30TEeYYDfmynawJvkFSpew/WSvR
	6+dxRJRcfZLmgLYjjGOUbWp7+QcfyUWhyhiEjr2Z0CUc1borT/RZb5QMXUqM9NMgFGHy9eMEebf8q
	6XcEdMUT7t4gOALrrhnAMylwyjv8++hUpu2KSdsicjsGlAYqMHHSX+aofZ0Q2jKKSl86ySYDWXUN6
	F/fvkD9TDRYJBF6puCow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6sX-009XKz-3w; Tue, 27 Sep 2022 09:27:49 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6lu-009U6s-Ms
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:21:02 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id j7so11482225ybb.8
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 02:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=Ls1fJJA+5aCvqe8aN5+zfKTfcvmiFtGTM0zRAaqzArc=;
        b=tUQ5qHcFnvKK3CtWEMfPVAXpJUnV78O/82ehwN9baGfWcGV9ux868SBsiFtXFh1TvE
         v8I1qC38oWPQuYoFBWPjjFVJ0A4Eua5Pt9iidsSzeHZMTKuqsqnA37W2rvFCRX+txR9n
         hxkuHlRtSSWvfbI8w6w+st2UfHX9BXgzPzCyFVMzO+gKAgLXfuuPbZDdxhiCTrFgplyE
         GlRnIPzxRMTZWh5hMyngySmiNF84ugM3pTZRjFupz8k+uNcvdjaXTEUIYAnx4SnL9dPs
         nSV3IQfJ0gSfo3cU2zSCHUPiiMK/hP1Womk6KEBZwKPQUheAx3z9VFWFweCT834w1lRu
         1dVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=Ls1fJJA+5aCvqe8aN5+zfKTfcvmiFtGTM0zRAaqzArc=;
        b=qGMSolh5suuELauDtCL/g/z8+6ZKQQ3ZoT+mx6F32prbC3UUcYyuP1bxU57cvOZnLd
         FeLP0Nijre+ZxrpmetsMFmjgfOTvwqHHI5UKo6nkQPPcXxkh3iUmpgLAFoOP65+ZO98g
         uJmv0KO16weXDxuqS7hiQF9CBG7htAr72a5N0lC6bGmdsq9L5Wor9GNz2fiT7hgXT0Eu
         hNGV4jVJ0/Fwze0YJWOpoI8Qh2BpqFG3u2tmens/eNRs+w0CX2T42OL2N+bP8eRz0nyM
         ckZ1q0FbvxffUHftMdxQD/qGD8CQo7qKatqaL4tG+k+D6PR9BYAYyJYm0wVF1xQtN2Fe
         7apg==
X-Gm-Message-State: ACrzQf26WreSmmUBAPdfadbhi4Zecb4TkscwmhF7vj/tUtQ9nHBS+eQS
	qpLAZ17mUktPh6LNinEXFN7nZoFpKQ8Chtax8IXVVw==
X-Google-Smtp-Source: AMsMyM44Toj/GmnYIF3aKtPYB/9uB/7/jMGKWlnTErJNcC2qJFXKOMDAMDOLbb0Ov9UOfyb06xZNGRjuhzPhaHxmCJI=
X-Received: by 2002:a25:3f86:0:b0:6bc:998:873e with SMTP id
 m128-20020a253f86000000b006bc0998873emr3931908yba.152.1664270454983; Tue, 27
 Sep 2022 02:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
 <20220926173435.881688-6-dmitry.baryshkov@linaro.org> <YzKxeWrhed20XLKj@hovoldconsulting.com>
In-Reply-To: <YzKxeWrhed20XLKj@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 27 Sep 2022 12:20:44 +0300
Message-ID: <CAA8EJpp=DZRC=M_emfLxR-cspzH_qJPyc3=xWXZaPp4mgQq-Xw@mail.gmail.com>
Subject: Re: [PATCH v5 5/5] PCI: qcom-ep: Setup PHY to work in EP mode
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_022100_939717_6D4C3695 
X-CRM114-Status: GOOD (  10.25  )
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

On Tue, 27 Sept 2022 at 11:16, Johan Hovold <johan@kernel.org> wrote:
>
> On Mon, Sep 26, 2022 at 08:34:35PM +0300, Dmitry Baryshkov wrote:
> > Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
> > used in the EP mode.
> >
> > Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Thank you for your review! I'll send v6 with fixing the typos (and linebreaks)

>
> You forgot Jingoo's tag here too.

... and missed r-b tags.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
