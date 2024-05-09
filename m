Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BD4AC25B4F
	for <linux-phy@archiver.kernel.org>; Thu,  9 May 2024 14:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0Wz9CBteQFr20vpIkXAs42hF5d5JKYVwoFeF2E3KlM=; b=OF6MV3tKvs6WZ6
	14G3W+TqbKNlREUXB/6OsLElx//IVve2uYik/U9GyyCLjbD9zfv2yMeI/m7Yh5GOV46gYxJtzCTCt
	wAambSORUFTnSFgHfqZ1rZiOnp/+04SMIUoHZD3ysxNLQM4AJWBScOFrfPNtJBxiaBjOAm4HNzQAX
	NmiQbY5QTjr8ZwpC4Pau2auPkTu+iJO+SG2WzaAXgSQ2BM4QG+Ym14cv/xlJuMZz+qChAKqDXFyfn
	1t2yYNJLX7JV8x3gQJOkczF/DwQqyNqS1sZD+0UR3avHyp6OfVnVP/K9AcVUeymrdhIMY+uziPzZ4
	gPlwNmJ+O6nnzG264uBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s550z-00000001lut-3sxl;
	Thu, 09 May 2024 14:44:57 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s550x-00000001ltA-0dgy
	for linux-phy@lists.infradead.org;
	Thu, 09 May 2024 14:44:56 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-61bed738438so9519017b3.2
        for <linux-phy@lists.infradead.org>; Thu, 09 May 2024 07:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715265889; x=1715870689; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EdKZiB2s4opqgvof2kv3i43Za9nb3C0GOrVIKiWmw0k=;
        b=O/IAVHGxuwVUjo7R0xHsMHivvmUiLuXchei+/IF0TNQeGCDsOFv1tk3p0owzh1QDzv
         oQaZx3nx4FQAcAXp60NuG/FaM7EMgWq6IUOqobWGZCU0xp/oB8NEniFD77YoDKmtfKSN
         UDWedXEH8l+q7lWk9Am6T68TpdIFgsYo3O0j8LEEnxPG29nMZCTnB6EsnFwCfeULPxnO
         XL6KhdWwfU1tM+SN4TanjQYsYC/9hBhRjzan/3OZLM3E5fnB6fJRmQ/WAAun8gptd0+0
         2AH0QIm5rPQRPGpadEfBMkA4vfmPxyLuXkeJy/7V0a35hIQwTWa+quCF5sTfxhGpPlNR
         Sw3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715265889; x=1715870689;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EdKZiB2s4opqgvof2kv3i43Za9nb3C0GOrVIKiWmw0k=;
        b=BWkyvQ9mAGIQShlFOwo9kexgiL+b/VMIaqqxnP23cdDtfUZqtlAkjZfvyqV/MbkOVi
         komsUaubE54I2ePrnaL0YE9q/ZOU2LH8AaVkg7PrOi/QW6Uv9U7bkkAustvx3w1iMDpT
         w9e+mjI44F/cLjLNSgoM/kgOgT0viuqyjtpEgrewK12VpXQF2Xeg9uMxxQGoKeVM2+sm
         Yw9yVTtPRN2TXBkel68brKntxcisNOP61gCsPtSkUaoPx1g88wmV68huyxRI7EkwMWQL
         zaDO5UtuFfD+7+60JaezTVfcmjcaB5cYQOVYA3lHNm9I9oJC5Htg8XyAdiJiisWpVCxz
         noKg==
X-Forwarded-Encrypted: i=1; AJvYcCUf71fyF9qfWNmdMgfVKLdHvppgry0dz+Ttkg15sYOZxH863h0OEOqSjPnDM+vrLqGNHbQwYBBngCgru3YyPt3EcBQ8F9Fe5WL+HKfjEA==
X-Gm-Message-State: AOJu0YwsGOLkyMh3muNPZkhsIMfJjHp8yP1NxCHoW0QEV3rHBhrf3L/i
	Mo/JRFoyC4SD+LcYby4NTGIYPquOlfRDjZt5550v6II1TCATOOtvykX8Nf5ltNPX3VJSeKTSDUT
	vbhj/G2l1bBoj7z70n66qjevZqNvt8lSYu2sS7w==
X-Google-Smtp-Source: AGHT+IGALxxw9TMatt24iHtj/HIRHztNAUbk6tLEX2rUTAXggUKpaWOX7Rx1RT45SQfhXHktooLHv52NhRf+EeDRKpM=
X-Received: by 2002:a25:fc07:0:b0:deb:d148:8dad with SMTP id
 3f1490d57ef6-debd148905cmr2630303276.0.1715265889347; Thu, 09 May 2024
 07:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-3-f1fd15c33fb3@linaro.org> <20240509141623.GA1011543-robh@kernel.org>
In-Reply-To: <20240509141623.GA1011543-robh@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 9 May 2024 17:44:37 +0300
Message-ID: <CAA8EJpoyMAR9fLJLVgtHf8jSwe5d6ZYzt28LVogjrX+B-_W=hw@mail.gmail.com>
Subject: Re: [PATCH 03/13] dt-bindings: phy: qcom,usb-snps-femto-v2: use
 correct fallback for sc8180x
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	cros-qcom-dts-watchers@chromium.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, David Wronek <davidwronek@gmail.com>, 
	Andy Gross <andy.gross@linaro.org>, Evan Green <evgreen@chromium.org>, 
	Douglas Anderson <dianders@chromium.org>, Iskren Chernev <me@iskren.info>, 
	Luca Weiss <luca.weiss@fairphone.com>, "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>, 
	Yassine Oudjana <y.oudjana@protonmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_074455_220574_8901E898 
X-CRM114-Status: GOOD (  18.69  )
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

On Thu, 9 May 2024 at 17:16, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, May 01, 2024 at 07:19:29PM +0300, Dmitry Baryshkov wrote:
> > The qcom,sc8180x-usb-hs-phy device uses qcom,usb-snps-hs-7nm-phy
> > fallback. Correct the schema for this platform.
> >
> > Fixes: 9160fb7c39a1 ("dt-bindings: phy: qcom,usb-snps-femto-v2: use fallback compatibles")
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > index 0f200e3f97a9..fce7f8a19e9c 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
> > @@ -15,9 +15,6 @@ description: |
> >  properties:
> >    compatible:
> >      oneOf:
> > -      - enum:
> > -          - qcom,sc8180x-usb-hs-phy
> > -          - qcom,usb-snps-femto-v2-phy
>
> This is now listed as undocumented. You need to remove it from the
> driver as well or keep it here as deprecated.

Ack, I'll send a separate patch, removing this compat. It has never
been used in the DT files.

>
> >        - items:
> >            - enum:
> >                - qcom,sa8775p-usb-hs-phy
> > @@ -26,6 +23,7 @@ properties:
> >        - items:
> >            - enum:
> >                - qcom,sc7280-usb-hs-phy
> > +              - qcom,sc8180x-usb-hs-phy
> >                - qcom,sdx55-usb-hs-phy
> >                - qcom,sdx65-usb-hs-phy
> >                - qcom,sm6375-usb-hs-phy
> >
> > --
> > 2.39.2
> >
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
