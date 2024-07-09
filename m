Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB537C2BD09
	for <linux-phy@archiver.kernel.org>; Tue,  9 Jul 2024 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rSQH6++zSJ+o3u+dwNZNf6ixvu1n2z6X67NxTOBhbqw=; b=YYFJJJF1MG1otH
	diAbE6rE570JiyhoIdsyJdYMAnzEXPGVp8a/iynLkK+NLB2qpDj+3xKRZTN+iih9zzLJ5aQpAmS1Z
	b1/rxS+9M1GENrbmItAd2r+BmlWB7kpBiH+DuAslqEXX9Y3SB9l09mDDE0sTtYJlBP2kqwLKDgdS2
	UhFboF1xsUIvXUeUcloRWT597k5jVM4m1lYmSZttig8k6lslUqQspFX0qh06Fsnzx4YA3nd0IzDjy
	hyyLP/GEsHRbbqRk2tb+D6N5ll43qjO9cobgGHysN+XsNjkNAQxr3BBOYDd4Xfyb1G1gSgqJNOTo5
	fiPi5AeClr9qaZuuCT7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIq5-00000008j5b-2V1i;
	Tue, 09 Jul 2024 21:57:33 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRIpo-00000008j1c-37Sq
	for linux-phy@lists.infradead.org;
	Tue, 09 Jul 2024 21:57:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720562235;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=rOYlwEvE3CRkpdrcIidqEtY0o1/uFJMgJh0+BYOaeTI=;
	b=U7rhxD0lH0oz+m2oEzCZSi+XEjzE4/Y7e6V7+wISkO8x6Ybfk1MNUUmjU+w7OKXGsfsO9m
	W/B1LJj1wZZEAtVgah6LpdxRtcwTYLVoQoRu/oDErzQfxZflhH55+udw8sDFFtl5Yvmlm4
	ZV4KKUcsRVokEj6esD0VhTf87QEiAYE=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-589-PuPjaD1yOfCdFBlY1S3KPg-1; Tue, 09 Jul 2024 17:57:13 -0400
X-MC-Unique: PuPjaD1yOfCdFBlY1S3KPg-1
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6b5dfeae8caso80119006d6.2
        for <linux-phy@lists.infradead.org>; Tue, 09 Jul 2024 14:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720562233; x=1721167033;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rOYlwEvE3CRkpdrcIidqEtY0o1/uFJMgJh0+BYOaeTI=;
        b=eamY1avKYGVjeERUNtz2QP/VB3gGG26r/d0aolAzV+uLGFmowJh7LSKyg5yGtMatgP
         uVtKJJ3uG/jYSZbJoepHYtWYvOtAQhcqSVq6cKretjRji6WFC//gMVXoUdhrydAesUHy
         USIdRSu2INK6iB5Gnn5sGLqxXR7bBZ5wp9YAT5wPrh4437Q9mw6vYSZftIRJyBy6fmge
         aCvnnfnfvV0afilWFJ6HQwK5jKJ+awjo+3VaeAtCz8arFMfN8LkTvjIap2h9xdOA42yS
         dLtmCOnOc0vabsTbJtOjzJUYUY/VglRvIk+35CtZ8NqzLkaDJVd78hTSzmiDqbdjmBCT
         9lPw==
X-Forwarded-Encrypted: i=1; AJvYcCUWw6CQzgxIB0EKVSkDxuyQ4X4UQD4+1H0Gw/MHQeGGSpV6MdM3iuH8MX2CwqbNwy4vg+OIJ001mI5MFe0I1yq8trzoPk3t7N+cCV/neQ==
X-Gm-Message-State: AOJu0YzpAJjjXuKi6h3wvJtynY+lVP5V3prbqMf8KH5BBcklY11WVZEL
	AI56bU2BZY9cRB3VhT5wV8ISAPqOEPNgZwRfnpjv+HBMSfqoYv/NKHYviE+Nh8bzUXQ4bovGIPD
	bVDMFm14XvpK6Uy24NdmQ9KJMM8k0Uo2+ZQhvNaxg8m38etgMwSmzBe+g0SJZOI4=
