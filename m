Return-Path: <SRS0=qRVw=ND=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2084C4338F
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 03:13:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B832610A2
	for <linux-phy@archiver.kernel.org>; Thu, 12 Aug 2021 03:13:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8B832610A2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chhsgxgo2hc3RMAIJqa2pjrl4M1SW6UqIf4XB/wAydA=; b=AJCu/R2IT0xw45
	gFD0wWe4Ipkv/kTYsmpPVRM9qZmIY+w2rVCEnyw5kNpUyhkatShE/RbEk7+EEMAKND77hW1pGC+aB
	p+UWOu21JmGfKVT6jZCX6EOfhL/m+xQLUd7Ev9vXyV00+Ju4RPmAr5EqTy48w09n4TTEnlfMGBKR6
	oh6l/8SJCVW7DOow2dhmSFkuGVDyofXue53Ap+tkfCT5/IqrfCPMDXGTfAiywppubRju/UDqSVryV
	vqXOb6oMA+mXdHzHq2eSXLIcE1dDk/pNUeHokkuSNIHUbBJDmdEnPcNBO7+gpYwNrNEzyXISUL6Dc
	7Q9V5xxod7X/0PIph/sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE1AE-008RBb-MG; Thu, 12 Aug 2021 03:13:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE1AB-008RAf-3O
 for linux-phy@lists.infradead.org; Thu, 12 Aug 2021 03:13:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 393B8610A3
 for <linux-phy@lists.infradead.org>; Thu, 12 Aug 2021 03:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628738025;
 bh=upoubUoFXUupbVihHazGgBdMNxy54/SCZ+T3/jlKERk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OqwSfW+yiJvyboc2kkEo2xyT9xNzZliDAW3jBXxzSAjFLlvb+FE/m/C5FwmRU5WaL
 PoqT4RztphbwRX/w+Be9o+BR3opJ+qTRTYo03xsvoWplFj8Jh5qdbEp13WfVuflwSd
 tj2gV3FEQKZedTJ+I+rNTCv7ZLIWv3N9ted/muxXXNmGzmC9OSvCnj+PQ6lkZoyqcW
 wXG7jVeRXi3ewnrqw/e1mpzEVCxxtwE6zIeSaPUdd9HA1BvnyIwNR5rokED8k3yokh
 B4LE0bN0wNbCZ0TP11TjQr6+F6Ag0NLsA0ySeOt7uE/YU+gL2KtAYa1daCEipciEXK
 5XxVCj2Zs6LGw==
Received: by mail-ed1-f43.google.com with SMTP id d6so7199546edt.7
 for <linux-phy@lists.infradead.org>; Wed, 11 Aug 2021 20:13:45 -0700 (PDT)
X-Gm-Message-State: AOAM530kLyyPbfTuLz10BGEFz/QD9Gf73wUF/qn3B+zQP7bWUOgYZVlQ
 9D6KzQtxZLgKAJe+selvcDXh9C4APdaRBq9qLQ==
X-Google-Smtp-Source: ABdhPJzbwIiwyus8IKZuyQeUUkPB0pXANOg79zMYiZaRiaBA4SqoNv4lSkj50zVHajQIBRcwrMp2s6DtG1DsUpopkEI=
X-Received: by 2002:a05:6402:1215:: with SMTP id
 c21mr2783756edw.137.1628738023720; 
 Wed, 11 Aug 2021 20:13:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1627965261.git.mchehab+huawei@kernel.org>
 <CAL_JsqLjw=+szXWJjGe86tMc51NA-5j=jVSXUAWuKeZRuJNJUg@mail.gmail.com>
 <20210804085045.3dddbb9c@coco.lan> <YQrARd7wgYS1nywt@robh.at.kernel.org>
 <20210805094612.2bc2c78f@coco.lan> <20210805095848.464cf85c@coco.lan>
 <CAL_JsqKso=z8LG3ViaggyS1k+1T2F5aAhP3_RNhumQoUUD+bbg@mail.gmail.com>
 <20210810114211.01df0246@coco.lan>
 <CAL_JsqKtXoFeJO6_13U+VsSXNGX_1TQvwOyQYRk5JUgBhvQChA@mail.gmail.com>
 <20210810162054.1aa84b84@coco.lan>
 <CAL_JsqL-R=kTugNAC-C1gfSm6Xnb0Nw_iLcRki8aQMNQjcLN6A@mail.gmail.com>
 <20210811084648.66ddff29@coco.lan>
