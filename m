Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B1E5C47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 08:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=np5gNlhCThstqRQemPg2nifcc1o6dNJSAvqJiPXf2Jw=; b=sEBETQ+M9Dotmt
	VuE5BvtrKthSMvBuuoPK3RSCdZ17xE/JwtztOjP7+anSB9uxA5/UuTQtQSIquewlrfNPRlc1rNd7c
	sL1Y80VPyVvv67g6ZWsgIcojUV6/rP4NzxRzQAuhDR57dAPdjF7+GS3QxaYGJveJ6WcwYHlS6Tyq9
	XBj5bSgTwLSyQqpXRi47/Tto9u+rIi2k7Vx3GLbSseUxfrDQCoEsjk2MBk7G5S4dxS4om9bz5cTzf
	Z8+nNpA4j6O8yClwifUPkKbTovQYVDWxjdO7glNZG1o+afeTJBHWgTxVFmSphzOTgfZw07+mPoHnd
	07rUJoLx4QMzYJ8zEGjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTHxb-00000003VRK-34dB;
	Fri, 26 Jan 2024 08:53:15 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTHxW-00000003VNd-2WwY
	for linux-phy@lists.infradead.org;
	Fri, 26 Jan 2024 08:53:14 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-602ab446cd8so1525517b3.1
        for <linux-phy@lists.infradead.org>; Fri, 26 Jan 2024 00:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706259187; x=1706863987; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uBG7JpOBgb/l7SFLPK3edINhuCMiTrRBotlDi9jgRxI=;
        b=UGxur6mg7+CfMO23v1MUMv0xQegQ0+J5lrloeJem5IBzY8dBZXb2S1mahqp/XQu8Fa
         vaUu9gzFJRn05uNj274J+GbESfBXcFjBHtO4st+O5WEnf9QGgA9FIsK80Vlo8NXIyLDZ
         zD+vYK6J1Q6WmkXkXMbRv28810zjQA2zhmslEAhd/SQDRZwqRULrbyvyMZ72IjgDjg8d
         eH+VMauZQy9T8jQ3rjOy5aqpajej+9bna62MhEViII07iUPqeQApAkDii1y161/Ipj7s
         s4s6E41giPZBKJmXM/Ee6aXfvlZM1kIqfFSMi9q+DM4cRLE/bsNfUlsQ1Fx1bmByrbWx
         7Eaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706259187; x=1706863987;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uBG7JpOBgb/l7SFLPK3edINhuCMiTrRBotlDi9jgRxI=;
        b=E7XxTslaCn6DLF/h+52LF4MiMhEEI4Km0hcvvYS/cEZ7HMJ47o7gw8C3449HP3UTGq
         LX+lof7d9Ytuo6yeNTBJEgVx6YG+Im/82WfDHFKt3SFOAcFagUkDh65tLT+luujEfc9f
         tpp63oq6ZpqbwF9J8d8uHZl/QqB9XGNwGTZjWpl5QvyWpmM7zvoUaWIDjujD1eG4Nj40
         v2C9s9O+EP198jlrSvsAxvvYtVXj7zgRVztxqUneUA3POYK39ukiCVwyZII2E9Pw3pu5
         vD3FLKN/j07WwAXaZn02MbHKa7l059LCSw8uYRDvNdjRmpYWfm4kXYT5105JnmRhtiW7
         DBkQ==
X-Gm-Message-State: AOJu0YzyW3IMV5KbkBmmEQP2No8UkBwh2PNBTW2EfnIQtiFVqDgly8y+
	eqtGk3++0q4klejXyrZC+HvmPLoqU0ou9byyZatD+aFuu8K1rDyf7osQFKeQgvmY95pUIpHiGox
	zpNBLEwDWQVnL7VLC9xwl246EtGuxS1sWfwUQnA==
X-Google-Smtp-Source: AGHT+IGtJMR2wWXvWmk7JYRIuQnD7tvw0DN59oPKaclKbP6MX1a37Czd6V+zglEmXe7/2wP7eiF60wx5LotcVxO9+A8=
X-Received: by 2002:a81:7e41:0:b0:602:9dd4:d717 with SMTP id
 p1-20020a817e41000000b006029dd4d717mr869310ywn.49.1706259186796; Fri, 26 Jan
 2024 00:53:06 -0800 (PST)
MIME-Version: 1.0
References: <20240126-phy-qmp-merge-common-v2-0-a463d0b57836@linaro.org> <20240126-phy-qmp-merge-common-v2-8-a463d0b57836@linaro.org>
In-Reply-To: <20240126-phy-qmp-merge-common-v2-8-a463d0b57836@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 26 Jan 2024 10:52:56 +0200
Message-ID: <CAA8EJpo9aPZbujxJfn=TTGHzXS-DUtMOkf2OfZkAPGc4G=z41Q@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] phy: qcom: sgmii-eth: move PCS registers to
 separate header
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_005312_597283_7F2141CA 
X-CRM114-Status: UNSURE (   8.34  )
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

On Fri, 26 Jan 2024 at 01:23, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> Follow the example of the rest of the QMP PHY drivers and move SGMII PCS
> registers to a separate header file.
>
> Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcs-sgmii.h | 20 +++++++++
>  drivers/phy/qualcomm/phy-qcom-sgmii-eth.c     | 64 +++++++++++----------------
>  2 files changed, 47 insertions(+), 37 deletions(-)
>

Carrying this from v1:

Tested-by: Andrew Halaney <ahalaney@redhat.com> # sa8775p-ride



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
