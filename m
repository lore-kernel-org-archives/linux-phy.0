Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FFB0C61D97
	for <linux-phy@archiver.kernel.org>; Fri, 24 Nov 2023 12:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kwpS6zFWZ1MxIE7G5rEeW4OqijSI+GKLPJActHh4M+o=; b=amR2tFkLfZlOu0
	/AqfZFuoUveDphYV4as+0xwzbXm+o1vYMDCGKmtbEr4sxxeo+jWsYRoBTt34R1Kb8MPnxdbFdB+b9
	gGl0hVX2v6/AW+fs1gAKEyEE9pNbfE3gFhHmKUvLBdKNnzxBGDuL11bvCcfh1bOY1C3mTGi7OKnDE
	0UwTAGz6bOdV4FW++ykNXTv4lTzWcHWoNJyX3F2kWn4xCtgmbG8OFQsA5CPheTSTt2l3XtA+vrLOc
	bGgqxX+Deg6z7LOd4NvagU2yj+cOAnwhrGAoVl3esES24ewBQ2SNojfDD9LfClX1PxpMI1jP1t1x2
	h18cl/BPtJvJYx7BNNnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6VNV-007D7C-2i;
	Fri, 24 Nov 2023 12:33:49 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6VNS-007D6l-36
	for linux-phy@lists.infradead.org;
	Fri, 24 Nov 2023 12:33:48 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3b83398cfc7so1092069b6e.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Nov 2023 04:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700829225; x=1701434025; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u+Mi6KZdaleOXeeLFy+tPLW5lDs0FVUPIzM032jyvLo=;
        b=kSBCK30kXkq68u2evwx2mDCBYn0GXQhxf9got/D0Np9zhRPpjcEBaIJgxx4w/AYBpI
         ydIBzmta6oG6ayvNSjLEBQSSJCQvGBnBzXZLdkU8yf18yWwayo/IjMN87nay7NYw0Uba
         fj/yjMU07f5qJBnD9arE4buaFZor/rT5lxoaV07m4jNWys3tlAJBjhncKbmTmYyM3dAx
         CGdD9kt66RF90CDWdvZ20slcpuInJ6ScarSKaIXDKLDHiLhN/5+QJF3Mka6ZkW/C35NS
         pR3ROkCSYVCmnGj39Tm2NhOhEOPqe9X2/Db2ztlz9oe1DI5fQ6fI1u5zwsTJ9TGgreEw
         uHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700829226; x=1701434026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u+Mi6KZdaleOXeeLFy+tPLW5lDs0FVUPIzM032jyvLo=;
        b=J/HReYt3Bhpr5uU0MBwNcsm5E2KMKq2DpgonIUnpic40kHJkFYgwG61z11b9O6rxTj
         WJKFLuuod3v4T98WVGbaqaVJkqqfE9GWMiRvVJ7fYfI9kMvHk7gkRLhxMxi+18sKALKS
         DqeFLxGkgMie0Ww0r1PswP6YxEtwqZ6Vgfb+WjyVxAysQ6i+Ttg70HtmX9jwqud7xCgi
         XMbZHZZGZVDOtWXlhDYWeFGf+CyOQkZnGPnJ8EtypS/t0JtZWHeKqPdkl9Y6BZJf6k5m
         hSQGdTaRluUBr5m1iDt3cZTwzRDN+YFWk75ZLBnmwipHzjHyh22i7IwVVkupWcTtwONK
         OdbQ==
X-Gm-Message-State: AOJu0Yw2L/nFrwF5tNNC0ePXUJM7zbJ+XGP22Hw0+JqtP0y0bmvMMehx
	oKfZLNKie1xzi7tYzQsOAGQAa1k8HPBtCXFIOIfqtg==
X-Google-Smtp-Source: AGHT+IHePhubWcSlpkQpCam8S7h8ECxff9+Tgwphv1Ehy4bBd4FY2MbEGXszV+3z0Z0IiI2fK7mb4i6avOc4hHx5dF8=
X-Received: by 2002:a05:6808:1705:b0:3b5:6421:1a6b with SMTP id
 bc5-20020a056808170500b003b564211a6bmr3140033oib.5.1700829225586; Fri, 24 Nov
 2023 04:33:45 -0800 (PST)
