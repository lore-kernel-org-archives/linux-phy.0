Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A9A6C4167B
	for <linux-phy@archiver.kernel.org>; Fri,  8 Dec 2023 12:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td1wuG7rLkkdqkSLR1a63njRGb5mhSuu40aNCvI720k=; b=tzwOXKz99uiFfQ
	oS+SzakXuTDNr2oDSWwPCjSWRYdzSUqtznqJCMwkgxMjd2rZa16T46/2nhdjau+K+zREW160CZ881
	UBbZ682PiiB9ozsgeZTvB8n8LUE7imL30guq2QyC3ePdQ8GOm6pwThAevFOu+l7/PSks085cqHt2o
	T/I+TZh+D5IrwHSBD6OkVh+QwfkcU3phi6ywagjEuwjlvNrE+DCdts1HgQ7KvW/RnGObjPv1Xtm2Z
	jZhW7w0DcHljf2aANaXZKmfhiR7n1e4laEbN/0VfOCjj6LpuKB2+ASDFBfodnv3X+fO7QHGxq5aoV
	jvi4AqCmMZPUxRVQjUYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBa53-00Fbzp-2p;
	Fri, 08 Dec 2023 12:35:45 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBa50-00FbzL-19
	for linux-phy@lists.infradead.org;
	Fri, 08 Dec 2023 12:35:44 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5d7a47d06eeso19552037b3.1
        for <linux-phy@lists.infradead.org>; Fri, 08 Dec 2023 04:35:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702038941; x=1702643741; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GF4BPHYAiYD5N4yRheSGUKFfKbUOf7tXCDFHJS8cLkA=;
        b=GPd97CyP2r3ai1kAtowZpQ6xzuHF2DnoaIgHC/OvEY4viAxMztb7spjibcRm+3ZXQI
         4GReK3hhDPzMqszJgAesxbHrlPSITa6JCkapPHcG0QzpbizRA4v4t89OUInLo2x1+VMr
         hI4ynMCdV70KM5JKA1ZASOUpbxN5zgRIM/SD4xFJ9RA//mnGw86IyM7KcIQlvKVY0Rjq
         Dbq3FEMmRV1fuyim3rPlk8YY0GxU73jPt/XZsaIQu8z1GOk37cbdPe6pD/E9nCPSLjF2
         Uy6b1IdQy9sQrUeDMVZi4hspHrjiwu5V4FWv01lbnV7dn/clTS1TlamsKXgoXvZs4J7W
         V9bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702038941; x=1702643741;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GF4BPHYAiYD5N4yRheSGUKFfKbUOf7tXCDFHJS8cLkA=;
        b=lbD5TWzK1sLhTwf1snlQsN+xtGA2lzrsFmU8cA82b2QK+ZIW8od7Bv7lc7x/IlCehj
         8Ik9CXzDuJ31hLkQRDdgygEO9XLwRIQng74+ZxWS+fa0lbEj1xdH2RZB/iHx0uGxjhlD
         SILg0uVKqBtiHSTpokhGit6mdfMZbVqWXlZtS/kQKwffEXN/DX7PRQi5VBaR6izD+Wls
         p5rz8Zr23cSB7zFfLQ6/IDmK+GKktTaM56wOgEwTtTkJE8rkChu1ULRTYWBr3uHeCnqJ
         W4aOpwpTP8ixCvNI/0ffm28UWVJC7VJ6iH5Z9PG67h7d4YWNxamwEkbZFLhZibcgBI8b
         PKCQ==
X-Gm-Message-State: AOJu0YxMhWo+CtNLHtWDoDu3/1nhrxMq6vN6E03n/Grr1/r1U+r4EJcv
	+Hpnqu8P0pBk6zmuO51KwoHUu++F59NU6SYrTDRtOw==
X-Google-Smtp-Source: AGHT+IHjiAfVpGoEX5W6+Qp5O0zy6x7IcQev0y6h80bzgke0FujuZlCuGUYIR8OIaRDTiVrsTrVnDcbA7RwRrpbFc7Q=
X-Received: by 2002:a05:690c:368a:b0:5d8:67b8:6d13 with SMTP id
 fu10-20020a05690c368a00b005d867b86d13mr4004640ywb.76.1702038940776; Fri, 08
 Dec 2023 04:35:40 -0800 (PST)
