Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87B26C67861
	for <linux-phy@archiver.kernel.org>; Fri,  5 Apr 2024 10:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yq+N8Lr8ebiIT9ncX1NXGhtT27SQ2asbWmTE4lljLt8=; b=Vu4N9olC6rxXI5
	1/4WQS5H72qbZ2LL3Egsz+M8O/I9hnV4qPPu4zvWUbVnXSO++LM/NBrvC6J9pu3DVIewCjSYkJI/C
	HKNU6cBg7rlIYW6E751DVKBJ14XJXU62ha4oA0NkCnkYGyEx43yfNhKAhkul69pEUDHhv7Q5T+jBj
	HxizRIOtHhLX84wke2s5Fuy61Vvc+mdtTZgcykMnVsefCWZF4SJFNiqHcB2qppeeodurfv1zEnI1M
	UrAEI/qMFCHrhTi3fau5KK54f0nNxDNJS6cyxkq2wzrutcnSbllQFTcOePZXjF32fdKV4MWRfSret
	d3/3OCOfIWT6hsuSEepw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgfq-00000006PBZ-0sVh;
	Fri, 05 Apr 2024 10:19:54 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsgfn-00000006PAX-1sUm
	for linux-phy@lists.infradead.org;
	Fri, 05 Apr 2024 10:19:52 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a519eae91d1so98404966b.3
        for <linux-phy@lists.infradead.org>; Fri, 05 Apr 2024 03:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1712312387; x=1712917187; darn=lists.infradead.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/7wBknhXnwsdUBBqfoshvbTdHyCPt+Ehzl1Q7shB3pk=;
        b=BMDt8Tqqqk7r4/6S3d/Kr7+KcaGNiyZs2hRUFWandswjERn6rA964YP0Rqj5MdAwIX
         k2uaHfIWfXfz1R5OVZtoyplfilwTWmwLuW1Za+NBRUG+nZ/eDBOZxJCTwoFzDpIZ5v67
         hA3aqTeStHN/nwt4SWkpO26X410xeakV2Dkf9psbJqvT6nSO784t7XTQ5jsd2NdHash0
         29aeq0j49v6HFsV+RIuQsCyPxFDvxT8C0dO/GwyCxZxf/9iBGsBR6Qbdwmx85Ai0vmSQ
         PgTfXZZW0zrNN5e4UBiTqlIEuHPFbYMEHB4373sg71G0/GCXUp64fICcAbKkcd6cmlrN
         i2sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712312387; x=1712917187;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/7wBknhXnwsdUBBqfoshvbTdHyCPt+Ehzl1Q7shB3pk=;
        b=KrazqwkNGb3K8PKBsWdf9hatc8Z1mvhiMQAVc5d39oveUb3BSCDUCJkVUJ1P7uXq70
         dFRFSsotrSd7jFAEhHr6ucp6uMTjpcTqwZFIXx3PVLf+9og7TkFFlpb3qBDtOSbwIkIQ
         QbpK+KPL/+wK8kU/tWiCICjHQBBGr40/RNolLhsHDZg7coGUzh8c+rAaw+lEibyWr+2T
         kx/LE4K3WsjHu8srbT5Ofe7pV3X1pdUnsq/UhurJMmdQZJD/fkicosHoAEaKbE8P7TF4
         tMLvNi1VlY8Q0dkcl0o6UkG/t28IIzOTsC1Ulyt3xNovy4mdXjnURNQFwMakqrCVx/tR
         Y5oQ==
X-Forwarded-Encrypted: i=1; AJvYcCVb5QAAibwZ6QOj36+VyrO/NoNOpbzHSPFN2Jl30ZGtlQIMtMKFwNxIptf1n1sHiQQP0ySWWihPmfooukH1fxH2XQQbRJACSAkhfuZ81g==
X-Gm-Message-State: AOJu0YzOEodJczcdW5nkeovdhBClbSxWoij9QOgzSur7sBCjd1jBAeaZ
	CMl4ApEFZjNiBXJxrXXKOdDqedgUw/hx+dyt9L6ZL/UBDH2d/jQTcbwXD1tYBrU=
X-Google-Smtp-Source: AGHT+IEb6UquOirryxNCdTbMBwQSxXMSkSkdEgWggO43HlcRkq+10Oy8opxJEoC4UC+X+wGb7hJvGQ==
X-Received: by 2002:a17:906:38f:b0:a47:2036:dbc4 with SMTP id b15-20020a170906038f00b00a472036dbc4mr541798eja.25.1712312387218;
        Fri, 05 Apr 2024 03:19:47 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id gx26-20020a1709068a5a00b00a46b4c09670sm670330ejc.131.2024.04.05.03.19.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Apr 2024 03:19:46 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 05 Apr 2024 12:19:46 +0200
