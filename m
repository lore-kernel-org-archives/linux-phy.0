Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E7A0C38147
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 23:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFBitICcfWaK0MEzsFRGMPCcwhsB17mAv17Z27KL5gw=; b=SqMP2a9p6RF4Wm
	PNhvDPJ46dbV5BIFp/n8N/Y4dNUkYqngwi0ZZNjKSE33KGGiL7A/6KrMHsmKiC+bp7Sq+baYw/mKQ
	fJQZ0JkeG/wPLrr/FHCJ2oprRX6BXmxK7M9ijoud2ImBHPtugsnbmIq09uena87b8/Kw7xZ2TLw5L
	YU110Iv2ViUU2TrCE5iHGf8surDLu9nkk1YgVM9nmUorLBOiICAylunkxetUDXJG4wplGWZN0IWpI
	+Sr2dt5+5lqw9JqxQtzckhqVG9VWMGT1+ALIH3lF735gxGVccefPJ9Oa4gK6kJvcfwXBmNU7zZbYj
	WbrhXec9tDXtaAJvbpFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHws-002xud-RZ; Wed, 18 Jan 2023 23:34:30 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHwq-002xuA-SL
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 23:34:30 +0000
Received: by mail-wr1-x42e.google.com with SMTP id b5so256473wrn.0
        for <linux-phy@lists.infradead.org>; Wed, 18 Jan 2023 15:34:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rMcqZ9jlkTT/EnrqF50abWmD/pX2w5h3KsRPUL/teDU=;
        b=Y49gmAzSIBUA2llk6gPqPtLMmlGrwJKyK+EeFI0U8GSsIQfAl34R5XnojOqbtuXD+S
         NLZXrdKqM1bUrcVGZaivKOzBbuJANCHPAo2OgbEi0yjlKGNCNJzZtkmHj/Vf93SLxFW+
         KaN3eLK+byjKqiIlD/S9KVD5W1upBFM5mi4Vd0rsYn4ZN5EvIP36fHoCbZiQBZr6XqMd
         Uc7vMoTKhLbS5k6LpADOLPanKsuhX6z7Kn/Gg6XSsEQ8Jcw/e6uR/6760dtToiYkq+8D
         MzBetbGrh8uX4YGfLnOvJ1GmVQ2rGjX3FWVgoCIl0H02XNeKwpEfQh8/YV6eVJw5zXAB
         T6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rMcqZ9jlkTT/EnrqF50abWmD/pX2w5h3KsRPUL/teDU=;
        b=avO1QoYpNUUjFVEMuad9i5UArmHsWn1vzHc6Sq1+AGoYZfxWqjIleFg3tpoOR7kRGk
         Eph9JCTz64vvUS3uIg7h+UVfhAdUcGIjhjOQcMQm3QVBQfNIj2FMqpV01OrqUzo3Q1vY
         5h0+jlkwbJcAzRfy4SlpSaO0SrmfAN5SoIbLsoHnF8nF9ZGy1wXrqsav2c8VwhnqSHxH
         wVVs2mBEKNVZBTuj/G0Oe5nhfwx7ibIPrFiMBYalEIt6lbgYHlfrWEIwnl9X+NYjAzY3
         8O66JpHSlcnH5EDePvZ4R+IyYjm0cv1cCAgNKJELOLZN6uoIsEK7I6hThcuO4jeYUpaa
         6ASQ==
X-Gm-Message-State: AFqh2ko/15LjuSH12bNx5zzzk9iLrp8TP5PDVu1T/61DEouKstSvnBNL
	BzRYRriMjGbAhZiNjuGD1JW6Z66o1OGlDBWf
X-Google-Smtp-Source: AMrXdXuJIDrIOSPo/0awstKU4JLPlOV9/gPSywgl2jxeexFxWtosMGtgICO1AqeVXnL18yQT8mYmXg==
X-Received: by 2002:a5d:4532:0:b0:2bd:dc1a:cbd8 with SMTP id j18-20020a5d4532000000b002bddc1acbd8mr7486793wra.57.1674084866399;
        Wed, 18 Jan 2023 15:34:26 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id v14-20020adff68e000000b002365730eae8sm32569664wrp.55.2023.01.18.15.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 15:34:25 -0800 (PST)
Date: Thu, 19 Jan 2023 01:34:24 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v3 8/8] phy: qcom-qmp-pcie: Add support for SM8550 g3x2
 and g4x2 PCIEs
Message-ID: <Y8iCAPOyrYXd7e/3@linaro.org>
References: <20230118005328.2378792-1-abel.vesa@linaro.org>
 <20230118005328.2378792-9-abel.vesa@linaro.org>
 <7fe0c49e-a628-8e76-8294-ab8faadb3a70@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7fe0c49e-a628-8e76-8294-ab8faadb3a70@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_153428_954024_B9497966 
X-CRM114-Status: GOOD (  17.95  )
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

On 23-01-18 06:34:41, Dmitry Baryshkov wrote:
> On 18/01/2023 02:53, Abel Vesa wrote:
> > Add the SM8550 both g4 and g3 configurations. In addition, there is a
> > new "lane shared" table that needs to be configured for g4, along with
> > the No-CSR list of resets.
> > 
> > Co-developed-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 369 +++++++++++++++++++++++
> >   1 file changed, 369 insertions(+)
> > 
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > index bffb9e138715..6f82604bd430 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> > @@ -1506,6 +1506,234 @@ static const struct qmp_phy_init_tbl sm8450_qmp_gen4x2_pcie_ep_pcs_misc_tbl[] =
> >   	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_MODE2_CONFIG5, 0x08),
> >   };
> 
> I see that the last two patches still use 'shrd' a lot. Does this correspond
> to hw register names or is it just a vendor kernel code convention?

It corresponds to the hw register names..

> 
> -- 
> With best wishes
> Dmitry
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