MIME-Version: 1.0
References: <20231103230414.1483428-1-dmitry.baryshkov@linaro.org> <8cf55d82-afb7-475a-bc0b-ec33b56340dd@linaro.org>
In-Reply-To: <8cf55d82-afb7-475a-bc0b-ec33b56340dd@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Nov 2023 14:33:34 +0200
Message-ID: <CAA8EJpormPU+GVL4ZBkuiiRR-oMJB0y-rPUTW=W-FM+Hhqqw=Q@mail.gmail.com>
Subject: Re: [PATCH v6 0/6] drm: simplify support for transparent DRM bridges
To: "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dri-devel@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_043347_009791_7B0EF646 
X-CRM114-Status: GOOD (  23.29  )
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

On Fri, 24 Nov 2023 at 14:23, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> On 03/11/2023 23:03, Dmitry Baryshkov wrote:
> > Supporting DP/USB-C can result in a chain of several transparent
> > bridges (PHY, redrivers, mux, etc). All attempts to implement DP support
> > in a different way resulted either in series of hacks or in device tree
> > not reflecting the actual hardware design. This results in drivers
> > having similar boilerplate code for such bridges.
> >
> > Next, these drivers are susceptible to -EPROBE_DEFER loops: the next
> > bridge can either be probed from the bridge->attach callback, when it is
> > too late to return -EPROBE_DEFER, or from the probe() callback, when the
> > next bridge might not yet be available, because it depends on the
> > resources provided by the probing device. Device links can not fully
> > solve this problem since there are mutual dependencies between adjancent
> > devices.
> >
> > Last, but not least, this results in the the internal knowledge of DRM
> > subsystem slowly diffusing into other subsystems, like PHY or USB/TYPEC.
> >
> > To solve all these issues, define a separate DRM helper, which creates
> > separate aux device just for the bridge. During probe such aux device
> > doesn't result in the EPROBE_DEFER loops. Instead it allows the device
> > drivers to probe properly, according to the actual resource
> > dependencies. The bridge auxdevs are then probed when the next bridge
> > becomes available, sparing drivers from drm_bridge_attach() returning
> > -EPROBE_DEFER.
>
> Dmitry,
>
> Looking to give you a Tested-by: here but got the below splat.

This should be fixed by
https://gitlab.freedesktop.org/drm/msm/-/tags/drm-msm-fixes-2023-11-21

