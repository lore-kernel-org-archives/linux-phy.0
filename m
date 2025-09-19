Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 643FACAC59A
	for <linux-phy@archiver.kernel.org>; Fri, 19 Sep 2025 15:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwxaOTw6UEKLaD5D3vwWj8yPx7e0IvTyhGT1587SFOQ=; b=3oA3Y2FYMepZr3
	xcrnjEkIO60TH0NI/v7m6bgy5yDCOd2LGWrQK4lfO9jDjWJpwLZecmcafTRwzTi7IXYLfnRkAKLRk
	aSMvKfpYLLQlFPvkCUQaQF/LIQWcPKKp3MwQfXFM/vzRoqld6Pkc+14umdm3F2IDD6zP7KmoXvNRD
	utoNvWoQ5T9WVWlQSevlyej3Otz/tjWwxLq+Bozbi4RMtZCI153ssUTn558GRNpqbz/fNlKQSvK9I
	ThoMmEWz5DhurkEdV3hyiKMevApYvbBubH30NCHsDPJRT74P4h1jkWpmvIXKWm9hLSrMfrVzYKMDp
	Iz2b9Vp91DhdnRVaR3DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcda-00000003Fui-0BGw;
	Fri, 19 Sep 2025 15:03:02 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzcdX-00000003Ftn-2pN8
	for linux-phy@lists.infradead.org;
	Fri, 19 Sep 2025 15:03:01 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-afcb78ead12so327651266b.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Sep 2025 08:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758294177; x=1758898977; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RuhmeiLRDOZblDBgAns4hX7zt5ydWj4wdgPVrc0nj58=;
        b=niuF5P7ovHD9DHCyGDELsBggkLhbe2Z40gORnViQ3i6NkygbdG6a5dwimDt9C6EWhO
         tZq+E0ssgc4zcfvSR0BDeHimK8dj7BfQK3EixTO0F/dltDlmTCfgHgmqKUjgvEVzDK8v
         XHNvmKysJBmjuc/1n8PlDZl5v1LQ4RZBL3mVPZ2mkEWQc1fcTyhwXBMyC5LAlxgn+osf
         ltLTReauax+53iNljy9sCavS39cLtihHuifWYrddoo1QVtYdfbGnwYVXrltJiXOC84jh
         nw+E+vy7wwwWMK4T6aZO7H+Wdt/x+IVGSZgdocfsIzW7Q2b6OsA8OfyoKAskpSCV2JzC
         Wm4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758294177; x=1758898977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RuhmeiLRDOZblDBgAns4hX7zt5ydWj4wdgPVrc0nj58=;
        b=gIIKkm8G/Cw/BLfQ7G6OhqmETpl2669Qk9MkEb1RQaVeiTnkD1HHfzQ33DO3s3syO+
         x++yy4+WPsaT8YLYMRaSvQyrwM7ok02IGVLzsUquPrEbXtGPuFYLbnc6BeP0rU++rYRH
         prymsz0KH8u+CIYabW+p0k3m7WRSppQvKRIkb3u/kBe7FPymBC23vgzBU3GcMOCOdffR
         8lFZ7uIBUCTTmkFbDr93z72RG+PVXXtLIgQ3Ye7N0yTltOvAVK4Rs8l+wIsI6Me3tpsV
         HkJjzdCKoHLN5yVVWHNUpqsT0j3GVpH9UozU9VNbjj3c5471P2epPt+PiPsphanFZfGo
         Hn0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVB3fB8/Gl+zPyAX7OAGQyKcfc8FB8YSC9QlDnqhTICHI9zCsa8Dec8TyQpDm9ttlxSKVn5DkHP6vA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwHnvtatZJMRjge2KRCkmICfdPd4uGMFWe7p6G5laqCBMnaiNBR
	2KjtbjESQNY7K+hm8steu3t7JDebFKLZLasElbRl0Wx8NOqynXCAbsJgtmL5V1FEETk=
