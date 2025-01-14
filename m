Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95E06C02184
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 11:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ym01PylRWVdltUrRskq4+CKnPuK3Y9TwYbYLacfDNLY=; b=H1sxONQ4Yef9EO
	oXoQA0EKEQlvFrCT+gxSbo3c09rc9EQNAH/h7jV/1QOc1/JMZ3wp5OPMLxIbLOIB1rG8h1FLsT3za
	lm8EMWeW9kl3EFhsHt3oDARuF5n7ZzwXsoWiBKzU8+RvNBwGH8CnHY2P6PpBdtRGzAn0yekhS/Gwe
	EkY/ltur2/P2WPgVceE9huTUZpC1FsrqSH0qkYK6OOs1BJZKXTCgHrOZRG3qhJFPeMGMwESlKwum3
	ahNMEvgg3NPR8zTFELTsrsZrXwFkOOykJX5VLdI3SVg8iKwBTOqBqK4E+hEh2oqbmRYfsBH/M4qin
	8Oidt0fvXy4Ud+G7mu8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXene-00000008D3c-0HVh;
	Tue, 14 Jan 2025 11:09:34 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXenZ-00000008D2Z-3271
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 11:09:31 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5401b7f7141so4668122e87.1
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 03:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736852968; x=1737457768; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lSEEVDHkJF+59l08MDf/HdvOaR7SqGhIx6AtZQIytfk=;
        b=kOrcS8AZsYGK+xs5dZo10MIdhXAVF0Kh7nLSrDj8+QGWiLuZTE1Lu8HyaGzVprOSU0
         DtDlPRm7YsDxtfqRHzjwUjgnXM6vTE6RUeDys3BmvU4KoBvH/AbwMuuoGTig4IJpvxE1
         0hBHyMNg7Uv7JjXMGr61+yuQeeYzB1lcKw7Yvre+z5nSH91RWaGqL6wiED5SS3HCXsxu
         KO7HWgfC8n1O7AqSaMoGZ8G+RHh6UCCCYMCA/91VD3XjnGJdnvNjRTOozJjAL5YfWcYs
         r2DFvqNmOW7pjJeIOdwF1WKVf960GFQL+61tJdcjGGNXm4NNW8hUtaq3CbimHY2ssUzH
         COKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736852968; x=1737457768;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSEEVDHkJF+59l08MDf/HdvOaR7SqGhIx6AtZQIytfk=;
        b=UloS1gmRIfjOPD2wICVG6fPRTCSYPgnJovCTuxid4R4vevdO9AGB8DpilSkY0+hft3
         rQqzWV6Dyvg1iv2/BVVA0hRf9kAAY2GxooNxL4gMR4BCYymxc6Xhxc10LgELA+T3Avpi
         yzv1eqkSfxiDy3rSZhWXR6UtwMF4/9qx+Q6HWyFZ9PDRAXxiLUEz4tVcldaJWW2St6SJ
         AqJEMmsnNCjz0wduZqoeRo0akLb/FHgNGzoZDAYNprOtmuen4tOFW6d5PdJIl6toLL0O
         nmgRApe3cqV7x7pyJe8v5vuA/LXGe8+1OcVV+UTXwoa97rqSt9ldxDhCjNDNCL+A7YDQ
         YdBw==
X-Forwarded-Encrypted: i=1; AJvYcCUkB+ffSa9tu6L8Uq9bR6M/U0pcVuPAcXWSiWE0aRq4ThSReP7ILNjni5COuiuCm37DJ7IOJPcUPQ0=@lists.infradead.org
X-Gm-Message-State: AOJu0YyWAzbkKIgi1FyRZ7ndjVQ9kLe/7fVrllQrOR/puNVYhAowzZBe
	IlEVJXL6AcT7X0kyLFwjgR0NXljQZbmSdXADYpbTXWMBZcdCxT7tiN4MYCzaJww=
