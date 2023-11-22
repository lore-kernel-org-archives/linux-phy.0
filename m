Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E074EC072A2
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 08:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BY1dm9hJ/0rh1iMWatjStiU6tfrfgQGD+uP1kAhAi5o=; b=32Z6gTpNmD0D20
	OrnhRNuyLwIKWi5L3JUffZpTC1yAgof6OvRtsTYXMJoI1oWDuW9AUA1q2e+azoXOKZJgNoEYKaXHA
	T5BocSbaTgCYcZU6i6QBGUDCrQpndMdgGC2qmhnjRUTyRXqJ1AC21pezWh8Y4ak/cWJyl1AwkCi9z
	Thy1mAbjo+nzJXRMvRCOvS5hIhs7NH2ZzzptlpiDkZ2ilElS0x4iXGLVz26JCW/mXSHEFCE5QTsu7
	mXIi3h6CtEEFPPs6/ma/dj4wrIrJEDimisUSXsYROIWc5/j1FlIFTrPR0Ai/jtstnGnSuEdxpwtB7
	yJrX1tjMx/PJjbeTZ4Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iew-00148j-1e;
	Wed, 22 Nov 2023 08:32:34 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iet-00147n-29
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 08:32:32 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5b383b4184fso70935557b3.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 00:32:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700641948; x=1701246748; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SKD7ps1yzVN9YyslM/iBpqLP523I7QRimM6aSYFE9qw=;
        b=ZiPXlZh+zFDLtcFuDG01e6coO3wD6Sr46GPakRlICo0hNhUFzjFQ5axqP4dZLTIyst
         hz2at9lQ7acLjNqbjkHqNDb/4UhE6A2XlumKCf8by7Lsd99PeZG4qrYE6gtV0iQKJg4v
         cjciMpWzkZ00Qd9ZTRxgNvrzI2GZHRxYv6L1YHSFlOgCisaFKBEfIkq7fB2qCxzQXNKb
         yqpV4/fu2m9hzZ9q0B329bKnrX38I5FfxNdxVnVlyKAsCWaz2hxZocBi5bCu2HF6OGWY
         vH3LSEzjovuW6O5Xur9+Vby02XwmPCGrcpcrFCs7eJV/p/MhOLYDh9+lEbPk0Qglg8jU
         8vLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700641948; x=1701246748;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SKD7ps1yzVN9YyslM/iBpqLP523I7QRimM6aSYFE9qw=;
        b=i0atzrBVnjYhb+huU3qS7V3rHZ4gjFO0OeuhntdJ5L0qbHfV7ayhcFm4A38My6k6Tp
         f+acXde6Wz5zGsYLRPaJHFNaBJXFofhQ4yxGmWqXQoG0msffEV9Yiz5oG6biFvF9Gw8v
         Uf+CCDBAGU8MTJnRRMB7xHbjcAL0pvfKiP12Ns5yFw/BX5YGLZsLzkYpQTB0jwjjaXmT
         zNcRZWgvLh8wl+018+vOgbB5FA9IMNcptptJ+UuIG8/ioWno4K6GFfk57yEraAllOsMD
         UFdknHdAZvt18TTEqNvq80OIjpqP2hSR8s0gXdtpPVmnKpxMLmd6JHghNzv0mK208Wpb
         V8VA==
X-Gm-Message-State: AOJu0YyZoLNvDdgt4vlkkvEg2MdIY7yMQzbc2U9OBvtzaZf59WyZL93Y
	aUSY7SYc4Q+mLyxEZrZXgYduYJW8wZi4n8HFInHjBw==
X-Google-Smtp-Source: AGHT+IE5g6LemC66GK6J4NtBnEPhGvTXAOLhtI7zh/ZTgg1uxNkugF5SAUnxnXKq9zo05CTFg+SDAeASJdL8+iGTQBU=
X-Received: by 2002:a05:690c:4782:b0:5cc:7431:871 with SMTP id
 ha2-20020a05690c478200b005cc74310871mr699694ywb.25.1700641948499; Wed, 22 Nov
 2023 00:32:28 -0800 (PST)
MIME-Version: 1.0
References: <1700637042-11104-1-git-send-email-quic_cang@quicinc.com> <1700637042-11104-9-git-send-email-quic_cang@quicinc.com>
In-Reply-To: <1700637042-11104-9-git-send-email-quic_cang@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 22 Nov 2023 10:32:17 +0200
Message-ID: <CAA8EJpreEqStpjkN5z3+ufiFXP22-PcW4U+wR6Y7LK7QMT_Ktg@mail.gmail.com>
Subject: Re: [PATCH v3 08/11] phy: qualcomm: phy-qcom-qmp-ufs: Rectify SM8550
 UFS HS-G4 PHY Settings
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, mani@kernel.org, stanley.chu@mediatek.com, 
	adrian.hunter@intel.com, beanhuo@micron.com, avri.altman@wdc.com, 
	junwoo80.lee@samsung.com, martin.petersen@oracle.com, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, 
	"open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_003231_723721_5A98244E 
X-CRM114-Status: UNSURE (   9.59  )
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

On Wed, 22 Nov 2023 at 09:11, Can Guo <quic_cang@quicinc.com> wrote:
>
> The registers, which are being touched in current SM8550 UFS PHY settings,
> and the values being programmed are mainly the ones working for HS-G4 mode,
> meanwhile, there are also a few ones somehow taken from HS-G5 PHY settings.
> However, even consider HS-G4 mode only, some of them are incorrect and some
> are missing. Rectify the HS-G4 PHY settings by strictly aligning with the
> SM8550 UFS PHY Hardware Programming Guide suggested HS-G4 PHY settings.
>
> Fixes: 1679bfef906f ("phy: qcom-qmp-ufs: Add SM8550 support")
> Signed-off-by: Can Guo <quic_cang@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |  3 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 28 +++++++++++++++-------
>  2 files changed, 22 insertions(+), 9 deletions(-)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
