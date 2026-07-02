Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 729F7C43458
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jul 2026 12:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egdTDMPMZ7T1C+tmlMh8Im74bi+9OUg9btN1WrNV38E=; b=I2uoWgEGmndxSs
	lWI8K0J9IrWHHqytCOouXymYI3lk7yxtiE7KYOIdTdZXmZo0qCS4Ed+ovBjL08GBCHsQTcZhC2FN2
	bFmi47aDWL88BYqkJF/eM5LICtlrZ2HYjcaLuWHs92NHPD/upzN4z0cr3kHO9xVoj5xW7dW2qm+57
	u1aWNxs2T7H/f4r+fWq3C83qhF4vsFKNFQ2n+5zjUSO7gPneS8fpuCbUikustgACNiJHEpYhkyDcW
	anmMytcda4NedWJciH3tN+XwXXCRNucG37aWW7BWRZVlDdHSABsm8nwst87P+JNC9lQl6frg3TF43
	01kS1MbC24dGjhxbem7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGoq-00000004SqI-0xYH;
	Thu, 02 Jul 2026 12:47:04 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfGon-00000004SpC-1tXo
	for linux-phy@lists.infradead.org;
	Thu, 02 Jul 2026 12:47:03 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-c1274bedebfso167913166b.2
        for <linux-phy@lists.infradead.org>; Thu, 02 Jul 2026 05:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782996419; cv=none;
        d=google.com; s=arc-20260327;
        b=Rt9lcR7plQONm/8SlfZT0Cr3Nh6umBn+pdcchFddBU5IpcG4YZGgKgmoVuUFj2Y/aO
         B672YUxVSkcUR9XLbLkQP+jOolFAcnZBplTOR+eKWpw86xzhu6YJvDn9jAp1nZBNwgsq
         6zZRcc3NCPavkmwXEONP+G0UUBYKxnQ2FZ3pv6nhw5iaKkia0w83o/ewE6gn8snQCa4W
         Wwq5cHWNMxVJ+WdDdaaGFrnNCnrM1NyB+4lmddloLRnxVK7orlt3hDfNPfZXGAM0IHMO
         FJj8oND+Hr23iwBtBDKmzxbVz6t/gw2y/aMRpgUl1gAxrxoChAKeY1Vd/MmH9zutytI4
         CMUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=210HKleKgbmFKKFSqfRC++HOJhEM15Vlg9VXrqpCJ6A=;
        fh=vmbsW//BT4+ZENW3brhpW2aXY1iu8GK3fFieRorZ+OM=;
        b=RT1apKV1YeFz9oLVXHSnW0VDgxTZSF2Z7nmfhRj/vj+IlF44i77udmqqwD51osEfEl
         na/UkW7iKTYNqS13frZbpjM6jiiBBEOCX0n0gWxtbcV0sVsZmZ0bRQu2n6ZNQXJuPJdy
         jfE5TfsqaYNVhkkpl+7dEMsO4it9gKju/j/ol7n2i5a5IGL0OvIBICQ369aI1DBA+Nql
         kkNpLIaDrCitk4bsyQALgo8Tx0yYNbP+ra8WLDdboCG2L/NfprNfZk8xUE8cgQxP7Y5H
         muyv9DnX5MweZdNVGLdV9YahEhGVoSJeBaJPZKbPVz7H+AXtDob8CNypfzGV9QK+uUhV
         uAsA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1782996419; x=1783601219; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=210HKleKgbmFKKFSqfRC++HOJhEM15Vlg9VXrqpCJ6A=;
        b=mFGKoY/qUbdiaR8GqpEr0/RIg4G3gzJdWGHBUqOJvDVtU+uhukYmPJ4nKmI1eCiKdL
         QdDvek1UfQNdS6FUKTPqXIJuJZ4eg3mAopQoZwed5xYUTWOyBzG0y9x4BnVeCbFBuBmE
         gDoabv3C5LDnqdShALSvhM/G4U2nLiKBSdkzzE8BBJK12GrxRxLc/poX3jzeI+tGcjZ0
         aey6hoVoLJnAqQj2ESQe7puhAJ0iy55RcB2A3k9ZhVi0XzHOwgm7qi+wTcBHWAxpNtmh
         l/0uADNlNCf6DW358yB/F9hUT0vgMPooyATEpBslAyzxEv9okt0j7fh+EZm6NMz36hVg
         IaVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782996419; x=1783601219;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=210HKleKgbmFKKFSqfRC++HOJhEM15Vlg9VXrqpCJ6A=;
        b=G7Rw/DK07qK5SC6IUZXJjHq2n7vUnKZfMpJ7UEp1RGxO1IYK8Ds+fsQ+JoyIayk+cg
         AZzc1YBiTDcEe7Ermjq7Or7zCGEhvtGxNPOURgRRDCbqWQzlJvjGtbAKeWyUNe6jcsg1
         Tu+D/KLskVW1O1KB2jjET/q6tIo/uL5VutR5ihMp73FVKoLK0j6YyH32MLDwVgkzZ8HX
         Y+n4znX4H/BQx8vLxzLDobZiU0wjCAGZpTNB7CJJO0ooISiQ2BpfJl039IG3ckoLtCHy
         dNovFUeqsnoSDFPD7SGkAht6nX8iAAEMl26msLnbSXonpV/CSF9egz8ngTzfi2Ujy6sI
         8eHg==
