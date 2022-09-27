Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3567AC6FA86
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kXL5HWXHQv5aKCvCdzKvB2hyyvpDUlPZ9/ioBkYu9Ws=; b=k1p1TJ7nkBHKNt
	kOJLeLmP1CkbbynjVMn/l0GRZXo9Vj7ALL6Dd+kAGVmDbjyQU7kNegMsFCKj1jDV+0r5HG0dOJNU0
	CX5410cV5qQx1XFQOYlFJVfsf8O16uw6p77EMS7I4wSWuTPK2QjkT7FQcGJOQo9+bd8VUP1KoiEHW
	AbyJYlfL7Pi0VCjDnr4Q8bnyOn4h/WPbq5EGWrWjzy/BFQUGajugCCPZitLYB/gSCwJGEw1iN9kZa
	2lwhuQEIcmoUx8eERL9NDa5MPNN0TLTegXOSORWTAEumUkk9Yfj01ag/rXCWc6QRnh0XYDVCfqer7
	s2HLU1LwjWiLyExpnLzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6hN-009SAJ-BJ; Tue, 27 Sep 2022 09:16:17 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6h2-009S1V-3X
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:15:58 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-3450a7358baso93607777b3.13
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 02:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=O/q5FovWG8zdekeO1QxfHZC6Z0cfY4f81aN83ssI774=;
        b=MDkdqOjCmkTkQsz2f2sl2M/5t1vRP0xmHX0mGMBZbUR/vdi/lMl7sCufBQHuFq1SwH
         p40LjYuKocB2Anf9W4YwYPVWALkEM4GFgua92OrrY8sK0PjNcsLA7wBiZv3LXCgL8SZk
         QA0TcIdOs4r/MdqKf2OwM4+p9NTnYy3H9In5JclN4bHpc0KCX6Z0q01aAhTLPrrMxQc9
         UFmk1C6hMZ9i33brGAlbhxoWOBcw40OZ+TZPfibksO11T+FDoMUaWRkol2UMikc1CZP0
         qUK592Qx0id31yT+h81dX3vYp34o3FEyx7NPj/nAek5HFv4L5R66QoPFUg8HH7G85z3H
         Ab3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=O/q5FovWG8zdekeO1QxfHZC6Z0cfY4f81aN83ssI774=;
        b=jANUaALb+y/8RgewG0rSDxYPLvRr3vGO1uVUqQteMbE1JBKJNU3zgzi/3vrCP0bn0a
         TZkxTuATU89eWKWUmqGYyKkA2OFLoxmnY5zq6FrCKe8w7UMVIBt7Mk1GfjR74KN8vVCW
         hWwgWEaiCRC9R5WtzYoWMiK9225LLUaGHGSdBuOXQbak0qyo0b1A7gh+WxJ406yLP+D6
         eVRLR4D36URPkjLoZf+ADJGa/7TW6wTOPM8PNb8aegHmyyYp7vMTPwqfZ618rN190vYp
         0MHE+2yv1VoSu6uw6mxA58rrCGmTOqcsq3kbuGHjudoZ6cLMNgmPuAFFCuErZND05Rt7
         HyFg==
X-Gm-Message-State: ACrzQf2hZp0/eAYxIxxyzZzw5s0d3/axeOwJHu4ZP1Q9ajiWABoawluQ
	8zli1WL72lvQBUQUpxZwRwmMPOC3T8vZZmdoxjG4nw==
X-Google-Smtp-Source: AMsMyM7SCb8ur4Q2xNYBcfZ4Vxp5JbVRg7g8b8AUPos4EFghOIHtwp5IxX7rxWxejanl9tVB9OM29LnhBfQryFFzbz0=
X-Received: by 2002:a0d:d68a:0:b0:350:a7f0:7b69 with SMTP id
 y132-20020a0dd68a000000b00350a7f07b69mr12855402ywd.132.1664270151366; Tue, 27
 Sep 2022 02:15:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org> <YzK6c2g0bgwyvZ+O@lpieralisi>
In-Reply-To: <YzK6c2g0bgwyvZ+O@lpieralisi>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 27 Sep 2022 12:15:40 +0300
Message-ID: <CAA8EJppuyZ0KFk+M3Jw3_JEmsjhfv3tmDd-N3r98A838+xcAQA@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] PCI: qcom: Support using the same PHY for both RC
 and EP
