Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E1CAC83F01
	for <linux-phy@archiver.kernel.org>; Thu, 31 Aug 2023 12:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEe5VdySmYiNqYKGy0SjlVcAPKgHya53GWiBGWlnmfY=; b=YGopVFJDM/O1aE
	xRPJWzMYhyyAtyM4jXd92hCkZlivX4YjXC8iOZ5pOQhS1shokRmlsl1d5bfHcvC8fHv5XJtlcyrQe
	lesx18jG8CZb2MhtjWzmHNGpPZ5Fl9jzF61Fk2XVWMSut+Yg1eKGn9il5umOf3TKo243f7S4efnwD
	qniyvGMeq3JC8RJpk8XSQgbAmX4nTmTJJF3fChIlMA2Wa73UNPiwiOIxU8/D9iZjlDJgCrV3phnw9
	2lpoI+uxB0YNad9+AMpVaCR8HyLzrlOav3MrQybyvitkVfJgyg3IFC2WpGCPySU5vXN190mwntsho
	nnGVOSR9ZeFwMmBTcSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgcH-00FGca-0p;
	Thu, 31 Aug 2023 12:17:41 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbgcD-00FGbZ-2L
	for linux-phy@lists.infradead.org;
	Thu, 31 Aug 2023 12:17:39 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-d795e9a0816so504287276.3
        for <linux-phy@lists.infradead.org>; Thu, 31 Aug 2023 05:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693484256; x=1694089056; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=syEaiGRaVm11lR8QqvtDQo4Ok8f3C/t2r9+YRLItERc=;
        b=OqAN3z2p+fbdPWGLnlwxMTZnDEAO6/H4PiNNyILW4E/8HYfww3AVNczSrcfiQmPtZx
         jTLc9+CCGmE8Zj2pVolo87fL753KHgh4GkwI++DtmqW+wJFMQ5LVAwDtSTKa6oP5ZHgh
         G+AbmrggC1KQH9II098WbGr3Xs5eIfp9hoMr/c+2YTce7Kc1lPANuOSbD5oC5pVHPVKX
         n+H6vvZovp+Vex+d+vp5ydBlLhSZ5w8m9LU8Uf5VeYVddViYm1fMcGw1KccU1ZwTNeQZ
         VC/r6MJEa6QWFhx+34bsX1Dnmteo4F5reLm1miwC6w5PawaZx9vD/RsRXN47GD5mAi6g
         oScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693484256; x=1694089056;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=syEaiGRaVm11lR8QqvtDQo4Ok8f3C/t2r9+YRLItERc=;
        b=hAUGvDpZFObVTPjVP8AErLVfH7VkNGGIu46Lu0R5qzcMUGBoDSehs4RVmL5povBe2N
         oeU+Kp5D2gVYkhn5esr82sHYH/cvjXkLOye0+ENZGWmTZ6s0UaR0t0EocvZziifM9H0K
         rhbw+sdcmpSXotRwB7P0JMAFsjJ4oqJ/hdWTQMVE5Ke40UvHHGrUzGuzSvRmy621eAoL
         MdLdZwoIHyGSLCVxQ3imfSWTV1EsjXM0atcjZEAg7UinLDHt5sR9C8BrxzPjgdJ9wVsY
         L56bGO9bXDPfOJQKA7kjdg6WVXgWcE75XmBsrytGJnWLKqATm+g53KhDqWaw11IgP6e8
         /eLA==
X-Gm-Message-State: AOJu0Yw2TlsXnSYr0TgF9x02JHXgaRtJUQMBTvxM7+wdKLwesUbFwKZ5
	Sy13mw3scb3JHgx8FOrcKpCZnshPxmUZoRQxmSv5sA==
