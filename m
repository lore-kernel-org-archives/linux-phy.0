Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84965C47BDF
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 10:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tNVAtg7jRzqG479fDw6DNz3zd+c6aLfEfWHi0lyo1Y=; b=ZJDgi/lS13LxYU
	hh08B1dPjohGqKZkHjsezIOYFi/80+fhaNc+z8Nj0vHpNd0Ny/JotQR3kQCvI47XDXFC5IzY1Blw8
	EOMhjAsXYEPLOn5qXdWSs9g1ZRzMUCrKL+ijtToa967PlHvZRtln3sgDtzvjOV4kkTSQNoHxztrOO
	DRZUzM3qwgsS/bAuIkoYlReDGvzDQ9E0aQyXH8ItKiMBZ6sRLyVKJJ393E+RDAHkS1eYnA9BD0UMK
	1ij16mFJef0kFj0bcIDBJRbfWmJn+UjCOkNBh9MCvuMdUkDA5Nbv2v0ShPgZWRmpX6uAl9LPklL/w
	T8z6sNYWVpInErV3GH2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd4Kk-0000000Cnim-19e2;
	Tue, 06 Jan 2026 10:30:38 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd4Kh-0000000CniL-3MJR
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 10:30:36 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-59577c4c7c1so2827483e87.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Jan 2026 02:30:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767695433; x=1768300233; darn=lists.infradead.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=NsJJOzya3cvYihpIwq796R0nHpBIF37n18oyXT0fuvE=;
        b=H6VuoHlQi/Rm3D0r2xL+AS3qt6CF9cLFI21if1nqaHjG/RzXsJDuufuzNNQ7AkvOPo
         UyCFLlB9vRkkQzVCLOjFLtb5IvM/ElONERnfVL3cNxr8oPkVkmfoLTTD/7h+rucXgQSQ
         Zhwf/vH8iDGZKLFiGy58jKrQpA8v+ACypVdqUqG+XItN4w/HelDN9ns+h4UanrW7GgLn
         0ugjG+fD/slqf4ULPeIxvWR1CfmAUe6/SUWBF4BFQanL18wOUM22X9Xx+iMQaHj0CmGL
         Okx2/VS1pXz+K6QVIwLZH8RBB9P0YVR0CmLqnUDcdXtwpDWRprXs9WFL6LoNcmORltI+
         dn/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767695433; x=1768300233;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NsJJOzya3cvYihpIwq796R0nHpBIF37n18oyXT0fuvE=;
        b=q72NfT3HrRfQpsUzI0rSFcOqUzuH41+uS1lM+GO8v6pTHxVEYh9bW6rt5IMfoobyFe
         x/NqcqYh3MHZof71DnaJPtnAiQbUxTtQbQO5YhQAfsxoRUWPfp9pgccagIG9jxGzFI3H
         AKY5BNFKMwS8ct8xsw9y2gjPnkWSsdnsqMYNOY49rTaJsp7FvS7usuMyXbyn+yzx3THJ
         7bg9DrUDnPyEqO303/rLMQVeg0aO0Bsj//VF4q0i+FGorQFKIDj83NB/kUUS2mTIgfro
         uXVezWAr86qfiFgk1MGs1o/wRp346mzKdXZVf/PNDb3O2HDPpoQv2Q3EChViPgHNYWTe
         1LqA==
X-Forwarded-Encrypted: i=1; AJvYcCXuQ8pJSDA7L6BNrp4inTAeJjYs+aVUPgnXYU6kuoyMDtN6/SUy8BapqZX0OdBooS6oCjOmBIvO7BI=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFXtfjEYlsap4HwJwbsI+PtzKuJctVyBx2Bt1Tib6b9Q4VcQ53
	ng0ebFEMaPg5GzIuZ4rWrYsJlBLOfgUsNN7iOn84Df8U5NZ4yf5lXlSk