X-Forwarded-Encrypted: i=1; AHgh+RobW0HBSHG7TmgxryEsiRAWwN7gyABWrA+kj7JAa+6MmtIU6gKCFxsoLxYjndLdE4rL5cDMgykXHto=@lists.infradead.org
X-Gm-Message-State: AOJu0YzUGuzstHSSb2hrOfI95t9txHLmJaUewW6RATuL2UZtECg5QJjx
	hdek0a749TWs1hn0itleSzzPrrGS+8Ajnaraw8ICQu73igt4dxhPAAsSAjFDVFoC+pfLMaOM57O
	ReKqEzijCck/ooCMz8wzFUcSOFTZTSVhbYZWKCLcmSw==
X-Gm-Gg: AfdE7cl126JsrbzNU9MI6DTFvIM7qMIg47+Zsn04NIFo67usvStRvX+zdGEAU+BCwAH
	G3QdKIt6gC0GGSt5gqnHYChQXA53+v7fSjro1yp+zGr631da8m7oAowSugBezBJljW9xF5e5239
	hIUk7OZo7bttW8cXQcmLjyU64Oz/Mo2/AVszUIMhWVXjRnaZI23+fyuKvPl5OOVVlPOuO1P+X8q
	1UC7Fn86uzs2xtCcwYqAfsBmYvUJoschGEHG0g4cRKvnCFk2c9apEYSRtGBlroRXJWMf0tpMkPu
	M6SCCzPmeQNSrcTSQOBw/EZryQ==
X-Received: by 2002:a17:906:d0da:b0:c12:64c6:bd7 with SMTP id
 a640c23a62f3a-c12a9e053e3mr203835966b.21.1782996418879; Thu, 02 Jul 2026
 05:46:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org> <akZcpgDSjAg6gcok@lsv051416.swis.nl-cdc01.nxp.com>
In-Reply-To: <akZcpgDSjAg6gcok@lsv051416.swis.nl-cdc01.nxp.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 2 Jul 2026 14:46:47 +0200
X-Gm-Features: AVVi8CfnsNCvDc67RDsUnObGKCXWxD40T6JSCY5QNMiAlpanyxUGcJsCLPpkpdE
Message-ID: <CAKfTPtDT5NiFcgozfxec0vBi4663fhnNdQGRdGpF6VwpKSJU-g@mail.gmail.com>
Subject: Re: [PATCH 0/4 v2] Serdes: s32g: Add support for serdes subsystem
To: Jan Petrous <jan.petrous@oss.nxp.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com, 
	p.zabel@pengutronix.de, linux@armlinux.org.uk, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_054701_506977_255DE2EC 
X-CRM114-Status: GOOD (  20.23  )
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

On Thu, 2 Jul 2026 at 14:42, Jan Petrous <jan.petrous@oss.nxp.com> wrote:
>
> On Tue, Feb 03, 2026 at 05:19:13PM +0100, Vincent Guittot wrote:
> > s32g SoC family includes 2 serdes subsystems which are made of one PCIe
> > controller, 2 XPCS and a shared Phy. The Phy got 2 lanes that can be
> > configured to output PCIe lanes and/or SGMII.
> >
> > Implement PCIe phy and XPCS support.
> >
> > Change since v1:
> > - Fix compile_test
> > - Use devm_reset_control_get_exclusive()
> > - Fix s32g_serdes_phy_set_mode_ext()
> > - Manage devm_clk_bulk_get_all() returns 0
> > - Fix s32g_serdes_parse_lanes() error management
> > - Move xpcs filein drivers/net/pcs/
> > - Add pcs_inband_caps()
> > - Fix functions in phylink_pcs_ops
> > - Fix MAINTAINERS
> >
> >
> > Vincent Guittot (4):
> >   dt-bindings: serdes: s32g: Add NXP serdes subsystem
> >   phy: s32g: Add serdes subsystem phy
> >   phy: s32g: Add serdes xpcs subsystem
> >   MAINTAINERS: Add MAINTAINER for NXP S32G Serdes driver
> >
> >  .../bindings/phy/nxp,s32g-serdes.yaml         |  154 +++
> >  MAINTAINERS                                   |   10 +
> >  drivers/net/pcs/Makefile                      |    1 +
> >  drivers/net/pcs/pcs-nxp-s32g-xpcs.c           | 1006 +++++++++++++++++
> >  drivers/phy/freescale/Kconfig                 |   10 +
> >  drivers/phy/freescale/Makefile                |    1 +
> >  drivers/phy/freescale/phy-nxp-s32g-serdes.c   |  953 ++++++++++++++++
> >  include/linux/pcs/pcs-nxp-s32g-xpcs.h         |   50 +
> >  8 files changed, 2185 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/nxp,s32g-serdes.yaml
> >  create mode 100644 drivers/net/pcs/pcs-nxp-s32g-xpcs.c
> >  create mode 100644 drivers/phy/freescale/phy-nxp-s32g-serdes.c
> >  create mode 100644 include/linux/pcs/pcs-nxp-s32g-xpcs.h
> >
> > --
> > 2.43.0
> >
>
> Hi Vincent, all,
> I'm taking over the S32G SerDes/XPCS upstreaming. The effort has moved in-house
> at NXP and I'll be carrying it forward, continuing from this v2 rather than
> restarting from zero.
>
> Vincent, thanks for the v1->v2 groundwork. I'll keep your authorship on the
> patches that originate from your series (Co-developed-by plus your
> Signed-off-by) and build on top; I'll send you v3 off-list first, as you
> offered.
>
> A v3 is in preparation and will come as an RFC, with the v2 review comments
> addressed.
>
> Vincent, if you're OK with the handoff, a short ack here would help make the
> transition visible to the reviewers.

Ack

Thanks
Vincent

>
> Thanks.
> /Jan
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
