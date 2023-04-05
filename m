Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C9AC7619A
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 19:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIXf0+kQ0a9pZDATGYJM9i/aVjM3OiQKPARN/2vfBfc=; b=vHq8tpf1BBVI5q
	QfX2Wqlo09o4FF5gYwAmI0u9AbITu33tnwq3GjPpBeiwNR9ANQLyO9cJ/NNg2xh0IlATbpTz0BvDA
	FRIch2TJPCJmrMB04FvZYqub28TbV1+g9Ai9+WBlsTbo8BAaCViP2CNHTfWouQ/CgQTFc33viEJey
	i5SzZqc+osaDFQMQc//Nopwu1nToCjvsX6VeF+dvcg3T3MLkXGBGVXDcWANjHDHxXNbPI/loPL3tD
	FxdhjAUMbq6dliGH2HZZ7ZioIUVbe1ner2zsgd6BFvfePpwaIYpOJAn/WxDXIvDmh1t+2WuHVYWK+
	ILmVFP5bDtMLzwsGiBvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk9E0-005Y8B-1j;
	Wed, 05 Apr 2023 19:55:20 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk9Dx-005Y7H-1s
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 19:55:19 +0000
Received: by mail-wr1-x42f.google.com with SMTP id h17so37310080wrt.8
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 12:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680724513;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2ksXkmq2smhHgv1sUdzO5vfRJBokvvn2sm+WWkFQyrM=;
        b=UuN0IN9aVIlNHBJdqSp0sMuA/m7oRprsHlZii5e5i5mAZtGML0tfoy5gToZi0ixSRO
         GoGCh50gBOhjkUzt5Ho591h8D36M52O0eJjzocfz9PSLDDKZlaov+FZ45qk4cQeK3A9y
         vvBJU05qJbMORSQji7RDAsndEvaDj241LAjDO2O/LR37EaJGjpraWZLDpRjrtcpbX+dI
         UHB86uX0910Ak7YlUm7bIipvBr9zrz0MpvjiCHQNlm4I6gpOHmFijJ5PrT/Ixa1qhROv
         ltfOWHFK/M95wZ+lCbvogDTyPIUyadT9Jl+ccjXagaHG2RKI+SgiPbYeehRqewVWJ+6z
         zYaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680724513;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ksXkmq2smhHgv1sUdzO5vfRJBokvvn2sm+WWkFQyrM=;
        b=VdZwwyQoaTsaaEO97EgaaLa5xNpWKjsI1TCqcQaf0/1MiWkYb5UbUZmOMwujxqyna5
         s5QA8/9/oOI43ljoYFvCmVej4uyiHlwsCpMHsCIGO7s9M8Y845ziCuXV+HXk9u6DQzj0
         PaFX5WoPNukSOk/8leLh62Q+1h6TobbDxjBHm0J62MmcT9cdOoO1oWCpXK6Qli6hnyb0
         cahc0Zo3sHru0mUFxuM/sTqRWhXuSFS7etMQNOjiOBBBU6mgwO1r/WRigeOTLOgusNxT
         58mJHKJrYIklVwLY6N0mOlxQKcEoGC26f8SWTKLzEaVcJGSY81oGFp2/CZGNod6z10el
         4zrA==
X-Gm-Message-State: AAQBX9c+/kfZlxKVz8bNXOsKOx2KCY+2E96fMyiJRZ5kEtSuzSnNJO7y
	VQAo2L81jHmGpuXQA5ACG73FDqW4dAyVxJnH66xyOw==
X-Google-Smtp-Source: AKy350a+WR5HnIxkBJY1P8g+NaepzvHYZgg9l7RYM1p+GA2Vi83nA1ON10/P6Hr+Qwmmu9YcAGs/mrCa4R7btbO1PGE=
X-Received: by 2002:a5d:51c7:0:b0:2ce:a8d6:570f with SMTP id
 n7-20020a5d51c7000000b002cea8d6570fmr1546955wrv.4.1680724513613; Wed, 05 Apr
 2023 12:55:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230405191633.1864671-1-bhupesh.sharma@linaro.org>
 <20230405191633.1864671-3-bhupesh.sharma@linaro.org> <CAA8EJppfRvc7nJ+AeUjrqfmZ8aLWPma-Ecda-tjOwezqWVueuw@mail.gmail.com>