X-Gm-Gg: ASbGncsywcyHsu3KEaVkDFJNHtHVCL3Sfj60tixzYSi8ymYbE+2i1DlYMTkH7ZB4LAE
	ahR59UMObe949hBr3fCfcx3/2B4sn3a00yoH5vm42nREnPUlAgNq/muGTsHjExUdFi3u8iX33pv
	76WHaqi/Yo6J+9T6dTGJZIxcxe19gpfLUKPtju9iCXk4n2NJwc6ODPmAjSOwJnzGIJ5GJLar7sg
	dMIMXkEAduUuaJHUd9uIyL6cadDS/nO0zypWyAGtfHfHX1r1C6vs5Nab8x/qg0dC3Xp8/+Omkpc
	Z1VsmcmhYfm/73QZsv0OfnAH0L+PfKkC5bsk
X-Google-Smtp-Source: AGHT+IGsHdnrR/PD2l0aAbVi6WVa0Zza137alj0eWph9uI3wb2zRUaR8X1MT+Wuu41m9TUTAYoQAtw==
X-Received: by 2002:a05:6512:4024:b0:540:3566:5760 with SMTP id 2adb3069b0e04-542847f9ea2mr7548782e87.35.1736852967850;
        Tue, 14 Jan 2025 03:09:27 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be49943sm1652662e87.25.2025.01.14.03.09.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 03:09:27 -0800 (PST)
Date: Tue, 14 Jan 2025 13:09:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <rx5jyaehsgdw5cluyjtrn5yvxnd2uemdde5jbvq2dq3dirr2ak@hkegxop7tiew>
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <20250113-mdssdt_qcs8300-v3-3-6c8e93459600@quicinc.com>
 <lyv4bopv3zw62qll5cjjx46ejdjjmssvhabdxj2uq23mcmwqpb@lld6hynsiwfe>
 <CAA8EJppUEB-c5LbWN5dJoRh+6+nNFH3G9h_uwbuTo=B8kp_9oA@mail.gmail.com>
 <bda8dd18-3bed-427a-bd19-9cb011256c93@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bda8dd18-3bed-427a-bd19-9cb011256c93@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_030929_779508_9A776821 
X-CRM114-Status: GOOD (  21.21  )
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

On Tue, Jan 14, 2025 at 11:11:23AM +0100, Krzysztof Kozlowski wrote:
> On 14/01/2025 11:00, Dmitry Baryshkov wrote:
> > On Tue, 14 Jan 2025 at 09:57, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >>
> >> On Mon, Jan 13, 2025 at 04:03:10PM +0800, Yongxing Mou wrote:
> >>> +patternProperties:
> >>> +  "^display-controller@[0-9a-f]+$":
> >>> +    type: object
> >>> +    additionalProperties: true
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        items:
> >>> +          - const: qcom,qcs8300-dpu
> >>> +          - const: qcom,sa8775p-dpu
> >>> +
> >>> +  "^displayport-controller@[0-9a-f]+$":
> >>> +    type: object
> >>> +    additionalProperties: true
> >>> +
> >>> +    properties:
> >>> +      compatible:
> >>> +        items:
> >>> +          - const: qcom,qcs8300-dp
> >>> +          - const: qcom,sm8650-dp
> >>
> >> Parts of qcs8300 display are compatible with sa8775p, other parts with
> >> sm8650. That's odd or even not correct. Assuming it is actually correct,
> >> it deserves explanation in commit msg.
> > 
> > It seems to be correct. These are two different IP blocks with
> > different modifications. QCS8300's DP configuration matches the SM8650
> > ([1]), though the DPU is the same as the one on the SA8775P platform.
> > 
> > [1] https://lore.kernel.org/dri-devel/411626da-7563-48fb-ac7c-94f06e73e4b8@quicinc.com/
> 
> That's the driver, so you claim that qcs8300, which is a sa8775p, is not
> compatible with sa8775p because of current driver code? You see the
> contradiction? sa8775p is not compatible with sa8775p because of current
> driver patch?

I think you are slightly confused with different similar QCS SKUs here.
QCS9100 is sa8775p. QCS8300 is a lighter version of it.

> 
> I don't think it is correct, but let's repeat: if you think otherwise,
> this should be explain in commit msg.
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