X-Gm-Gg: ASbGnculYA0vi/Kqi7luiPGLn03xS2adBowxmmjiodYtBBBdZbOq2e1+rBOcFNEgYUs
	sKt3nLz+d2it6QiZFtg7aoU+RzsQswik1Itj220kYQX2TjFQAhqRy2w5/w9341U6xmWSpiQydRs
	Xps9c3z6cCejI7TAku+miScT/t+QVmWZyqIIaOxqkXXeJo4M3Snn4AVrHE/uDDEPTNxAbn3SJOw
	DfXMYnemdkWgM89ha43DZ+DIjlxDHdve/Yd3cOXa0k3A5dUL5xYYj9EQTnyph8HvHzht5PkppES
	88+ANUc5V0iAEyC2FeO+W3e+1GNWxHm8k7ixKBVFpF5uYzag0Z2SYwLIIWWM7azSfqkzq2J3t35
	SsI+ctuQkgYxoKSakZdEbXJ47jAl0HNQ+
X-Google-Smtp-Source: AGHT+IFfO0W8JQzVl/Y/fMJyVo1TEp0T/8tQQYw78b9ni5HcTOJsYbcXUUCxll2lkB3I4VDq0l24kg==
X-Received: by 2002:a17:906:bc94:b0:b04:7232:3ea9 with SMTP id a640c23a62f3a-b24f56858a3mr307356066b.50.1758294177283;
        Fri, 19 Sep 2025 08:02:57 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:30:b511:37d7:e73a:6aaa])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b1fd1102093sm458529066b.83.2025.09.19.08.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:02:56 -0700 (PDT)
Date: Fri, 19 Sep 2025 17:02:52 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Xilin Wu <sophon@radxa.com>
Cc: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v3 0/3] phy: qcom: edp: Add missing ref clock to x1e80100
Message-ID: <aM1wnAw0mA-iNgJy@linaro.org>
References: <20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org>
 <6A43111ED3D39760+a88e4a65-5da8-4d3b-b27e-fa19037462c8@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6A43111ED3D39760+a88e4a65-5da8-4d3b-b27e-fa19037462c8@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_080259_767951_13D3ABFB 
X-CRM114-Status: GOOD (  35.52  )
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

