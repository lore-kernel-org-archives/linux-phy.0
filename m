Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 500D4CCD1AB
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 16:21:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pi5mci5ZIzl1qyT/FRXF69qSYOIOOVpH/xiLY4yGo18=; b=sBLs7pCrekzN2HVb10rVrDae4g
	uWNfX6LvWPo+u5SZ6cA7dvxJ6Rsywge9M8LUz90H+7K4D63Ia7QIkP2KfCSOrNtskwSiLtgPHlGP2
	+2sZdUy14Yh7APSf0SIztiD1PtsCax3pQUOe64+ClW94UHLIhbs2dYBZAy+JqV2EpqS75vXLBGBbp
	cLTV5YiMq24UAyUJno5ROQGPf+/gqwvOlfCVXa8Bx8YkxO/ZEfqdsmS/6qy6YXR2MIiQs0lmW870F
	WOTY9lLbQ8a6T6BlYeO1+e7rSUQ6lMmdoazpRYNpS+gIrrm1H73uLohBKtAohCt8HAwZEvJTdcfh0
	pwH/+/wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nCg-00000008QKg-45ug;
	Fri, 17 Oct 2025 16:21:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nCe-00000008QIY-3ATd
	for linux-phy@bombadil.infradead.org;
	Fri, 17 Oct 2025 16:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=a7+Wio6b8w1yNg9Tem9uVrRYlYIL3Mf5C/3BZyCBdIc=; b=JEqSrq1HkB/u3K9MHlGofZRmQo
	GoVro6eg1gJ92oaZqux5Fgyr9dpAtj3OG+x3shJxhdOiOpzolZjNKDEsaEgi2akOmn4AmtG5/92rn
	L++1HtSoio/0msuSAfIjdJibRd90FwnSxg3BbDNoeaZkRfoMlHqG/ZR3ECjZak8GQr7Qbkwr3SP3n
	lLE6SyVbBkHeVqZUtFhc7gv94LUPldOBUp+S1kJbpojIOchUe7OxVjGvnVqNEXNisMbK9o1u4++CK
	M8GiQ1I2XJJ50idXvUR7AQjSVg4Y87wcv0uHQBlrGDOSukpx17CUTZXzl2AugavmUb3hSFrWoQSvm
	6l6ZwtOg==;
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nCa-00000007kFh-3ZdN
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 16:21:15 +0000
Received: by mail-il1-x142.google.com with SMTP id e9e14a558f8ab-430d0d37fd7so99175ab.0
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 09:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760718071; x=1761322871; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a7+Wio6b8w1yNg9Tem9uVrRYlYIL3Mf5C/3BZyCBdIc=;
        b=X3AKmOCj9sv/ZwxYaRWq7p8zyUkCa9hpv0ZXJge9ckNy19blo0bCWmWxI601ZeaWZ9
         kdQEBEf1ujZc5zVivhQtntWbGj7H38mVm07YAPyfZqQuz2U9VG7EM6g09tNlPjifsY6b
         96LfmutdzxwD2ukIE6Xm5K5tbSWRNUcu+4MMKzQG2mL0EB/4rH7u8amCk6ILsJNiIgQc
         QdrL1bajJc1n5ViuqWqP/4Zj9IflP2N6LwcCTtntAfWhpP5IDSp41BbT1rbq4pcpkEj3
         V8pYGXZBW8tScq/tcQN75RiUDRe7y/DKBudznBws84DkSRb7mPdlhLTW4QurxQxF7TnX
         hQPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760718071; x=1761322871;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a7+Wio6b8w1yNg9Tem9uVrRYlYIL3Mf5C/3BZyCBdIc=;
        b=iLJGADVffoRgSZGNoFh4IZ6YtJQxPlWThrY6rWyprskBzzjzScFbo5dooesblo+0Fg
         tsrXLDuYq38DOZ35uztMB+NmrnK0j7mMX+Bft0zdLohDIBuD6FzoER2jz5iRKLaCSKRI
         ayYDshMK+eoAhWCaTj29HekQMZ3En09325WsFp4iCV6y+x6es1Gsz0N2ig7jF0ALbizb
         Tfl1OgnrNybujs/Xy3YZdMOZRL/9H/eEBuo66+oc1CjpyOn0WwzRNqD2pf2R3n8Vj4Jn
         nLbkgs6fmofSIV4/8m1SqVcZck3i5JoBIQ+N1tO+jBTQYq6vixmBEk6iegWHzVVVQili
         Ut6A==
X-Forwarded-Encrypted: i=1; AJvYcCVf7L6qUejLy+GdDaxYz015NyArN0iL0l3R9g9Nu2zFVPm0rIRuompDhl4x4LvXFOIzwv0VzrXsaus=@lists.infradead.org
X-Gm-Message-State: AOJu0YyL4e/FdFqGlGisxxsoLzcNnPeMK5leIh9FK1WFXG9o1QKcxdwC
	H8j/29QKmUtpzNNu5GcO+WpeDfiZtj47dFfkBwUe42fyMCCRgnWVFxQry7rjmSd1p6w=