X-Received: by 2002:a05:6214:2389:b0:6b5:a4f6:514 with SMTP id 6a1803df08f44-6b61bf3dccfmr47969136d6.35.1720562232998;
        Tue, 09 Jul 2024 14:57:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXKwYqsJhIzHXM1Pp2+5dsrEmOceeSwAelsN/xqRAjzsro2gqL+wO4v2T8X+9V2kMBuTmF+Q==
X-Received: by 2002:a05:6214:2389:b0:6b5:a4f6:514 with SMTP id 6a1803df08f44-6b61bf3dccfmr47968846d6.35.1720562232665;
        Tue, 09 Jul 2024 14:57:12 -0700 (PDT)
Received: from x1gen2nano ([2600:1700:1ff0:d0e0::40])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b61b9c585bsm12321226d6.20.2024.07.09.14.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jul 2024 14:57:12 -0700 (PDT)
Date: Tue, 9 Jul 2024 16:57:09 -0500
From: Andrew Halaney <ahalaney@redhat.com>
To: nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, 
	kishon@kernel.org, sjakhade@cadence.com, rogerq@kernel.org, 
	thomas.richard@bootlin.com, theo.lebrun@bootlin.com, make24@iscas.ac.cn, 
	linux-phy@lists.infradead.org, s-vadapalli@ti.com, mranostay@ti.com
Subject: [BUG] k3-j784s4-evm/phy-cadence-torrent: Shared reset using
 exclusive API
Message-ID: <yhtb4clns57t7qo5yxil3oofisdlzfubyiwrvjo2ufw2ngv67m@g6p7ktxfgfv3>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_145716_929843_A16F9865 
X-CRM114-Status: GOOD (  11.04  )
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

Hi,

Running linux-next on a k3-j784s4-evm I got this splat:

	[    4.846253] ------------[ cut here ]------------
	[    4.846266] WARNING: CPU: 4 PID: 308 at drivers/reset/core.c:792 __reset_control_get_internal+0x128/0x160
	[    4.846288] Modules linked in: ti_am335x_adc(+) phy_cadence_torrent(+) can_dev snd_soc_ti_udma snd_soc_j721e_evm snd_soc_pcm3168a_i2c drm_kms_helper rtc_tps6594(+) tps6594_regulator(+) mc at24 kfifo_buf tps6594_pfsm(+) tps6594_esm gpio_regmap snd_soc_pcm3168a snd_soc_ti_edma ti_k3_r5_remoteproc k3_j72xx_bandgap ti_j721e_ufs snd_soc_ti_sdma ti_k3_dsp_remoteproc cdns3_ti drm backlight phy_can_transceiver omap_mailbox tps6594_i2c tps6594_core phy_j721e_wiz ti_am335x_tscadc sa2ul authenc rti_wdt fuse ipv6
	[    4.846336] CPU: 4 UID: 0 PID: 308 Comm: systemd-udevd Not tainted 6.10.0-rc6-next-20240703 #72
	[    4.846342] Hardware name: ti,j784s4-evm Texas Instruments J784S4 EVM/Texas Instruments J784S4 EVM, BIOS 2024.01-rc3 01/01/2024
	[    4.846345] pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
	[    4.846349] pc : __reset_control_get_internal+0x128/0x160
	[    4.846354] lr : __of_reset_control_get+0x4e0/0x528
	[    4.846359] sp : ffff8000858b3400
	[    4.846360] x29: ffff8000858b3400 x28: 0000000000000001 x27: ffff000f7c00fa98
	[    4.846365] x26: 0000000000000001 x25: ffff80008324d330 x24: ffff00080aecd2a8
	[    4.846370] x23: 0000000000000001 x22: 0000000000000000 x21: 0000000000000004
	[    4.846374] x20: ffff00080aecd288 x19: fffffffffffffff0 x18: 00000000000001d0
	[    4.846379] x17: 0000000000000230 x16: 00000000000000bc x15: ffff00080a630000
	[    4.846383] x14: 0000000000000000 x13: 0000000000000000 x12: 0000000000000004
	[    4.846387] x11: 0000000000000000 x10: 0000000000000005 x9 : 0000000000000000
	[    4.846391] x8 : ffff00080741f4c8 x7 : 00736c6c65632d74 x6 : 00000080236d626f
	[    4.846396] x5 : 6f626d2300000000 x4 : 0000000080000000 x3 : 0000000000000001
	[    4.846400] x2 : 0000000000000000 x1 : 0000000000000004 x0 : ffff00080aecd288
	[    4.846405] Call trace:
	[    4.846407]  __reset_control_get_internal+0x128/0x160
	[    4.846413]  __of_reset_control_get+0x4e0/0x528
	[    4.846418]  of_reset_control_array_get+0xa4/0x1f8
	[    4.846423]  cdns_torrent_phy_probe+0xbc8/0x1068 [phy_cadence_torrent]
	[    4.846445]  platform_probe+0xb4/0xe8
	[    4.846456]  really_probe+0x134/0x2e0
	[    4.846460]  __driver_probe_device+0xac/0x140
	[    4.846464]  driver_probe_device+0x48/0x210
	[    4.846468]  __driver_attach+0xe8/0x1b8
	[    4.846472]  bus_for_each_dev+0xf8/0x158
	[    4.846475]  driver_attach+0x30/0x48
	[    4.846480]  bus_add_driver+0x160/0x280
	[    4.846483]  driver_register+0x74/0x118
	[    4.846486]  __platform_driver_register+0x30/0x48
	[    4.846491]  init_module+0x2c/0xff8 [phy_cadence_torrent]
	[    4.846501]  do_one_initcall+0xd0/0x2e0
	[    4.846509]  do_init_module+0x60/0x210
	[    4.846515]  load_module+0x14f4/0x1768
	[    4.846519]  __arm64_sys_finit_module+0x21c/0x2c0
	[    4.846522]  invoke_syscall+0x4c/0x118
	[    4.846529]  el0_svc_common+0x8c/0xf0
	[    4.846534]  do_el0_svc+0x28/0x40
	[    4.846538]  el0_svc+0x34/0x80
	[    4.846548]  el0t_64_sync_handler+0x84/0x100
	[    4.846553]  el0t_64_sync+0x190/0x198
	[    4.846557] ---[ end trace 0000000000000000 ]---
	[    4.846577] cdns-torrent-phy 5060000.serdes: phy@0: failed to get reset

