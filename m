Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA55BC4321E
	for <linux-phy@archiver.kernel.org>; Mon,  5 Dec 2022 21:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BUuE/ZiS4zy1sU9uV/rCDU1d8DDMtIkwDf1XpbzA0jY=; b=BwEAR09B8nQ9hX
	qIcxaD4Kecng7r9NMdCM9bv2ZFAMZgZhHrSFcvVBNfI0u4nQFYC3l7O69BrEd9Wo40HFU2choXpVX
	su/nb/4zQtrR/y+UiF6i+O18chDi4HE38EaCeX9Z3hAiC+rq1W9N7KKuVIm6fin7UC1V6OMp38YIA
	imojV/QDQkWhpP74VzZlYhfPj3pY9uBMO+Y6kIqTHBAJqrWF5a4MMTo3SvbCKva9aWGjkhScV1n+c
	DzkrftDCBDmyHyjl3KAt41annvSuUV8MSMcFmiQg1UaSvyYzvFmCFLGqJOAyibXoKknNVqpX01poW
	gaOkuxip0mh1bwRkMlHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JQi-00AzOP-6N; Mon, 05 Dec 2022 21:55:16 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2JQf-00AzM4-4t
	for linux-phy@lists.infradead.org; Mon, 05 Dec 2022 21:55:14 +0000
Received: by mail-lf1-x12f.google.com with SMTP id x28so3389297lfn.6
        for <linux-phy@lists.infradead.org>; Mon, 05 Dec 2022 13:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DuCbaziL7ipwUokx8SdKjEyNaVxjpbuSpAIzdJTw5Wk=;
        b=EZ61WOgtuGU6gpRgHDm040OTpm25fx5anWD3iDhaj+TRuQ001odDN0NCUeucYe76Xj
         +b/A9zh1Huo/QYb31nV5z6jqM4/fCI5ogg6FqktDWGelOhwshhTjJX5MEpLSbiR2Lg/c
         cf9BT0rV/DXZ3Q7QXsXSy9dHVSMGL3dikVd4zzqdZLDAehjWIJS2TQYcAUp/jj2f2tuP
         /BSqWRnm0cLU3zwTmfoER6jGI/mHwJ0raqJO+iVIlxy4AcqNUUgaqMSdGp0xPzZ0GqyR
         We1DJY5Z0Q3EpwNdr3MrBNezKl2QT+yvoxa04W/YukmUMYYSUcgMttoAygjD77wRvVw/
         r36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DuCbaziL7ipwUokx8SdKjEyNaVxjpbuSpAIzdJTw5Wk=;
        b=U4e9g/U8cKjUeYjKysNIASLC5feb2qwCsNF22aCxhvlyyzE8FTiTXZCXqdmn+WHc4j
         R7qpPeT6Xc7+uKiDQGmUTwhfWIiqBKUdL8NfLmbguS1EyhzUbAf0igTPyYMgV0i5Acg2
         6U8ClOVWJZTcGmTj0i2doOzIvpahRWtSI9e62HnwD8XrZMiFbjEacPbx0zmdFhEr29Bt
         t4IXFb47IA2zT9FDo3nTdb+Q2lttAYruI+m7qI0JrO9l1ojiYus2CANjpCYI3V8954CF
         bsyrdB5Gf52iFPPjK9OwOMIKMGKpf5S4sdHErXxg0l4cio8RuVZSrWVwCs+ybphPB/x2
         QNwg==
X-Gm-Message-State: ANoB5pl+h0Oi2aQ+S2rjIQ9usewi0v7WnhRJ7l48tDtm+xRwueGl/iR5
	r+cqWj4Haax5pDRsMxlQR7Z1xw==
X-Google-Smtp-Source: AA0mqf7a37W99NFxiADuO6IZRRPlkwNIPPcpXqSVr1sY3PdBNkFTIOLCTFco6NqHvbVAN4USu4AVKA==
X-Received: by 2002:a19:ca02:0:b0:4a4:434e:1e07 with SMTP id a2-20020a19ca02000000b004a4434e1e07mr26910750lfg.172.1670277311132;
        Mon, 05 Dec 2022 13:55:11 -0800 (PST)
Received: from [127.0.0.1] ([94.25.229.129])
        by smtp.gmail.com with ESMTPSA id k9-20020a05651239c900b00498fc3d4cfdsm2246171lfu.189.2022.12.05.13.55.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Dec 2022 13:55:10 -0800 (PST)
Date: Tue, 06 Dec 2022 00:55:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org
CC: quic_cang@quicinc.com, quic_asutoshd@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 ahalaney@redhat.com, abel.vesa@linaro.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com, bvanassche@acm.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v4_09/23=5D_phy=3A_qcom-qmp-ufs=3A?= =?US-ASCII?Q?_Avoid_setting_HS_G3_specific_registers?=
User-Agent: K-9 Mail for Android
In-Reply-To: <20221201174328.870152-10-manivannan.sadhasivam@linaro.org>
References: <20221201174328.870152-1-manivannan.sadhasivam@linaro.org> <20221201174328.870152-10-manivannan.sadhasivam@linaro.org>
Message-ID: <29FC6095-645C-46B1-BFD1-0CB9F05214FD@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_135513_283687_E0D078AE 
X-CRM114-Status: GOOD (  10.30  )
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



On 1 December 2022 20:43:14 GMT+03:00, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org> wrote:
>SM8350 default init sequence sets some PCS registers to HS G3, thereby
>disabling HS G4 mode. This has the effect on MPHY capability negotiation
>between the host and the device during link startup and causes the
>PA_MAXHSGEAR to G3 irrespective of device max gear.
>
>Due to that, the agreed gear speed determined by the UFS core will become
>G3 only and the platform won't run at G4.
>
>So, let's remove setting these registers for SM8350 as like other G4
>compatible platforms. One downside of this is that, when the board design
>uses non-G4 compatible device, then MPHY will continue to run in the

QMP PHY?

>default mode (G4) even if UFSHCD runs in G3. But this is the case for
>other platforms as well.

Should this be fixed by adding a separate set of tables used to setup g3?


>
>Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 7 -------
> 1 file changed, 7 deletions(-)
>
>diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>index d5324c4e8513..6c7c6a06fe3b 100644
>--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>@@ -567,13 +567,6 @@ static const struct qmp_phy_init_tbl sm8350_ufsphy_pcs[] = {
> 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_MID_TERM_CTRL1, 0x43),
> 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_DEBUG_BUS_CLKSEL, 0x1f),
> 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_MIN_HIBERN8_TIME, 0xff),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_PLL_CNTL, 0x03),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_MSB, 0x16),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TIMER_20US_CORECLK_STEPS_LSB, 0xd8),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_PWM_GEAR_BAND, 0xaa),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_HS_GEAR_BAND, 0x06),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_TX_HSGEAR_CAPABILITY, 0x03),
>-	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_HSGEAR_CAPABILITY, 0x03),
> 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_RX_SIGDET_CTRL1, 0x0e),
> 	QMP_PHY_INIT_CFG(QPHY_V5_PCS_UFS_MULTI_LANE_CTRL1, 0x02),
> };

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
