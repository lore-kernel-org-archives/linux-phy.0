Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A457CC54E58
	for <linux-phy@archiver.kernel.org>; Mon, 18 Mar 2024 10:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pZA85IrA8OrIQ8YLlOkGq4IeQdd1RQERwLH1QILB3m8=; b=Af5Z7c7HUhUbuM
	kX4di8pqc9zFO6+mrPCOAiTcOKjTfZPE9YyYdgLAq8S58pBwvosKsGDLWF7qEHBLT9xTd4X+zzkHg
	ZA9yhontiWkbinR0HOsYOzRDZOfLR2UtpqYWj9QpW5T+EYr7KL5A/JLr1Rz2D8JsUaLhdYJEqZsv3
	EGM06VKC8lKBonQ5NI+WqQ7pRoz+ryBwpf2qvJNYrSvBBM4lvvglEa8C2rDK+CoLKQufvj+5HjmPf
	zjAxr4guahGwISSp6Gv2s2S4jDWvLhxeBBZ8b2Edq2TaQNRcvoShnxPAvp46HBXLTTM1OOM/klVCs
	Rtonz+G3X4qxbI0fLX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmAVM-00000008Cka-0Obv;
	Mon, 18 Mar 2024 10:46:08 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmAVG-00000008CjQ-3Hwc
	for linux-phy@lists.infradead.org;
	Mon, 18 Mar 2024 10:46:06 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so572746066b.0
        for <linux-phy@lists.infradead.org>; Mon, 18 Mar 2024 03:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1710758759; x=1711363559; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QT8ZXpFVpdTpbU/Iue/RRtJuRFnBjnoJvr+qPsVlQ40=;
        b=ZmdiWxYt1CB63YtFhU5sWAww7SmoJghgsa/wYvepxuT2AepLCzuxjtg8UbJ/coVryX
         uEd9PpkJS7H2DB5Ai6UMYNmuwu3ENnN46mdyfOVL+YAxNwhg3yCAamoAGY8awrHxiWta
         /65+cs76CZ60ndAWow6EtcpTR2yE8sgwIPIRm/LUxX5bG5toyBl/rbzaVaPMENwC0+Go
         +AGWAx/bp8oczQat5EIPnBoLikjtb27iBVBWM/nIWEa2Xd/Abole39SppJlz1zTHkRQ6
         kGFKtmQBMRKAt3TGWTPZcMsqaFW147tF/0iuptIYDocwiU0WpWYzE2pNBrVo1E9yCfLO
         Uw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710758759; x=1711363559;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QT8ZXpFVpdTpbU/Iue/RRtJuRFnBjnoJvr+qPsVlQ40=;
        b=BAicV5ajdvOvnCZBBhOxRLw/WgxLSKFgIIzFTugaTVvq/tsrQK19MB96qos4B/Swwu
         Z0kXwIPzclyxxoY6YU2D168lH9Wr57RlgURN5r/iX1zKdtLeuEMcS+BqiToSrpVxlOWq
         A8yBAbnATsf2NlNT+E0fzJYs2XUYTPpTGPBn7js3IT7f+KNJggm/TnryoXxCE6DDWbfg
         CQz5UMHAGuU4nPUyc+ZU7WyLN5cMQjLZJycyLRbO2d+D8wpLtWW4qPB6qFxeFtCCvmUJ
         dV6mSmbICBQbkjFFMJNtgwPtlcgceaNfKKsAFaphffFxdkWuLozqVuxmz8ykEQ8qCfvM
         eRPg==
X-Forwarded-Encrypted: i=1; AJvYcCU73yQWcDyxZebBcuPQIfaNdW9d+LI7XE6Zf5brb2PbW8g1cFPYgPPJwBVMp65wiFGsraFQ5RII34GmU95hEVGJY4vVz/H8b3ztaigkLg==
X-Gm-Message-State: AOJu0YzRgfY4/5rmcb8/gfdDtj0gHBtYy1roycvFSGm3N9XHyvl1Q9Nc
	rOr+Uq+KdcnNt3ww7XxcC8Ws506QyMDQLeimc50HTC36GZgVsmBgZ2tFs0/XO0w=
X-Google-Smtp-Source: AGHT+IFPJHgyGW8eWsjDqZVT5V0Yr6Jl+8ZG3GAIH6rvmehrSUpZJRzmZ6+jGP8apXMV0anVvWUU5w==
X-Received: by 2002:a17:907:961a:b0:a46:3785:4adc with SMTP id gb26-20020a170907961a00b00a4637854adcmr9600678ejc.57.1710758759368;
        Mon, 18 Mar 2024 03:45:59 -0700 (PDT)
Received: from localhost (046125249120.public.t-mobile.at. [46.125.249.120])
        by smtp.gmail.com with ESMTPSA id g14-20020a170906198e00b00a46d049ff63sm114217ejd.21.2024.03.18.03.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 03:45:59 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 18 Mar 2024 11:45:57 +0100
Message-Id: <CZWTD7P4CE12.1ZUNPF2WFTBHR@fairphone.com>
Cc: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Abhinav Kumar" <quic_abhinavk@quicinc.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Bjorn Andersson" <andersson@kernel.org>, "Neil Armstrong"
 <neil.armstrong@linaro.org>
X-Mailer: aerc 0.15.2
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org> <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com> <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org> <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
In-Reply-To: <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_034602_860158_E7216FCC 
X-CRM114-Status: GOOD (  28.26  )
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

On Sat Mar 16, 2024 at 5:01 PM CET, Bjorn Andersson wrote:
> On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
> > On 15/03/2024 18:19, Luca Weiss wrote:
> > > On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
> > > > Register a typec mux in order to change the PHY mode on the Type-C
> > > > mux events depending on the mode and the svid when in Altmode setup.
> > > > 
> > > > The DisplayPort phy should be left enabled if is still powered on
> > > > by the DRM DisplayPort controller, so bail out until the DisplayPort
> > > > PHY is not powered off.
> > > > 
> > > > The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> > > > will be set in between of USB-Only, Combo and DisplayPort Only so
> > > > this will leave enough time to the DRM DisplayPort controller to
> > > > turn of the DisplayPort PHY.
> > > > 
> > > > The patchset also includes bindings changes and DT changes.
> > > > 
> > > > This has been successfully tested on an SM8550 board, but the
> > > > Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> > > > PD USB Hubs and PD Altmode Dongles to make sure the switch works
> > > > as expected.
> > > > 
> > > > The DisplayPort 4 lanes setup can be check with:
> > > > $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> > > > 	name = msm_dp
> > > > 	drm_dp_link
> > > > 		rate = 540000
> > > > 		num_lanes = 4
> > > 
> > > Hi Neil,
> > > 
> > > I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
> > > haven't had any success so far.
> > > 
> [..]
> > > [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
> > > [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
> > 
> > Interesting #1 means the 4 lanes are not physically connected to the other side,
> > perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
> > or some fixups in the init tables.
> > 
>
> I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
> same outcome. Looking at the AUX reads, after switching to 4-lane the
> link training is failing on all 4 lanes, in contrast to succeeding only
> on the first 2 if you e.g. forget to mux the other two.

Good to know it's not just my device then ;)

>
> As such, my expectation is that there's something wrong in the QMP PHY
> (or possibly redriver) for this platform.

Since I imagine rb3gen2 uses a different redriver setup compared to FP5,
I wouldn't say that's at fault for now? And at least my ptn36502 driver
only has very little difference between 2-lane and 4-lane setup, only
setting the mode to DP-only and 4-lane (vs USB+DP and 2-lane), nothing
else.

Regards
Luca

>
> Regards,
> Bjorn


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