MIME-Version: 1.0
References: <20231122-phy-qualcomm-edp-x1e80100-v3-0-576fc4e9559d@linaro.org>
 <20231122-phy-qualcomm-edp-x1e80100-v3-2-576fc4e9559d@linaro.org>
 <b6d3928c-75ba-47a3-93fc-a60729be2e35@linaro.org> <545d3ace-66e5-4470-b3a4-cbdac5ae473d@linaro.org>
 <ab7223a2-9f3f-4c9c-ab97-31512e7a0123@linaro.org> <CAA8EJpoboN85bLiayXJgn5iwh+Gn0OtK0aZ26ZJu9H3xkTT2Tw@mail.gmail.com>
 <d9d27fa4-6ede-4958-b717-db425be61068@linaro.org> <CAA8EJpq7dB+45fiq2WmkMmSO7KszY0Et_t1gZ9ZvfsSxftpm8g@mail.gmail.com>
 <d885928d-035b-4abd-890b-c9626b925d76@linaro.org>
In-Reply-To: <d885928d-035b-4abd-890b-c9626b925d76@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 8 Dec 2023 14:35:29 +0200
Message-ID: <CAA8EJpr+C23evpRWMHatF6ChNvr3G-sAuXOi4e-7Tix23JV=Fg@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20231208_043542_762214_8F8620F5 
X-CRM114-Status: GOOD (  24.59  )
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

On Fri, 8 Dec 2023 at 14:21, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 08/12/2023 13:17, Dmitry Baryshkov wrote:
> >>>>>> Anyway, I was thinking this should be rather argument to phy-cells.
> >>>>> I'm not sure I'm for this, because the results would be:
> >>>>>
> >>>>> --- device.dts ---
> >>>>> &dp_controller0 {
> >>>>>      phys = <&dp_phy0 PHY_EDP>;
> >>>>> };
> >>>>>
> >>>>> &dp_controller1 {
> >>>>>      phys = <&dp_phy1 PHY_DP>;
> >>>>> };
> >>>>> ------------------
> >>>>>
> >>>>> as opposed to:
> >>>>>
> >>>>> --- device.dts ---
> >>>>> &dp_phy0 {
> >>>>>      phy-type <PHY_EDP>;
> >>>>> };
> >>>>>
> >>>>> &dp_phy1 {
> >>>>>      phy-type = <PHY_DP>;
> >>>>> };
> >>>>> ------------------
> >>>>
> >>>> Which is exactly what I proposed/wanted to see.
> >>>>
> >>>>>
> >>>>> i.e., we would be saying "this board is connected to this phy
> >>>>> instead" vs "this phy is of this type on this board".
> >>>>>
> >>>>> While none of them really fit the "same hw, different config"
> >>>>> situation, I'd vote for the latter one being closer to the
> >>>>> truth
> >>>>
> >>>> Then maybe I miss the bigger picture, but commit msg clearly says:
> >>>> "multiple PHYs that can work in both eDP or DP mode"
> >>>>
> >>>> If this is not the case, describe the hardware correctly in the commit
> >>>> msg, so people will not ask stupid questions...
> >>>
> >>> There are multiple PHYs (each of them at its own address space). Each
> >>> of the PHYs in question can be used either for the DisplayPort output
> >>> (directly or through the USB-C) or to drive the eDP panel.
> >>>
> >>> Same applies to the displayport-controller. It can either drive the DP
> >>> or eDP output, hardware-wise it is the same.
> >>
> >> Therefore what I proposed was correct - the block which uses the phy
> >> configures its mode. Because this part:
> >>   "this phy is of this type on this board".
> >> is not true. The phy is both types.
> >
> > But hopefully you don't mean using #phy-cells here. There are no
> > sub-PHYs or anything like that.
>
> I am exactly talking about phy-cells. Look at first example from Abel's
> code.

I always had an impression that #foo-cells means that there are
different units within the major handler. I.e. #clock-cells mean that
there are several different clocks, #reset-cells mean that there are
several resets, etc.
Ok, maybe this is not a perfect description. We need cells to identify
a particular instance within the major block. Maybe that sounds more
correct.

For the USB+DP PHY we use #phy-cells to select between USB3 and DP
PHYs. But for these PHYs we do not have sub-devices, sub-blocks, etc.
There is a single PHY which works in either of the modes.

Last, but not least, using #phy-cells in this way would create
asymmetry with all the other PHYs (and especially other QMP PHYs)
present on these platforms.

If you feel that phy-type is not an appropriate solution, I'd vote for
not having the type in DT at all, letting the DP controller determine
the proper mode on its own.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
