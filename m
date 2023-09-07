Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7FAEEE14DF
	for <linux-phy@archiver.kernel.org>; Thu,  7 Sep 2023 10:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmnAbctua5hdAXkswNSVSv+ZMdt9QuAO9Kyu/0xiSeA=; b=eOjglAmo2xGcAb
	EjL7slxRyph788URQ8f8XC55CeRtrTRcxoR1odmJwdT+5Y15tz+Tz25xV8Z60sj2H5w9p6fhkhzyB
	P+jMaS8YocVKaCPmU+Wfg3eLBnpSVhsKHGTEp2+acM6dpvXhOk8Cqd7j1XCF//SBeIbOeexCmUock
	37Bi9RKbYoE+TG6iJ3hl2/OBM3wC7BicJFa2SNt7uKYR4d5btfOZBejbi/XxLl4Qd+YdtcHxjA/q4
	Rp8oN7VDcmpdE+43FoMS+uV+X3txVwqGt6LWmZvf2Ep4PuJoITEH3FuRb+ECcUrL//xjlZC66FI+A
	1Kd+xwjWnLJr0iNDZHNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCGT-00BmYx-1D;
	Thu, 07 Sep 2023 10:29:33 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeCGP-00BmY9-2x
	for linux-phy@lists.infradead.org;
	Thu, 07 Sep 2023 10:29:31 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-402d0eda361so9451625e9.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Sep 2023 03:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694082565; x=1694687365; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FdAB2Jh5naeisydTV3u43XXNVH38AlgAr9dXqaut4m8=;
        b=UORbwHUNiH6cJiP0nU/mAnxphuR306qJ29WR9zFLYCdEI3JlxbKJ1zEQ5c40kSJmUZ
         k/hnCx5k5qNQH+yLgDgFSLjbZrqbMEYnn4wd76hR5hyO4B9l5g76AEuxOVeycVHhKXWp
         Q9yzA2k76sKiKxEbwbELn1QrebizosqSd1htdLlLnscmb+aD1zWrDmZh7MzEjvZ9Dk0w
         dxBdqgnZJN+ASRFMAViOq+wWmJlw7L1BcFR3YlPZqxuUveaZmVBa02FEQ0H8n99Ka3Pb
         K3n8zq7eBMs65XCWhsXsyb4aU0XZizbWCwp7RUtfCqpZdvzqWa5Q2tb4NIbn53iDUprA
         Rmhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694082565; x=1694687365;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FdAB2Jh5naeisydTV3u43XXNVH38AlgAr9dXqaut4m8=;
        b=eizaWokCtORltUp2n/EDreLMtUUI5uiEGHo53ekebU3DInLG7jYcWl889CudbBr7xj
         B1i57O+rmzn43iLQamvbtrwoE440EF5MQwxyECP1Ekk/nzAxQoNpRaKl5foNSQNrOdYQ
         drRjG2k7xk7UUEGpS8T1X1IKbSfNpK/APYrwMpuWRI+OUHH2FCnUat37n+0TgNKrhCdy
         grPvyhW4GqPVD6h132P8EwtUdOGJjDROnrd6DHLSgd0EIILpNxGYM3uyVCrphmgh65M8
         VWIP8nJRd6XxPo/nM3JaWYra7MwUMaLFwQm+2rM0nxxeMzpc8b7qRzJZIz/LJxE249q2
         gvdw==
X-Gm-Message-State: AOJu0Yw6V1CNGC2oSKWmXFrrp3re8dMUvAfgl8V51UJnVi/Ra4aluB85
	PQBmCIPI3d4zeh5YmtFtaEg4yg==
X-Google-Smtp-Source: AGHT+IFVw0hhgJ9cIVl3OyrJhRbiJmQ67lfQPapydSicLHG49QPh+uB3ol2Bh2Lb6O0nBJh4qYsOpA==
X-Received: by 2002:a5d:4441:0:b0:317:e04c:6791 with SMTP id x1-20020a5d4441000000b00317e04c6791mr4011818wrr.62.1694082564882;
        Thu, 07 Sep 2023 03:29:24 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id k11-20020a5d6d4b000000b0031ad2663ed0sm22917456wri.66.2023.09.07.03.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 03:29:24 -0700 (PDT)
Date: Thu, 7 Sep 2023 13:29:22 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-m31: Fix error code in probe()
Message-ID: <4c60268a-0896-4ce8-8c9f-61ff520cc90a@kadam.mountain>
References: <7926c8e6-630e-4d7a-b0b2-d29b3c8b2c09@moroto.mountain>
 <20230907102405.GA7987@varda-linux.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230907102405.GA7987@varda-linux.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_032930_024774_7E21214D 
X-CRM114-Status: GOOD (  24.23  )
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

On Thu, Sep 07, 2023 at 03:54:05PM +0530, Varadarajan Narayanan wrote:
> On Thu, Sep 07, 2023 at 12:54:39PM +0300, Dan Carpenter wrote:
> > This accidentally returns the wrong variable.  It should be "qphy->vreg"
> > instead of "qphy->phy".
> >
> > Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
> > Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> > ---
> > When we're adding new drivers then we should use the new driver
> > prefix instead of the subsystem prefix.  For example:
> >
> >  Bad: [PATCH] phy: qcom: Introduce M31 USB PHY driver
> > Good: [PATCH] phy: qcom-m31: Introduce M31 USB PHY driver
> >
> > That way it's obvious to the first person who sends a bugfix
> > what the driver prefix is.
> >
> >  drivers/phy/qualcomm/phy-qcom-m31.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
> > index ed08072ca032..99d570f4142a 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-m31.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-m31.c
> > @@ -256,7 +256,7 @@ static int m31usb_phy_probe(struct platform_device *pdev)
> >
> >  	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
> >  	if (IS_ERR(qphy->vreg))
> > -		return dev_err_probe(dev, PTR_ERR(qphy->phy),
> > +		return dev_err_probe(dev, PTR_ERR(qphy->vreg),
> >  						"failed to get vreg\n");
> >
> >  	phy_set_drvdata(qphy->phy, qphy);
> > --
> > 2.39.2
> 
> I believe this is addressed by https://lore.kernel.org/linux-arm-msm/20230824091345.1072650-1-yangyingliang@huawei.com/
> 

Ah, I normally look up these sorts of fixes using the following command
`elinks "http://lore.kernel.org/all/?q=${FUNC}`
before sending but Yang Yingliang's patch wasn't in the first page of
results so I missed it.

regards,
dan carpenter


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
