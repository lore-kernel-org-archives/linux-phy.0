Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA95CC83F2F
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 06:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7GXjex5KcKCo469vVH31RUa6pETMiCNj5PDfA/7Ikw=; b=Z//tYcF+6Dp767
	xa/1Wa9OXp9j8isvs1FkeMfGed9VZniLL7bbiOn9hCchUI6f3FPwZmkZPdvltX/4scXhHifxW064B
	Okmg5NEdhJP/6rLaapmTaIietUn36b59lKHkzl2QYaBw2kZOwhx/pTLdJjgkZaDWaUqYecBg+Gx1f
	GnEcXx+Kv8L5fLZgsGm3VyWe+KtwAELsnOJ7KzWqGCZH7aGYpodOIMsYqetJVa6BhfTy+oDZPUsPO
	kHQSKcDc6HI3XPLDatQS+AklCJ0lnKZwQHXVPS8aDqAQCu3ojHZIZD+szw2187DuahrUY04cbdHA+
	WQ9jdkhhZ9Vm4iaa/RJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbarp-00Ejbd-1y;
	Thu, 31 Aug 2023 06:09:21 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbarm-00Ejap-1C
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 06:09:19 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d7bb34576b9so251037276.3
        for <linux-phy@lists.infradead.org>; Wed, 30 Aug 2023 23:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693462155; x=1694066955; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E2DoMZ95jX+7wuzxk8MbNgguoc+FvSC+cq1FLxzCeJs=;
        b=BAPK6U0Na6wj1Q08yq5C+4BbssZmPghsVNOqNIETPnWOi95OkXf6jiihTo2KhMgnnc
         vTB55VbKek9G9YVVYvyjxfagXuPeK9MkaboFyobt5229W8wpzB2qz4u7vWliK3v41IR5
         /Z2QWNBEuphZHaMzUjXwWOId+HlzQMjeww5OZIzsDuuMha23uS17bzy6WxbZgey4dVKv
         b0Ze3q4LXTb40wVeaPaKhaYl+G2wn8pdXqIDaBr28XRJlJ0MV/dg9Pd4pzwsnrGj6Aag
         vSIUV3bxFhjufIib6ZuyKd6CQlVNUMyGK9NrU/YTWa8ymTXrF848WNqeArBrnL9xTq0/
         izzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693462155; x=1694066955;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E2DoMZ95jX+7wuzxk8MbNgguoc+FvSC+cq1FLxzCeJs=;
        b=MfgpWeXq1BBBaQQm9+RxUBJcw1nJU0LIkFRH7hBrlVYuQEuOaUg5w7xjfDCkB7TQaG
         8zhuZm/+2ze1lYH+1/CupFsKhT/WK8UQo68wmJBVljbmrqjVIvoa4XM/vzIyfDrW+F6f
         WiyFVrGY67poMkKTgGj+3th66QnnH2EvGChAqitHsWrcDMGy+DehmvLTKmWVXDv5Ed9H
         NA9zABW1nwmYVKT25p2lKt2UsU9gK6LXqxOGmkU8aj3QEfeXzP061If3I8rxH7WUzYXE
         gapyuC7uduVaq7wXibbpZvFjjvZmGLsPRmdVERjJmDCquSLpi7Qd8lEvyPZekVjrPyEj
         kEcw==
X-Gm-Message-State: AOJu0YwbvyK2by3RqzudmA6sJUzGiTi5JJoF6fsp/LEHh3dEYp2hJbch
	caAz37nLxKe4DBbBG3sfjz0r1VRHFLylB+HVqj3/OA==
X-Google-Smtp-Source: AGHT+IEuWMji+FhSDPy8F+AsT4+lUhey0SmJPV6Oswthd7RlIIMoF1+2/PDJhmzGazPZy/T7YL2GtTm6CgPZ/rjpQ5s=
X-Received: by 2002:a25:b0a1:0:b0:d05:fa02:5bf5 with SMTP id
 f33-20020a25b0a1000000b00d05fa025bf5mr4284152ybj.48.1693462155113; Wed, 30
 Aug 2023 23:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1693459976.git.quic_varada@quicinc.com> <7c14a3e29ee274f334444f809fa820e725e255dd.1693459976.git.quic_varada@quicinc.com>
In-Reply-To: <7c14a3e29ee274f334444f809fa820e725e255dd.1693459976.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 31 Aug 2023 09:09:04 +0300
Message-ID: <CAA8EJpoRJLGE7g-Ur4e-gx6kD7jX-GpO3u=tZbGx0FP6ViqYEQ@mail.gmail.com>
Subject: Re: [PATCH v11 3/4] arm64: dts: qcom: ipq5332: Enable USB
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	arnd@arndb.de, geert+renesas@glider.be, nfraprado@collabora.com, 
	rafal@milecki.pl, peng.fan@nxp.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_230918_439129_D03BE715 
X-CRM114-Status: UNSURE (   8.36  )
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

On Thu, 31 Aug 2023 at 08:39, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Enable USB2 in host mode.
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v11:
>         Sort nodes in alphanumeric order
> v10:
>         regulator_s0500 -> regulator-s0500
>         "make W=1 ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v9:
>         regulator_fixed_5p0: s0500 -> regulator_fixed_5p0: regulator_s0500
>         "make ARCH=arm64 -j 16 CHECK_DTBS=y DT_SCHEMA_FILES=qcom,ipq5332-usb-hsphy.yaml dtbs_check" passed
> v6:
>         Add vdd-supply and corresponding regulator
> v1:
>         Enable usb-phy node
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp468.dts | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

--
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
