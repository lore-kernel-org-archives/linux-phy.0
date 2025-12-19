Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B90BD78770
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 15:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnIMcOz5ZSrDcIiaC2KlaG5SA95KawkGay0oS2CUeHA=; b=pj5dJBIlcSLMLT
	WLcs15xZACFaLxlqbFrsswNgDBs+KOIJoIL8kS7XeX25eiBFtsIJb22Djdn1p7tj4qWqvkcdgKwvX
	sOy6Jvoa5/VqQBWpF1YB37D5ERl4Ru5UnzUh+unoIOihcYa7tvLIj78m/DThjzTwgijr0zinqjZdA
	MvazTrgY2xiebrBKgYQlcTds+UKdDiMUKsejcU50P073gvhw5d0opIJZ/dpU9wOGQBUUMNrOcENCR
	BHoijFuzh6rloOlmaMm2lm49wEM4tBBeBs7ojz0SLL7W9zPow1H5ZRzUXDLj3m+fXfoW4bY70tJSd
	t1SK4xayM/eQJ6VNxe9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWcOu-0000000AVhW-06mV;
	Fri, 19 Dec 2025 15:28:18 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWcOq-0000000AVgT-2MD4
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 15:28:14 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-88a346c284fso20293446d6.3
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 07:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766158091; x=1766762891; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yf0ImYCnIty6Hsv8vMFIKwqY2rPgEKUaMHY5AG2sRYk=;
        b=rOaIYSrcekuAkjA818HtjDfwHIXXahOy4iMJ3TCbnPBSuoJomwz+Czh4obZL1VQAzI
         hSi6gZp0JRTc4wUbSgTf+XI5MRcQlOTaC+ZzWTBJJ4zgaQRYwYocMtIqwJZN5v1ibyhQ
         2Zlyg60gi0Za/ulVx+Tc1AjSrwSHtDT9G55U5irwKAmwITmDVsEUe1WF42eTzRYP9zBc
         bpY8gKwyl87cswHyRQL/QtI+copg2KXOPwwjrbIzulbeyN3tG/00hZXaSKOwLKEVm3P+
         vYADA2UQrKINEfZ+8dBwdkxrvswTezHOxxaCFCFmnNSo8lnEj7LxtycV796nAcHd3wy6
         CgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766158091; x=1766762891;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yf0ImYCnIty6Hsv8vMFIKwqY2rPgEKUaMHY5AG2sRYk=;
        b=CuBbm+7WwgnD4/V4SUPTsawkkOE4R0xlMgWgbKZvYE/CfSOc3lnXwbtkQXmfydTFm1
         LMGQR7OzVTq0WSzoNaN6UXol/NbBBVBVb02ZD0HkBE01ng1dcgfvSNr+wMfgfTCzoZrg
         4H0mGPMhZbdkC22BwjPYMXTTa9UYoB9Dq0O8BNtwqDGKjNpEAzSyZqd6TO0iG2Vmx3zr
         hbBt0gthKA9/HH/5Pt/czgPhIjbRgAZY5eYftJvpLCX10TgvOQmYSySK5+ciUJJPIF96
         vLCBKDz9MhpPaBESIri2Km2BNwhlTP1hveBsbDRycATQ+hebJvrKfcrlsu1FI6aJg/Bv
         L7JQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsaWWlyo2rlVkprfZ0ViiCPIAbqio5eufwYJf2bXXoEOllmnS4mQauRskIhxSwhRlrfGpOTVnX0EY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxshuONsiKaDfAFxyaoVuSi7eSCN3UvSCKR9lGe2KMQEUl/Wj7G
	kqVkduS6fyTBnN8zDGy07Jm8wSPh8nvZBXkYHUKPZoLyx0hkxOTS3M1jL+fqATcy6Bo=
X-Gm-Gg: AY/fxX4aH9Ey9TlNx/DfSkolB3ASrwDuV4wad1siVhLmGIONV/0Br/OV6gAZHSQ8ZDc
	N3JYMudZggaTqUE+9mAmOmmYNEaXHAV+PbK9BtA9aMn0Z8OQ+MesihiXqQCMeuV9z8iqCpK68Ry
	4qPpqU9dgmkrzo28Bw8Zz43Fyz48JU0SI8AvKLyEtHyDGeDKzPQdHDC9DilRFuTliarL/Afozb4
	Cg3sW9ZdazZHkcCwF2wF9o8TSGNXvMishQxQOjfFvG2qKfX7jHjxVZNZT/0FUdnU3bI7PZwSnsr
	O6t8MEW+NjXEpA6nkPww3Hki8SI55u9Z6iganpvBx+gL28+laCZJHHSx6ku3hq7FcUnxUlqVZV2
	5UdCKmQ/FfeA+0fA05Nbz610PrSu+kl1pGZuIr7ylqOYBzBTT3kG0DYxP8SOXBBVKrT5LKZsAN/
	+i7B9CnsdAgTNZQXwLwdJnaviAV7t4Vu7QEv5V/EnAP0nf7pgl7qU=
