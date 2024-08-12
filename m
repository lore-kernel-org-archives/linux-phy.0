Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0F5AC52D7D
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 15:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRVoGZs1Y5BEz+bjuvSnyMTqmejLOXrrAohl7fmH6WM=; b=UEyRDmQFhrGJaE
	f94ldTq2z2Hjf6EXk+V2UGTyAWJrh5KfD78jIoqqRGPAD4zcf/sRvD2ZDhdBq969XMFaEMMCZWlGs
	7xM+ii+bAHeEW8Rk9EyViXvm8nJz7tMSRAL4u9D2joAHuApHMlWONLdCIepv1tWY/ZYeStFZYKCb1
	8Lt3tv+3JxIRaI35psY/Mdm8sBEWsMiPoEVkSon//Euk/QBcopn7C3tIvsIqBYhh+ur/il0rxuo52
	9cvYkrLt8WIqE6X1lOenIZV/nzqby6g10jlzjgP3BN8yJesocRgHzafRZOk4qJqooffzLVGGy6vtO
	GX48d0jiTUQwIZgJp0RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWrS-00000000iTi-1SRZ;
	Mon, 12 Aug 2024 15:21:30 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWqq-00000000iPZ-2VTa;
	Mon, 12 Aug 2024 15:20:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CC42DCE0F1C;
	Mon, 12 Aug 2024 15:20:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79E8AC32782;
	Mon, 12 Aug 2024 15:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723476049;
	bh=VnLGDmiaS2Z5tkjkWIn8CfimR/QHZ7JqU5+27LaswZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PGSJCj+xyE8GhlEPNNPT6Z8/M2R+2J0KBUK78fhmm0QDMf+McYucSTLqbxkeOs43i
	 LzDaM79Eh6+GBcdURLwNB05moUu9GvoHYg7ahOFshYExHJIou/761s7K8Ues8sYFVS
	 S9GvRps8jicURswrHPm3YB7bLZTnVhvMl7vl0LmYnx7BOSsXe4caUAmakorg+hEtwc
	 QLKB12/zdCNxmKC27fMQcBKqLTdFCSg3OToHxBSuTLlHgHlYwY6swLRKkDRfLgc+dQ
	 ohqSCphktXWOuO+CTUbEjU0kE8BffKSDXYwUqbEDgfrdVdMsW9CluNaMjGew/si9by
	 YmJQ8/A19HrIA==
Date: Mon, 12 Aug 2024 09:20:48 -0600
From: Rob Herring <robh@kernel.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: kishon@kernel.org, fabrice.gasnier@foss.st.com,
	linux-stm32@st-md-mailman.stormreply.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	vkoul@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzk+dt@kernel.org, mcoquelin.stm32@gmail.com,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 2/5] dt-bindings: phy: Add STM32MP25 COMBOPHY bindings
Message-ID: <20240812152048.GA593866-robh@kernel.org>
References: <20240812120529.3564390-1-christian.bruel@foss.st.com>
 <20240812120529.3564390-3-christian.bruel@foss.st.com>
 <172346965242.493337.13574697496053856.robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <172346965242.493337.13574697496053856.robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_082052_829681_DA59305E 
X-CRM114-Status: GOOD (  13.66  )
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

On Mon, Aug 12, 2024 at 07:34:12AM -0600, Rob Herring (Arm) wrote:
> 
> On Mon, 12 Aug 2024 14:05:26 +0200, Christian Bruel wrote:
> > Document the bindings for STM32 COMBOPHY interface, used to support
> > the PCIe and USB3 stm32mp25 drivers.
> > Following entries can be used to tune caracterisation parameters
> >  - st,output-micro-ohms and st,output-vswing-microvolt bindings entries
> > to tune the impedance and voltage swing using discrete simulation results
> >  - st, phy_rx0_eq register to set the internal rx equalizer filter value.
> > 
> > Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
> > ---
> >  .../bindings/phy/st,stm32-combophy.yaml       | 178 ++++++++++++++++++
> >  1 file changed, 178 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/phy/st,stm32-combophy.yaml: access-controllers: missing type definition

Ignore this. It's a problem with the build.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