In-Reply-To: <CAA8EJppfRvc7nJ+AeUjrqfmZ8aLWPma-Ecda-tjOwezqWVueuw@mail.gmail.com>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Thu, 6 Apr 2023 01:25:02 +0530
Message-ID: <CAH=2Nty_EAyLVQfKhczJDhurvvTubotm44iitmWPNMQAe-fRLA@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] arm64: dts: qcom: sm6115: Add USB SS qmp phy node
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_125517_626986_B6B31484 
X-CRM114-Status: GOOD (  20.31  )
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

On Thu, 6 Apr 2023 at 01:06, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Wed, 5 Apr 2023 at 22:19, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > Add USB superspeed qmp phy node to dtsi.
> >
> > Make sure that the various board dts files (which include sm4250.dtsi file)
> > continue to work as intended.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  .../boot/dts/qcom/sm4250-oneplus-billie2.dts  |  3 ++
> >  arch/arm64/boot/dts/qcom/sm6115.dtsi          | 36 +++++++++++++++++--
> >  .../boot/dts/qcom/sm6115p-lenovo-j606f.dts    |  3 ++
> >  3 files changed, 40 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > index a1f0622db5a0..75951fd439df 100644
> > --- a/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts
> > @@ -242,6 +242,9 @@ &usb {
> >  &usb_dwc3 {
> >         maximum-speed = "high-speed";
> >         dr_mode = "peripheral";
> > +
> > +       phys = <&usb_hsphy>;
> > +       phy-names = "usb2-phy";
> >  };
> >
> >  &usb_hsphy {
> > diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > index 2a51c938bbcb..b2fa565e4816 100644
> > --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> > @@ -650,6 +650,38 @@ usb_hsphy: phy@1613000 {
> >                         status = "disabled";
> >                 };
> >
> > +               usb_qmpphy: phy@1615000 {
> > +                       compatible = "qcom,sm6115-qmp-usb3-phy";
> > +                       reg = <0x0 0x01615000 0x0 0x200>;
> > +                       clocks = <&gcc GCC_AHB2PHY_USB_CLK>,
> > +                                <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> > +                                <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> > +                       clock-names = "cfg_ahb",
> > +                                     "ref",
> > +                                     "com_aux";
> > +                       resets = <&gcc GCC_USB3PHY_PHY_PRIM_SP0_BCR>,
> > +                                <&gcc GCC_USB3_PHY_PRIM_SP0_BCR>;
> > +                       reset-names = "phy_phy", "phy";
> > +                       status = "disabled";
> > +                       #address-cells = <2>;
> > +                       #size-cells = <2>;
> > +                       ranges;
> > +
> > +                       usb_ssphy: phy@1615200 {
> > +                               reg = <0x0 0x01615200 0x0 0x200>,
> > +                                     <0x0 0x01615400 0x0 0x200>,
> > +                                     <0x0 0x01615c00 0x0 0x400>,
> > +                                     <0x0 0x01615600 0x0 0x200>,
> > +                                     <0x0 0x01615800 0x0 0x200>,
> > +                                     <0x0 0x01615a00 0x0 0x100>;
> > +                               #clock-cells = <0>;
> > +                               #phy-cells = <0>;
> > +                               clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> > +                               clock-names = "pipe0";
> > +                               clock-output-names = "usb3_phy_pipe_clk_src";
> > +                       };
> > +               };
>
> I can repeat previous message:
>
> Please update this to newer style bindings (see
> qcom,sc8280xp-qmp-usb3-uni-phy.yaml).
>
> We are going to switch all QMP PHYs to use a newer style of bindings.
> I have started the work to convert existing usecases. As you are
> adding a new DT node, please add it in a good shape from the
> beginning.

Your earlier message was not clear and I sent out a reply for the
cover letter query you had, but got no reply. I think a pointer to
<https://patchwork.kernel.org/project/linux-phy/list/?series=733714>
would have been more clear.

I will rework and send v6 accordingly.

Thanks,
Bhupesh

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
