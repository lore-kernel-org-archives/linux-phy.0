Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A086D74ED0
	for <linux-phy@archiver.kernel.org>; Fri, 23 Jan 2026 13:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RVMDqVQAI05k8IQsLTMEqE5DTXQ8yyb+2D4RLxSz5A=; b=htVpbN7wq+71gy
	Gj2gnGYupVoI3uAjRRH+K2WFefep0UiF/mYcqAWc9d7yv2oEQH7OVFHYePguMeQGSz0HEqyRUyuDX
	oLZsWy1ouBygFhUUGBOrnLGSsynkey+ff/Xiw6GDb6qA3yV6QhfZ4hjtmbM7lNicLpBVNWBvSZPgY
	AULDXIpDvzXgBE77AjDuieWuZhqbDqlM70MSAqz+dhnROEVlT0A+3VqeqDIbm4qEJgiuqbx2Lr/oj
	YmO3uVa8Ob0W5qeR3ZX8sIAvX14ne7ZH9knTya944j7LJJtkOX9KF3oZ6lcrru+0LTi+smNGaaLXx
	wCc7Cv4QEh+amgKzJoMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHIx-00000008yRu-1CQb;
	Fri, 23 Jan 2026 13:34:27 +0000
Received: from mail-ua1-f67.google.com ([209.85.222.67])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjHIt-00000008yRA-344S
	for linux-phy@lists.infradead.org;
	Fri, 23 Jan 2026 13:34:25 +0000
Received: by mail-ua1-f67.google.com with SMTP id a1e0cc1a2514c-93f64ae67dbso536004241.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:34:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175262; x=1769780062;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/FaJ17quXgLj3q7lesyxJ1BD4hQkqNGO4klrnGmMXe0=;
        b=v0iUphKp9o/zrP4lNqIYkB4z5KjmChyXgpTmwd7BKYpT3o5imDXBqrmo+D4dbnCJ05
         XuDn7Yc988lHs3BJtgy5ObtPiThNiSMtM8M/jYHIE2HSsk3ehu4xA3x4MiwEJcjc5bFO
         Tm0aPiUTLyt/Wf3GohAjfiVISa03ANS9mWkPM6wwG/VY00m3eavBtg5kFGIwFcjPuOFY
         YtM3Tudcqi5MIDJTvIGBT9j7IrR4at51vuocRJGCA2nxw0KnkDnsdKhnMU/6h7fPrEum
         JKtkjes6YFxZIMKbHD2CYka34bDa0kGZuUNm1rQDxgAKmT84OubSYEQeujkrCMTOXD18
         o71g==
X-Forwarded-Encrypted: i=1; AJvYcCVCQygib987zLuBr4hxmn4V9EK7endfWR5Cv3sF0fMLPmD49JXS+30nOMivBNvPSQiIkE04JdgA0a8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2fKbJ3AijPDBYdQb3pDWq5zDxqNFSNiKGAiJCPMg7b3hFcjl0
	OVzS0tx8DC8+4UMO3Io5ahS8FvQ2MuO3Q6svkbdV/xI2jR/FXXRXA9KieVK5UaIEabY=
X-Gm-Gg: AZuq6aLuk/N3c3okIYDL/2WJEysh0PABmXFZRt2FK78RzUl6U9qFNmaz5aZW6TatElp
	QN1jhz2p3H2pQNkvqWjZWWasmwRk5MeM4nd/vuojrx8QkQTcAmGDy1fL4xyc1FJ9zIFPzMG+v1Y
	mVnXBVJNajMGdEAAxaTDA56NFjQI85uXQo9HP6jXwBedk44jOK6JXIeuTNSAZQF3d5Z+LsavvOK
	ApHOPgLJ4byCX1Vm8Co79nF+1s0om7ovmOC0I2J4T29AcNirxWQoMkj12uimYZRoaBGw/mp+Ad5
	uLSfjG1vqMYxIEiMV//Q6Swd7n/qy3n1We3B9YgN1V6HMqVFBAnC7ALl4JLlbr/6slKn8JVNfiL
	se3AZmFHjBOqWolRDN2KTro+PK2EsyGIYRju+e8T/cDdU3xIQ4cX8R7/MYqbPyur+Rkrx9VYOh5
	1a2njqv1pgNHoSq/hi+RKrXM3VxjEl9YmoMYQvFu49Yh1M+/4Y
X-Received: by 2002:a05:6102:3f06:b0:5f5:37f6:2b4e with SMTP id ada2fe7eead31-5f54bd0b409mr792344137.40.1769175262375;
        Fri, 23 Jan 2026 05:34:22 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f54d66c977sm538562137.12.2026.01.23.05.34.21
        for <linux-phy@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:34:21 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-94388cfa259so554379241.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Jan 2026 05:34:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWSYsB48+3f4TFneHJ6DhOzzqe98ZDc2eLFbdEUEtFBku7vEGjAT9TJ+jubGW/lDSdjxbf9IGpk0oM=@lists.infradead.org
X-Received: by 2002:a05:6102:3753:b0:5ef:aeff:8304 with SMTP id
 ada2fe7eead31-5f54bccac8amr893050137.33.1769175260730; Fri, 23 Jan 2026
 05:34:20 -0800 (PST)
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-8-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-8-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:34:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUhqLnfZdg_9-JmH7Nrae1MfzM73R_NUFuwXioYnNoQ8g@mail.gmail.com>
X-Gm-Features: AZwV_Qj-XKrZ6tI1NWPXXvOntE-HmWyNH8CYB4F0u4KrKnplhkYq6k74VqQHwH0
Message-ID: <CAMuHMdUhqLnfZdg_9-JmH7Nrae1MfzM73R_NUFuwXioYnNoQ8g@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] arm64: dts: renesas: salvator-common: Describe
 PCIe/USB3.0 clock generator
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_053423_769801_A8CF41DA 
X-CRM114-Status: GOOD (  18.04  )
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

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Describe the 9FGV0841 PCIe and USB3.0 clock generator present on both
> Salvator-X and Salvator-XS boards. The clock generator supplies 100 MHz
> differential clock for both PCIe ports, as well as for the USB 3.0 PHY.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

> --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> @@ -641,16 +654,27 @@ &ohci1 {
>
>  &pcie_bus_clk {
>         clock-frequency = <100000000>;

I will drop the clock-frequency while applying, as there is no point
in changing it in a disabled node.

> +       status = "disabled";
>  };

> @@ -1038,11 +1062,13 @@ &usb3_peri0 {
>  };
>
>  &usb3_phy0 {
> +       clocks = <&cpg CPG_MOD 328>, <&pcie_usb_clk 6>, <&usb_extal_clk>;
>         status = "okay";
>  };
>
>  &usb3s0_clk {
>         clock-frequency = <100000000>;

Likewise.

> +       status = "disabled";
>  };

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
