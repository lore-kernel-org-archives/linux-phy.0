Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBFEFC4167B
	for <linux-phy@archiver.kernel.org>; Sat,  2 Dec 2023 20:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xs3UI9nxZC1kSo2BjqwZL60EV8VD0EFhyRj+qkCO4iM=; b=lq8K7XISq6Llg8
	ichHuRVkojVmAeZiOFXEIifZnrN5uQkFc9Q7xXGWCnPc70Hc2INxBAUGyojpKxwnHW8C6zW3VqoCC
	JpvaqOzbDpfTMnLQyPUob9stg1HT4FCgzlQ+7iDa9zJRHdZW4kmJWl+x5jpBMTE9c0Rz9aECs4Z2N
	19C/11j3IUuSuFDApM/E0D2QsPhVeB9KrEOf2nmNR8p2fsxppXQOnPWGBgQMUmED9VXLZN7XW6LrB
	tkSr9W/xzG6Om6rEHjupTDZ7NrdKVNRpunwDEkybkRctKDW47bT8mU4Aa/ZRME5Kdjwn+NkoYC0Vc
	H1ad+EKR9GRbErxVDOHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Wat-00G5Hq-0R;
	Sat, 02 Dec 2023 20:28:07 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Waq-00G5Fx-1t
	for linux-phy@lists.infradead.org;
	Sat, 02 Dec 2023 20:28:06 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5cfc3a48ab2so34884167b3.0
        for <linux-phy@lists.infradead.org>; Sat, 02 Dec 2023 12:27:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701548875; x=1702153675; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uvT4z76Po6/5Y4/ji/3Hekn4vEQQ+QLQOwThlnNRg+s=;
        b=kiHF3rMm1vPRIqvRs1p1Rd92kEpVISfD+YLucrFVm3t8wHJIvJb3apGyobChhyB2iV
         9v2Z5K78xhrMdRWiIGNz+ZlTDJNJ/l/uNCCShIbkkc1fTcZoSX7qPAjl+XWNkFByMaUb
         BXFEu/wBaANBAb+JmbCd1PWpr5meE9mHjg+AwoEo44dEzJZX7H8PBJnkxEoa0EFjqOSU
         gxKPKYuLzLnZrSqkGslXRbCpoo3tHU63U+TmqxlXClKxgoLG4WwH6LupDrVcJCjZzqou
         ObGwOuj72ZQcw8p/yChZnUvQ+V2hob1iQRbQUiN0Q8rbbyd99jNYIJWNUWBtFdUuSf9Q
         9aTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701548875; x=1702153675;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uvT4z76Po6/5Y4/ji/3Hekn4vEQQ+QLQOwThlnNRg+s=;
        b=t6NPy2deAkniWS7NXllyHr7Wnb9QwYsjUwnI7gmcotpf7nVtxnQBagUBFPPvtVCnla
         zxhcEpLPuNiEraadlLIzbUet1mYEvPPm8GW2QnhDepdFhiOhcO40wt0jhjpmWxZEbhMd
         Egn06CEQsmtTBjO0mxWeEhrjiaKBnY/T1fuEbAKxKWBiMOSTJc15dOcBbpd5Tfyq4VPi
         nK7lS60d7hyK3wmfKabVViLzGtcQ3Zfiecpl9TPcNujhK+DpUzt9XMq9QrqrcvMXwkvd
         /15nMFeVEekkRpCkUvRZs7hz53TDJhNPHs9wslKeEAzXqMpQdPihPlNZDRlqVfMDwv2T
         +L/Q==
X-Gm-Message-State: AOJu0YyHAbco+SS4Lfkplh5iTuNOzezV+1g6X6Z9Gh7ba/N6A2AMqNYV
	tAJIbzJrtmIpY1WxM568CRroqPAB9P+h5+ptoy3eUA==
X-Google-Smtp-Source: AGHT+IH1Bi46zI+abA7XowSzg7eAQSNdMduiBzR2eJj0NkSKqxmlcaCcQ8HWp9J2PVu1uH7bwYUGeeRqo5iERm/gCtk=
X-Received: by 2002:a81:7904:0:b0:5d7:1941:ac0 with SMTP id
 u4-20020a817904000000b005d719410ac0mr1384290ywc.91.1701548875589; Sat, 02 Dec
 2023 12:27:55 -0800 (PST)
MIME-Version: 1.0
References: <1701520577-31163-1-git-send-email-quic_cang@quicinc.com> <1701520577-31163-11-git-send-email-quic_cang@quicinc.com>
In-Reply-To: <1701520577-31163-11-git-send-email-quic_cang@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 2 Dec 2023 22:27:44 +0200
Message-ID: <CAA8EJpqp3=wnShnjnLgeWt+TuVjEVOWW7QcACjZq2JD3AcoYGQ@mail.gmail.com>
Subject: Re: [PATCH v8 10/10] phy: qualcomm: phy-qcom-qmp-ufs: Add High Speed
 Gear 5 support for SM8550
To: Can Guo <quic_cang@quicinc.com>
Cc: bvanassche@acm.org, mani@kernel.org, adrian.hunter@intel.com, 
	vkoul@kernel.org, beanhuo@micron.com, avri.altman@wdc.com, 
	junwoo80.lee@samsung.com, martin.petersen@oracle.com, 
	linux-scsi@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_122804_727063_884A9B0C 
X-CRM114-Status: GOOD (  14.71  )
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

On Sat, 2 Dec 2023 at 14:37, Can Guo <quic_cang@quicinc.com> wrote:
>
> On SM8550, two sets of UFS PHY settings are provided, one set is to support
> HS-G5, another set is to support HS-G4 and lower gears. The two sets of PHY
> settings are programming different values to different registers, mixing
> the two sets and/or overwriting one set with another set is definitely not
> blessed by UFS PHY designers.
>
> To add HS-G5 support for SM8550, split the two sets of PHY settings into
> their dedicated overlay tables, only the common parts of the two sets of
> PHY settings are left in the .tbls.
>
> Consider we are going to add even higher gear support in future, to avoid
> adding more tables with different names, rename the .tbls_hs_g4 and make it
> an array, a size of 2 is enough as of now.
>
> In this case, .tbls alone is not a complete set of PHY settings, so either
> tbls_hs_overlay[0] or tbls_hs_overlay[1] must be applied on top of the
> .tbls to become a complete set of PHY settings.
>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Can Guo <quic_cang@quicinc.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v6.h     |   2 +
>  drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v6.h |   2 +
>  .../qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v6.h    |   8 +
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c            | 169 ++++++++++++++++++---
>  4 files changed, 159 insertions(+), 22 deletions(-)

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
