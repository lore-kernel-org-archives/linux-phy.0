Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5AE606A31C
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 01:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GRuxriw5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=fhzHMyZC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=csTUdjn7JoC4CcHaErNDGUfaKvZZmWUjelZAk33FiYU=; b=GRuxriw5k98gayvKfm+1j/89lk
	h9sRawshFHXjLYiO/QcN5iWVZW7vPJVY/BEUBo4a9L1iMa+yQY6imPQfqdy09EPI6LCxlFslCpK2o
	PAT2KkkvFJJWLmli2ccLyOKFN+GlVTq/rnENq0KkZi2wiM+xa/kWuq0Ns6IvZTxxs6JybaiMEwJQh
	UMsiNkBagk6zSIxZ+g3P1Ze2tX8sUXYHEbsUn3BaIagaLPdEOrDyp5OpuVz1uJ6rr0DHehXd9rCVQ
	F3j3Tzm2Ierxh2sU7XagBLeCapSDJC/xhi4QyeFUVQ30fJqlwPmD2kI/q60CNp7a020k8L8Bzb/bg
	zDC6Jw+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQamg-00000002633-0JAV;
	Tue, 10 Nov 2026 01:36:26 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQamd-0000000262d-2AXO
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 01:36:24 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3ad2b3b1c02so1005251a91.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Nov 2026 17:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794274583; x=1794879383; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=T4Ebh8dhdAtqQW32OzgRtdpRlNomsu9HMRNHYFGmf0o=;
        b=fhzHMyZC/eZQJr9PRWbOtjSdK/zYDjUh9HSR463cyl/ibVONUDWA2YKPCxNJRW4GEf
         PmvOCAWlmJiI20OGySLqcDA/YFH59ivEdSxtcobTpnco2mXVNM6TLX5v6UtVIS4Os6tP
         H/o7+ptFvke9iKRpsxQ5sZdXDihvpUr94mxtRNHTV7PFO5mHi62fi4BoTVazSJUwz+oH
         VbPAN8Nwdaky8WOCypFh/Gle1C4/ZUwqbjqETR+i0FSQTKqpMfPpvBXcc1LF01sWNMJI
         jEMgWWgZYvXh06PqK4vwksvv39/3qWg+YniUqpoP1TfJUkxP4dZyhCeoSwrnxCA7XRMM
         JgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794274583; x=1794879383;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=T4Ebh8dhdAtqQW32OzgRtdpRlNomsu9HMRNHYFGmf0o=;
        b=tR8ks9nPo2BJleiCkWQsABr5J+yXzdLg5IY1awwQbiRTTOxgUnq6PlNo5phTLo3JBq
         A0ElOTxKai7u425bkGyal/CWumAtIHXniI1MDf+wNR7eHfX5/nLjGghY94bxkZrSKN/B
         WKcLkBx9iLAMotcpvp4w/G9WutD4cNUb6J992h6RPFONRmCwCLmry7nckQ0gQdRaHvtw
         TnOzG5MeONe33RjnfGJfKXqV8iS87cJTbTbTm/L1B+4LVzsGz0UV2PEfFkhH7+G9M8ut
         FLtcASviCvNk+JxrOkJF8kszvOnif5z2DTCw0T1rudZ+KyyKu5yCLNKYVK3GjwOVXIxe
         T4iA==
X-Gm-Message-State: APuU4Z+kwiSNIDZNerOatoYd5I4lFS1vq4yYKUPDXiDAAMjoheFasjpM
	cqMh4NSriNPFE4gtDZ1VxoHMg1kc4XKM3CMClZQCUWpTHmXLxD4XOB1B
