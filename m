Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A772C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 09:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pubNCaoaRYlYvGkbot2v6GOotGhTEBAy53zE66P/J6o=; b=U0XTGXnRs6AjbD
	O3lpBLHDSAm2QJ6jNAw4bKL5Ue/0Rimya6I//e7//kU6mlNOihuTsIFWoVVBzOMXdY+DN+Yg+W/qs
	MMH5Ohk7gXEeOC0BsLRIdFSaJ2wykMVQWg/4jMK5z/tBAroUyRzQERZSSYtIv6kOplD97zPFYrt5/
	+TBeZ6+c2ulbYnXChhWKbEb21fKAdIy1J+sjbpg67R4RejU7MO7GA4k0CKi25d3yEjm3Xnc6EGuA3
	M6t7XVXu0LZLcl5JWUrJh7sAZCNqsj+S0i9U+DjeHzcY3/RRT7DBeJC3nLTgkkHXxHaGiHfPsfGqV
	p7ngSWUgEdYlwTnLlVTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNWis-0046lU-SD; Fri, 25 Feb 2022 09:17:10 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNWip-0046kY-Pu
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 09:17:09 +0000
Received: by mail-oo1-xc35.google.com with SMTP id
 j7-20020a4ad6c7000000b0031c690e4123so5473600oot.11
 for <linux-phy@lists.infradead.org>; Fri, 25 Feb 2022 01:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wkModBfYW/sro4zX7iHc2v70i7FEbVRCcdgHDgCBjEU=;
 b=rxqWkRnYPEe3ddiQuI9xuAVJ2cFo5NwcMOUx3EmugebRUBaLU4E1mtmk5GZKilrNip
 qxJwU718/BGVUHTn9EVrB8SXO0dLkTwcn4Vul65MOJM1+Yb5DJ/qv1pG4uE/bnRKU578
 1erriMs9eMi3EtOrzNjSo3ActyfMATIVdkPIZoZSgqIyDsdPQE685OWeBtRFjajbVydw
 d5IHEMsNJ93r8GHg0UwYojrMW+NtRd7U0KGqHFpRBTJj2SmRmeAPzOAj1/x0N9zHc31R
 PWyZmJOMJg2E6qiW3wqVAf9cBBJDRYMV1ADOpUMQckLZY/ut7UmpeQ3r3pWmShZ1mnDI
 L27w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wkModBfYW/sro4zX7iHc2v70i7FEbVRCcdgHDgCBjEU=;
 b=jgt112WfZ6+chXAS+BIkXpu7uVXbdoaeI95jZsj8guOJDT9cDaH3XBVp9cauvzNsjI
 F6bJc/PILzZwLINFwjdo9EozLxwj2cMChvu0QWzJakeiuw6P+KXAzFBypoyJ/jNIu7Zo
 emLmi3tm8CEu2fN7rxdvPqxlafW34sg+VR01u2oPrl/JAauYg2QeQ/kkYO0Zx591iCnQ
 62LBAieBD0dJjUPBfcW4hCLm2TaSojzFxLLHRDZc89jQZCyQZjh+xUZ8YDvq/KZaB4ey
 baFjmEGDeCmfn5vEA9lgTX8xwZt0v6fiF9Sn6ppTIL8QdMulwwmBoCkRcYChlcoTU8j/
 XQfw==
X-Gm-Message-State: AOAM531SfVj2Avqrt+irjAgnMASO/N2kX3fT7vHfKHVPool+uK31g3gG
 eT4p/ZPPwIxGYsyVqxy/xh4qW75mCqoV6IHIXkhkKw==
X-Google-Smtp-Source: ABdhPJwQ31m5c0xE+wlL8qf66tvpuk9ah//HylNSbT7uGyrV8YYzHAW11DMgHFvaBIKh1krEo2GpCBGoTVbARGrFBA0=
X-Received: by 2002:a05:6870:450a:b0:d3:58dd:be81 with SMTP id
 e10-20020a056870450a00b000d358ddbe81mr882804oao.304.1645780626498; Fri, 25
 Feb 2022 01:17:06 -0800 (PST)
MIME-Version: 1.0
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
 <CAA8EJprRgsZRSXBQumveAn029j+w6xO8K2kZUO4rzZaefuYe7Q@mail.gmail.com>
In-Reply-To: <CAA8EJprRgsZRSXBQumveAn029j+w6xO8K2kZUO4rzZaefuYe7Q@mail.gmail.com>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Fri, 25 Feb 2022 14:46:55 +0530
Message-ID: <CAH=2NtxQBS=c0W0cpX5EdNi12PrqiKEuzyvEtF8WrVE6nsU_rg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom, qmp: Mark '#clock-cells' as a
 'optional' property
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com, agross@kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, robh+dt@kernel.org, 
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_011707_868954_4BD563B9 
X-CRM114-Status: GOOD (  20.17  )
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

Hi Dmitry,

Thanks for your review comments.

On Thu, 24 Feb 2022 at 20:22, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, 24 Feb 2022 at 15:33, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > Since '#clock-cells' is not a required property for several
> > QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
> > based boards), mark it as an optional property instead.
>
> I believe the description is not correct. the clock-cells should not
> be used at all, so it should be removed from the root node.

Hmm.. 'clock-cells' is still used for describing qmp phy pcie nodes for certain
devices like 'msm8996.dtsi'. I am not sure if removing it would impact existing
dts files. But let me try cleaning them up in v2.

> Also we should describe phy@ properties.

Sure, I will add them in v2.

Regards,
Bhupesh

> >
> > This fixes the following '$ make dtbs_check' warning(s):
> >
> > sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
> >   '#clock-cells' is a required property
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > index 9e0f60e682c4..746a929c63bb 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > @@ -115,7 +115,6 @@ patternProperties:
> >  required:
> >    - compatible
> >    - reg
> > -  - "#clock-cells"
> >    - "#address-cells"
> >    - "#size-cells"
> >    - ranges
> > --
> > 2.35.1
> >
>
>
> --
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
