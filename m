Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 218E3D2D108
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jan 2026 14:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qraExUfTGMwkdtPi3oBw7oLYscUbe+gpfQBLYjGHNA4=; b=XEnHfLh793+o4r
	0CVYeac8M1kJvLEkYJwXMez0OSdas0JQq0/r/xa0HmkgxEnHEhMXiwl+Nas43ckOGcCxof7s/OtGH
	RcuotVy/lYUmb/nH0KMa7LNC7/vNqim4qs7AyIA1hOvmU4yk0/ea8kPK0MMb4mv/MSA+eMaAXNkWT
	Rtv5iFTaEgtxkfZ6BLb2pG8n+kJdWZUGpVOya75HBU1bFCJ/A9zSGA5cewgc8PLNCcINhQBDwMhri
	4yGNab4FJ7Fjq8Co0KjNf5kxkaMliCMTJxmvVdPjJlTvsnoy5Qdj55ian0eEPItrWXptdp2NyGKPV
	04OpvuQi7V6YgxBg+3ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffF9-00000007Eh5-2mHE;
	Tue, 13 Jan 2026 14:19:35 +0000
Received: from mail-vk1-f180.google.com ([209.85.221.180])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vffEz-00000007EdU-408u
	for linux-phy@lists.infradead.org;
	Tue, 13 Jan 2026 14:19:28 +0000
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5635f3eff8aso1430669e0c.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 06:19:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768313964; x=1768918764;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xwGbtz4WHBgjbaUVUACc9YQ7tp8fqM7Cfldv3SNB0Jo=;
        b=LFklkWIShTJZwJQqW9MLBSSC6ee7iRXZHZgneMBIntofADFfBql4fTl08Uy0ShoN3A
         tipKLsTrup/V+iIVCHuJqNObpLArLmgEb7lGOY+/WgQmwIfX8ow61PU+1CPNfiUimrll
         02RJdN7er+eGmKdLRuAz9prQiOULHSKy1pbeo5e2rHiDB8S2PLA51PFc6wmaKxVPT0wj
         KPuskfqhVOHbB4+dCgsfMDVOC0pA2HDoTRS8Vxgmwf+W2rfNkHdalgRINM6hu4bzopVV
         IpkSFGAlllIXag0gQl2cKRw0gVL5GNwSz7Xz16vByWD90uQ8dJJgtXbUDgu6apyRXQXe
         7eFw==
X-Forwarded-Encrypted: i=1; AJvYcCW0hK71HG+fOIWM5UFcDespBfX7VoUjTa1MQh+EyH+5J4d/joD3A51cCxNQVdtIouL0Xbk023cEvTU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyhmxrpLVPL9YiNlasjOOM81Xz3kvQEkCPKWo+56V74LG+IJkuR
	Q8ObiTffudrBdX+pbapmxeEU/1il1YGoMPVXPT+4nVUriCVcrURSGLI/whS9UeVR
X-Gm-Gg: AY/fxX6erT3InL8S5me56YMqdnx2Njrb9gXbkgDMXp2pfFtR2qbTG8FRu/xMW//ob3+
	TwJnaruiq1+EsyEVc56xIDcVsG+tVF80m9cv12qU96ZHkKmeObZxncPPgpmhD9wl+4gZjjS2Ea0
	L/AZCXB2Uk4azzulIX+Am6630dHsw9Q4W84XJp+68N+KR2Cs38d9f3OTnr9fFaa8ceg+HmrHxJ8
	3y8jXLOiT7LsN220Fjj2C9Ixp7KsxJcW+9c8ch2JGjCj3W0VphU8FOCm6ZaSFiWV7Qi1Nsybmtb
	APD2O4hN+qNiBQbTi/suWXKMiAEI3JG1e0/HR9BjoS40bB4yMIrRH6FB41miWCW+YSEbOjc7728
	5qJ7WuHuVbrpsPJ+WMtQ0fIURKpd282iHCaFRJaSPNHCCWEg+EZFoAe0qB7gChwxZ+fLLTN0SPT
	0l/bnU6Sf9KlyExVVpIfg+tG6840332mU4prwwDYzZ8ZE6p0GXcT7HvJKikgU=
