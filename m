Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 125FAC3DA6E
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jan 2024 03:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfN/B9RcyY0DzvxbjSQkxTw8dkRveDLJpLM4qXFtyDo=; b=O4rlhojwCdxKv1
	Mq+KFcppUngSvM+XJ6SJkZWLVwpLvCuQEHV/8UGGtE5yxgXHEJ+Wcn7kuSLJCaIxx+LmzVKmoScUH
	J8vbwOpjmcX049qIZATzvQ6Q+wcD7qY7/l5puLypQpxzplE7HdcMO4oWFAAo0acrYMRJ40OQhWGX9
	hdsmfm/gHkH89PQbb0hKmuQGRH1Qek3wUQnlzNuQoGriLMzpaq+rFzgLyseL2ccB6RrGdnyalaTtd
	FDSswhWRZEfL+Ghmx+uQH7PPteFTPQsrtjjeGewJxdJImYlC+5VJTkjvNYpY7clXt92phR/CgaUGq
	OZry4CXqAv8IwuiRVekA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2Rx-006lCF-2V;
	Tue, 09 Jan 2024 03:06:45 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN2Rv-006lBR-1G
	for linux-phy@lists.infradead.org;
	Tue, 09 Jan 2024 03:06:44 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5f8cf76ef5bso11215967b3.0
        for <linux-phy@lists.infradead.org>; Mon, 08 Jan 2024 19:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704769601; x=1705374401; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=26JP9y1F4cMVTf91bkP52Z8nKjtVJapFjy43p2aiDF0=;
        b=WEmSKkrAv5i+2aAwrdwofYE8kT2jXp68eBtEavVtldxmuVh0SYWtKQNBYKY5YYNq96
         B2aOFrbh0U2T02NfePgs1hmt5QABR4a3Qz+fbTJm/wS28bnP2hVfjf0bnFaTGTdawcUu
         Z8TfY7Y4Cyuk1sR3yFH4JqA+v4aT686Yun+6bgtgMvlL7iMR3tXHYgk9/Ogpi3Pj7/wV
         3LOlcpSC46upxH3xd6zD4sBzddol8d9Y1zhQiIRAGFX70w0Z/k9MomMNI0XvubsmTXcd
         jbiEqh32kS/0825uwcnx27aXHLWG3Y/b4polOFeW371ibusq8iu9F8YS8UAcw2R2cR/i
         O7AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704769601; x=1705374401;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=26JP9y1F4cMVTf91bkP52Z8nKjtVJapFjy43p2aiDF0=;
        b=HaxzQFl7iflZIGCAGIjjVkFoTvgvKrgKjpS0D+m8wR6VTb+3Gj4aOzaw8gKotyLe8w
         LVltrs+p3M5lY6twa4Lm44PmrrYneEybpOeyJXERdhn8bfnOprYDu1sDpedI2fGQ1s6J
         R4WMLabamdCcmC1kXh/rfrZMis8AmXLIrqQ+3Yt9tCHeDuFCG2ZFg9v3k2g0n1y2S7zf
         cuphmu5XpQKBrNiFzU+35dwO9OhiZbnkP756X1+5Lr8xLFOEXiAg+SeaD0UhzVjyoDNm
         6hDV/TIIQW7JZCgZajt38ZvDx9BhWgELSXTNRvv8Dg62Uww7p1HMlvL0cybCFEFKeZXy
         5dBQ==
X-Gm-Message-State: AOJu0Yxa39v/rzcngMf8tDRhS2Q1+0edzpoaFzsvuSFVOqG3KprrI1Y4
	r0odbl90QAtDjdnfVLWtXls7Vj6i7Dn9vOyx2WIHIwoYdl7ogg==
X-Google-Smtp-Source: AGHT+IHS+E1oSB20aZLFgtENwyGxUcHbyRkiNyRCDWyRdZW5jlDKLhXMRV8NPOJypNxa26Fdje8wLmkpx1h0Bk/d6CA=
X-Received: by 2002:a0d:d7d1:0:b0:5ee:1ca0:b7ef with SMTP id
 z200-20020a0dd7d1000000b005ee1ca0b7efmr2614627ywd.42.1704769601306; Mon, 08
 Jan 2024 19:06:41 -0800 (PST)
MIME-Version: 1.0
References: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
In-Reply-To: <20240109-phy-qmp-merge-common-v1-0-572899a14318@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 9 Jan 2024 05:06:30 +0200
Message-ID: <CAA8EJppOtG2xBY+t0G_WrXDZs8DfN1dEdWjnqGOtzRYJ2ysezw@mail.gmail.com>
Subject: Re: [PATCH 0/8] phy: qcom: merge common register defines in QMP drivers
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_190643_430013_629D41C6 
X-CRM114-Status: GOOD (  12.02  )
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

On Tue, 9 Jan 2024 at 05:04, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> After the split of the gigantic QMP PHY driver, individual drivers
> contained common regster bits definitions. Move them to the global
> header. While we are at it, also remove register definitions from the
> phy-qcom-sgmi-eth driver, which is yet another QMP driver with its own
> embedde register defines.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
> Dmitry Baryshkov (8):
>       phy: qcom: qmp-usb-legacy: drop single-lane support
>       phy: qcom: qmp-usb-legacy: drop qmp_usb_legacy_iomap
>       phy: qcom: qmp: move common functions to common header
>       phy: qcom: qmp: split DP PHY registers to separate headers
>       phy: qcom: qmp: move common bits definitions to common header
>       fixup! phy: qcom: qmp: move common functions to common header

I haven't noticed the non-squashed fixup. I'll squash it for v2.

>       phy: qcom: sgmii-eth: use existing register definitions
>       phy: qcom: sgmii-eth: move PCS registers to separate header
>
>  drivers/phy/qualcomm/phy-qcom-edp.c              |   3 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 127 ++-----
>  drivers/phy/qualcomm/phy-qcom-qmp-common.h       |  59 +++
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-com-v3.h    |  18 +
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v3.h    |  21 ++
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v4.h    |  19 +
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v5.h    |  13 +
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v6.h    |  13 +
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h       |  62 ++++
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c |  70 +---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         |  90 +----
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h    |  20 +
>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          |  72 +---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c   |  76 +---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 101 +-----
>  drivers/phy/qualcomm/phy-qcom-qmp.h              | 111 ++----
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c        | 441 ++++++++++-------------
>  17 files changed, 516 insertions(+), 800 deletions(-)
> ---
> base-commit: 39676dfe52331dba909c617f213fdb21015c8d10
> change-id: 20240108-phy-qmp-merge-common-d681dd1d1995
>
> Best regards,
> --
> Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