X-Google-Smtp-Source: AGHT+IESCa7TzSgsPFxRQ8nOnf1gW1Aedmg8uL4v5ngWrg3XKHmo91iY/SWKPTEaWsgBtfXN5+6Jow==
X-Received: by 2002:a05:622a:588e:b0:4ec:f6ae:d5d9 with SMTP id d75a77b69052e-4f4abd9768bmr44575641cf.39.1766158090847;
        Fri, 19 Dec 2025 07:28:10 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac62f973sm19054751cf.18.2025.12.19.07.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 07:28:10 -0800 (PST)
Message-ID: <ee9ce749-5ee4-41d9-8d1b-7b3b507b2217@riscstar.com>
Date: Fri, 19 Dec 2025 09:28:08 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/5] Introduce SpacemiT K1 PCIe phy support
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org
Cc: ziyao@disroot.org, aurelien@aurel32.net, johannes@erdfelt.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251218151235.454997-1-elder@riscstar.com>
Content-Language: en-US
In-Reply-To: <20251218151235.454997-1-elder@riscstar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_072812_786352_B7538EF0 
X-CRM114-Status: GOOD (  22.17  )
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

On 12/18/25 9:12 AM, Alex Elder wrote:
> This series introduces a PHY driver to support PCIe on the SpacemiT K1
> SoC.  The PCIe controller implementation is derived from a Synopsys
> DesignWare PCIe IP.  The PHY driver supports one combination PCIe/USB
> PHY as well as two PCIe-only PHYs.  The combo PHY port uses one PCIe
> lane, and the other two ports each have two lanes.  All PCIe ports
> operate at 5 GT/second.
> 
> The PCIe PHYs must be configured using a value that can only be
> determined using the combo PHY, operating in PCIe mode.  To allow
> that PHY to be used for USB, the needed calibration step is performed
> by the PHY driver automatically at probe time.  Once this step is done,
> the PHY can be used for either PCIe or USB.
> 
> The PCIe controller driver that was included in earlier versions of
> this series has already been accepted upstream:
>    a812b09a6b599 ("dt-bindings: pci: spacemit: Introduce PCIe host
> 		  controller")
>    ff64e078e45fa ("PCI: spacemit: Add SpacemiT PCIe host driver")
> However this series still includes devicetree patches to enable the
> PCIe controller (along with the PHYs).
> 
> The patches that remain in version 7 of this series are unchanged;
> they are simply rebased on top of Linux v6.19-rc1.  The first two
> patches are the DT bindings for the PCIe and combo PCIe/USB PHY.
> The third is the PHY driver, and the last two are devicetree updates
> to enable the PCIe controller and PHYs.
> 
> 					-Alex

Yixun pointed out that I neglected to provide a summary of the
change history in this message.  Here is a link to version 6,
which summarizes prior history.  My explanation for v7 indicates
what changed since v6.
  
https://lore.kernel.org/lkml/20251113214540.2623070-1-elder@riscstar.com/

He also said I neglected to add Neil's Reviewed-by tag, which
is true.  That is here:
  
https://lore.kernel.org/all/ba532f8d-a452-40e5-af46-b58b89f70a92@linaro.org/

Sorry about that.  If requested, I can send an otherwise
unchanged version 8, but for now I'll assume that's not
necessary.

					-Alex

> Alex Elder (5):
>    dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
>    dt-bindings: phy: spacemit: Introduce PCIe PHY
>    phy: spacemit: Introduce PCIe/combo PHY
>    riscv: dts: spacemit: Add a PCIe regulator
>    riscv: dts: spacemit: PCIe and PHY-related updates
> 
>   .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
>   .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
>   .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
>   arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
>   arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
>   drivers/phy/Kconfig                           |  11 +
>   drivers/phy/Makefile                          |   1 +
>   drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
>   8 files changed, 1120 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
>   create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
>   create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c
> 
> 
> base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
