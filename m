Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FE75C4167B
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 14:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fr/QPTj5fLiO2B7e/mbORTq7KMCHlT8FIoiMlmYR9Mg=; b=FWx37LsdyRrDBW
	8f4hPcMZYg7QMsVbcr9o3gx4fwJfi11I7hEK3AXTGJ9eqX1bPu/ijyjAOM/OfTjntV6lmzwYyYu6h
	CwPYYLlNWpfOdq1KTWqrB/sy52p5ndWsMcEI8x0U4+Xyy0zyA1qCGWf6C7uMj47B7hJNYutjP0jbH
	uNRvLE+pyy9UJexEsz66vOgkJHTr4ElbcV+BTqMmVlsXBzfPzc7ZWAmwD12YhMeIMdc15kB+kGCxF
	eGviOAFOBV4FngMQmwoz5hB3PFaPsKrYJXmxVfbohOtUm+LitmTLAPMc59bMMKyV0uEOIH0wNg0Ia
	zNCyXdZilFY2l1in830w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAA27-004n12-07;
	Mon, 04 Dec 2023 14:34:51 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAA24-004mzn-15
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 14:34:49 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5d2d0661a8dso51199637b3.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 06:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701700483; x=1702305283; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UBJs9HC3lM8sYwTRCXh1LpvZlOzGYSuuBBbJkIOs//U=;
        b=rMExx6UwILxiV9TTaHY8zLNC6QC9WfY7u7IsiLrk+3lB2jmi7arcCqArgFpf/ObPhj
         ZouE3U8nuxeSvx2BExMZDjkM/L4AM013F7thybsZUt1rsKCqULI8i30Farmn7QDm5BvF
         ZkMphIEGq2iY/dL+ayJmTYbTCY8D1XfK6Br4zZv73hN3iDNcuhXi66bnuG4u1SJmLUfd
         0WaWvjLEJW6kRbSQgCrR4JkzrwTsDo9silA8xSCrVO0xcDchSt3oK5hx8Jh8jiUZGOHt
         AMGNbWVFhnyt77L1g9LRA5TYIFq5gKdP1rAnsdlW5+UHQwcoyNWsSEHb4U89d+Bo1e/F
         5q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701700483; x=1702305283;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UBJs9HC3lM8sYwTRCXh1LpvZlOzGYSuuBBbJkIOs//U=;
        b=kPTWGCUmtnNC7izfVuk59zf7l8BB/DftowB5AKqZw7a4v4OFOVS49JoNEK2ACJfcy2
         ug5zYb1fPItMOEpaYwIUiyPyAtEtKM8mzAd5kTlGZmIpW+Y2HiG0sLCqAol7HBsXRLLr
         nxCqZhi9A6AgFC+LPz6KCaM9VZBsSviBTVaScV94+Pm5sSxXZtY0btjrjTKiUe1Jd+By
         I4Be1XPiAP5FVfNNfua5ZTSdiD+/dn05n1p7+xXYfHdIotAv7h5xiXUdFl0AygC/8tlw
         o7RqY87tu2pSOCUUh9W/zJbxw4TKEI3vtjldF3qata+UH86SFoM9Yrw9cD+FVzlrfZ2P
         1agQ==
X-Gm-Message-State: AOJu0YwRpoAhPaWQakuP25uH3JT0QalRasnc5WB5GQKtiN0zVLmEBTo3
	bA9e6scoXj4eT1cNs1zxqfEjq+Hbp8PL/8apfcHthw==
X-Google-Smtp-Source: AGHT+IEQBiggNpMjfj9oThMBY/8bdATSwaG+XOy2BXMbwSykTrdtIUthOTH1NAuFhyC+vQtpeQxbkyOnMjBb+nYhN8M=
X-Received: by 2002:a05:690c:82c:b0:5d6:aea0:2236 with SMTP id
 by12-20020a05690c082c00b005d6aea02236mr3471440ywb.26.1701700483592; Mon, 04
 Dec 2023 06:34:43 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
 <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-7-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-7-21956ae0c5c3@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 16:34:32 +0200
Message-ID: <CAA8EJpryFUtWU1PPHzW2+gkz9UOzWPTvao3NTS0ABhLO4HMFgw@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] phy: qcom-qmp: qserdes-txrx: Add v7 register offsets
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_063448_372637_2E574D8B 
X-CRM114-Status: UNSURE (   8.24  )
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

On Mon, 4 Dec 2023 at 15:08, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> The X1E80100 platform bumps the HW version of QMP phy to v7 for USB and PCIE.
> Add the new qserdes TX RX offsets in a dedicated header file.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    | 78 ++++++++++++++++++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
>  2 files changed, 79 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
