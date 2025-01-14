Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B778AE77188
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jan 2025 10:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrSiUzo72Kj2/zEP51wltFvf4sM9TyBN6hewCYVCUHU=; b=mIPuh5no0VWv49
	SGUN+WEZvj+lLHJI4uAXr7ZOTfXLjG3uc+zY0H5H6uwbGrlZ8kCviGnHaX3/D+x7bi8gIagJrOgeH
	Ui/o9OsYZD/c7WMTnBdj6vJyeAI0XK0VorOnjM/wDr6yfYwHSh6SgQ6RRoB66vTp+1s4I1WlyxHpZ
	4cqpMXBpeoCAQPr2FIGrfoV72VjMSQ4prQ8raSB+uYlYrt66cQXNBVWiNpFkwa1xHadH8w7MIM7XC
	pSVuGqL6uq+Ov/jFhIEpt0lJs5avYBnTVidIyuXw2HGEY6FRjWJONbsSdfZUA7eofPE49YBdkPfqN
	4X7VrTmXElVjRTHDg6pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdkb-000000081MM-0LVf;
	Tue, 14 Jan 2025 10:02:21 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXdjE-0000000818C-2NmN
	for linux-phy@lists.infradead.org;
	Tue, 14 Jan 2025 10:00:57 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-e46ebe19489so7698272276.2
        for <linux-phy@lists.infradead.org>; Tue, 14 Jan 2025 02:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736848853; x=1737453653; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zWOy0FR11Ww9vPXXYRtiZR0MXnoxIhe7Rlp3oaSMe0o=;
        b=xNKATt4ekAWs2dxqbVsKyzgFloXbufcVsj+rKtdtpFNj9koCPfTycEdUiAbsaAW2NC
         uPMNXoM/4DPu0rYAgYteO60aZXRZ1QGtDWYjeTHzCb1mRwpgtCbPAhjo6HzxpLi4TD87
         Nr00mgJ07lk4e3ySFz5xo4d4iYx6p/Kf+4AZVoQ0Xi7CgBPPSvF0C20PwH6blJpxlVKS
         6Yz07dw8P8kyVWHvZK1cEVDTwl3XMChLsymT664lsYgs2872WjDW1/ttMFo5jqgS8wiP
         NEfArVIg/aDHvIw4VgO6QQhGgL1HY5tS4ufNt7oYwHgEeWbsHw9QhwDauZWkVWUn8N3Y
         MxHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736848853; x=1737453653;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zWOy0FR11Ww9vPXXYRtiZR0MXnoxIhe7Rlp3oaSMe0o=;
        b=WU/I8+09UPWwXPlCO9jiYby8ShGb1JTb005uBpo9ismzUHL99oxqvCGjyIHoy4bT2s
         i2lOVtO9dwkOIaF/amaqxjkO9WcH7oAPwf+hlKpXRpnaxz1QJGv9HyWgZasaBqJv8xf8
         QzVHetmg7EbdsEls0aDx1xajTYolN+mn2J8v//EqrC/RphwbQpGTteGy48Hh7Zn5fJKb
         7eayuiaYKLmqMrUW1Lq7urriunVnSO/bm2cBTeI/DdC1A0C0e9IUM3YLCYLc3xvs9ZVl
         sSELlR4x7w6nSeZ94aCPniP+0P/lh7gcoQiDv//UHDDh0rNEGGxnA2mcPDZly/lo1Tpp
         gKug==
X-Forwarded-Encrypted: i=1; AJvYcCWL+VnGL++U8jRvOmcAWdPXPp/IjGilXD4qYBjXDwt+1EUXwuc+yQF0Xt6PHRNrW3zv2IMK9aUphIs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxeUiKzXoWnoBWqdOQsKIBaksNdKB2wbwd7eYubsUVLhucDoOFP
	L3dJHwbM1YTeDZItkE+ayXUh8xdpcerb6jH5dbUESViqv0tn2sMhTU7wSgDgHNz/Tutnegfx+5M
	/2XMpsQcdsDl7GU3F2eJFxfwHG+Fao+gE6gw5hw==
X-Gm-Gg: ASbGncu44PcQNoWku9kstMdlEYZd/E/B6j/1QI9WKwUoEaq7dB14Fq7ef8dvUP0lOf1
	IfpnmlZrgMlPD+SYtbGQshf1WWOL+PLYhc2qoL/1LWmEdAxXf7DccDuC7L0pW+DW9p8g0wg==
X-Google-Smtp-Source: AGHT+IF4wP/wzyfnOnwOTA26chuSzZpOuq04s/LPV2Ds23nxlvigRRrAhav3w7FnByCkwW8F4IVHPh28usUdiKj24SY=
X-Received: by 2002:a25:1ec4:0:b0:e38:a031:bbd3 with SMTP id
 3f1490d57ef6-e54ee212481mr14127208276.39.1736848853117; Tue, 14 Jan 2025
 02:00:53 -0800 (PST)
MIME-Version: 1.0
References: <20250113-mdssdt_qcs8300-v3-0-6c8e93459600@quicinc.com>
 <20250113-mdssdt_qcs8300-v3-3-6c8e93459600@quicinc.com> <lyv4bopv3zw62qll5cjjx46ejdjjmssvhabdxj2uq23mcmwqpb@lld6hynsiwfe>
In-Reply-To: <lyv4bopv3zw62qll5cjjx46ejdjjmssvhabdxj2uq23mcmwqpb@lld6hynsiwfe>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 14 Jan 2025 12:00:42 +0200
X-Gm-Features: AbW1kvbmJDFUCdKe5fDxImchUIrbs_EWdal_GJUHhskaFb5gnzYKEg5u3ybPka8
Message-ID: <CAA8EJppUEB-c5LbWN5dJoRh+6+nNFH3G9h_uwbuTo=B8kp_9oA@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_020056_613103_219ABD6A 
X-CRM114-Status: GOOD (  10.26  )
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

On Tue, 14 Jan 2025 at 09:57, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Jan 13, 2025 at 04:03:10PM +0800, Yongxing Mou wrote:
> > +patternProperties:
> > +  "^display-controller@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        items:
> > +          - const: qcom,qcs8300-dpu
> > +          - const: qcom,sa8775p-dpu
> > +
> > +  "^displayport-controller@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +
> > +    properties:
> > +      compatible:
> > +        items:
> > +          - const: qcom,qcs8300-dp
> > +          - const: qcom,sm8650-dp
>
> Parts of qcs8300 display are compatible with sa8775p, other parts with
> sm8650. That's odd or even not correct. Assuming it is actually correct,
> it deserves explanation in commit msg.

It seems to be correct. These are two different IP blocks with
different modifications. QCS8300's DP configuration matches the SM8650
([1]), though the DPU is the same as the one on the SA8775P platform.

[1] https://lore.kernel.org/dri-devel/411626da-7563-48fb-ac7c-94f06e73e4b8@quicinc.com/


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