X-Gm-Gg: AY/fxX51TB2Fq+ftu0+vAsFbzVEVrou3u32iJ2lmV7175nobstM1MAi1oAcvPSGHyMj
	o2gIe9A4QjXhG/03RgGX69sJb3ZDx0zK/Ykff7Xv/f6u+1Ubpaa9VPiVF3SlqIYAE+4y9mBSCTd
	mnEWTOak1Ua5ZIaiz7razOtA0eg2fL+xqYPHukudHVSTg4/UQpzGsC5EncZUo/V8ZfLyqO4gP+Z
	NrpCGkhTHR2a2TDQEvD9YPGKOxJkZnP8vzWpH/QUNsPE+kpCQqxOPgtggzCvqHamNfCpBlCJhOO
	ED/XNFqnNwmC8DSZ38g7uQc15BwUEeOm5CVygc2fwCxA1whTV559wn0mX83h97jYiTHk+1WtT4B
	9PY9mWawh42FobWt6DQgUM2z5canHJdeIXBPy65zXRZ4+8HZjtyFexFbEvdMCNxK2u9Ty4RH+
X-Google-Smtp-Source: AGHT+IFmb+80wkKZdKxRHpidfReqxOHlUmLsipFT1rzzTuNx9rKmNHYR/9f9tfCpJuYk6MXE4I4WOw==
X-Received: by 2002:a05:651c:1148:b0:37b:9361:711d with SMTP id 38308e7fff4ca-382eae68ac5mr6985121fa.8.1767695432846;
        Tue, 06 Jan 2026 02:30:32 -0800 (PST)
Received: from razdolb ([77.220.204.220])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb8dadc0sm4315921fa.33.2026.01.06.02.30.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:30:32 -0800 (PST)
References: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
User-agent: mu4e 1.10.9; emacs 30.2
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Jacky Chou <jacky_chou@aspeedtech.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew  Jeffery <andrew@codeconstruct.com.au>, Bjorn
 Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Manivannan
  Sadhasivam
 <mani@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, Neil Armstrong <neil.armstrong@linaro.org>,
 linux-aspeed@lists.ozlabs.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Andrew
 Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-gpio@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>
Subject: Re: [PATCH v7 0/7] Add ASPEED PCIe Root Complex support
Date: Tue, 06 Jan 2026 12:58:40 +0300
In-reply-to: <20251216-upstream_pcie_rc-v7-0-4aeb0f53c4ce@aspeedtech.com>
Message-ID: <875x9fuj7i.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_023035_860140_924951FB 
X-CRM114-Status: GOOD (  18.63  )
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

Hi Jacky,

On 2025-12-16 at 09:49 +08, Jacky Chou <jacky_chou@aspeedtech.com> wrote:

> This patch series adds support for the ASPEED PCIe Root Complex,
> including device tree bindings, pinctrl support, and the PCIe host controller
> driver. The patches introduce the necessary device tree nodes, pinmux groups,
> and driver implementation to enable PCIe functionality on ASPEED platforms.
> Currently, the ASPEED PCIe Root Complex only supports a single port.
>
> Summary of changes:
> - Add device tree binding documents for ASPEED PCIe PHY and PCIe RC
> - Update MAINTAINERS for new bindings and driver
> - Implement ASPEED PCIe PHY driver
> - Implement ASPEED PCIe Root Complex host controller driver
>
> This series has been tested on AST2600/AST2700 platforms and enables PCIe device
> enumeration and operation.

First of all, thank you for your efforts in getting this driver
upstreamed! I am trying to understand whether this driver supports
PCIe devices that have an I/O port BAR, where CPU access to I/O ports
is required for proper device operation.

If I understand correctly, this line in the Aspeed 2600 dtsi file
declares the I/O port range:

    ranges = <0x01000000 0x0 0x00018000 0x00018000 0x0 0x00008000

During system initialization, the pci_remap_iospace() function in
arch/arm/mm/ioremap.c maps the physical address range
0x00018000-0x00020000 to the virtual address PCI_IO_VIRT_BASE
(0xfee00000). After this mapping, inb() and outb() calls work by
converting I/O port addresses to virtual addresses starting at
PCI_IO_VIRT_BASE, then performing reads and writes to those virtual
addresses.

What I don't understand is this: according to the Aspeed 2600
datasheet, the address range 0x00000000-0x0fffffff (which contains
0x00018000-0x00020000) is mapped to Firmware SPI Memory. This would
mean that outb() operations get routed to memory-mapped SPI flash
instead of PCIe.

It seems like there's a missing piece to this puzzle. Could you help
clarify how this is supposed to work?

--
Kind regards,
Mikhail Rudenko

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
