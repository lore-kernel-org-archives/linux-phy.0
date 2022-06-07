Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F951C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:43:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWJZGk3cTP1hpav1vAo5jL8pNRJDBi8zUZWliF4cuzU=; b=3cNS/D34clLhfI
	aZIyQJDgbFb5ostJnSR3XGNfArTuRyRqkb0d8VC1tBnk9sD9451957cehsPxR112E4wTiY0ofvhjd
	2FsnICz2KPolZce7QB6vXDd/TsgDPVq/b1KuzCbV/nhC2yZ3PrPG5CCBtk0f6qDjbAzpqL9HNaiXF
	g4yX/hFk6FUfE9kjsVo24TIJsjygwa0AObGmUtQOcKQ9ygZ8sIGJpx0AEBRVx+SkrnCAirzyQ5UyN
	iSJvK5RP9zgzE24MSUr63kADVx6JWUnOWhaXSX5JnbeUaCb+CDuUEYX7jErZk2rvZzxhqhrOVPg4l
	hp0arira8yJq2LdFWuGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhuq-009vJB-Ep; Tue, 07 Jun 2022 22:43:12 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhun-009vHA-IK
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 22:43:11 +0000
Received: by mail-ot1-x332.google.com with SMTP id r12-20020a056830448c00b0060aec7b7a54so13904156otv.5
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 15:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2fKoWW6NOg5lxeXgt4oK9futpOxTdvNtK6BCDtPAU98=;
        b=SolS7aXqDUswytp1fIPeZ8E1O3SQf6wC7YBU78MIsnycc/aht7NFwCUavHoI6an47Y
         TUuuc48GSuMVJYOpJ14Z5Y+qsODzrZYwDUObm1f8e4XyCvphW5hPQrTajc6XPdZKzCb5
         LlCje7mUunZrQIvSOEXGVBawzYxgCxwUeMkYQ+SkapFy5RW4cxafIQosi3FzQhYE/G6u
         aqQW/J4nFuZ2gbrnANdIzSDKP1fwBuWLt40+SkGe1cGhRDeMOojyaJPQG64uf6DJ/buU
         Fi9TXW46Rs2RP/CenV0BX0mwXdkI4o+sHrahqRUdSVkraBny2sYLjM9Hs90H4S/+7FYl
         li8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2fKoWW6NOg5lxeXgt4oK9futpOxTdvNtK6BCDtPAU98=;
        b=mNR2U93f8G27ReQQZhyK97feXD2AXZyjDeYkXg3BjzNQOZEVA3gEjrd5pBEo1PJXo7
         Q/MpPxWJpoLraBSajkxplLMkznT36S8owciTRnmWn13/Bg1KkYTGBGJi0BHUpjT46fNK
         t0XGB5+5KDuvDke/yESETKF1m8/P9SIx36Ti2l3cwG8bE3L570eXVV5+AuycMEuLuh7k
         wlx824RbeoDqRcAZLFaGOIZiqqrcKgYSCHac5bMOyufmRp+qTZR54ohtQ66YN7tk2RJt
         IDcb2Xfmte4/Nlm26AJeDv0wGJUozMShqxwE+lQgXy7wQToSSkS0IvrmclvoITbV9fq+
         KNag==
X-Gm-Message-State: AOAM531PKOm1vPOP8mXv2EdatEJeynULlwkpIyYEfrkO0LrbCQvolVFb
	sGbwwkQSphaXq7adYCkMjzGc8Q==
X-Google-Smtp-Source: ABdhPJySCSkrxVapnCB2pbL3mqq6c/Ha6taOEPIvN6imZnQFuRSIOn++8Bc839jTB8lMMNU1tRmMyA==
X-Received: by 2002:a05:6830:9c2:b0:606:1e0a:cc8d with SMTP id y2-20020a05683009c200b006061e0acc8dmr13468851ott.265.1654641787842;
        Tue, 07 Jun 2022 15:43:07 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u13-20020a056871008d00b000f5d4e5b9a0sm8903477oaa.2.2022.06.07.15.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 15:43:07 -0700 (PDT)