On Fri, Sep 19, 2025 at 07:06:36PM +0800, Xilin Wu wrote:
> On 9/9/2025 3:33 PM, Abel Vesa wrote:
> > According to documentation, the DP PHY on x1e80100 has another clock
> > called ref.
> > 
> > The current X Elite devices supported upstream work fine without this
> > clock, because the boot firmware leaves this clock enabled. But we should
> > not rely on that. Also, when it comes to power management, this clock
> > needs to be also disabled on suspend. So even though this change breaks
> > the ABI, it is needed in order to make we disable this clock on runtime
> > PM, when that is going to be enabled in the driver.
> > 
> > So rework the driver to allow different number of clocks, fix the
> > dt-bindings schema and add the clock to the DT node as well.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > Changes in v3:
> > - Use dev_err_probe() on clocks parsing failure.
> > - Explain why the ABI break is necessary.
> > - Drop the extra 'clk' suffix from the clock name. So ref instead of
> >    refclk.
> > - Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org
> > 
> > Changes in v2:
> > - Fix schema by adding the minItems, as suggested by Krzysztof.
> > - Use devm_clk_bulk_get_all, as suggested by Konrad.
> > - Rephrase the commit messages to reflect the flexible number of clocks.
> > - Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org
> > 
> > ---
> > Abel Vesa (3):
> >        dt-bindings: phy: qcom-edp: Add missing clock for X Elite
> >        phy: qcom: edp: Make the number of clocks flexible
> >        arm64: dts: qcom: Add missing TCSR ref clock to the DP PHYs
> > 
> >   .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
> >   arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 12 ++++++----
> >   drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
> >   3 files changed, 43 insertions(+), 13 deletions(-)
> > ---
> > base-commit: 65dd046ef55861190ecde44c6d9fcde54b9fb77d
> > change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7
> > 
> > Best regards,
> 
> Hi,
> 
> I'm observing what looks like a related clock failure on sc8280xp when
> booting without a monitor connected to a DP-to-HDMI bridge on mdss0_dp2.
> 
> Do you think sc8280xp might require a similar fix, or could this be a
> different issue?
> 
> 
> [    0.390390] ------------[ cut here ]------------
> [    0.390398] disp0_cc_mdss_dptx2_link_clk_src: rcg didn't update its
> configuration.
> [    0.390419] WARNING: CPU: 0 PID: 63 at drivers/clk/qcom/clk-rcg2.c:136
> update_config+0xa4/0xb0
> [    0.390439] Modules linked in:
> [    0.390448] CPU: 0 UID: 0 PID: 63 Comm: kworker/u32:1 Not tainted 6.16.3+
> #45 PREEMPT(lazy)
> [    0.390455] Hardware name: Qualcomm QRD, BIOS
> 6.0.250905.BOOT.MXF.1.1.c1-00167-MAKENA-1 09/ 5/2025
> [    0.390460] Workqueue: events_unbound deferred_probe_work_func
> [    0.390476] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS
> BTYPE=--)
> [    0.390482] pc : update_config+0xa4/0xb0
> [    0.390492] lr : update_config+0xa4/0xb0
> [    0.390500] sp : ffff80008351b9e0
> [    0.390504] x29: ffff80008351b9e0 x28: 0000000000000000 x27:
> ffff0000850ec3c0
> [    0.390515] x26: ffff800081205320 x25: 0000000000000002 x24:
> 0000000000000000
> [    0.390523] x23: ffff8000812052a0 x22: ffff000080467800 x21:
> ffff800081207ef0
> [    0.390531] x20: ffff8000822ad6f0 x19: 0000000000000000 x18:
> ffffffffffc06b68
> [    0.390539] x17: 616c707369642e30 x16: 3030313065613a6d x15:
> ffff800081474230
> [    0.390547] x14: ffffffffff806b67 x13: 2e6e6f6974617275 x12:
> 6769666e6f632073
> [    0.390556] x11: 0000000000000058 x10: 0000000000000018 x9 :
> ffff8000814742b8
> [    0.390565] x8 : 0000000000afffa8 x7 : 0000000000000179 x6 :
> ffff800081f742b8
> [    0.390574] x5 : ffff800081f742b8 x4 : 0000000000000178 x3 :
> 00000000fffdffff
> [    0.390582] x2 : ffff8000814741f8 x1 : ffff00008091cec0 x0 :
> 0000000100000000
> [    0.390591] Call trace:
> [    0.390595]  update_config+0xa4/0xb0 (P)
> [    0.390606]  clk_rcg2_set_parent+0x58/0x68
> [    0.390617]  clk_core_set_parent_nolock+0xc4/0x1e0
> [    0.390630]  clk_set_parent+0x40/0x144
> [    0.390638]  of_clk_set_defaults+0x12c/0x520
> [    0.390645]  platform_probe+0x38/0xdc
> [    0.390652]  really_probe+0xc0/0x390
> [    0.390657]  __driver_probe_device+0x7c/0x150
> [    0.390663]  driver_probe_device+0x40/0x120
> [    0.390667]  __device_attach_driver+0xbc/0x168
> [    0.390673]  bus_for_each_drv+0x74/0xc0
> [    0.390684]  __device_attach+0x9c/0x1ac
> [    0.390688]  device_initial_probe+0x14/0x20
> [    0.390694]  bus_probe_device+0x9c/0xa0
> [    0.390703]  deferred_probe_work_func+0xa8/0xf8
> [    0.390713]  process_one_work+0x150/0x2b0
> [    0.390725]  worker_thread+0x2d0/0x3ec
> [    0.390731]  kthread+0x118/0x1e0
> [    0.390738]  ret_from_fork+0x10/0x20
> [    0.390751] ---[ end trace 0000000000000000 ]---
> [    0.390760] clk: failed to reparent disp0_cc_mdss_dptx2_link_clk_src to
> aec2a00.phy::link_clk: -16
> [    0.401093] ------------[ cut here ]------------
> [    0.401096] disp0_cc_mdss_dptx2_pixel0_clk_src: rcg didn't update its
> configuration.
> [    0.401112] WARNING: CPU: 0 PID: 63 at drivers/clk/qcom/clk-rcg2.c:136
> update_config+0xa4/0xb0
> [    0.401126] Modules linked in:
> [    0.401132] CPU: 0 UID: 0 PID: 63 Comm: kworker/u32:1 Tainted: G   W
> 6.16.3+ #45 PREEMPT(lazy)
> [    0.401141] Tainted: [W]=WARN
> [    0.401144] Hardware name: Qualcomm QRD, BIOS
> 6.0.250905.BOOT.MXF.1.1.c1-00167-MAKENA-1 09/ 5/2025
> [    0.401147] Workqueue: events_unbound deferred_probe_work_func
> [    0.401159] pstate: 60400005 (nZCv daif +PAN -UAO -TCO -DIT -SSBS
> BTYPE=--)
> [    0.401164] pc : update_config+0xa4/0xb0
> [    0.401174] lr : update_config+0xa4/0xb0
> [    0.401182] sp : ffff80008351b9e0
> [    0.401185] x29: ffff80008351b9e0 x28: 00000000fffffff0 x27:
> ffff0000850ec3c0
> [    0.401194] x26: ffff800081205320 x25: 0000000000000002 x24:
> 0000000000000000
> [    0.401203] x23: ffff8000812052a0 x22: ffff000080467800 x21:
> ffff800081207ea0
> [    0.401211] x20: ffff8000822ad640 x19: 0000000000000000 x18:
> ffffffffffc07528
> [    0.401219] x17: 32636561206f7420 x16: 0001020ef3c08cb3 x15:
> ffff800081474230
> [    0.401227] x14: ffffffffff807527 x13: 2e6e6f6974617275 x12:
> 6769666e6f632073
> [    0.401235] x11: 0000000000000058 x10: 0000000000000018 x9 :
> ffff8000814742b8
> [    0.401243] x8 : 0000000000afffa8 x7 : 00000000000001a4 x6 :
> ffff800081f742b8
> [    0.401252] x5 : ffff800081f742b8 x4 : 00000000000001a3 x3 :
> 00000000fffdffff
> [    0.401260] x2 : ffff8000814741f8 x1 : ffff00008091cec0 x0 :
> 0000000100000000
> [    0.401268] Call trace:
> [    0.401271]  update_config+0xa4/0xb0 (P)
> [    0.401281]  clk_rcg2_set_parent+0x58/0x68
> [    0.401291]  clk_core_set_parent_nolock+0xc4/0x1e0
> [    0.401299]  clk_set_parent+0x40/0x144
> [    0.401308]  of_clk_set_defaults+0x12c/0x520
> [    0.401314]  platform_probe+0x38/0xdc
> [    0.401321]  really_probe+0xc0/0x390
> [    0.401325]  __driver_probe_device+0x7c/0x150
> [    0.401330]  driver_probe_device+0x40/0x120
> [    0.401335]  __device_attach_driver+0xbc/0x168
> [    0.401340]  bus_for_each_drv+0x74/0xc0
> [    0.401349]  __device_attach+0x9c/0x1ac
> [    0.401353]  device_initial_probe+0x14/0x20
> [    0.401358]  bus_probe_device+0x9c/0xa0
> [    0.401367]  deferred_probe_work_func+0xa8/0xf8
> [    0.401377]  process_one_work+0x150/0x2b0
> [    0.401384]  worker_thread+0x2d0/0x3ec
> [    0.401390]  kthread+0x118/0x1e0
> [    0.401395]  ret_from_fork+0x10/0x20
> [    0.401405] ---[ end trace 0000000000000000 ]---
> [    0.401412] clk: failed to reparent disp0_cc_mdss_dptx2_pixel0_clk_src to
> aec2a00.phy::vco_div_clk: -16
> 

The same happens on the X1E Devkit if there is nothing connected to the
HDMI port. I believe you are looking for my patch series instead. :-)

https://lore.kernel.org/r/20250814-platform-delay-clk-defaults-v1-0-4aae5b33512f@linaro.org/T/

If it works for you, replying with a Tested-by there would be much
appreciated. I'm still trying to convince folks that the approach of the
series is the best way to move forward with this issue. :-)

Thanks,
Stephan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
