Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CAD7C10DCE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nm3AevMPkhlFTCy4xWRo8+I26EQciY2iUEbZfZySOBg=; b=QIEbIOlKeLdlEb
	y64M1b1Cr5P06AiRx12g6wOcaV26cw2dgSygHnu+QxWKQNUysN0XVxw+tWXQZYMK+dNHGZF/qBFJo
	VmKbs0hhu8vm6+eXqx6bxAzUah2A0XC+S7JlQcvwwYnD2Wa6MVQwuTgPHvJMKPFq7f+hwHlRQVM1o
	lTmqGewbA1l8p/tjfjWOt1dsUiDf/6CMdrIwmih/frG86Ke/PMgo+ZNynBUa0EE62YBKlldWMaV6z
	c0N8IcgsLqlkAT35GKFAp3PM3mI0MKLGki+CAYDS3vA8lurcNZnEL8jHJn80/LpPPItoAa9r/hMOh
	u+F9fmg50h0/tQC3JrEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDPd-00CmKe-0M;
	Thu, 07 Dec 2023 12:23:29 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDPa-00CmJE-2G
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:23:27 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5c85e8fdd2dso6483447b3.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951804; x=1702556604; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zsow7R42bQ9UqU+3gHiABlqbyNHgme2JlA6feobUee8=;
        b=aMqY5SdU9PZdK33UvyWCnBv8M/p3iqo1Kydd2aBtxUtGUy6xjjGe0Y0v9LqnkHRr7n
         PlQyGbidrn9hZDoEpZ0UJWmzSZX35SNBtUu5+0q1bEVRz7g0zdBuov1rYg2guA9bujxn
         zZq4ycC1rHqLDTMpFYmDMxRR6OM2cIda9kveEd5AwOZf3WJsiTKeub3W9uMsW+4//cT3
         t23+TGQDTThPIc1qoHhNoF8xT3zej1MqoY/GeXPJyMORdu5cXG/sbAsiHhF8ZfFTRhu5
         h9F0GayyKwYvtwlsCS0xa6Z/9sDmXM4kOdXklHB6O5ZZoFyPIOK9bxuVsm7CtGAJr2PQ
         voxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951804; x=1702556604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zsow7R42bQ9UqU+3gHiABlqbyNHgme2JlA6feobUee8=;
        b=N7ukVp5Tz9QAmW1EhsCJgchiTbhLmGGnyZuOzbMjgmSPAn/uIRre6P56B7Wohhdc5I
         IlerxuyZHgMkXundmK/2HCxowQ9kQ/EY6wkRPH4gsO/I0z6SGcZsbIsJTe8lgB/orEUS
         1EVfPpAYEi2OIfImXNoQDlc+kG2rn54zRn1c2eCtiv2EFkoYyFQdZOQ6GxCak/2HdDkJ
         Srm14a87Bqg7eIspC7b+gZpv0jDaaPC6hWeK8EtwvoNZaO2X70ceMvtlkXh/9q+GrcIR
         AbUcq124hJBeICvup35lSXsdtX/51fERP0OaJY5/hy8gmDSVtdECutDjS1QCx88g1KVx
         qeGg==
X-Gm-Message-State: AOJu0Yx81VevVsRMewzXCG72bUgMK+7QTjHXZkd7zBNCzCrlFFjNCTtB
	Wa5rsEq+WaWGplBt+DvAM0RMf7I14VS1J/MGMKyaTw==
X-Google-Smtp-Source: AGHT+IFNoH29WEDXVoVkuFnOOvxiZfSITNbl6Pf075Eno11hrzpebhkcZjVIB++Oz8CQvurJ4Q/6cJw2CGk8SNkd9P4=
X-Received: by 2002:a81:ad19:0:b0:5d7:1940:dd60 with SMTP id
 l25-20020a81ad19000000b005d71940dd60mr2152488ywh.54.1701951804590; Thu, 07
 Dec 2023 04:23:24 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-4-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-4-dfd1c375ef61@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 7 Dec 2023 14:23:13 +0200
Message-ID: <CAA8EJprJzmBKDkmnViD5o8z=SXS4Y873hTSe6NJGKwoEdG7X4A@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] phy: qcom-qmp: pcs-usb: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_042326_765919_A2853D50 
X-CRM114-Status: UNSURE (   7.57  )
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

On Thu, 7 Dec 2023 at 14:19, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB.
> Add the new PCS USB specific offsets in a dedicated header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