X-Gm-Gg: ASbGncsDTpXU1yEYHIxY8MduoTLOt7w3OY9fXDtmeP1yG4cLssuItFePgRTD7HNz9iz
	JK5lP2/9QFCXZHNy1lKFXv9/325v5y7aQAr4EdW7KYrCC4E/IJdrPn0rz23McBP++qPWmRnSlX+
	eiv0W4DRONJ6+hk2TnuTCOVUVE+s5RfpKEWc/fXFlg/sAXUwabbWNIQt6W/F4PWQZfViofYYN0y
	2+liH2Y+srJPuEROY4YZU0lNBYOXwuvLc+iHVQ3l8grpM6Pl+5mM0ASOIxIGEcg1oBMfue4Mw9F
	Weyexu1XjbT8lnvfCCJ1zvfrbyPcGQ8sJT49fHf1dieNu03ZFCw9XXo7zCTUU1eK1qWZq+tD5ck
	89HJBIP9qA4BOwnN0Ma9SR6k3HyAoBKA0UR45i2bP4CBVacbwz9hT3wrdyralQ1SQOJ1nAM+ARW
	L+aOx1l+d3AWGvYaLqGk0y8K2s4JAaCER4aPEAeWo=
X-Google-Smtp-Source: AGHT+IEIgP2oHx8F177Q7uZqnuNLPeZz2b0M8yBXR1aqrI1laVD3XEel+UPyfoDNXtqbVVX4QNo+pg==
X-Received: by 2002:a05:6e02:440b:10b0:430:bf84:e94c with SMTP id e9e14a558f8ab-430bf84e9e5mr60046655ab.13.1760718070850;
        Fri, 17 Oct 2025 09:21:10 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a97b92b1sm10677173.68.2025.10.17.09.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 09:21:10 -0700 (PDT)
Message-ID: <92ee253f-bf6a-481a-acc2-daf26d268395@riscstar.com>
Date: Fri, 17 Oct 2025 11:21:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org,
 guodong@riscstar.com, pjw@kernel.org, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <aPEhvFD8TzVtqE2n@aurel32.net>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aPEhvFD8TzVtqE2n@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_172113_463356_B9897D79 
X-CRM114-Status: GOOD (  20.25  )
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

On 10/16/25 11:47 AM, Aurelien Jarno wrote:
> Hi Alex,
> 
> On 2025-10-13 10:35, Alex Elder wrote:
>> This series introduces a PHY driver and a PCIe driver to support PCIe
>> on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
>> Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
>> PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
>> one PCIe lane, and the other two ports each have two lanes.  All PCIe
>> ports operate at 5 GT/second.
>>
>> The PCIe PHYs must be configured using a value that can only be
>> determined using the combo PHY, operating in PCIe mode.  To allow
>> that PHY to be used for USB, the calibration step is performed by
>> the PHY driver automatically at probe time.  Once this step is done,
>> the PHY can be used for either PCIe or USB.
>>
>> Version 2 of this series incorporates suggestions made during the
>> review of version 1.  Specific highlights are detailed below.
> 
> With the issues mentioned in patch 4 fixed, this patchset works fine for
> me. That said I had to disable ASPM by passing pcie_aspm=off on the
> command line, as it is now enabled by default since 6.18-rc1 [1]. At
> this stage, I am not sure if it is an issue with my NVME drive or an
> issue with the controller.

Can you describe what symptoms you had that required you to pass
"pcie_aspm=off" on the kernel command line?

I see these lines in my boot log related to ASPM (and added by
the commit you link to), for both pcie1 and pcie2:

   pci 0000:01:00.0: ASPM: DT platform, enabling L0s-up L0s-dw L1 AS
PM-L1.1 ASPM-L1.2 PCI-PM-L1.1 PCI-PM-L1.2
   pci 0000:01:00.0: ASPM: DT platform, enabling ClockPM

   . . .

   nvme nvme0: pci function 0000:01:00.0
   nvme 0000:01:00.0: enabling device (0000 -> 0002)
   nvme nvme0: allocated 64 MiB host memory buffer (16 segments).
   nvme nvme0: 8/0/0 default/read/poll queues
    nvme0n1: p1

My NVMe drive on pcie1 works correctly.
   https://www.crucial.com/ssd/p3/CT1000P3SSD8

   root@bananapif3:~# df /a
   Filesystem     1K-blocks     Used Available Use% Mounted on
   /dev/nvme0n1p1 960302804 32063304 879385040   4% /a
   root@bananapif3:~#

I basically want to know if there's something I should do with this
driver to address this.  (Mani, can you explain?)

Thank you.

					-Alex

> Regards
> Aurelien
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f3ac2ff14834a0aa056ee3ae0e4b8c641c579961
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