X-Google-Smtp-Source: AGHT+IG08TiNTAyM41MOs2udIGQXpLrqThwXon/DehAKrv2YE4sbp9mA2Opu+Exh9nGCrRKXHk6azQ==
X-Received: by 2002:a05:6122:1d0d:b0:563:72d8:ea6 with SMTP id 71dfb90a1353d-56372d810f9mr4281466e0c.10.1768313962859;
        Tue, 13 Jan 2026 06:19:22 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634e959afbsm17675178e0c.1.2026.01.13.06.19.21
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:19:21 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-93f5774571eso2528683241.1
        for <linux-phy@lists.infradead.org>; Tue, 13 Jan 2026 06:19:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXs+J3W1Zjx2S1+UQpiaU4Of0KRRZ86jSv82JHPuVgqTyd5PYTbJkVTpiyXyTsfpk5KyNYvklWHMkM=@lists.infradead.org
X-Received: by 2002:a05:6102:5120:b0:5f1:55c9:11a2 with SMTP id
 ada2fe7eead31-5f155c91443mr2213235137.43.1768313960828; Tue, 13 Jan 2026
 06:19:20 -0800 (PST)
MIME-Version: 1.0
References: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260101203938.159161-1-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 13 Jan 2026 15:19:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com>
X-Gm-Features: AZwV_Qgc2H6REA8fgJsKnqRk5KR8TM9uu7EdHnPsHrNotI7sbZvhls2j-N9ukmU
Message-ID: <CAMuHMdVyQpOBT+Ho+mXY07fndFN9bKJdaaWGn91WOFnnYErLyg@mail.gmail.com>
Subject: Re: [PATCH 00/11] Describe PCIe/USB3.0 clock generator on R-Car Gen3
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_061926_023912_96123422 
X-CRM114-Status: GOOD (  26.85  )
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

Hi Marek,

On Thu, 1 Jan 2026 at 21:39, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on various
> R-Car Gen3 boards. The clock generator supplies 100 MHz differential clock
> for PCIe ports, USB 3.0 PHY and SATA.
>
> The series effectively has three parts, the first three patches are part 1,
> which fills in the missing USB 3.0 PHY on R-Car E3 Ebisu and enables it,
> thus aligning the Ebisu USB 3.0 support with the rest of the Gen3 boards.
>
> The second part is description of PCIe root ports on R-Car Gen3 SoCs where
> applicable, in this case that is H3/M3W/M3N/E3. The root port is used with
> PCIe port power control to also control the PCIe port clock. This is needed
> on Gen3 boards, because they often use separate clock output from the PCIe
> clock generator 9FGV0841 to supply clock to the controller and to the PCIe
> port.
>
> The third part is enablement of the 9FGV0841 PCIe clock controller on the
> R-Car Salvator-X/XS, ULCB and Ebisu boards. The boards use the PCIe clock
> controller outputs in a slightly different manner, all use the outputs to
> supply PCIe controllers and slots, as well as USB 3.0 SuperSpeed PHY. The
> ULCB board also uses the 9FGV0841 to supply SATA IP, but this is not yet
> described in DT, therefore it is also not part of this series.
>
> Marek Vasut (11):
>   dt-bindings: phy: renesas: usb3-phy: add r8a77990 support
>   arm64: dts: renesas: r8a77990: Add USB 3.0 PHY and USB3S0 clock nodes
>   arm64: dts: renesas: ebisu: Enable USB 3.0 PHY
>   arm64: dts: renesas: r8a77951: Describe PCIe root ports
>   arm64: dts: renesas: r8a77960: Describe PCIe root ports
>   arm64: dts: renesas: r8a77961: Describe PCIe root ports
>   arm64: dts: renesas: r8a77965: Describe PCIe root ports
>   arm64: dts: renesas: r8a77990: Describe PCIe root port
>   arm64: dts: renesas: salvator-common: Describe PCIe/USB3.0 clock
>     generator
>   arm64: dts: renesas: ulcb: ulcb-kf: Describe PCIe/USB3.0 clock
>     generator
>   arm64: dts: renesas: ebisu: Describe PCIe/USB3.0 clock generator

