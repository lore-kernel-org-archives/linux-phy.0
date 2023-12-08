Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3266BC4167B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 13:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFO2G7+wpQcIWby828jxS5dK71iM++uYPUog4GNhWYw=; b=RPhSUTV12JRO0D
	C4aE/1q+V52DV7JcvZH61hSYZumSzHFPRWAbFcr4GaeWpDFYQLAD6HDoaq/XAgNARLgu4zKc6vzQg
	afm6HsEmUf/VLkOOHH0bCJwVU8V/tyvXuvEVmQ81niiEzcgSM8k13Z6YYiTHWGEtZSLgLrgR9O9b8
	vPpXUQaiv+AN+Vu0NRUtzrTiXq46FdSsnDp3IoKGY0o9/ddMKN1muBIrqiY1WUMR89rUDgl4X7qSo
	BPkteceDILiPzP4G0LnGT8Djs8y2LgfM1TnvE0e8x30ZSYbvhkhwVJMEmRfgRHXaDEkgcK3jJTnV6
	erxHzIo/JoA6ByNWvHtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBabx-00FfAT-2u;
	Fri, 08 Dec 2023 13:09:45 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBabu-00FfA6-2U
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 13:09:44 +0000
Received: by mail-yb1-xb32.google.com with SMTP id 3f1490d57ef6-daf26d84100so2188824276.3
        for <linux-phy@lists.infradead.org>; Fri, 08 Dec 2023 05:09:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702040981; x=1702645781; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9LGacmcIHoUBXEI5ozVl+HOy1oDLjhGzrBNeMtvAN8A=;
        b=mNvzOJTyQLyHSyunfyVufpLZgf/5vqq+gR4UkgXfIw2iUDYhO6SvXOSuWcarqIv7jn
         v8w7gTI8/kv5JLiFTncxjcilkNSdi9l/WbdKAc429kDwuuVhpzJEAEAulX7HfPK/ju6n
         sh8hnbKkOgdZFI65Wo9VvPUMDTFP0woN+5/OFUdOVxO+9kD1PcCNWGuZInl02CZyLf4k
         jKK493ngav/UdgnP5NEKT6SbXuEMGLcYyEn4+JlhL5nZ2Vk42lQIhQCHmGDLsUADu/TN
         P+H/n/wRvSjvdktkg0lGqgr82HXcUKFtXU4y4fKT90BFy12Mo0GboEDAIfq19It7HFjG
         0jag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702040981; x=1702645781;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9LGacmcIHoUBXEI5ozVl+HOy1oDLjhGzrBNeMtvAN8A=;
        b=ReG6UBJwMSgLpJPDzc3mgh0h2u9Lb+88MChGKonjqEIeBN1pXuVE+l4d2lGg6V98LN
         5G09rkUtRCd6yXkQFn6BZF3Yi6pSoVEQJYoLQ1lRWoLYrOCC+gF/fhZ9FXpFl95FgOaW
         +3EWXo1tJXaqNZqW/Ls5muPdD0nAYgw1PoBHmKMwDd9uXSHltFu6zvtgyoYmmD0O2Jm3
         GD1K2W1kSq9hbFiL3Gv798cB8DPE0OmHt/xC4OlWQSbxLvgKHC8TUABdxu7WNnAELoA5
         X9HdoBIo5Wxl5poR87E7TMl0/uE+geVqDuKpIJLUM+RAfxU+c221jBNqj0jhRvTv1dVn
         jzrA==
X-Gm-Message-State: AOJu0YxSsk2T7xY8F5NHuw9eEs+5knanBY6KxjMzmD3SrajtkpKJGRja
	tPOfS2Hc6LEt0PkwbJilgPmncThDv6uhMdoC8JNs4g==
