Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C83C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 18:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY9OMRj+BKTOqJuykfNKPoJtmzKO8fvBNzJmP0F1v9M=; b=IPvkK1OU8LVDVj
	EsK6OTb2VE8h02NhLkAV/TjElVISW7D3mVUpRNj3trJlvp+FVzNAQm9RuyGLzCRFejs7kOSr434VN
	ycr7udAcLseteeTa89NFjEJPxTqOq//KGNYZRnQT3b2rVGKuG/u6JYiGR+qCoJ74THjxLT5zGqy/m
	1/1SfHr4+fZq2dSYQGaKmG7TYEftoEBvcW0aPGeEY3iIjDyYfdq+oXXV1rQgaic+459R3B6nhQ+pz
	CdhS1ElHIV73t5c/MBdFPnN6Vp/40CdwtRJTyfcEUUT7yFUZZMiJelKtkL1dbrta8//pvG/fTVcLB
	OBS19A0gh77UxJLdTC7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99V7-00Buxg-4v; Wed, 06 Jul 2022 18:11:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99V4-00BuwI-3y
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 18:11:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 20C7161FE2
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 18:11:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1ED6C341CF
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 18:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657131104;
	bh=c7Cx7lWTrDQaho+shcjrP2iASNe68MqPSBAKq2zNm4w=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=l8H7MgBYiC7ImNEYXRg3UI0KCxt6u/KflfqaY8EgFb/BjsQ66x6J/ObI+YKflx/DR
	 2jRpa5U98NQt+RMATwwHSwT3Q8DSPflb+TqmOfkpR4a2O3SgMlgZ6fSTBWqIw8p84S
	 AK4fDJsqwsEESUoVOZovf4m2VQFdFwjB4MfoczyCpXhqTMVh9/7YqSASH3h5aFbg9M
	 BG+C4oiU2W/VHPAYf9iJIg9WuX1CxJVBmrVpgBSWVwoUMqo3W2PHdj6jEZduhzZY+0
	 /a1EQ/DP4dOO/3SIDq+w4IlW+EwrhZ+PtT7Ai/AS545rLNxPO7qblwVkGyDyNMA5uG
	 kFdS7KaPZ77AQ==
Received: by mail-vs1-f52.google.com with SMTP id j6so15960580vsi.0
        for <linux-phy@lists.infradead.org>; Wed, 06 Jul 2022 11:11:43 -0700 (PDT)
X-Gm-Message-State: AJIora/Bn1Sp2exPOoJjT+ww71GjosvFu0+4sJ0anGqMJaW6c7+K9Axe
	7zMGSnqk/XeUIZduQvD/ACd8bGGAEGc7SYH5gw==
X-Google-Smtp-Source: AGRyM1trwyvSUtHyHigzbb6dGeQLAewwyn/Ih2DDQyVDcW25FgSTk48k8uDxAPcTpwGjJUVaOHaJHNB/o6IeRy5qfXQ=
X-Received: by 2002:a67:c187:0:b0:354:3ab2:ba65 with SMTP id
 h7-20020a67c187000000b003543ab2ba65mr23005594vsj.53.1657131102853; Wed, 06
 Jul 2022 11:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220629060435.25297-1-vidyas@nvidia.com> <20220629060435.25297-3-vidyas@nvidia.com>
 <20220630210449.GA3283899-robh@kernel.org> <e971a557-3387-efcf-87ec-983b998c5e93@nvidia.com>
In-Reply-To: <e971a557-3387-efcf-87ec-983b998c5e93@nvidia.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Jul 2022 12:11:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJQVJerfojCku9tmSa1_b2EDkvVgCs+2SvCmjCMe+gfyA@mail.gmail.com>
Message-ID: <CAL_JsqJQVJerfojCku9tmSa1_b2EDkvVgCs+2SvCmjCMe+gfyA@mail.gmail.com>
Subject: Re: [PATCH V3 02/11] dt-bindings: pci: tegra: Convert to json-schema
To: Vidya Sagar <vidyas@nvidia.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jon Hunter <jonathanh@nvidia.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Vinod <vkoul@kernel.org>, Krzysztof Wilczynski <kw@linux.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mikko Perttunen <mperttunen@nvidia.com>, PCI <linux-pci@vger.kernel.org>, 
	devicetree@vger.kernel.org, linux-tegra <linux-tegra@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, Krishna Thota <kthota@nvidia.com>, 
	Manikanta Maddireddy <mmaddireddy@nvidia.com>, sagar.tv@gmail.com, 
	Thierry Reding <treding@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_111146_276429_E11829F2 
X-CRM114-Status: GOOD (  17.60  )
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

On Wed, Jul 6, 2022 at 3:53 AM Vidya Sagar <vidyas@nvidia.com> wrote:
>
>
>
> On 7/1/2022 2:34 AM, Rob Herring wrote:
> > External email: Use caution opening links or attachments
> >
> >
> > On Wed, Jun 29, 2022 at 11:34:26AM +0530, Vidya Sagar wrote:
> >> From: Thierry Reding <treding@nvidia.com>
> >>
> >> Convert the Tegra194 PCIe bindings from the free-form text format to
> >> json-schema.
> >>
> >> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> >> Signed-off-by: Thierry Reding <treding@nvidia.com>
> >> ---

> >> +  nvidia,bpmp:
> >> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> >> +    description: |
> >> +      Must contain a pair of phandle to BPMP controller node followed by controller ID. Following
> >> +      are the controller IDs for each controller:
> >> +
> >> +        0: C0
> >> +        1: C1
> >> +        2: C2
> >> +        3: C3
> >> +        4: C4
> >> +        5: C5
> >> +    items:
> >> +      - items:
> >> +          - minimum: 0
> >> +            maximum: 0xffffffff
> >
> > That's already the limit. Just a description is fine.
> >
> >> +          - enum: [ 0, 1, 2, 3, 4, 5 ]
> >
> > maximum: 5
>
> Setting the maximum to '5' is resulting in the following error.
>
> pcie-ep@141a0000: nvidia,bpmp:0:0: 4294967295 is greater than the
> maximum of 5
>
> Could you please help me understand why I'm seeing this error?

This is what you need:

items:
  - items:
      - description: phandle to BPMP controller node
      - description: controller ID
        maximum: 5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
