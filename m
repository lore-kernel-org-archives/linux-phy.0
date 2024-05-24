Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21C4AC25B79
	for <linux-phy@archiver.kernel.org>; Fri, 24 May 2024 06:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dq+/fMX5+SeWHbsndTSHk2w4D5LDobCqHLfQxhpOCKY=; b=psciBV2eaw95RZ
	Pk405TVOV2zjrn50mfVWGSocT5eD6fBPSDJhJuKGd54I1UNg0wSSfQx2fgMwmDvU04xY0WZMR6Ar3
	DdAO5zo6cqWgca8mYYwu3gOjBvl+LlsJdrhg1TJur+70/GyVGQS4BTfNda4GmvfI5U+hhF2epFuAm
	a+u3GzvW+EDfL2ikMhbwiVH5uEdvKa8gUSnIs/7zvck3eqI1j+NXhOqzh9wsFZAJYGl1gCoKgjESX
	mI6fZfuMP+7+ZTZafiIyij8/qVgK4+cLimvzRC90NMzhfXKJiUvP02pMEL1vG40pU68QDbAJU1BRa
	ya752vDxc8Pld4tin7kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAOmL-00000008CsC-3RQe;
	Fri, 24 May 2024 06:51:49 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAOmI-00000008Crk-0M02
	for linux-phy@lists.infradead.org;
	Fri, 24 May 2024 06:51:47 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5238b5c080cso10297758e87.1
        for <linux-phy@lists.infradead.org>; Thu, 23 May 2024 23:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1716533503; x=1717138303; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AM6VA18bFGFYY5kMPUR9rqKd9gSuqX5euarcCf0EZ4=;
        b=Og6oDgVxSF7OPBmQJvFdU1XcXy4EUq6rfXZ2xOXGrLIMNCB9v2ru+BNkaVzY7VulTH
         VmezIL8RSNO3m+hMdCisj3ZYEJ5PNhiwFc2hdKeTcuvJQydPD7AK6/D2EpSy9ofdR++Z
         lCrB/YTtCVzNTvAXeKM3l+3/kYqthsNno4QR/XLJasQK1IbhryGvN+dn08eL6lXdq5Wn
         U2bcOIdhaxISeWpkH7JQZqTHEoZCh+N8p3VXb/Gfo5jRzkOuRakfF6ATC4aE45ppoiXM
         BTBUYSCtng3hb1ggtUVzny6LMyx4of59nsvBLXksQsDTFidXNaxrBW9pxiczp5jGUI6W
         TFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716533503; x=1717138303;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8AM6VA18bFGFYY5kMPUR9rqKd9gSuqX5euarcCf0EZ4=;
        b=fYkKtTw17VRZgO5haIT1HzzPq6xxUSZR1TY1HAoEMbeYMXa8KoldJ3TxSaX4NUTQOl
         TZlQkZIS1W/c7HWLxGa8zebvtDaVlOZ9mEXu4HIeMMeks62fR0R93rMW7ZpeU8B2TWvW
         rW7HMUL5wA0hN3WTWHvs1dhnPHJMnPQnDE80L3v/NzZFretjHU+/UKnrOEHO4qL8AH+O
         8hF5D6/ISfHu504C6cb8GVsdhLGcVyMK4nSCEAS0uRSvkxSzAN3gvOlr4E+au8blEAcg
         +v+r6kGwddHciLKRv+D1TDg9ZQ7UguSSM6p9CN7SVyr2KMy7pV3J32DlKjMwl0DmhQ9B
         oYrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOetHmQZcFEQUP+Ut/43mFQVwC27SU+Y71w+sQFq2oAOdvziKcDzlz78SJJQn/iiOpIzY1ZTj0q+jFoN0lIQh8kX0qyOPGtAPI85LmDQ==
X-Gm-Message-State: AOJu0YyqhVVGhcSfUutVFSQEtvpZFt5N+vB1+KVuhsw5mJRdBvuNd6eY
	DIXR9Y2EoxmGvyXpI2baQBR3JX2g4uqEGOUFwMqMSLTYlOm81EekS5WTg7+X7cY=