X-Google-Smtp-Source: AGHT+IFcz1TMb/FbYR1pHalLsvmxDPmXYW2foZedR2lu/jYaHLKXoqS0Df6ZyEAz4BqzcPrk+GlvLoXpcBivch69Ws4=
X-Received: by 2002:a25:381:0:b0:d9a:dfd2:cce3 with SMTP id
 123-20020a250381000000b00d9adfd2cce3mr3650992ybd.58.1702040980913; Fri, 08
 Dec 2023 05:09:40 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org> <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
 <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org> <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
 <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org> <CAA8EJpq7dB+45fiq2WmkMmSO7KszY0Et_t1gZ9ZvfsSxftpm8g@mail.gmail.com>
 <d885928d-035b-4abd-890b-c9626b925d76@linaro.org> <CAA8EJpr+C23evpRWMHatF6ChNvr3G-sAuXOi4e-7Tix23JV=Fg@mail.gmail.com>
 <29d7c97f-cc98-4f67-9bdc-3005796180c9@linaro.org>
In-Reply-To: <29d7c97f-cc98-4f67-9bdc-3005796180c9@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Dec 2023 15:09:29 +0200
Message-ID: <CAA8EJprU8AW3D77zv0qc-ANnjWw+c-Z9Nx2nA+ZF6bqEFh3+=A@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: qcom-edp: Add X1E80100 PHY compatibles
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_050942_864900_AD09BC52 
X-CRM114-Status: GOOD (  29.37  )
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

On Fri, 8 Dec 2023 at 14:47, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/12/2023 13:35, Dmitry Baryshkov wrote:
> >>>>> Same applies to the displayport-controller. It can either drive the DP
> >>>>> or eDP output, hardware-wise it is the same.
> >>>>
> >>>> Therefore what I proposed was correct - the block which uses the phy
> >>>> configures its mode. Because this part:
> >>>>   "this phy is of this type on this board".
> >>>> is not true. The phy is both types.
> >>>
> >>> But hopefully you don't mean using #phy-cells here. There are no
> >>> sub-PHYs or anything like that.
> >>
> >> I am exactly talking about phy-cells. Look at first example from Abel's
> >> code.
> >
> > I always had an impression that #foo-cells means that there are
> > different units within the major handler. I.e. #clock-cells mean that
> > there are several different clocks, #reset-cells mean that there are
> > several resets, etc.
> > Ok, maybe this is not a perfect description. We need cells to identify
> > a particular instance within the major block. Maybe that sounds more
> > correct.
>
> No, the cells have also meaning of additional arguments. See usage of
> phy-type (not the one here, but the correct one) and PWMs.

phy-type being used for the 7nm DSI PHY, where it specify exactly the
same thing: whether the connected device uses D-PHY or C-PHY modes of
the PHY.
cdns,phy-type - selecs between PCIe, DP, USB3 or other modes of the PHY
ti/emif.txt: phy-type specifies which PHY is attached / used in the controller
xlnx,phy-type: deprecated in favour of phy-mode, selects MII mode for the PHY
marvell,xenon-phy-type: I _think_ this specifies the actual PHY
attached to the controller in hardware.

> > For the USB+DP PHY we use #phy-cells to select between USB3 and DP
> > PHYs. But for these PHYs we do not have sub-devices, sub-blocks, etc.
> > There is a single PHY which works in either of the modes.
>
> Is it different than case here?

Hmm, I was not clear enough.

USB+DP = two different PHYs in the same hardware block.
DP-eDP = single PHY, working in one of the modes.

>
> >
> > Last, but not least, using #phy-cells in this way would create
> > asymmetry with all the other PHYs (and especially other QMP PHYs)
> > present on these platforms.
>
> OK. Is phy-type not something different?

No. It doesn't redefine what we already have for other QMP PHYs, it
defines new property.

>
> >
> > If you feel that phy-type is not an appropriate solution, I'd vote for
> > not having the type in DT at all, letting the DP controller determine
> > the proper mode on its own.
>
> Can we do it? That's BTW the best option.

That's a good question. We have separate -dp and -edp compatibles for
the DP controller, but I think those also should go, at least for
newer platforms. And the reason is the same, there is a single
hardware block, just two modes of operation. See mdss_dp3 in the
X13s's DT file.

I had a thought of using aux-bus presence to determine whether the
controller is working in the DP or eDP modes. But this might need
additional care for older DT files.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