>
> https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/next-20231123-tcpm-fix?ref_type=heads
>
> - Boot via fastboot
> - Remove USB cable
> - Attach DisplayPort cable
> - Get some activity on the DP
> - Then this
>
> root@linaro-gnome:~# [  376.861822] xhci-hcd xhci-hcd.4.auto: xHCI Host
> Controller
> [  376.867584] xhci-hcd xhci-hcd.4.auto: new USB bus registered,
> assigned bus number 3
> [  376.875775] xhci-hcd xhci-hcd.4.auto: hcc params 0x0230ffe5 hci
> version 0x110 quirks 0x0000000000000010
> [  376.885666] xhci-hcd xhci-hcd.4.auto: irq 229, io mem 0x0a600000
> [  376.892140] xhci-hcd xhci-hcd.4.auto: xHCI Host Controller
> [  376.897951] xhci-hcd xhci-hcd.4.auto: new USB bus registered,
> assigned bus number 4
> [  376.905869] xhci-hcd xhci-hcd.4.auto: Host supports USB 3.1 Enhanced
> SuperSpeed
> [  376.914130] hub 3-0:1.0: USB hub found
> [  376.918030] hub 3-0:1.0: 1 port detected
> [  376.922417] usb usb4: We don't know the algorithms for LPM for this
> host, disabling LPM.
> [  376.931540] hub 4-0:1.0: USB hub found
> [  376.935439] hub 4-0:1.0: 1 port detected
> [  377.885638] Unable to handle kernel NULL pointer dereference at
> virtual address 0000000000000060
> [  377.892927] msm_dpu ae01000.display-controller: [drm] Cannot find any
> crtc or sizes
> [  377.894724] Mem abort info:
> [  377.905504]   ESR = 0x0000000096000004
> [  377.909375]   EC = 0x25: DABT (current EL), IL = 32 bits
> [  377.914852]   SET = 0, FnV = 0
> [  377.918005]   EA = 0, S1PTW = 0
> [  377.921250]   FSC = 0x04: level 0 translation fault
> [  377.926269] Data abort info:
> [  377.929239]   ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
> [  377.934881]   CM = 0, WnR = 0, TnD = 0, TagAccess = 0
> [  377.940095]   GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
> [  377.945563] user pgtable: 4k pages, 48-bit VAs, pgdp=0000000101992000
> [  377.952441] [0000000000000060] pgd=0000000000000000, p4d=0000000000000000
> [  377.959448] Internal error: Oops: 0000000096000004 [#1] PREEMPT SMP
> [  377.965882] Modules linked in: typec_displayport nf_tables libcrc32c
> nfnetlink q6asm_dai q6routing q6afe_clocks q6afe_dai q6asm q6adm
> snd_q6dsp_common q6afe q6core apr pdr_interfacer
> [  377.965984]  aux_bridge crct10dif_ce snd_soc_lpass_macro_common
> drm_kms_helper qnoc_sm8250 qcom_wdt icc_osm_l3 fuse drm backlight dm_mod
> ip_tables x_tables
> [  378.072201] CPU: 5 PID: 379 Comm: dp_hpd_handler Not tainted
> 6.7.0-rc2-next-20231123-00008-g812004aeedc0-dirty #30
> [  378.082817] Hardware name: Qualcomm Technologies, Inc. Robotics RB5 (DT)
> [  378.088884] msm_dpu ae01000.display-controller: [drm] Cannot find any
> crtc or sizes
> [  378.089697] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS
> BTYPE=--)
> [  378.089700] pc : drm_object_property_set_value+0x0/0x88 [drm]
> [  378.110607] lr : drm_dp_set_subconnector_property+0x58/0x64
> [drm_display_helper]
> [  378.118205] sp : ffff800081fbbda0
> [  378.121616] x29: ffff800081fbbda0 x28: 0000000000000000 x27:
> 0000000000000000
> [  378.128940] x26: 0000000000000000 x25: 0000000000000000 x24:
> ffff38d1ccef2880
> [  378.136264] x23: ffff38d1ccef2a10 x22: ffff38d1ccef2880 x21:
> ffff38d1ccef29f0
> [  378.143587] x20: 0000000000000000 x19: ffff38d1ccef2880 x18:
> 0000000000000000
> [  378.150911] x17: 000000040044ffff x16: ffffa79c03e1fe34 x15:
> 0000000000000000
> [  378.158235] x14: ffff38d1c5861000 x13: 00000000000003ec x12:
> 0000000000000001
> [  378.165560] x11: 071c71c71c71c71c x10: 0000000000000b00 x9 :
> ffff800081fbb9d0
> [  378.172884] x8 : ffffa79b9b4d9000 x7 : 0000000000000001 x6 :
> ffffa79b9b6d74b0
> [  378.180207] x5 : 0000000000000000 x4 : ffff38d1cb2d3800 x3 :
> ffff38d1c28e169f
> [  378.187530] x2 : 000000000000000f x1 : 0000000000000000 x0 :
> ffff38d1cb2d3840
> [  378.194853] Call trace:
> [  378.197376]  drm_object_property_set_value+0x0/0x88 [drm]
> [  378.202947]  dp_display_process_hpd_high+0xa0/0x14c [msm]
> [  378.208526]  dp_hpd_plug_handle.isra.0+0x8c/0x10c [msm]
> [  378.213918]  hpd_event_thread+0xc4/0x56c [msm]
> [  378.218508]  kthread+0x110/0x114
> [  378.221828]  ret_from_fork+0x10/0x20
> [  378.225506] Code: 128002a0 d65f03c0 d4210000 17ffffea (f9403024)
> [  378.231763] ---[ end trace 0000000000000000 ]---
> [  384.505974] msm_dpu ae01000.display-controller: [drm] Cannot find any
> crtc or sizes
> [  385.538016] msm_dpu ae01000.display-controller: [drm] Cannot find any
> crtc or sizes
> [  385.666018] msm_dpu ae01000.display-controller: [drm] Cannot find any
> crtc or sizes
>
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