X-Gm-Gg: AYBFou39kq3E7YKMtFQxxNz91lH8atvMQs5umlNE/RPEtbdWTvto00PWDktmmV90ViC
	eE72POH8uNGg0mzqvJl/zrqoiaVSLV6To9V5vkAmzKhSC9rxec5bCXLr6mdmqF4gyIj278hck5g
	JIeXzRbTA0wNLgx93tGyrHH6ivHtVSB9kJuuwHloQsKbTYvCUrTVSEuXeDE5YK/PldgAMA0UHix
	gdm86yR/0RqBDd0fPmRdF3IwF2NDB5IoNQR9AXaQoO5Q4TvVbAG/fZqrERkA6xsthRaS0mK/X69
	lQKv0RI18pzT0Z87n2uQdBX2RuZ7hSP3nGOq4pl5VVjVxu8+NwXdvGHM4aq5fwu+yruc1Rs2ojT
	tjRk1G9Iyd9IGwZ+aGIzDA3a5K7e8DQFYv2dlL6IVnBjiOmoV1nzgqI0q4o3yRZ64qpkrr80T17
	ih4m2oK9csCOAkh+5iP3I8lPTMsgJclvL1k2m/tHbbDvho7ebAexouG66vJDXa6/UV3ZtOBPPAt
	dMDaUwzrBztIc+uDdR3dYiTt+wbeMFv4mcTsh2OQe2HhtM9VhimEN/c1Fdx+eLvsE7wb/oQg9ln
	9jouH9rboWZdM4Vbkd4ztOWEEgfGrPmOoyfs0+gLoJ/LmnhJabwbSMxmkNUj2nNvdJiMHy0TAph
	1K7TVcMLZTg==
X-Received: by 2002:a17:90a:ec83:b0:3a7:b260:9ced with SMTP id 98e67ed59e1d1-3b166cecc28mr1338219a91.58.1794274582333;
        Mon, 09 Nov 2026 17:36:22 -0800 (PST)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b16769b594sm1694983a91.6.2026.11.09.17.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 17:36:21 -0800 (PST)
Message-ID: <84e38db6-ebd4-4b32-a36a-32f36bff3550@gmail.com>
Date: Tue, 10 Nov 2026 09:36:18 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/4] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: sashiko-reviews@lists.linux.dev
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, conor+dt@kernel.org, vkoul@kernel.org,
 neil.armstrong@linaro.org, olteanv@gmail.com
References: <20261109065606.62641-1-a0987203069@gmail.com>
 <20261109065606.62641-3-a0987203069@gmail.com>
 <sashiko-outbox-204536@kernel.org>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <sashiko-outbox-204536@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_173623_586180_FDC63325 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -1.8 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-7.3 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FROM_LOCAL_HEX,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 11/9/2026 3:16 PM, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential
> issue to consider:
> - [Medium] arm64: dts: nuvoton: ma35d1: usb@40200000 reg size 0x1000
>    truncates DWC2 FIFOs
> --
>
> commit aa9ff21b68491f1e002468f4d400c0d7fd2b192f
> Author: Joey Lu <a0987203069@gmail.com>
>
> arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node
>
> This commit adds the dual-port USB 2.0 phy, dwc2 gadget, and ehci/ohci host
> controller nodes to the ma35d1 device tree and enables them on the som-256m
> and iot-512m boards.
>
>> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> index 7228ad4735b5c..72a1659207fa7 100644
>> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
>> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
> [ ... ]
>
>> @@ -431,5 +439,62 @@ mdio1: mdio {
>>   				#size-cells = <0>;
>>   			};
>>   		};
>> +
>> +		usb: usb@40200000 {
>> +			compatible = "snps,dwc2";
>> +			reg = <0x0 0x40200000 0x0 0x1000>;
> [Severity: Medium]
> Does the 0x1000 register size for usb@40200000 truncate the dwc2 per-endpoint
> data fifo region?
>
> A 0x1000 window only covers the core global, host, device, and power control
> registers (offsets 0x000 through 0xe04), while the dwc2 driver defines
> per-endpoint fifos starting at offset 0x1000:
>
> drivers/usb/dwc2/hw.h:
> #define EPFIFO(_a)			HSOTG_REG(0x1000 + ((_a) * 0x1000))
>
> dwc2_driver_probe() maps the exact length from reg via
> devm_platform_get_and_ioremap_resource().  If the controller runs in slave/pio
> mode, dwc2_hsotg_write_fifo() and dwc2_hsotg_rx_data() access these fifo
> registers at offset 0x1000 and above, faulting outside the 4 kb mapping.
dwc2 register size: valid. dwc2 places the per-endpoint FIFOs at
0x1000 + n * 0x1000 (EPFIFO() in hw.h), so a 0x1000 window cuts them off.
The USB0 region in the MA35D1 spec is 0x4020_0000-0x4024_0000, so in v8 I'll
change it to reg = <0x0 0x40200000 0x0 0x40000>. I checked the other USB 
nodes
(EHCI0/1, OHCI0/1) against the spec; their 0x1000 ranges are correct, so
only this node changes.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
