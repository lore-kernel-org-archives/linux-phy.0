Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BBDC47258
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 16:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fD2KCMws4qlo4C0xwH0AcmgYBY4rMryG1feebVVSJxY=; b=WQ1YH0hszCE+4i
	lhP0zImHXdxCAUL/ZdeAsNXPPtZ8aM0v+9EZp2uET52e84tXPl1uN1LFAY+YbqhJr8NxGn1ohmhU+
	Y0GNOz+YVepVhtaJfUSmkSdUsuZaEEjom+speVqguRtxv13w/9/Ze3hkjihlv86MW2dtd5k6zhZS2
	/wuEYTPYiIDpepvdcYC/7PK1fvqa4TvsSaHhqtdG+Mhbp+C4fm3IiYz3212EWE20yTbq2+q3kKtMs
	sgxo4ux1E3IQabaeDwQ14pbkem9E7KI8MaTPWMGViBC3bfw9vRPUN4mxIMipXWRB2XPm/ZSwQ7f1C
	YVKbvEXTF5dz4vlI5eng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJrT-00HKNZ-31;
	Tue, 23 Jan 2024 16:42:55 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJrQ-00HKLu-2l
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 16:42:54 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-dafe04717baso3656665276.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 08:42:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706028170; x=1706632970; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x+SegmqWvJB84QfkO7HYF4stG1Ls5HB6F1q0TGJJxxY=;
        b=loUXpohtkoOFpApLTE03ex0zA/fv4YkxIRHYIFweveTUGdrpMCYOE2I7eotqQ7ltXr
         FOCH/lzpx5JuMyBiVyf3PToL4eX7iYXTi/SYcz8sB/EfjbbgTWzMafJa4kKyoBWKHS+O
         AHXGnIZ8VersSBQQUzME6rrQaLWgpaEksKiVftTRJ0JjPzUSak6Fr1dDlJDEUSqpQjUq
         vdssyrIsFyorlZ4z+hkp3Jr/isMMK1jDxQK2M6BXiIAJx/nbvNnkY5fk1xHB8Qk9YZH0
         Z5GQ9Pm5k5Ewuikrf1UHJW5SxkySryaYdFssRDCpl76gGLo7uqaODvbFfFlJ6ZaWB8rx
         Pa9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706028170; x=1706632970;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+SegmqWvJB84QfkO7HYF4stG1Ls5HB6F1q0TGJJxxY=;
        b=dou9FSTag/SFNCHlsoFoxm5ppCVUcpPsAk/d3hYkfDaDXUMOx9kUV0dw8TTRguREaE
         GzlegGdTgZkZnGczDw1ohbfULPV4yHkaYWY1o+yPG7bQ+iPzvtMx6JZEpu7nYM6MhL/8
         tltav9dMtbsKEZsohYH6smtUWMOt0rMDanrocdhK1Gtk23ONSOYvVl/DyAf9qM14Se8W
         IFr5G4Ya5UnGDzaPUl+vilkHWcjcc5+scRTIYsPyISHAJS9+3153yZTGHiJ4pB6+6GVH
         2oIApC4TBv2qKISie3W7x5PHYRTqnR0COqL9G4cUVE7/Fu+XuN5TmBLysCIHWROg5UY3
         ywAQ==
X-Gm-Message-State: AOJu0YxgZg1z77ldoZl5GlUAItGQI396WbbG5AffeniThzre/p5t4FS4
	50MiiRh3EPDgoC+H96y247AVp4LZr6cxopWFmUppyuyrx9x6K53awNgZa9rSLIlMBPLeILJ5oFs
	KCX9/UQWwq3CB/y+NaGNSWOUHHQsgEketE5LkZCfqx9ZsknTX4kw=
X-Google-Smtp-Source: AGHT+IEQN3J7JB7vnvZwm8y5ORGd/llGa6+d57uttEwVUWxB9BL4Gq3n6tYT2DOWB422Q+ECgHkVa0zQQ1yxbN7Aiuc=
X-Received: by 2002:a05:6902:1b87:b0:dc2:1743:be55 with SMTP id
 ei7-20020a0569021b8700b00dc21743be55mr4241873ybb.112.1706028169807; Tue, 23
 Jan 2024 08:42:49 -0800 (PST)
MIME-Version: 1.0
References: <1706026160-17520-1-git-send-email-mantas@8devices.com> <1706026160-17520-2-git-send-email-mantas@8devices.com>
In-Reply-To: <1706026160-17520-2-git-send-email-mantas@8devices.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jan 2024 18:42:38 +0200
Message-ID: <CAA8EJpqRvLE3pjkALv_hP9UJjFmEhni_vU5RDYovbpmjv-Sy-A@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: qcom-qmp-usb: fix register offsets for ipq8074/ipq6018
To: Mantas Pucka <mantas@8devices.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_084252_898184_C4A43961 
X-CRM114-Status: GOOD (  13.95  )
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

On Tue, 23 Jan 2024 at 18:09, Mantas Pucka <mantas@8devices.com> wrote:
>
> Commit 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
> introduced register offsets to the driver but for ipq8074/ipq6018 they do
> not match what was in the old style device tree. Example from old
> ipq6018.dtsi:
>
> <0x00078200 0x130>,     /* Tx */
> <0x00078400 0x200>,     /* Rx */
> <0x00078800 0x1f8>,     /* PCS */
> <0x00078600 0x044>;     /* PCS misc */
>
> which would translate to:
> {.., .pcs = 0x800, .pcs_misc = 0x600, .tx = 0x200, .rx = 0x400 }
>
> but was translated to:
> {.., .pcs = 0x600, .tx = 0x200, .rx = 0x400 }

Even worse, it was translated to { ... .pcs = 0xc00, .pcs_misc = 0xa00 ... }

With this fixed:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

>
> So split usb_offsets and fix USB initialization for IPQ8074 and IPQ6018.
> Tested only on IPQ6018
>
> Fixes: 2be22aae6b18 ("phy: qcom-qmp-usb: populate offsets configuration")
> Signed-off-by: Mantas Pucka <mantas@8devices.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