Date: Tue, 7 Jun 2022 15:45:30 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Manu Gautam <mgautam@codeaurora.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] phy: qcom-qmp: Add USB3 5NM QMP UNI registers
Message-ID: <Yp/VCg3UznbLKLuk@ripper>
References: <20220607213543.4057620-1-bjorn.andersson@linaro.org>
 <20220607213543.4057620-3-bjorn.andersson@linaro.org>
 <f16657a3-15e5-f7d6-1f2b-58e2ea83dddc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f16657a3-15e5-f7d6-1f2b-58e2ea83dddc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_154309_626521_25278E97 
X-CRM114-Status: GOOD (  20.14  )
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

On Tue 07 Jun 14:58 PDT 2022, Dmitry Baryshkov wrote:
> On 08/06/2022 00:35, Bjorn Andersson wrote:
[..]
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE0	0x1b0
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_CMP_CODE1_MODE1	0x1b4
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_CMP_CODE2_MODE1	0x1b8
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_BIN_VCOCAL_HSCLK_SEL		0x1bc
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_RESERVED_1			0x1c0
> > +#define USB3_V5_5NM_UNI_QSERDES_COM_MODE_OPERATION_STATUS		0x1c4
> 
> These defines look completely compatible with the existing ones in the
> QSERDES_V5_COM_ namespace. Please use them instead.
> 

Can you please confirm that all these constants are exactly the same as
the existing V5 entries?

[..]
> > +/* Module: USB3_UNI_PCS_USB3_PCIE_USB3_UNI_PCS_USB3 */
> > +#define USB3_V5_5NM_UNI_PCS_USB3_POWER_STATE_CONFIG1		0x00
> > +#define USB3_V5_5NM_UNI_PCS_USB3_AUTONOMOUS_MODE_STATUS		0x04
> > +#define USB3_V5_5NM_UNI_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
> > +#define USB3_V5_5NM_UNI_PCS_USB3_AUTONOMOUS_MODE_CTRL2		0x0c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_RXTERM_IRQ_SOURCE_STATUS	0x10
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL		0x18
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_TX_ECSTART			0x1c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_PER_TIMER_VAL		0x20
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_TX_END_CNT_U3_START		0x24
> > +#define USB3_V5_5NM_UNI_PCS_USB3_LFPS_CONFIG1			0x28
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_LOCK_TIME		0x2c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_WAIT_TIME		0x30
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_CTLE_TIME		0x34
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_WAIT_TIME_S2		0x38
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXEQTRAINING_DFE_TIME_S2		0x3c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
> > +#define USB3_V5_5NM_UNI_PCS_USB3_ARCVR_DTCT_EN_PERIOD		0x48
> > +#define USB3_V5_5NM_UNI_PCS_USB3_ARCVR_DTCT_CM_DLY			0x4c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_TXONESZEROS_RUN_LENGTH		0x50
> > +#define USB3_V5_5NM_UNI_PCS_USB3_ALFPS_DEGLITCH_VAL		0x54
> > +#define USB3_V5_5NM_UNI_PCS_USB3_SIGDET_STARTUP_TIMER_VAL		0x58
> > +#define USB3_V5_5NM_UNI_PCS_USB3_TEST_CONTROL			0x5c
> > +#define USB3_V5_5NM_UNI_PCS_USB3_RXTERMINATION_DLY_SEL		0x60
> 
> These look like QPHY_V5_PCS_USB3, but without additional 0x300 offset. I'd
> suggest modifying qcom-qmp-phy-usb.c to allocate another register space for
> pcs_usb and updating QPHY_V4_PCS_USB3_foo / QPHY_V5_PCS_USB3_foo defines to
> remove this offset.
> 
> Afterwards most if not all constants from this header can be merged into
> phy-qcom-qmp.h I do not think that it makes sense to split this header at
> this moment. The QSERDES_COM/_TX/_RX/_PCS defines are common to all PHY
> types.
> 

You might be right, but I spent considerable time debugging the combo
phy (which is version 5.0.0) and in the end it turned out that it's not
the same offsets.

I really would prefer that we stop haphazardly try to fit things into
the phy-qcom-qmp.h with version numbers that we essentially make up
base, when Qualcomm dumps the register layout for each generation in
their downstream kernel.

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
