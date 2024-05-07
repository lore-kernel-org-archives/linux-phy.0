Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74FCAC10F1A
	for <linux-phy@archiver.kernel.org>; Tue,  7 May 2024 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IIOj99vjd8gMMTwyPA0GVCNL+ckL3/FqL74z8p6QLzI=; b=uy/ryAwBfyNIS0
	akzRTq9mCYs5/puL4TcQOBDTr2q0tbt1XRygbxkiz4r7GNpfWLsdnkVFoXT5pzqgYtoRhBmqfsNUH
	KcKBsWXgxRJwv451EPbO5VMco6VY51GDIpIbbgZUYIxYdz/ElnKsOWDEA8zDf5wiawqj8RfE3zAwO
	DI+mUdEGDW/TIJXVTRz7qYgvBX7rr39MPskTRAtZQCHF5/OAww81hGOiLWEdAyU0ZNbinYicOvRnf
	6LTOJTsmTTWyKXlrDX6qUUu8sN7aEs9ILx0XYeJa0KMfhKMrQKfQJkxL+QUZa9aS57TKi8ITbo506
	MN6YCr2L9o4AaXWYFe7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JQT-0000000Anr1-08y2;
	Tue, 07 May 2024 11:56:05 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4JQP-0000000Anow-3uN3
	for linux-phy@lists.infradead.org;
	Tue, 07 May 2024 11:56:03 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-de5e74939fdso2471218276.0
        for <linux-phy@lists.infradead.org>; Tue, 07 May 2024 04:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715082956; x=1715687756; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+pGkFUViosNbBwj85G0vrmVhdnEjrRiE3lfdvk1nPvw=;
        b=xE2RNB9CqaJ7l+JvUimo2Yq1CFebnEsEx6JC3ADeGD8FeXMnIQDYpfmcNHgrEiEvFL
         UAmjbmh9EcOsq8XR66UgABXbr2nFI4suK+HUK4LTJwOjstYy+PbX5pn/6CWkgafyqQWG
         9IXrfXdqcFRdaHRC/q35kJB6q7+kP5Ahzf5vFyFQKHHEvr9IgiCJGA3E+pPCjDHeJ2yK
         2byIO66By/gWiWvU2AQeuXMsSRUgfbFQXQIJSx8XoI++UYjAwWEK5bNx0PvRreLyyNc+
         rcq9/3J8+5II4WBQwffbpyTKg+LeDmZKGPXwYyVzmaK29q8NBptELeQ4ngQg64uFBhkJ
         Ni/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715082956; x=1715687756;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+pGkFUViosNbBwj85G0vrmVhdnEjrRiE3lfdvk1nPvw=;
        b=wWYwkPTXU+XlBUqxTzxiDPHgrIqdtsPHOlGPwhSHvC8kxeZVugjf5vdAO9d/aFPQ7X
         G8Bw1tP0ctwKvzooxbEO9OSgBsx3YL+LqY8XGnT9pOzf1h4LtmyMC8nR18diEsz8/OmH
         rh/OHOLWnEh2zSVzZaDUV7MuPh4VQzhsebSs55Fvg12Dj9kJ/r3rvWFtnEiu6FGE/CEV
         qNcqjQ/RXV6XdCF29wRDnYfatyMVoZGkO866bVFLgIKwF8SXXg5IWGaKsrMf5lDlkbP9
         r79JurL/IAci0DBdwKiHpp46gdZtZC/g/f5ORHhkA8thfJc3hSUp4A+lqUDZ7ewAALv+
         T1ug==
X-Forwarded-Encrypted: i=1; AJvYcCX2yY19Cl87Q3ttI++eWMw7TDjx2AxU1TMeAi02K0eF/p83ga1U40p923NLI30H4fDu8IX+0zdAy2ModQ298LwP/iVCfnOS8b5RGqHPyg==
X-Gm-Message-State: AOJu0YxLbl108PxoPi8UL+qWn7fPcNKND9eZa0VF9SR0EZrjkUlKogdl
	g9VnlQ5kpms7gKUiHzMUtnJiykX+nIasbf7+InVN8+7xUROlYF4XoDfdUOAVsKPYhPLoiDItIxp
	P9mlIkvicXl8urbAELeIFFWW2aqLBC39LQFhOkA==
X-Google-Smtp-Source: AGHT+IFjjy/JkHojT8EtUSY1sz+DG0YV+wEmy+k/TPQ1lX5kK3s31xaoFvKEbuasOExcuTi6OPxZ9GDQ6NlEAbyEDBY=
X-Received: by 2002:a25:f621:0:b0:dd1:3cc1:5352 with SMTP id
 t33-20020a25f621000000b00dd13cc15352mr11210499ybd.15.1715082956486; Tue, 07
 May 2024 04:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <20240502123312.31083-1-quic_ugoswami@quicinc.com>
 <CAA8EJppeQTadmny=hcs4xCQDXHwXEBHXjeecvZCUVcSXmwBTgg@mail.gmail.com> <90a5b641-af5b-4640-b2ad-85dbbab523bf@linaro.org>
In-Reply-To: <90a5b641-af5b-4640-b2ad-85dbbab523bf@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 7 May 2024 14:55:45 +0300
Message-ID: <CAA8EJpoWWXvJabcVqp+YSa8arQbLPC=v+XkvPZe6nwH7aaKnfQ@mail.gmail.com>
Subject: Re: [PATCH] phy: qcom-snps-femto-v2: Add load and voltage setting for
 LDO's used
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Udipto Goswami <quic_ugoswami@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_045602_004730_74380C48 
X-CRM114-Status: GOOD (  21.40  )
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

On Tue, 7 May 2024 at 14:43, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 5/2/24 15:12, Dmitry Baryshkov wrote:
> > On Thu, 2 May 2024 at 15:33, Udipto Goswami <quic_ugoswami@quicinc.com> wrote:
> >>
> >> The Femto phy depends on 0.88/ 1.8/ 3.3V regulators for its operation.
> >> If one of the regulators is not voted to the required minimum voltage
> >> for phy to operate, then High speed mode of operation will fail.
> >>
> >> On certain targets like (qcm6490_rb3gen2) where the minimum voltage
> >> of the regulator is lower than the operating voltage of the phy.
> >> If not voted properly, the phy supply would be limited to the min value
> >> of the LDO thereby rendering the phy non-operational.
> >>
> >> The current implementation of the regulators in the Femto PHY is not
> >> setting the load and voltage for each LDO. The appropriate voltages and
> >> loads required for the PHY to operate should be set.
> >
> > Please move min/max voltages to the DTS. There is no need to set them
> > from the driver.
> >
> > Also, is there any reason why you can't use `regulator-initial-mode =
> > <RPMH_REGULATOR_MODE_HPM>;` like other boards do?
>
> The point is to aggregate the values and switch to HPM if a threshold is
> crossed (or stay in LPM otherwise)

I see that other boards use regulator-initial-mode for the USB PHY
regulators. Are we going to change all of them too?
Also note, that while the combo QMP driver sets the loads, the pure
USB QMP PHY driver doesn't set the loads. This way we can end up with
the undervolted PHY.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
