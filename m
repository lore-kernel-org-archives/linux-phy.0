Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 568C8C433FE
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 06:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDxL+8uMY32XCDfSRhBrJot7IKtF3dk5MZhBaD/N4yg=; b=IbSb011eV7o7qW
	N1L/ux7gnqt8Vxg8ny6it5RLDsH9IKR3RUdb7Y8aMs+pxNgcQcw7qwVASht6Dgt4AvIyvCKlzNvbU
	+ILy+IcaM72BTT2y/HUNoiBzivrWTzcQJRhJ+qda5BAXhIP/32JclJeJj3JhcusgT0zshvHA6LfqB
	4KcOrzFINIPOzlaKn51RZuJ59lxSjLOXVqZzhk9LiKEcRhDVT6qCda3/Up+XFZsTBloFHyI9ufLCE
	xQ697rHWnNqdJKOAwsONgTLGNm7X8S2BMttGwODc1ZN8JcKmF1n8RhlCmgcWbZKB7D1Rw1k3uzb/0
	HvFeky2gjttwsVgSEmfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orCco-005wGz-L1; Sat, 05 Nov 2022 06:25:50 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orCcl-005wGT-NQ
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 06:25:49 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-13b23e29e36so7687197fac.8
        for <linux-phy@lists.infradead.org>; Fri, 04 Nov 2022 23:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iPTBrqMd1m/Sm0/1qyKS1POR1PDbASDeCT0rB1tU/vk=;
        b=jBppZhZMDzKee6IjZzOQMQVT6NmeQbYXhkMPBKjK0XXYd5WvO79bIHWbLCV76OOnf8
         g/Aso7l3M0k6IxrS5BESc6ak78S+sN1stOk1cmMxZ5iC186IQBnHKpFMxO3ZWNT7g/D+
         5ER/aWATkm1rIeW15tcZ7Qz0IOJh14oV5U3hrIEAK0idwxEyfgH6mTAoJmWk4qBIPG3o
         FRC4kvjRMeMVAQEM1EP+vcj45xYT9h0qqjt+3zs3LAjO2k/dtx3fk+T0ub8/fMunljbA
         hyk49TS2iE+AE0ZGYXV+oxYOFPrWzawwtDmGivb6+VVU5YTHrTdwT1Z9F3QrDiHDtvEO
         IvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iPTBrqMd1m/Sm0/1qyKS1POR1PDbASDeCT0rB1tU/vk=;
        b=rGkdXi3e1YzGj7VDNs+HHP1K/p1NXyq3bzTAhhZFgIr/tpzaaUuO7MUmJtpMYLh7Vj
         7r2cFVfL5g5qFYqq4iJu21BNfkfSNxNxG8rK2VkG0PCtvHv355Vkof24x0cBuxtFeBd1
         WQgxZsViei2ONzWyTkF4NXUU4DQDJpkXRenAJsXVLp7acWLnlphHZjRA4UNJNcNreFHb
         eo4jngMJy+LC20ZY9nxTTgE3TDdn/TMH5yqBcOcRN3zCqitBpAlgj53avrT028kHokqR
         7TGqlNQyzHKqWFmDjwupzCEPAs49qKj0+qYLAJw9EfM2gpX01rmtif3SpJVr6xMXrzf/
         MuVQ==
X-Gm-Message-State: ACrzQf27He36th2ARSEAjBCDVMZh3ye723hQB+xIUszaXcWFpt7C9Ajq
	OHew3922lzUYQ7dPYqZQibFKe/W9lAGXyp49IsE=
X-Google-Smtp-Source: AMsMyM55eK50zNlSXtpfWeWuliapR44E4AVCP/mWMJRhLFllXQKyJGZsQwoXSFgdEUfYQK4TEpqenK6htDRaS1/nBcA=
X-Received: by 2002:a05:6871:89:b0:131:6362:e26f with SMTP id
 u9-20020a056871008900b001316362e26fmr23665376oaa.144.1667629545427; Fri, 04
 Nov 2022 23:25:45 -0700 (PDT)
MIME-Version: 1.0
References: <20221104205242.3440388-1-git@johnthomson.fastmail.com.au> <20221104205242.3440388-3-git@johnthomson.fastmail.com.au>
In-Reply-To: <20221104205242.3440388-3-git@johnthomson.fastmail.com.au>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 5 Nov 2022 07:25:34 +0100
Message-ID: <CAMhs-H-pJ5gOQpbCsNSmsp6fXdELWeT6bA4jom_8TNjsLF3dnw@mail.gmail.com>
Subject: Re: [PATCH 2/2] PCI: mt7621: add sentinel to quirks table
To: John Thomson <git@johnthomson.fastmail.com.au>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Rob Herring <robh@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	=?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>, 
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_232547_784303_24C53E33 
X-CRM114-Status: GOOD (  12.94  )
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

On Fri, Nov 4, 2022 at 9:54 PM John Thomson
<git@johnthomson.fastmail.com.au> wrote:
>
> With mt7621 soc_dev_attr fixed to register the soc as a device,
> kernel will experience an oops in soc_device_match_attr
>
> This quirk test was introduced in the staging driver in
> commit b483b4e4d3f6 ("staging: mt7621-pci: add quirks for 'E2' revision
> using 'soc_device_attribute'"), and the staging driver was moved in
> commit 2bdd5238e756 ("PCI: mt7621: Add MediaTek MT7621 PCIe host
> controller driver") for the 5.16 kernel
>
> Link: https://lore.kernel.org/lkml/26ebbed1-0fe9-4af9-8466-65f841d0b382@app.fastmail.com
> Fixes: b483b4e4d3f6 ("staging: mt7621-pci: add quirks for 'E2' revision
> using 'soc_device_attribute'")
> Signed-off-by: John Thomson <git@johnthomson.fastmail.com.au>
> ---
>  drivers/pci/controller/pcie-mt7621.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Acked-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Thanks,
    Sergio Paracuellos

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