this is because the devicetree has two[0][1] consumers of the same reset:

	&serdes0 {
		status = "okay";

		serdes0_pcie1_link: phy@0 {
			reg = <0>;
			cdns,num-lanes = <4>;
			#phy-cells = <0>;
			cdns,phy-type = <PHY_TYPE_PCIE>;
			resets = <&serdes_wiz0 1>, <&serdes_wiz0 2>,
				 <&serdes_wiz0 3>, <&serdes_wiz0 4>;
		};
	};
	...
	&serdes0 {
		status = "okay";

		serdes0_usb_link: phy@3 {
			reg = <3>;
			cdns,num-lanes = <1>;
			#phy-cells = <0>;
			cdns,phy-type = <PHY_TYPE_USB3>;
			resets = <&serdes_wiz0 4>;
		};
	};

phy-cadence-torrent (the serdes0 consumer here) uses the exclusive consumer API[2],
so this blows up.

Is the problem here that one of the above devicetree nodes is using the wrong
reset, or does the driver need to look into using the shared API? I'm
not sure where to find the reset definitions for the IP here unfortunately,
so I'm hoping someone can help confirm if those are correct or not.

Total aside, I think we should put the above dts snippet into one &serdes0 reference
for readability sake. I'd post the patch but I'm hoping to get the above answered
first in order to clean that up before shuffling things around for readability sake.

[0] pcie serdes0_pcie1_link: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts?h=next-20240703#n1398
[1] usb serdes0_usb_link: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/arch/arm64/boot/dts/ti/k3-j784s4-evm.dts?h=next-20240703#n1270
[2] phy-cadence-torrent reset usage: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/phy/cadence/phy-cadence-torrent.c?h=next-20240703#n2878

Thanks,
Andrew


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
