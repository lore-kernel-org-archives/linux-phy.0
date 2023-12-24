Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4ED4C46CD2
	for <linux-phy@archiver.kernel.org>; Sun, 24 Dec 2023 06:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VB/cmhSdMSXABI6l++qCYJJ0nIIpBROw+TrWS2JokG0=; b=nFa3CrtJEgdQm2
	bM3gOhEIdL7lMnJY93HLnKQtQ1+If13at8P+htRe9ERvBZRuP5NYVxgaRa7qRsL1ds/ZF+HO2kvGy
	QDtHehjjFKA2swwei6c3KAFUAUYjA2VcjgyUqYvjDs563T8TFPk76Tm/8Xxd8lgMODLK5soklSp+k
	zy0nfTW6UH3dKLK8n5A1DXWKwh9iQLxEMRoj1PVAoCTNnzBXsdkRy//9YK22t7VMFgD38KhMOq7DK
	fOY3CU8pd8ZKK7qPOmNCE+/BRSMbdVnetO4zO9UXZXugEVQ/+D/BgmGYezvb1+I1R3P5VpA2L+l/F
	tQRkV3OXolI+XtXA9AIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHHtG-008xSs-1R;
	Sun, 24 Dec 2023 06:23:10 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHHtE-008xSU-10
	for linux-phy@lists.infradead.org;
	Sun, 24 Dec 2023 06:23:09 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-5e6c8b70766so26317147b3.3
        for <linux-phy@lists.infradead.org>; Sat, 23 Dec 2023 22:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703398984; x=1704003784; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uzEslKtk67JLuRJ0T5eEkiarqj7aZaFBzQA/v07nMCM=;
        b=ecG8ZCTXXy+bhjV6nMcQTa/vPNm0XDK/GvOefk4EVnMI12AotBlyDgtoE0hsnK7Sfn
         wHxTuTsxypkBDD9WdEck3xm0AV+8hNI3sEIDbrrsCY0EN3CJEqMe/DaNUUUuROkqFO4Y
         YYms8gIaxK6WnYk7qH2VvuWkPOfsfBn7Rrjbk/Tpf9LdTBO9bOib7CO7gmcjnHAJ2hvQ
         tz2icIIyIKv5d+rcLul54RB3ZdTFrtX6Gix+5H7cUT9Vm5meUvbQiamGvkCSoC2QOxZ4
         NJm14gA+ZVVi08FW8r7cDHVq7saoz84z5Hjguq5xO5fXi3eBTiFrGYxTC7eKrVL0lXEj
         DfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703398984; x=1704003784;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uzEslKtk67JLuRJ0T5eEkiarqj7aZaFBzQA/v07nMCM=;
        b=kN/+b/i7iiYlZkIKDr0IWTp8qkkryG2rovOXyEObBMMA+F/nrfZ7BXO4CVJIFHKCN9
         Zj59oplQNVKm8A7NWJ+2yJT6xgWYzYl87WY/JLgQM9me4W8QTgsNVxLxOMmqbOUZB1ll
         R6yb/SJdtNY7J9PFgM3f89fUC1PyAfRjZYo+6Z48Wwos4QirjRXBAcdjGyUsQWSNEwn9
         QdFRsVXl5j8hVTrvYGl5Ct0jsK5Ms5RT9XzWktS2S6djbHB5AWS5y9ZGmo7/lg/mk3QB
         idyOzaj1oo5dEpVyd0esJKoHoQUIokX1GrYhIoHnhU2G7QNTQLF/BHbvBPzvdk2ltIhw
         dZ3A==
X-Gm-Message-State: AOJu0YwOFIJNWwLLtyUUkoMe/DRSUYBUg1C6zcvO383bj8xUewAxrl4N
	dNVq7NG9vN6Kr5YSUDO+kC5IMWHLypDgr6UGY9DUc8qOHmt6Kg==
X-Google-Smtp-Source: AGHT+IF0zC4Gb4jWv5/ciMlayuYg3GXPYLIF2K58bCCtZziIJhml00lCFYMRxCeEtzCaiTnFzUK8fcVQ2q+0FM+NAKA=
X-Received: by 2002:a81:a152:0:b0:5e6:8fd8:2742 with SMTP id
 y79-20020a81a152000000b005e68fd82742mr2130461ywg.82.1703398984475; Sat, 23
 Dec 2023 22:23:04 -0800 (PST)
MIME-Version: 1.0
References: <20231223-x1e80100-phy-pcie-v2-0-223c0556908a@linaro.org>
 <20231223-x1e80100-phy-pcie-v2-2-223c0556908a@linaro.org> <CAA8EJpo774xzmpb2+72sJ80kmcCqJK-gDfkaLERGgmPeSZV3PQ@mail.gmail.com>
In-Reply-To: <CAA8EJpo774xzmpb2+72sJ80kmcCqJK-gDfkaLERGgmPeSZV3PQ@mail.gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 24 Dec 2023 08:22:52 +0200
Message-ID: <CAA8EJprYvF08D_82QZ+nEhBVq74B2uS0UKic0Qj3kwHdHqm0XA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] phy: qcom: qmp-pcie: Add QMP v6 registers layout
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_222308_379345_9C13B2B5 
X-CRM114-Status: GOOD (  15.84  )
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

On Sun, 24 Dec 2023 at 08:16, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > For consistency, add the QMP v6 registers layout even though
> > they are the same as v5. Also switch all QMP v6 PHYs to use this
> > new layout.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
>
> On Thu, 21 Dec 2023 at 05:51, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> >
> > The SA8295P and SA8540P uses an external regulator (max20411), and
> > gfx.lvl is not provided by rpmh. Drop the power-domains property of the
> > gpucc node to reflect this.
> >
> > Fixes: eec51ab2fd6f ("arm64: dts: qcom: sc8280xp: Add GPU related nodes")
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8540p.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)

To resolve possible questions, the lines above got c&p-ed from another
email. The R-B tag is applicable to the patch in question (v6 regs
layout).

>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

On Sun, 24 Dec 2023 at 08:16, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sat, 23 Dec 2023 at 13:55, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > For consistency, add the QMP v6 registers layout even though
> > they are the same as v5. Also switch all QMP v6 PHYs to use this
> > new layout.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
>
> On Thu, 21 Dec 2023 at 05:51, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
> >
> > The SA8295P and SA8540P uses an external regulator (max20411), and
> > gfx.lvl is not provided by rpmh. Drop the power-domains property of the
> > gpucc node to reflect this.
> >
> > Fixes: eec51ab2fd6f ("arm64: dts: qcom: sc8280xp: Add GPU related nodes")
> > Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sa8540p.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> --
> With best wishes
> Dmitry



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
