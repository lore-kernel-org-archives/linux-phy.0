Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3424CC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 29 Sep 2022 10:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBAjJ2KkP1lY2/p5MyNTRGlmA0Ck3l6pOtT8x4QgYE0=; b=OFb6plRcgaxDAu
	7IdMYNAiHBuvranGUEKwqd0d4gZEduXHPs3gYgT3PSALMJZanOuCZkIZoOZZZfz7d74NwfT031xL7
	/2fVSpotb2nGvvFrvdlFGH+UjYpxqzGIuHL5BIVx6JbyCcEEOAX4BqPvoJFA1LUMuHakgBzEH98LK
	sAusylAvi0WJeXmsuafmXt/7ylyaNMTl/jvgMaZQAn58EhN7QEF6TmOXBB84kLqmdBydCvRCP8knC
	Mtm8KqFdAGzoOPfy0CKubqLxrGJr4RF79qENNLnfxCQX3ocAwh5rDsTN5nMo5UY8QTfl8Xz3P9sRJ
	6OfKwNANasieX5AXm0PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqS1-002Jqt-EX; Thu, 29 Sep 2022 10:07:29 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odqRx-002Joy-KG
	for linux-phy@lists.infradead.org; Thu, 29 Sep 2022 10:07:28 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 135so932529ybl.9
        for <linux-phy@lists.infradead.org>; Thu, 29 Sep 2022 03:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=6P2cTknVyAGavRlD+4eMAUvWg3EU64xB/MzdvQ6eJEo=;
        b=Mr0hHY25uWS/mzDOzdRpAXl8R7VGuP4kg0xBwT4V/d9SnLCA0A5tHrk1adD7v3SnJ/
         s0zDwqEB0WKkZRrH6hMCHUMaJk9kpNyjChl9BeFHaBYweiCfARHmKqKA3QhBxeFX6OA+
         D/5yN1FzmTqzKM8bS68xBJ++Pzb0TcBAC7gI3mKmmwBJiYt9HZ1jnVPFqSs4GB5L0exU
         1W4M6NO6ERECu0iETHzedRPGyYirhLtBBBlbumILi3wkfYl3Eo6dL/+CbtkIjiK5JdY3
         ZZAiloIEalCuQJ7QFRyrT/ZacJzKHF6Pt68RK61ov017ULboqSJwwm2YiBhZ+lgF9vme
         kykw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=6P2cTknVyAGavRlD+4eMAUvWg3EU64xB/MzdvQ6eJEo=;
        b=y8nd4lKBYwX3i4hViXIs315F8IC1mVs7H42LjEkoU1Yz9NVB+Z0ZFv89Jo/S0lVBtB
         djaMGylHmnevdTh2jUBjaJugIVuBJridBN8A8J6aikgrwqXFKmrTx1Ef33rV1HNSZ88G
         cJK4iqO2K47dImUicxGBXmcUiLvtqhidbH0Duj4jY4DANsMaVCp/7tJtqe67MX64SUna
         FAzpiRo4j/Ekko2DISS1T0E9ynYigpEDFfSw3sl5UBln8N4nBiPyJSi0pHPoEIxyeXkN
         f5+bSWRYHEBhSf7GTRxlZ1WiYEolCeG7pmd94Obw4/bkLhGW9OHeldtJKBdGBck8Q9Kc
         nTBQ==
X-Gm-Message-State: ACrzQf0oz8JWfL1+htAaDO5U5Jh0cMRoi9kvbzWS0G4GATbDLNhP4STi
	UAG5jAIMOMP9iMH11elDKsdp75WZffA3tAcFtmP62g==
X-Google-Smtp-Source: AMsMyM6D7SqrPmQfsbrIbYDPacs/gjDFTKXsYNUovfxlVQCoXY4xCWnklSmGugX8OW+YECAv0AUBs3whESatrlacJZY=
X-Received: by 2002:a25:a502:0:b0:6bc:2835:a88a with SMTP id
 h2-20020a25a502000000b006bc2835a88amr2355273ybi.15.1664446043618; Thu, 29 Sep
 2022 03:07:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220929092916.23068-1-johan+linaro@kernel.org> <20220929092916.23068-7-johan+linaro@kernel.org>
In-Reply-To: <20220929092916.23068-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 29 Sep 2022 13:07:12 +0300
Message-ID: <CAA8EJppf5JkYYiCvjdZkPvKQLSP+F=fwEu93U8yD325ES8Mzcw@mail.gmail.com>
Subject: Re: [PATCH v2 06/11] phy: qcom-qmp-pcie-msm8996: clean up power-down handling
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_030725_715881_46921F02 
X-CRM114-Status: GOOD (  10.33  )
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
> This driver uses v2 registers only so drop the unnecessary
> POWER_DOWN_CONTROL override.
>
> Note that this register is already hard-coded when powering on the PHY.
>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
