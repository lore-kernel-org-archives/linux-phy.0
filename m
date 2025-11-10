Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 645E6CCF9E3
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 15:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6A5xTQwSTisPqcZISoE+ogyXjl5nVdzNQI0vpnfB+Vk=; b=Osfn6xXCEzhpY0vCM+CWrf3vno
	30YMZDdBwYSKfnk8fwNIYagscekf+m5j6xRdLbDGtCz8KfIsATi1O+r8ikVwrzBLbFzmkF3kBe/BZ
	60IJzo6MOeG8zYBPy5MlFMII0/uWf8OShN59tZOvMHC93et/GkkQhWrxop6AolvIJiO+bJkKvRUc6
	2m/DrhOqtKBOU4Hk4VVuWiOA1ym0R75C66+Wz5MMVd1qkL/np/8TXfj1xrp4B00QHh0w2Vjgr2WvY
	6kEWZL1vTHZPQrVpFR2I2jm3GVq9KbgmtHDwTyH1BfSXq1EnzcAdBpDmBto6H828clAysK8JwsdF7
	VIh+iSGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vITgp-00000005fxr-05vL;
	Mon, 10 Nov 2025 15:20:19 +0000
Received: from mail-il1-x12a.google.com ([2607:f8b0:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vITgn-00000005fx8-1oKx
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 15:20:18 +0000
Received: by mail-il1-x12a.google.com with SMTP id e9e14a558f8ab-4332381ba9bso34437635ab.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Nov 2025 07:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762788016; x=1763392816; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wHqCJdsR7z6UGezYu2PLRy2EX3z1OohmVvws0HQYrFQ=;
        b=0nF7kg12cHIovP6iY3zivOWNgKm2kcuaxWnJlJgSQxS7sD3XgQllODN67i4j4om7Zf
         UEcpMu2FQ6r3IMu3KA8FsATFC8cuG7+KHCbOJkq5kDjIh/y9hACD3LmhmUya2KMA8I+j
         iw2l3QlQxBpTDI2q2boJLFGbtyih8qJbLn7bHIzvcM1SEAtTK08cubm6m3NlOrpNzC83
         Uhlr7ehaqkoF0KdNy4DQv4S0gNOZlhAQUil1zi1R6MjYBOahWgFqclcdeBqNiSIRNcmC
         /CGxOvHeFdtDSDKG74WE7Qo8Nt3j01QkYVQdzBm4H7JdG/Im01eRQulOExvxZQBK0Jv3
         mUfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762788016; x=1763392816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wHqCJdsR7z6UGezYu2PLRy2EX3z1OohmVvws0HQYrFQ=;
        b=brCCFJgIQwFRs5niGOlqTQCB7pTMMUkuiEKC2+0PbEbjDogA2D4CNRuOJFryi1zBwx
         2ZvF52s8sTFTI8dUPUtF+IHvfXIvsgBcCDQiavrCBZETAZAQ04lLlt4BBe/+799bGWYn
         +rLpkLglIS5IAT49aTv6P89IGABDp/YkV2X3Y1Yy9IOWO5WgRPlhSg8dpwWuobHvzcVb
         AYOUrnNnVNVCwQWSIYVUiKUE9tC0txPqH98nIDsOXzfOebg/JrK/7d2LKU/Ey5gbUySZ
         gm8mtfyyd/Y5Ko5Qn1/Rk7CabqA0R0ZXX6OOlcOF365dMfmvlwaHo05tRyo3ytNCwErD
         jExQ==
X-Forwarded-Encrypted: i=1; AJvYcCVdvu3WUzVBku3wg1IlwoUlRdfRAEyMKVTa+H4pEzmuWeiiyxph+FBv1uvacuzjbYsBy9+8uAFwU2A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwrEuKGHpFkAePodsUSqba93c9ETxBKE/ba0zBGm2EgPmSwFsJR
	XhBGtFrpwUmE+N80/LjA9L9n6v1htCyXlGbgGdFPxv7K6wt8y4pgeQ8BnGiYB1AMAoI=
X-Gm-Gg: ASbGncvjMADgbzsz/6Dh9IY/GgTkWatvYTxCnorPwTdrWXz2oQG8Nk+B9JV8+NbwZhr
	l//oTw4ckjhn+iRYRITmbRjh4D29LW3WLmeKI2lYXCJWS46EJAvgdbPWSC8l10PICFeiQfEfsxs
	BEE3tDaO0sd/09yBlnKM5xLe0c/zGX8r3XyrPgJbObpAFlI84fWX0JkQtAe4rhjt4ZHIdDENTNf
	FvDWQh0emhy5Be9wrbY3AuyP1EmdIyqSMhr4d/GWojSuIUKV7yHI1jAT0zzirErtlngZqCaFf50
	3evXPiIfB2IxfeCEurGYdbS6X7Hdbr/Lv4DWwpACfdsRfLsc/Yb6/VkMdrQd6yoQcZn87csUVtp
	jWqLl+UZyVTak+YY2SOz6LQCJnMGOwUC0FB4u8/tHIHwj1aaeamKKuKqrSLzqy4I5DaIFWa02vj
	YzeN8H+dNzwLwRZwp9685BzWo9oc6mxm63QQnLIac=
X-Google-Smtp-Source: AGHT+IEbu7UkRnaq1HAZF7KJE8mC7YX4IT4qsm04tHRZF/RRVkDmdBo8SVYWqOjog8FiLYEn3hk8pw==
X-Received: by 2002:a05:6e02:1aa2:b0:433:3034:e88 with SMTP id e9e14a558f8ab-43367e48c8bmr107760915ab.21.1762788016218;
        Mon, 10 Nov 2025 07:20:16 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-4334f4f5b90sm56357735ab.33.2025.11.10.07.20.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 07:20:15 -0800 (PST)
Message-ID: <66ab3a48-5d5a-47c7-b8eb-b477fd987314@riscstar.com>
Date: Mon, 10 Nov 2025 09:20:13 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, ziyao@disroot.org, johannes@erdfelt.com,
 mayank.rana@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 shradha.t@samsung.com, inochiama@gmail.com, pjw@kernel.org,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com,
 thippeswamy.havalige@amd.com, krishna.chundru@oss.qualcomm.com,
 guodong@riscstar.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251107191557.1827677-1-elder@riscstar.com>
 <aQ8kqIljwGZfkF8M@aurel32.net>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aQ8kqIljwGZfkF8M@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_072017_476612_9DF7EC2E 
X-CRM114-Status: GOOD (  29.67  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/8/25 5:08 AM, Aurelien Jarno wrote:
> Hi Alex,
> 
> Thanks for this new version.
> 
> On 2025-11-07 13:15, Alex Elder wrote:
>> This series introduces a PHY driver and a PCIe driver to support PCIe
>> on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
>> Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
>> PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
>> one PCIe lane, and the other two ports each have two lanes.  All PCIe
>> ports operate at 5 GT/second.
>>
>> The PCIe PHYs must be configured using a value that can only be
>> determined using the combo PHY, operating in PCIe mode.  To allow
>> that PHY to be used for USB, the needed calibration step is performed
>> by the PHY driver automatically at probe time.  Once this step is done,
>> the PHY can be used for either PCIe or USB.
>>
>> This initial version of the driver supports 32 MSIs, and does not
>> support PCI INTx interrupts.  The hardware does not support MSI-X.
>>
>> Version 5 of this series incorporates suggestions made during the
>> review of version 4.  Specific highlights are detailed below.
>>
>> Note:
>> Aurelien Jarno and Johannes Erdfelt have reported seeing ASPM errors
>> accessing NVMe drives when using earlier versions of this series.
>> The Kconfig files they used were very different from the RISC-V
>> default configuration.
>>
>> Aurelien has since reported the errors do not occur when using
>> defconfig.  Johannes has not reported back about this.
> 
> Unfortunately, while it is true with v4, this is not the case with v5
> anymore :(

That's too bad, but thank you for reporting it.

> Fundamentally in the generic designware driver, post_init (which is used
> to disable L1 support on the controller side) is called after starting
> the link. The comparison of the capabilities is done in
> pcie_aspm_cap_init when the link is up, which happens a tiny bit after
> starting it.
> 
> In practice with v4, the link is started, ASPM L1 is disabled and the
> link becomes up. With v5, the move of the code getting and enabling the
> regulator changed the timing, and ASPM L1 is now disabled on the
> controller 2-3 ms after the link is up, which is too late.

Yes in v4, we relied on the root port driver to enable the
regulator, but (on my system anyway) that happened too late,
*after* the PCIe controller driver held PERST# asserted for
100 msec.  PERST# is not supposed to be de-asserted until
power is known to be stable.  So v5 went back to having
the controller get the regulator in k1_pcie_probe().

I am supposed to receive the WD Blue SN570 on Wednesday, and
when I get that I'll have a chance to try to reproduce at
least one of these problems, and can ensure there are no
timing-related issues like this.

Thank you for your continued testing and feedback about this.

					-Alex

> I have added a call to pci_info to display the moment where ASPM is
> disabled. This is without the regulator change:
> 
> [    0.386730] spacemit-k1-pcie ca400000.pcie: host bridge /soc/pcie-bus/pcie@ca400000 ranges:
> [    0.386970] spacemit-k1-pcie ca800000.pcie: host bridge /soc/pcie-bus/pcie@ca800000 ranges:
> [    0.387017] spacemit-k1-pcie ca800000.pcie:       IO 0x00b7002000..0x00b7101fff -> 0x0000000000
> [    0.387047] spacemit-k1-pcie ca800000.pcie:      MEM 0x00a0000000..0x00afffffff -> 0x00a0000000
> [    0.387062] spacemit-k1-pcie ca800000.pcie:      MEM 0x00b0000000..0x00b6ffffff -> 0x00b0000000
> [    0.400109] spacemit-k1-pcie ca400000.pcie:       IO 0x009f002000..0x009f101fff -> 0x0000000000
> [    0.490101] spacemit-k1-pcie ca800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 4K, limit 4G
> [    0.494195] spacemit-k1-pcie ca400000.pcie:      MEM 0x0090000000..0x009effffff -> 0x0090000000
> [    0.850344] spacemit-k1-pcie ca400000.pcie: iATU: unroll T, 8 ob, 8 ib, align 4K, limit 4G
> [    0.950133] spacemit-k1-pcie ca400000.pcie: PCIe Gen.1 x2 link up
> [    1.129988] spacemit-k1-pcie ca400000.pcie: PCI host bridge to bus 0000:00
> [    1.335482] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    1.340946] pci_bus 0000:00: root bus resource [io  0x100000-0x1fffff] (bus address [0x0000-0xfffff])
> [    1.350181] pci_bus 0000:00: root bus resource [mem 0x90000000-0x9effffff]
> [    1.358734] pci_bus 0000:00: resource 4 [io  0x100000-0x1fffff]
> [    1.362033] pci_bus 0000:00: resource 5 [mem 0x90000000-0x9effffff]
> [    1.368289] spacemit-k1-pcie ca400000.pcie: pcie_aspm_override_default_link_state
> [    1.375967] pci 0000:00:00.0: [1e5d:3003] type 01 class 0x060400 PCIe Root Port
> [    1.383043] pci 0000:00:00.0: BAR 0 [mem 0x00000000-0x000fffff]
> [    1.388927] pci 0000:00:00.0: BAR 1 [mem 0x00000000-0x000fffff]
> [    1.394826] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> [    1.400061] pci 0000:00:00.0:   bridge window [io  0x100000-0x100fff]
> [    1.406460] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> [    1.413245] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff 64bit pref]
> [    1.421012] pci 0000:00:00.0: supports D1
> [    1.424948] pci 0000:00:00.0: PME# supported from D0 D1 D3hot D3cold
> [    1.432718] pci 0000:01:00.0: [1987:5015] type 00 class 0x010802 PCIe Endpoint
> [    1.438698] pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
> [    1.445426] pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s PCIe x2 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
> [    1.464897] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> 
> And this is with the regulator change:
> 
> [    0.410796] spacemit-k1-pcie ca400000.pcie: host bridge /soc/pcie-bus/pcie@ca400000 ranges:
> [    0.410836] spacemit-k1-pcie ca800000.pcie: host bridge /soc/pcie-bus/pcie@ca800000 ranges:
> [    0.410889] spacemit-k1-pcie ca800000.pcie:       IO 0x00b7002000..0x00b7101fff -> 0x0000000000
> [    0.410917] spacemit-k1-pcie ca800000.pcie:      MEM 0x00a0000000..0x00afffffff -> 0x00a0000000
> [    0.410932] spacemit-k1-pcie ca800000.pcie:      MEM 0x00b0000000..0x00b6ffffff -> 0x00b0000000
> [    0.424651] spacemit-k1-pcie ca400000.pcie:       IO 0x009f002000..0x009f101fff -> 0x0000000000
> [    0.436446] spacemit-k1-pcie ca400000.pcie:      MEM 0x0090000000..0x009effffff -> 0x0090000000
> [    0.513897] spacemit-k1-pcie ca800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 4K, limit 4G
> [    0.559595] spacemit-k1-pcie ca400000.pcie: iATU: unroll T, 8 ob, 8 ib, align 4K, limit 4G
> [    0.839412] spacemit-k1-pcie ca400000.pcie: PCIe Gen.1 x2 link up
> [    0.847078] spacemit-k1-pcie ca400000.pcie: PCI host bridge to bus 0000:00
> [    0.857600] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    0.868702] pci_bus 0000:00: root bus resource [io  0x100000-0x1fffff] (bus address [0x0000-0xfffff])
> [    1.146409] pci_bus 0000:00: root bus resource [mem 0x90000000-0x9effffff]
> [    1.373742] pci 0000:00:00.0: [1e5d:3003] type 01 class 0x060400 PCIe Root Port
> [    1.380963] pci 0000:00:00.0: BAR 0 [mem 0x00000000-0x000fffff]
> [    1.386883] pci 0000:00:00.0: BAR 1 [mem 0x00000000-0x000fffff]
> [    1.392808] pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> [    1.395394] pci 0000:00:00.0:   bridge window [io  0x100000-0x100fff]
> [    1.401811] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> [    1.408583] pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff 64bit pref]
> [    1.416354] pci 0000:00:00.0: supports D1
> [    1.420294] pci 0000:00:00.0: PME# supported from D0 D1 D3hot D3cold
> [    1.428220] pci 0000:01:00.0: [1987:5015] type 00 class 0x010802 PCIe Endpoint
> [    1.434034] pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
> [    1.440772] pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth, limited by 2.5 GT/s PCIe x2 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe x4 link)
> [    1.463390] pci 0000:01:00.0: pcie_aspm_override_default_link_state
> [    1.467000] pci 0000:01:00.0: ASPM: default states L1
> [    1.472093] pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> 
> Note how the line pcie_aspm_override_default_link_state arrives too
> late.
> 
> Regards
> Aurelien
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
