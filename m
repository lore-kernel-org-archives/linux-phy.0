Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DFC2C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 15 May 2022 06:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUK2cHN5A6idVcKIxEO7S9D1+zyBjKEsq7pxe+D0hBY=; b=cKWrSO7SHdYU0D
	ryHFbU3f5TfAuDsNXdaypqmGl8+6gdwswUboze4POz8XdldunLhQwcrp3Jvambf3OTa1pkbiuU47M
	pjxYndLCy05OqmD5L1FIIsPfGpsuiecVfdqhmErwoxLFIpEssph863YymybU0SpVzqr9ZneR/fz+g
	EbkltXLiCBeQ4vhqKGGHTQ08km7f9Haes7SM28Y+LR1Q2OJOLXkB5jKgTs5T2leDPAJV5QhN1yVut
	EoPTNzGpG6beLZRqsho/VxeoKrk14BhcHe1Bdzd5eGiNXCd0RtEokTIxK4dZ7zQ2dFuh8ZAnb0BuP
	jk01ZpnLb/MywidlaTYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nq7sA-003JKI-AO; Sun, 15 May 2022 06:36:58 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nq7s7-003JJl-9z
 for linux-phy@lists.infradead.org; Sun, 15 May 2022 06:36:56 +0000
Received: by mail-oi1-x234.google.com with SMTP id q8so15015090oif.13
 for <linux-phy@lists.infradead.org>; Sat, 14 May 2022 23:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=abJLZGgjMfh8rX+ZbBZ6JRfVrVVL/LGIcKNrpQhfC6Y=;
 b=dNcMrWiXPhoSPTPD7rYo6oHnpWej3ftK/aEsS7ZG3mLHGEdc021KTOLN4BM/XHaDgZ
 Sg3f23g6pqjHlV6RNZFBaS5NCICddZLu2Wp8lVDciiiEMGlYn/ppyWvFJibpAjo9j1id
 PMpN+ZQit8Yg4yXMogWGuqsosp4c7ItvCmmYVoXo2LGKFXuox6tPZRDCA6g0ntAnLuBI
 Zr1xz5A3aYC2i6kau0Mw86sU8HuLczhZDc36+YHfhAus6f20QW0noDr1NreFrT3V+bxR
 2zRgIp5nytpyZOyduMqFD2hK1qKhUN3ZkKRRIdSYU2a0matUT6H23NTZfHpIm6BxH4eI
 vghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=abJLZGgjMfh8rX+ZbBZ6JRfVrVVL/LGIcKNrpQhfC6Y=;
 b=xj9qkJ7dNqvNaiBpSOLAJgQNibaHBNEEBMHz9i4oJVSTGl13k5JYOQ9KjGovJ7Zjpf
 VA6mA1kXAnDZ+mw1eeQwvF5nwOIzeOrGhrkw3hC0oLlUMsq1ZCTg6pZUydQzof2Mezr+
 8+Fmnn1x+wh7w7y/GcO1ifgdzxcCEPh3czcYPzd48EMwCAKbfGXTnHW/wp1XucLf8Y2k
 z9yweYe2dvcZav8F6pA+AtJgd4GjXPtYdT/30ontv/8sK4NwqhbuKoQ8TdfwSI0HsbGp
 95Np7fVgwOVIeHLWleX0iXP5lpjE+391vS2f8C5t/g/JlrXKMnyXsdTUeOgRV8I8kVBN
 EfiQ==
X-Gm-Message-State: AOAM533LLszkr9oF94Gz3ZFDZbUVcqmNhb6pxOCGPyKro9HGdgbOWJCA
 KhDS5H7EkLA32UUh2tdhifO80HiPIiqfdAMtwynanA==
