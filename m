Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EB64C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=34QMVeY2RKh+Qazm15j6NseHYB0uL01Ix0xg2ZnHpH4=; b=h+O80neUgWvE4M
	ly7YmTXEoGXy/ozTWKgWib+OQI6CcllBUWN4keIrhIZtbFI0lhNPTfA6Nn6pb0sT/sTiqWVgdfbjQ
	PgciZ1Z4/HY2kfQMj/BknqOaI9x35GPKcSxwkOowtLIHFLECPdb1wu1rMa+wLT5CVJ7/KR7bFGel/
	jnX7WpHwMExeQBMqJC4k2galmx6ZXDBlxE4ASPTxftuVD0yPNs5T21E4HfCB+3iUd3mYPkSkxynM8
	DInqDAwAKedDWsZDRrcncxPuzNw1GVEiMstLpDKvhM6sZWw+1aF1r+5/Sasm1lw091xxUgpzfJAhF
	3XJLJqgfxVA0Y4K4qrGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqcv-002NDI-OP; Thu, 29 Sep 2022 10:18:45 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqcs-002NBX-P8
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:18:44 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-346cd4c3d7aso9594407b3.8
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=xIBSn4ztR5ROz6GRB0axkNF5Yod6vvG1hBCcQxzJkTU=;
        b=vXZ4OhLwR3SENX+ujRusbFRUJC74NHXWWc/G0gw3IeNRB1EkqtQeFK5NHY6GWb56hQ
         Bt4ca1I3PDbVMJrwAqgEtCdKphsSI1X1JDiis5T4gtY4mZNJyQOskwk9RXIwdPQNij25
         9ulJ+ol0TRNBkwj4wbBez1iZFr+mdEagN/RrE/Gl2m14/zUZO+BA5rFu1CXf6jDgU4CW
         OWKqXNdzHoaOpplyU1OKsJLPMCMl97EbUE9iaNtBU/9sh1KVV3Yhq5bT74cMish+z0hU
         cg8xFUteACql9ntv68Yk+3DGstRuZYmSygwDvj9paAPSM3+mBlzxGEWqMj5Q4Uv+1G1D
         kCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=xIBSn4ztR5ROz6GRB0axkNF5Yod6vvG1hBCcQxzJkTU=;
        b=Tb6y6ezhNvb3vBVXp3nT71Z/y3idkc1IW7B1Pk5ixp8YA52RHVzG3psa+ZRDC1CmLN
         piIZ3i0FYOwbvqNtCj5yb8BTHp8Z9YjHsJ2XbLq+vHPEQz9Y/36L7+saGua+2M6sy1r5
         MdX5St6SQDSnSoQ9uRa5EvHY3oaM2KMBu32KNBnYX47PWBuJEZm8b5hzzqQWXveoNFST
         01fWYG1Pm/XLDDenJb+nMYyxEoBTMl/4nre34KE0ZriOXwOjZ6IQ6MJ/mL2l2Qpj3Ru7
         qaB02JFt0qqNMbfbzk9vFIXkxjAX3ZDjFwsfiftjmAiHmcg8H+z24G0qlFG91UQpnL/i
         QI7g==
X-Gm-Message-State: ACrzQf3CzaH6i62LSfyjYeie04LaYf10XnwwrRgyYFwqLnr7VIovlTjm
	M+gKcHmZmNy0HiJ+/V8ftWHcdY71iDcfwlgX2ptSJA==
X-Google-Smtp-Source: AMsMyM7nAd9fHTaBaOo32n0H5li8V6GN8ddJbCs/NfzNeuXPCQzg5zRe4XG4V3AvJYADKgSf9Y5X3hxf+ELXjuj8PGY=
X-Received: by 2002:a0d:d68a:0:b0:350:a7f0:7b69 with SMTP id
 y132-20020a0dd68a000000b00350a7f07b69mr2458883ywd.132.1664446720102; Thu, 29
 Sep 2022 03:18:40 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-9-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:18:28 +0300
Message-ID: <CAA8EJprGB8+6=zJAsWhmqsoBEczmJ5A5FWbsB3RtNxeXtUQmYA@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] phy: qcom-qmp-ufs: clean up power-down handling
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_031842_836554_55C836B7 
X-CRM114-Status: UNSURE (   8.64  )
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

On Thu, 29 Sept 2022 at 12:29, Johan Hovold <johan+linaro@kernel.org> wrote:
>
> Always define the POWER_DOWN_CONTROL register instead of falling back to
> the v2 (and v4) offset during power on and power off.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 ++++++++--------------
>  1 file changed, 8 insertions(+), 14 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