X-Google-Smtp-Source: AGHT+IFg5anB1ArsDySQKwtDJpRsJZ5RNiqtpgRDMHHYYb/fTbUQqkb583dYAPLDAwMgVlZ2vMo5v7cfP0nFlXNf1hM=
X-Received: by 2002:a25:d246:0:b0:d0d:102c:78a8 with SMTP id
 j67-20020a25d246000000b00d0d102c78a8mr4753173ybg.31.1693484255908; Thu, 31
 Aug 2023 05:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-2-quic_ipkumar@quicinc.com> <CAA8EJpqA-poJ9=XKJa2s=yZUGbBbgOqgiDC-q9skJzBqLux84g@mail.gmail.com>
 <73879012-581d-47fb-b741-577c90b31dfb@quicinc.com>
In-Reply-To: <73879012-581d-47fb-b741-577c90b31dfb@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 31 Aug 2023 15:17:24 +0300
Message-ID: <CAA8EJpr3PJtvyYKRPqT=hO4sUd4oOjTvOjD3kOqffbjzHdByAw@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: phy: qcom,uniphy: Rename ipq4019 usb PHY
 to UNIPHY
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: robert.marko@sartura.hr, luka.perkov@sartura.hr, agross@kernel.org, 
	andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org, 
	kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com, 
	will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de, 
	geert+renesas@glider.be, nfraprado@collabora.com, rafal@milecki.pl, 
	peng.fan@nxp.com, quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, quic_varada@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_051737_761876_ABBD33D6 
X-CRM114-Status: GOOD (  21.16  )
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

On Thu, 31 Aug 2023 at 14:54, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
>
> On 8/29/2023 7:49 PM, Dmitry Baryshkov wrote:
> > On Tue, 29 Aug 2023 at 16:59, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
> >> UNIPHY / Combo PHY used on various qualcomm SoC's are very similar to
> >> ipq4019 PHY. Hence renaming this dt-binding to uniphy dt-binding and
> >> can be used for other qualcomm SoCs which are having similar UNIPHY.
> >>
> >> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> >> ---
> >>   .../phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml}  | 9 +++++++--
> >>   1 file changed, 7 insertions(+), 2 deletions(-)
> >>   rename Documentation/devicetree/bindings/phy/{qcom-usb-ipq4019-phy.yaml => qcom,uniphy.yaml} (78%)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> >> similarity index 78%
> >> rename from Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
> >> rename to Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> >> index 09c614952fea..cbe2cc820009 100644
> >> --- a/Documentation/devicetree/bindings/phy/qcom-usb-ipq4019-phy.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/qcom,uniphy.yaml
> >> @@ -1,13 +1,18 @@
> >>   # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>   %YAML 1.2
> >>   ---
> >> -$id: http://devicetree.org/schemas/phy/qcom-usb-ipq4019-phy.yaml#
> >> +$id: http://devicetree.org/schemas/phy/qcom,uniphy.yaml#
> >>   $schema: http://devicetree.org/meta-schemas/core.yaml#
> >>
> >> -title: Qualcom IPQ40xx Dakota HS/SS USB PHY
> >> +title: Qualcomm UNIPHY
> > We know that UNIPHY was a common design / IP block used for APQ8064
> > SATA and MSM8974 DSI and HDMI PHYs. Is this the same design, or was
> > the name reused by the Qualcomm for some other PHYs?
> > Several latest generations have USB QMP PHYs which are called 'uni-phy'.
> This PHY is build on top of QCA Uniphy 22ull. A combo PHY used between
> USB Gen3 / PCIe Gen3 controller.
> It is different from USB QMP PHYs.

So we have now three different items called Qualcomm uniphy. Could you
please add some distinctive name?

>
> - Praveenkumar
> >>   maintainers:
> >>     - Robert Marko <robert.marko@sartura.hr>
> >> +  - Praveenkumar I <quic_ipkumar@quicinc.com>
> >> +
> >> +description:
> >> +  UNIPHY / COMBO PHY supports physical layer functionality for USB and PCIe on
> >> +  Qualcomm chipsets.
> >>
> >>   properties:
> >>     compatible:
> >> --
> >> 2.34.1
> >>
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