X-Google-Smtp-Source: AGHT+IFF5NGys5h91On8M/+eUNTfZssOWAGaxJkGIKXJhJWSzEy0HxwULqIkVug0I42xC4SkbqA2rg==
X-Received: by 2002:ac2:5b12:0:b0:523:df53:93c2 with SMTP id 2adb3069b0e04-529666d81a6mr733669e87.51.1716533503025;
        Thu, 23 May 2024 23:51:43 -0700 (PDT)
Received: from localhost (2a02-a210-20ba-5a00-9ceb-707b-2d57-26f7.cable.dynamic.v6.ziggo.nl. [2a02:a210:20ba:5a00:9ceb:707b:2d57:26f7])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066ba0bsm109560e87.163.2024.05.23.23.51.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 May 2024 23:51:42 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 24 May 2024 08:51:40 +0200
Message-Id: <D1HOCBW6RG72.1B2RKGKW2Q5VC@fairphone.com>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Abhinav Kumar" <quic_abhinavk@quicinc.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: <neil.armstrong@linaro.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Bjorn Andersson" <andersson@kernel.org>
X-Mailer: aerc 0.17.0
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org> <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com> <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org> <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt> <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org> <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com> <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org> <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com> <f2d96f99-d8ac-4ff1-83fa-742e541565e4@linaro.org> <864063fb-eeae-4eb7-9089-0d98011a0343@linaro.org> <D15RKEU49B4G.1B6A2MYB4LH3X@fairphone.com> <cbc8a2c6-0047-4345-8c93-afdba9c2bd10@linaro.org>
In-Reply-To: <cbc8a2c6-0047-4345-8c93-afdba9c2bd10@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_235146_159962_F6787202 
X-CRM114-Status: GOOD (  23.67  )
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

On Thu May 23, 2024 at 11:06 AM CEST,  wrote:
> Hi Lucas,
>
> On 10/05/2024 08:51, Luca Weiss wrote:
> > On Tue Apr 23, 2024 at 4:08 PM CEST,  wrote:
> >> On 23/04/2024 15:03, Konrad Dybcio wrote:
> >>>
> >>>
> >>> On 4/5/24 12:19, Luca Weiss wrote:
>
> <snip>
>
> > 
> > Next, with DP 4 lane (not working on mainline but still plugged into a
> > screen) the diff is quite a bit bigger.
> > 
> > See attachments for the full files:
> > * usb_1_qmpphy_20240503_151052_android_4lane.txt
> > * usb_1_qmpphy_20240503_122443_mainline_4lane.txt
> > 
> > Not attaching the diff because it's quite a lot
> > $ diff --ignore-case -U0 usb_1_qmpphy_20240503_151052_android_4lane.txt usb_1_qmpphy_20240503_122443_mainline_4lane.txt
> > 
> > Not sure this is helpful to anyone, but at least wanted to share what
> > I've done so far here.
>
> Thanks a lot for the traces, it founds out the QPHY_V3_DP_COM_PHY_MODE_CTRL stays at 0x3,
> which means the mode doesn't get broadcasted to the phy because.... the retimer only broadcasts
> the orientation and not the mode... and it works on the HDKs and the X13s because they don't have retimers.

Hi Neil,

This was it!

>
> So I made the changes in nb7vpq904m and ptn36502 drivers to get the next mux and broadcast the typec mode,
> if you find time could you test it ?
>
> Bjorn could you also test on the rb3gen2 ?
>
> The changes:
> https://git.codelinaro.org/neil.armstrong/linux/-/commit/a61fb3b816ecbe28a12480367d9e09b700ec09e1

With this ptn36502 patch on top, I can confirm that DP 4-lane seems to
work on qcm6490-fairphone-fp5 smartphone with DP over USB-C!

Tested with a USB-C dongle that only has a HDMI port on the other side
(so no USB), and cat'ing dp_debug while connected showed num_lanes = 4

So feel free to add my:

Tested-by: Luca Weiss <luca.weiss@fairphone.com>

Regards
Luca

> https://git.codelinaro.org/neil.armstrong/linux/-/commit/f6f976ff692bad430cd945f02b835e355f19632b
>
> Thanks,
> Neil
>
> > 
> > Regards
> > Luca
> > 
> >>
> >> Neil
> >>
> >>>
> >>> Konrad
> > 
> > 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