X-Google-Smtp-Source: ABdhPJz+cF7Kgs9VRE4OciEFza03OApRMb4mZkLk1e9pqh/Cf7HxV9If/lRjpTi+G192d0vuzGfI8DTUQ9JaQqo3XL4=
X-Received: by 2002:a05:6808:dc3:b0:2ef:86e7:a0b with SMTP id
 g3-20020a0568080dc300b002ef86e70a0bmr5601383oic.48.1652596612750; Sat, 14 May
 2022 23:36:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-2-bhupesh.sharma@linaro.org> <YmQfZ+h5tD6KbMID@ripper>
In-Reply-To: <YmQfZ+h5tD6KbMID@ripper>
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date: Sun, 15 May 2022 12:06:39 +0530
Message-ID: <CAH=2NtzEBwuo+vm8-2Drn4P7SiUbV-aNL1zVDs8OahFEargCiQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: phy: qcom, qmp: Mark '#clock-cells' as
 a 'optional' property
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 bhupesh.linux@gmail.com, agross@kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, robh+dt@kernel.org, vkoul@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_233655_406080_7D26F17A 
X-CRM114-Status: GOOD (  23.35  )
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

Hi Bjorn,

On Sat, 23 Apr 2022 at 21:14, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Mon 18 Apr 13:55 PDT 2022, Bhupesh Sharma wrote:
>
> > '#clock-cells' is not a required property for qmp-phy(s) in the
> > '/' node, but it should be is used in 'phy@' subnode (where it is
> > actually a 'required' property). Fix the same.
> >
>
> It's not that #clock-cells is "not a required property", it's that the
> clock comes out of the phy (the child node), so there is no clocks
> provided by the parent device.
>
>
> Please rewrite the commit message.

Ok.

> > This also fixes the following 'make dtbs_check' warning(s):
> >
> > sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
> >   '#clock-cells' is a required property
> >
> > Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> > Cc: Vinod Koul <vkoul@kernel.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > index 8b850c5ab116..c39ead81ecd7 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> > @@ -66,9 +66,6 @@ properties:
> >        - description: Address and length of PHY's common serdes block.
> >        - description: Address and length of PHY's DP_COM control block.
> >
> > -  "#clock-cells":
> > -    enum: [ 1, 2 ]
> > -
> >    "#address-cells":
> >      enum: [ 1, 2 ]
> >
> > @@ -112,11 +109,13 @@ patternProperties:
> >      description:
> >        Each device node of QMP phy is required to have as many child nodes as
> >        the number of lanes the PHY has.
> > +    properties:
> > +      "#clock-cells":
> > +        enum: [ 0, 1, 2 ]
>
> The commit message doesn't mention the fact that 0 is also a valid
> value. Perhaps just keep it [1, 2] in this patch?

0 is a valid value as mentioned in the example inside the dt-binding
example itself.
For e.g. see the 'sdm845-qmp-pcie-phy' node:

    pcie0_phy: phy@1c06000 {
            compatible = "qcom,sdm845-qmp-pcie-phy";
            <..snip..>

            pcie0_lane: phy@1c06200 {
                    <..snip..>

                #clock-cells = <0>;

So, without [ 0, 1, 2 ] in the yaml bindings we get the following
error while running '$ make dt_binding_check' :
qcom,qmp-phy.example.dtb: phy-wrapper@88eb000:
phy@200:#clock-cells:0:0: 0 is not one of [1, 2]

Thanks,
Bhupesh

> >
> >  required:
> >    - compatible
> >    - reg
> > -  - "#clock-cells"
> >    - "#address-cells"
> >    - "#size-cells"
> >    - ranges
> > @@ -468,7 +467,6 @@ examples:
> >      usb_2_qmpphy: phy-wrapper@88eb000 {
> >          compatible = "qcom,sdm845-qmp-usb3-uni-phy";
> >          reg = <0x088eb000 0x18c>;
> > -        #clock-cells = <1>;
> >          #address-cells = <1>;
> >          #size-cells = <1>;
> >          ranges = <0x0 0x088eb000 0x2000>;
> > --
> > 2.35.1
> >

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
