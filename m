Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D528AC3DA6F
	for <linux-phy@archiver.kernel.org>; Thu, 24 Aug 2023 20:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wn60ridtVlK/B8WxrZemkYZ4y0i/GetFW4NTUkw0eio=; b=RhU4hIVsBZc5uK
	ZT5TSiJ+3178n0oBTxVaZTw5DaNsRz/1NF76p6yJGeZo3ENxZgjGj30/qxsPN6ouQHSCHuzQ+fPKk
	+FdgqvMzt2v0qFuyW4ewDH4cXEifsd2HxFcOzlxXcXJ5vt/30IN6pwwU35xF4A4kEdu8dRLiLWdba
	VaIORJa8B4aDUJIx2tlTLEM6vmLXKIoPr9kkNMEBazckqHaqPH9A6jOwGA35krC7aGHIhfReQHoLJ
	hEL1xHblFVfgA6QVBGT+raTVkXqOKO8c7bmu4SG9KJQyK0Q0GRiaXYelD9qb7jNF+nJgPvmTGJ1fb
	bmeOVqS1UgerJaxxQt0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHJw-003m1J-1U;
	Thu, 24 Aug 2023 20:52:48 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZHJu-003m00-13
	for linux-phy@lists.infradead.org;
	Thu, 24 Aug 2023 20:52:47 +0000
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d7484cfdc11so281251276.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 13:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692910362; x=1693515162;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=snNOUftMMjASJIKJGHYQ9YM1CGGiGnYpgHw5Js72Etc=;
        b=MgyZ3sQavbhgmXjrhf+agvkU+FRFhGR/uliXfSXSQvZMANFMuGYNinyrfc5NHcZg65
         GYqllsrzajsorzBoa4Ca6/q7/IjKRXlfrxo02iVd9Pqmza6uDtZA7MmAt3U3gwQtXyDd
         8Fvxuq2DWHbMLw/pA+1bXqZpbRt9W1e2PRx539sJsz5OW3WIgMTdwzW6bkMZPaw5Ocjn
         iw3XZ1kHC0cgXwznD3eQkVTSv9WiyNPpVjGX+tzrsk9NG4wfjBb9NkIO8w05SO7e6BUe
         z/TraWo1ICjnheIXGi9tWDArYzQvf1i2IL4ZR0dMfX83hFb/Db/9Sw5SPVkpHINvEsm+
         uEkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692910362; x=1693515162;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=snNOUftMMjASJIKJGHYQ9YM1CGGiGnYpgHw5Js72Etc=;
        b=Bb2CeImJQvtdez0cSbbq1Vy5ZAwqQJ9NvO2LTGoJAhdciLdxY4Tlhx2pnFD3JxWchM
         HcbkJcqA4oSqsDhL34GS4wgK4CMl0gyydz2fzSXH0YxluEuq5h5vG95IGLWDDjV0Ee0s
         whuSkTUzXbK0vIWlZV5Rv1HmkmA5BjjEYyGFtrB7vysqM0UUeI6dTMOL6p/W4aJlCfOS
         SS54c+GMtn0muD6dppHel9UBURPJHmjip8bwrl2Uug4AV70EVnFnJg7PabJJWfHzLknB
         1hvy8EfPa+7pxqxwqy67IAZ+40vLFhnV06zQksdrZMR74yp0JdxdVe0bmIwKwYAW0uzu
         bqJw==
X-Gm-Message-State: AOJu0YyfBbDHPZmWBG+tWvQ+jn5ldnfRtB7wDZXAqBekBLXxiVwvBvG8
	PWYr3XyUfWi5o38p/6dcNZm3bQABng67wMLK9o3ChQ==
X-Google-Smtp-Source: AGHT+IG3ai13t2B1YUqTR0eg6pkgvtV/2Bbqcc99zhrB8CWvX/PsyjsEDfAnFcKt0RgFkK4lpfCBd5wk4j823h0GajQ=
X-Received: by 2002:a25:8183:0:b0:d78:be:6f02 with SMTP id p3-20020a258183000000b00d7800be6f02mr3093673ybk.11.1692910362037;
 Thu, 24 Aug 2023 13:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230823171208.18382-1-athierry@redhat.com> <20230823171208.18382-3-athierry@redhat.com>
In-Reply-To: <20230823171208.18382-3-athierry@redhat.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 24 Aug 2023 23:52:30 +0300
Message-ID: <CAA8EJprM4XmMWAOsf08kuVTWUO636OM2pYVTMT_1burMCp7m0w@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-usb: split PCS_USB init table for
 sc8280xp and sa8775p
To: Adrien Thierry <athierry@redhat.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Shazad Hussain <quic_shazhuss@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_135246_397420_8D95FDA1 
X-CRM114-Status: GOOD (  10.69  )
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

On Wed, 23 Aug 2023 at 20:12, Adrien Thierry <athierry@redhat.com> wrote:
>
> For sc8280xp and sa8775p, PCS and PCS_USB initialization data is
> described in the same table, thus the pcs_usb offset is not being
> applied during initialization of PCS_USB registers. Fix this by adding
> the appropriate pcs_usb_tbl tables.
>
> Fixes: 8bd2d6e11c99 ("phy: qcom-qmp: Add SA8775P USB3 UNI phy")
> Fixes: c0c7769cdae2 ("phy: qcom-qmp: Add SC8280XP USB3 UNI phy")
> Signed-off-by: Adrien Thierry <athierry@redhat.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