Thanks for your series!

This causes a crash during s2idle on e.g. Salvator-XS with R-Car
H3 ES2.0:

    PM: suspend entry (s2idle)
    Filesystems sync: 0.014 seconds
    Unable to handle kernel NULL pointer dereference at virtual
address 0000000000000008
    Mem abort info:
      ESR = 0x0000000096000004
      EC = 0x25: DABT (current EL), IL = 32 bits
      SET = 0, FnV = 0
      EA = 0, S1PTW = 0
      FSC = 0x04: level 0 translation fault
    Data abort info:
      ISV = 0, ISS = 0x00000004, ISS2 = 0x00000000
      CM = 0, WnR = 0, TnD = 0, TagAccess = 0
      GCS = 0, Overlay = 0, DirtyBit = 0, Xs = 0
    user pgtable: 4k pages, 48-bit VAs, pgdp=0000000504be2000
    [0000000000000008] pgd=0000000000000000, p4d=0000000000000000
    Internal error: Oops: 0000000096000004 [#1]  SMP
    CPU: 2 UID: 0 PID: 1000 Comm: s2idle Not tainted
6.19.0-rc5-arm64-renesas-04116-g331b300b41b0 #3416 PREEMPT
    Hardware name: Renesas Salvator-X 2nd version board based on r8a77951 (DT)
    pstate: a00000c5 (NzCv daIF -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
    pc : devres_for_each_res+0x60/0xe8
    lr : devres_for_each_res+0x48/0xe8
    sp : ffff800083263a70
    x29: ffff800083263a70 x28: 0000000000000000 x27: ffff0004c125aec8
    x26: ffff800083263af8 x25: ffff80008167bd38 x24: ffff800083263af8
    x23: ffff80008071b2f4 x22: ffff0004c125aed0 x21: ffff80008071acd8
    x20: ffff80008071ad44 x19: ffff0004c125ac20 x18: 0000000000000001
    x17: 00000000ffffffff x16: ffff800081b93ac8 x15: 0056c6b8a4d0b0e4
    x14: 00001998170d3e20 x13: 188a4fd930ce7024 x12: 0000000529c8ad17
    x11: 00000000000000c0 x10: 0000000000000960 x9 : ffff800083263a50
    x8 : ffff800083263b38 x7 : 0000000000000000 x6 : ffff0004c0dc36c0
    x5 : ffff800083263af8 x4 : 0000000000000000 x3 : 0000000000000001
    x2 : 0000000000000000 x1 : 0000000000000000 x0 : 0000000000000000
    Call trace:
     devres_for_each_res+0x60/0xe8 (P)
     dev_cache_fw_image+0x5c/0x1a8
     dpm_for_each_dev+0x50/0x80
     fw_pm_notify+0xc0/0xec
     blocking_notifier_call_chain_robust+0x70/0xdc
     pm_notifier_call_chain_robust+0x24/0x40
     pm_suspend+0x13c/0x1e0
     state_store+0x7c/0x100
     kobj_attr_store+0x14/0x24
     sysfs_kf_write+0x78/0x8c
     kernfs_fop_write_iter+0x128/0x1d0
     vfs_write+0x210/0x390
     ksys_write+0x6c/0x100
     __arm64_sys_write+0x18/0x20
     invoke_syscall+0x44/0x100
     el0_svc_common.constprop.0+0x3c/0xd4
     do_el0_svc+0x18/0x20
     el0_svc+0x24/0xd8
     el0t_64_sync_handler+0x98/0xdc
     el0t_64_sync+0x154/0x158
    Code: f94004dc eb1600df 540000e1 14000018 (f9400780)
    ---[ end trace 0000000000000000 ]---
    note: s2idle[1000] exited with irqs disabled
    note: s2idle[1000] exited with preempt_count 1

I do not know what is the actual issue.  Adding debug prints to
rs9_suspend() and rs9_resume() shows these functions are not called,
while adding 'status = "disabled"' to the renesas,9fgv0841 clock node
in arch/arm64/boot/dts/renesas/salvator-common.dtsi does fix the issue.

Perhaps you have pending patches for the rs9 or PCIe drivers?
Do you have a clue?
Thanks!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