Message-Id: <D0C42YR1270X.23P9WCWWNB8XF@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: <neil.armstrong@linaro.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Bjorn Andersson" <andersson@kernel.org>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Abhinav Kumar" <quic_abhinavk@quicinc.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
X-Mailer: aerc 0.15.2
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org> <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com> <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org> <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt> <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org> <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com> <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org>
In-Reply-To: <963b60e5-6ab7-4d9f-885a-ba744c2b7991@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_031951_599955_49C72CB0 
X-CRM114-Status: GOOD (  30.99  )
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

On Fri Apr 5, 2024 at 10:08 AM CEST, Neil Armstrong wrote:
> Hi Luca,
>
> On 29/03/2024 10:02, Luca Weiss wrote:
> > On Tue Mar 26, 2024 at 10:02 PM CET, Konrad Dybcio wrote:
> >> On 16.03.2024 5:01 PM, Bjorn Andersson wrote:
> >>> On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
> >>>> On 15/03/2024 18:19, Luca Weiss wrote:
> >>>>> On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
> >>>>>> Register a typec mux in order to change the PHY mode on the Type-C
> >>>>>> mux events depending on the mode and the svid when in Altmode setup.
> >>>>>>
> >>>>>> The DisplayPort phy should be left enabled if is still powered on
> >>>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >>>>>> PHY is not powered off.
> >>>>>>
> >>>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >>>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
> >>>>>> this will leave enough time to the DRM DisplayPort controller to
> >>>>>> turn of the DisplayPort PHY.
> >>>>>>
> >>>>>> The patchset also includes bindings changes and DT changes.
> >>>>>>
> >>>>>> This has been successfully tested on an SM8550 board, but the
> >>>>>> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> >>>>>> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> >>>>>> as expected.
> >>>>>>
> >>>>>> The DisplayPort 4 lanes setup can be check with:
> >>>>>> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> >>>>>> 	name = msm_dp
> >>>>>> 	drm_dp_link
> >>>>>> 		rate = 540000
> >>>>>> 		num_lanes = 4
> >>>>>
> >>>>> Hi Neil,
> >>>>>
> >>>>> I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
> >>>>> haven't had any success so far.
> >>>>>
> >>> [..]
> >>>>> [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
> >>>>> [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
> >>>>
> >>>> Interesting #1 means the 4 lanes are not physically connected to the other side,
> >>>> perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
> >>>> or some fixups in the init tables.
> >>>>
> >>>
> >>> I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
> >>> same outcome. Looking at the AUX reads, after switching to 4-lane the
> >>> link training is failing on all 4 lanes, in contrast to succeeding only
> >>> on the first 2 if you e.g. forget to mux the other two.
> >>>
> >>> As such, my expectation is that there's something wrong in the QMP PHY
> >>> (or possibly redriver) for this platform.
> >>
> >> Do we have any downstream tag where 4lane dp works? I'm willing to believe
> >> the PHY story..
> > 
> > Just tested on Fairphone 5 downstream and 4 lane appears to work there.
> > This is with an USB-C to HDMI adapter that only does HDMI.
> > 
> > FP5:/ # cat /sys/kernel/debug/drm_dp/dp_debug
> >          state=0x20a5
> >          link_rate=270000
> >          num_lanes=4
> >          resolution=2560x1440@60Hz
> >          pclock=241500KHz
> >          bpp=24
> >          test_req=DP_LINK_STATUS_UPDATED
> >          lane_count=4
> >          bw_code=10
> >          v_level=0
> >          p_level=0
> > 
> > Sources are here:
> > https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-5.4/+/refs/heads/odm/rc/target/13/fp5
> > And probably more importantly techpack/display:
> > https://gerrit-public.fairphone.software/plugins/gitiles/platform/vendor/opensource/display-drivers/+/refs/heads/odm/rc/target/13/fp5
> > Dts if useful:
> > https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-extra/devicetree/+/refs/heads/kernel/13/fp5
>
> Could you retry with this applied ?
>
> https://lore.kernel.org/all/20240405000111.1450598-1-swboyd@chromium.org/

Unfortunately I do not see any change with this on QCM6490 Fairphone 5
and 4-lane DP.

Regards
Luca

>
> Thanks,
> Neil
>
> > 
> > Regards
> > Luca
> > 
> >>
> >> Konrad
> > 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
