Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E0A3C6FD1F
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 09:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=peSR64fuiA7dt0/t4rnANXMPqlGNpOTk9abE5Qzm6AQ=; b=omKeVN7L3DGtQ0
	CdQyDoZJWLZU9SwzTGWTs/jAKkaY1Z9CG4eMAEQvUoBzku6K1FiX21pqet8KD9DYLdg+3IDhwUbjH
	MM07E9VSd+Wb+4MgSChYZN1bLdeCiTNvL4k4lUykok95AqcRcEvmHH1l6sFi9Ll7vkXY7+b6o5lzN
	70031eouoagdoD03cC9vAoLl2zEYqnOka44LhdqLiK2HzE2wW6b9+sjp2dLfGMlZ+Zy9Y7WqoK2rB
	BaAwzKXfZZbmhKuxxcFM5CDdl0LupdG2H6eSTTY4hlFQzUMix6LMKxlsUjFfr5i5mnvJ/UgDA7/Pr
	KWtmuBz3MZ8lLAq1pGIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq88N-0000000HOpR-3Ibf;
	Fri, 29 Mar 2024 09:02:47 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq88K-0000000HOou-0ESq
	for linux-phy@lists.infradead.org;
	Fri, 29 Mar 2024 09:02:45 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5688eaf1165so2394738a12.1
        for <linux-phy@lists.infradead.org>; Fri, 29 Mar 2024 02:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1711702960; x=1712307760; darn=lists.infradead.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kJ07VpxBwuIm+C747GAvreUMoyvQyj4KBvI0bB+Uzs=;
        b=hA7U2u/Va8urYrrMiL6FkhM7pmt+qteXLFgpNg1OAZc3nT1U9TE8U+TpIwmr3caBdd
         QXjOEhJEELWmKZfQoHasyjTyExTdZRU4UlZFjzaBvr0wUhBn+zvAz1wf/CkHQM4N3mw9
         Em8JRmPI9Vnu6KO+kcJwUygYmnN/vU3GjBRAqBO1tSTA2cE22qpMt4hTTxMVi6F8fL3d
         ftACfu0CvQtEbqNCYY6X72KtR/J4dbtK/Hdq2U4eFI1Qg81ZEhnA1cJylikSNUOx04eN
         EpGbzd771mKHz0ClCmb5x8CH2UeDbY0kEyGrD9ElGXBUVu0VqN0L/wloIcFPvG+PTI3z
         nt5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711702960; x=1712307760;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/kJ07VpxBwuIm+C747GAvreUMoyvQyj4KBvI0bB+Uzs=;
        b=JEstq6MwRoHMI1R3+aCoMh42jRgrSexnCnOaUVdnPBE8JXrIJC0jHYfNkUkzmKqTIX
         tJ9EuIjZPqcRrGEKbvLpsiXE7XhWw9sWsnQq1aR+3FxQ6UvyT0cPqSbIxhlfLjwZK7Qd
         WvbZdpodlT32ljbOk7+PfetfJHgfTg/0jSJ0BpZe091S5qxxGlgZFS//h0E5ID+gDqub
         hMDdIYyCNGI3/Am908CqD36Puway4OsxA3rx2aoQmjytfw0yReKjcvP21PaGe8C+i47u
         SZQDISCXoZuvhIyS6Pwwe6bvawrD3saOf0+CAT6Y60FhGSvQZIQQl+UQLOdQ6P4yA88U
         DMgw==
X-Forwarded-Encrypted: i=1; AJvYcCVCdRPGCLYiFPGv1lP4hZj/UZdrYtLRXvW3GJcCHFUVwhMJYpmDqk2N/Ce/TsO6pH0mxpDx+upctpZsep9g4x/7yZPEa3oSicqLppmwsQ==
X-Gm-Message-State: AOJu0YxQRG5QTy3ngTEv9j+nSD3LxstuNJTFKRbH+9L4cTu0jcq9dHv0
	cCVH1kSChcSxXv0IXp3TOWjy66FSoB/bQyzhd9vsGeMOUnaEvFWuPQCVvfRiyXA=
X-Google-Smtp-Source: AGHT+IEtXOU314+1cqrx8WlAN41P0sJaaz6HVv7Pvuse+LMvU2V1oey2adNfDS+zVoFYLe2kFcwhTw==
X-Received: by 2002:a50:c351:0:b0:567:56a4:3940 with SMTP id q17-20020a50c351000000b0056756a43940mr1190062edb.19.1711702960448;
        Fri, 29 Mar 2024 02:02:40 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id b20-20020aa7cd14000000b0056bf9b4ec32sm1816243edw.78.2024.03.29.02.02.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Mar 2024 02:02:40 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 29 Mar 2024 10:02:39 +0100