In-Reply-To: <20210811084648.66ddff29@coco.lan>
From: Rob Herring <robh@kernel.org>
Date: Wed, 11 Aug 2021 22:13:32 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLg-jD1P3oGDocMaeHWQc+9kLr3gEdantRNUScUq5xsQw@mail.gmail.com>
Message-ID: <CAL_JsqLg-jD1P3oGDocMaeHWQc+9kLr3gEdantRNUScUq5xsQw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] DT schema changes for HiKey970 PCIe hardware to
 work
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Linuxarm <linuxarm@huawei.com>, mauro.chehab@huawei.com, 
 Binghui Wang <wangbinghui@hisilicon.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, 
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 PCI <linux-pci@vger.kernel.org>, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210811_201347_209930_3A6D3089 
X-CRM114-Status: GOOD (  10.45  )
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

On Wed, Aug 11, 2021 at 1:46 AM Mauro Carvalho Chehab
<mchehab+huawei@kernel.org> wrote:
>
> Em Tue, 10 Aug 2021 11:13:48 -0600
> Rob Herring <robh@kernel.org> escreveu:
>
> > > > >                                         compatible = "pciclass,0604";
> > > > >                                         device_type = "pci";
> > > > >                                         #address-cells = <3>;
> > > > >                                         #size-cells = <2>;
> > > > >                                         ranges;
> > > > >                                 };
> > > > >                                 pcie@1,0 { // Lane 4: M.2
> > > >
> > > > These 3 nodes (1, 5, 7) need to be child nodes of the above node.
> >
> > This was the main issue.
>
> Ok, placing 1, 5, 7 as child nodes of 0 worked, with the attached
> DT schema:
>
>
>         $ ls -l $(find /sys/devices/platform/soc/f4000000.pcie/ -name of_node)
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/of_node -> ../../../../firmware/devicetree/base/soc/pcie@f4000000
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:01.0/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:01.0/pci_bus/0000:03/of_node -> ../../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:05.0/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:05.0/pci_bus/0000:05/of_node -> ../../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:07.0/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/0000:02:07.0/pci_bus/0000:06/of_node -> ../../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/of_node -> ../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/0000:01:00.0/pci_bus/0000:02/of_node -> ../../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/of_node -> ../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/0000:00:00.0/pci_bus/0000:01/of_node -> ../../../../../../../../firmware/devicetree/base/soc/pcie@f4000000/pcie@0,0
>         lrwxrwxrwx 1 root root 0 ago 11 08:43 /sys/devices/platform/soc/f4000000.pcie/pci0000:00/pci_bus/0000:00/of_node -> ../../../../../../../firmware/devicetree/base/soc/pcie@f4000000

This all looks right to me, but...

> The logs also seem OK on my eyes:
>
>         [    3.911082]  (null): pci_set_bus_of_node: of_node: /soc/pcie@f4000000
>         [    4.001104] pci 0000:00:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000
>         [    4.043609] pci_bus 0000:01: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
>         [    4.076756] pci 0000:01:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0
>         [    4.120652] pci_bus 0000:02: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         [    4.150766] pci 0000:02:01.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         [    4.196413] pci 0000:02:04.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         [    4.238896] pci 0000:02:05.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         [    4.280116] pci 0000:02:07.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0
>         [    4.309821] pci 0000:02:09.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0

...these do not.

>         [    4.370830] pci_bus 0000:03: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@1,0
>         [    4.382345] pci_bus 0000:04: pci_set_bus_of_node: of_node: (null)
>         [    4.411966] pci_bus 0000:05: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@5,0
>         [    4.439898] pci_bus 0000:06: pci_set_bus_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
>         [    4.491616] pci 0000:06:00.0: pci_set_of_node: of_node: /soc/pcie@f4000000/pcie@0,0/pcie@0,0/pcie@7,0
>         [    4.519907] pci_bus 0000:07: pci_set_bus_of_node: of_node: (null)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
