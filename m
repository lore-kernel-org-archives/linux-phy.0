Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC227C433F5
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 22:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IjUhM3CE3HTwG3QwP3m6cpe5ooFLntLQPyQTjOEC1CE=; b=xv9Is37KC1rIXi
	tyuRzyfitHh4U0Ea94nA8ykposR5ApeLWKJTyYOX/nTWOpCrv51tqUpW5seX6UORb6E45MvgBZMX6
	jAP5mHBntwsWCSkxlWvOcG9cq9D3nOjRXDoFmCKZ6kln8UWavoDqKK294AtSm3o2IgfnKq2LOEhct
	v/XcNaKJJ+FLbCydtw7D5a+DoNwlcZG77g+RUKvb+LWrfUa5XwY42IrDsfF0tjcMp9eTDuahN6QUL
	gx55Ls+jv6O52KYzEoXnBlelHKFUchLReE1ChaMJ0meOdiGzPS/juwOkYkmQ2v3Z/Lv3W3GS3oQP2
	7fDvMAnSRPtQF4AkFFmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPtrQ-007w1e-AL; Thu, 03 Mar 2022 22:23:48 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPtrN-007w11-RB
 for linux-phy@lists.infradead.org; Thu, 03 Mar 2022 22:23:47 +0000
Received: by mail-ot1-x32f.google.com with SMTP id
 u17-20020a056830231100b005ad13358af9so5834548ote.11
 for <linux-phy@lists.infradead.org>; Thu, 03 Mar 2022 14:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:in-reply-to:references:from:user-agent:date:message-id
 :subject:to:cc;
 bh=84N9C6KvyMy2P8CDxkMygU4c2ZXeXw9ZduzWrJT2etE=;
 b=cFzFuK9Te+gPYjsQw43HWd+lX0dK75cQbikvF+GotiKMkoC7n3D5HmUVNLnEV8gBpH
 oBKM8lXnCJMovyZOcmMwSfRGp7xNWHY4XVb/EDVU5NpxUfncr25dJ5uqjKdGZG8y9hif
 ATRmIFWvL8nT6Fxu9sp/brC8rt8gRB/WUcYRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:in-reply-to:references:from
 :user-agent:date:message-id:subject:to:cc;
 bh=84N9C6KvyMy2P8CDxkMygU4c2ZXeXw9ZduzWrJT2etE=;
 b=cFt2CJ0xdrBdxmz9h9DuQRwuHPGxzQBYtGdyRrZt2pFs1rJFJcqGcmpzcPfSD+F7kw
 lq4jCT2BdqPyp+OgmlquH9W6vp34gisjGTjaNszo0+EZrRUPidcu7feDgfEvAayBqyGr
 4ZBfXgvNwCzE3vUtsdRgB5PgbPUiaUDXV2ROuK6oAfFstdcb8CMM1C0d6acv+I5Ij+sV
 b9ZEAesKehl0G7qr20S6pq51ts9+uHsDqZLNekfRpOW5dJSBizgBqs1OoCQ3MWgj4L8J
 EapJ2SeV0y3QKGadX3Bs3YRyRMII6NQ4l99SdXEu0D2V9CkE4oxVgtG2QnB2kui0fpDX
 AMbg==
X-Gm-Message-State: AOAM531smvfaWK/GT2lleiTjwgk+sVvjfLfGAAYRWnU7Z/ZpV+9on6/N
 7iKXOJkHkkuusvN4hwbE7GtsRRnbnBKVZfphV+0hcw==
X-Google-Smtp-Source: ABdhPJx96sN+CrROFdnLq4TVFnKH2FvrwIjYkI+NMasfcx0/cQZZuTxmSn4ziMWwpGM1lI9t0aITlvtBXJxVU5Cw/Xc=
X-Received: by 2002:a9d:22e9:0:b0:5ac:1754:342c with SMTP id
 y96-20020a9d22e9000000b005ac1754342cmr20034277ota.159.1646346223173; Thu, 03
 Mar 2022 14:23:43 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 3 Mar 2022 14:23:42 -0800
MIME-Version: 1.0
In-Reply-To: <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
 <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
 <b793195b-1d3d-63b2-19d2-72ae2aec8c0f@canonical.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Thu, 3 Mar 2022 14:23:42 -0800
Message-ID: <CAE-0n53xT1OaDLg+o1g_DXO5CHOZ=YC1C=2weeET-6cvbSKXPQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom, usb-snps-femto-v2: Add phy
 override params bindings
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, 
 Doug Anderson <dianders@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Kishon Vijay Abraham I <kishon@ti.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, 
 Matthias Kaehlcke <mka@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
 Sandeep Maheswaram <quic_c_sanm@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
 Wesley Cheng <wcheng@codeaurora.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, quic_pkondeti@quicinc.com, 
 quic_ppratap@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_142345_917282_0E081C26 
X-CRM114-Status: GOOD (  16.02  )
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

Quoting Krzysztof Kozlowski (2022-03-03 07:59:22)
> On 03/03/2022 07:13, Sandeep Maheswaram wrote:
> > Add device tree bindings for SNPS phy tuning parameters.
> >
> > Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
> > ---
> >  .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
> >  1 file changed, 125 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > index 0dfe691..227c097 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > @@ -50,6 +50,131 @@ properties:
> >    vdda33-supply:
> >      description: phandle to the regulator 3.3V supply node.
> >
> > +  qcom,hs-disconnect:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      This adjusts the voltage level for the threshold used to
> > +      detect a disconnect event at the host. Possible values are.
>
> ':', instead of full stop.
>
> > +      7 -> +21.56%
> > +      6 -> +17.43%
> > +      5 -> +13.32%
> > +      4 -> +9.73%
> > +      3 -> +6.3
> > +      2 -> +3.17%
> > +      1 -> 0, Design default%
>
> Use "default:" instead. Here and in other places.
>
> > +      0 -> -2.72%
>
> In current form this should be an enum... but actually current form is
> wrong. You should not store register values in DT. What if next version
> of hardware has a different meaning of these values?
>
> Instead, you should store here meaningful values, not register values.

+1

To emphasize one point, meaningful values typically have a unit of
measure, like Hz, ms, mV, etc. What are the percentages adjusting from?
Is it a percentage decrease from the input voltage?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