Message-Id: <D064242SMIVM.1GUC1I9GE9IGC@fairphone.com>
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Konrad Dybcio" <konrad.dybcio@linaro.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: "Vinod Koul" <vkoul@kernel.org>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Abhinav Kumar" <quic_abhinavk@quicinc.com>,
 <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH RFT 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
X-Mailer: aerc 0.15.2
References: <20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org> <CZUHV429NTF7.1GW9TN9NXB4J1@fairphone.com> <7a7aa05f-9ae6-4ca0-a423-224fc78fbd0c@linaro.org> <liah4xvkfattlen7s2zi3vt2bl5pbbxqgig3k5ljqpveoao656@iacnommxkjkt> <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
In-Reply-To: <236a104c-fc16-4b3d-9a00-e16517c00e3a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_020244_214087_78C007EA 
X-CRM114-Status: GOOD (  26.61  )
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

On Tue Mar 26, 2024 at 10:02 PM CET, Konrad Dybcio wrote:
> On 16.03.2024 5:01 PM, Bjorn Andersson wrote:
> > On Fri, Mar 15, 2024 at 06:35:15PM +0100, Neil Armstrong wrote:
> >> On 15/03/2024 18:19, Luca Weiss wrote:
> >>> On Thu Feb 29, 2024 at 2:07 PM CET, Neil Armstrong wrote:
> >>>> Register a typec mux in order to change the PHY mode on the Type-C
> >>>> mux events depending on the mode and the svid when in Altmode setup.
> >>>>
> >>>> The DisplayPort phy should be left enabled if is still powered on
> >>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
> >>>> PHY is not powered off.
> >>>>
> >>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> >>>> will be set in between of USB-Only, Combo and DisplayPort Only so
> >>>> this will leave enough time to the DRM DisplayPort controller to
> >>>> turn of the DisplayPort PHY.
> >>>>
> >>>> The patchset also includes bindings changes and DT changes.
> >>>>
> >>>> This has been successfully tested on an SM8550 board, but the
> >>>> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> >>>> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> >>>> as expected.
> >>>>
> >>>> The DisplayPort 4 lanes setup can be check with:
> >>>> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> >>>> 	name = msm_dp
> >>>> 	drm_dp_link
> >>>> 		rate = 540000
> >>>> 		num_lanes = 4
> >>>
> >>> Hi Neil,
> >>>
> >>> I tried this on QCM6490/SC7280 which should also support 4-lane DP but I
> >>> haven't had any success so far.
> >>>
> > [..]
> >>> [ 1775.563969] [drm:dp_ctrl_link_train] *ERROR* max v_level reached
> >>> [ 1775.564031] [drm:dp_ctrl_link_train] *ERROR* link training #1 failed. ret=-11
> >>
> >> Interesting #1 means the 4 lanes are not physically connected to the other side,
> >> perhaps QCM6490/SC7280 requires a specific way to enable the 4 lanes in the PHY,
> >> or some fixups in the init tables.
> >>
> > 
> > I tested the same on rb3gen2 (qcs6490) a couple of weeks ago, with the
> > same outcome. Looking at the AUX reads, after switching to 4-lane the
> > link training is failing on all 4 lanes, in contrast to succeeding only
> > on the first 2 if you e.g. forget to mux the other two.
> > 
> > As such, my expectation is that there's something wrong in the QMP PHY
> > (or possibly redriver) for this platform.
>
> Do we have any downstream tag where 4lane dp works? I'm willing to believe
> the PHY story..

Just tested on Fairphone 5 downstream and 4 lane appears to work there.
This is with an USB-C to HDMI adapter that only does HDMI.

FP5:/ # cat /sys/kernel/debug/drm_dp/dp_debug
        state=0x20a5
        link_rate=270000
        num_lanes=4
        resolution=2560x1440@60Hz
        pclock=241500KHz
        bpp=24
        test_req=DP_LINK_STATUS_UPDATED
        lane_count=4
        bw_code=10
        v_level=0
        p_level=0

Sources are here:
https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-5.4/+/refs/heads/odm/rc/target/13/fp5
And probably more importantly techpack/display:
https://gerrit-public.fairphone.software/plugins/gitiles/platform/vendor/opensource/display-drivers/+/refs/heads/odm/rc/target/13/fp5
Dts if useful:
https://gerrit-public.fairphone.software/plugins/gitiles/kernel/msm-extra/devicetree/+/refs/heads/kernel/13/fp5

Regards
Luca

>
> Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