To: Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@somainline.org>, Rob Herring <robh+dt@kernel.org>, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_021556_309586_8AE23F56 
X-CRM114-Status: GOOD (  34.87  )
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

On Tue, 27 Sept 2022 at 11:55, Lorenzo Pieralisi <lpieralisi@kernel.org> wrote:
>
> On Mon, Sep 26, 2022 at 08:34:30PM +0300, Dmitry Baryshkov wrote:
> > Programming of QMP PCIe PHYs slightly differs between RC and EP modes.
> >
> > Currently both qcom and qcom-ep PCIe controllers setup the PHY in the
> > default mode, making it impossible to select at runtime whether the PHY
> > should be running in RC or in EP modes. Usually this is not an issue,
> > since for most devices only the RC mode is used. Some devices (SDX55)
> > currently support only the EP mode without supporting the RC mode (at
> > this moment).
> >
> > Nevertheless some of the Qualcomm platforms (e.g. the aforementioned
> > SDX55) would still benefit from being able to switch between RC and EP
> > depending on the driver being used. While it is possible to use
> > different compat strings for the PHY depending on the mode, it seems
> > like an incorrect approach, since the PHY doesn't differ between
> > usecases. It's the PCIe controller, who should decide how to configure
> > the PHY.
> >
> > This patch series implements the ability to select between RC and EP
> > modes, by allowing the PCIe QMP PHY driver to switch between
> > programming tables.
> >
> > This patchseries depends on the header from the pre-6.1 phy/next. Thus
> > after the 6.1 the PCIe patches can be applied independently of the PHY
> > part.
>
> I assume then it is better for me to ACK the PCI patches so
> that they can be pulled into the PHY tree, right ?

This way can work too.

>
> Lorenzo
>
> > Changes since v4:
> > - Fixed the possible oops in probe (Johan)
> > - Renamed the tables struct and individual table fields (Johan)
> > - Squashed the 'separate funtions' patch to lower the possible
> >   confusion.
> >
> > Changes since v3:
> > - Rebased on top of phy/next to pick in newly defined
> >   PHY_MODE_PCIE_RC/EP.
> > - Renamed 'main' to 'common' and 'secondary' to 'extra' to reflect the
> >   intention of the split (the 'common' tables and the 'extra for the ...
> >   mode' tables).
> > - Merged the 'pointer' patch into first and second patches to make them
> >   more obvious.
> >
> > Changes since v2:
> > - Added PHY_SUBMODE_PCIE_RC/EP defines (Vinod),
> > - Changed `primary' table name to `main', added extra comments
> >   describing that `secondary' are the additional tables, not required in
> >   most of the cases (following the suggestion by Johan to rename
> >   `primary' table),
> > - Changed secondary tables into the pointers to stop wasting extra
> >   memory (Vinod),
> > - Split several functions for programming the PHY using these tables.
> >
> > Changes since v1:
> > - Split the if(table) removal to the separate patch
> > - Expanded commit messages and comments to provide additional details
> > - Fixed build error on pcie-qcom.c
> > - Added support for EP mode on sm8450 to demonstrate the usage of this
> >   patchset
> >
> > Changes since RFC:
> > - Fixed the compilation of PCIe EP driver,
> > - Changed pri/sec names to primary and secondary,
> > - Added comments regarding usage of secondary_rc/_ep fields.
> >
> > Dmitry Baryshkov (5):
> >   phy: qcom-qmp-pcie: split register tables into common and extra parts
> >   phy: qcom-qmp-pcie: support separate tables for EP mode
> >   phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode
> >   PCI: qcom: Setup PHY to work in RC mode
> >   PCI: qcom-ep: Setup PHY to work in EP mode
> >
> >  drivers/pci/controller/dwc/pcie-qcom-ep.c     |   5 +
> >  drivers/pci/controller/dwc/pcie-qcom.c        |   5 +
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 523 +++++++++++-------
> >  .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   1 +
> >  4 files changed, 335 insertions(+), 199 deletions(-)
> >
> > --
> > 2.35.1
> >



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
