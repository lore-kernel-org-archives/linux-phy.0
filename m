Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7317AEB64D9
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jul 2023 15:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkO5CY3WWNmch4LKWyLivXtqe3zOF6wM4+L+9IyR0AU=; b=SuKa0Sw68rKlYe
	8TUt/DBnWqzMV7O+3f6Vm7kZerJ3JzV7wBji+X5mM31unXboqAlUYoGbA7Ip2M2lGAJfcpTmelneJ
	adZrIo1pO9zKHq+TiMXGhDESh7v0X6rnEW8W9W2K4Yf1D/o8J6Ev0WW9tJ/+GN8kjdJuNp7XNkKeO
	Ld2uWIbUuIWQQoNzkeyXYfKo4wva2MBO8dKmt50hlVDqlSEmr2UsImPXmNF4GJaN88WZy7wuJTc3y
	ysAfKKCQ0GIHmuI5Jf3ZIP3qJXm2h87EvEa9ZW/aMkFQH7/WfXD/a8loOciFWx9q5fKldbRJH8AI+
	UsgZJ6adFPyocqfeU9Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHn3Z-004ycb-03;
	Fri, 07 Jul 2023 15:07:37 +0000
Received: from mail-io1-f44.google.com ([209.85.166.44])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHn3V-004yZr-1Z;
	Fri, 07 Jul 2023 15:07:35 +0000
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-7835bad99fbso72346239f.1;
        Fri, 07 Jul 2023 08:07:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688742449; x=1691334449;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A4Q5tL8Q206IfLWZzoyH9okE3A87KjcmbofZ6mTqsrc=;
        b=jDBJi/KZjg2KmrPU2JgcqgBdLJJ2OW4rm9pftznvLCt/oFrq7qj3zAkMDHg6Ps/vun
         oS/MhMiZF6o+OY311shT1QxMsDVvu3huMoNYh29ZZEIPWIvG0xWL3ztMnJpa3eWRTx0S
         KYdaqScR4lytoR5ASCvzA7xWRUGCmCIHMOv2G6PWODVpaltzuCMi2XfzzD7TqDH0xx3d
         ONfPCuWbx/52Dl/K3ZbxHzruGNRMPkbSBFgRiGt53ZpdQQ2uGNrlOVcBmmcRHqAb1cTl
         GgGWbpr0YfEU1Yl3gvWJ6GidoSlDXCHzxtWklRLeFRxP9Tn+LriXPwXd18OGne6Ni3Sf
         c3HQ==
X-Gm-Message-State: ABy/qLYgMn45ZzUg76gtWvqP4ku1eUkUXeF+Y6IDkZREpmWIc8htkO9L
	CaqaHcREn8yA5ChzApoosw==
X-Google-Smtp-Source: APBJJlGXPgJvWDBMVTtll9d+6jXrCeBMq5n/RgRvf6i5hIMGSlbfHY2db0Kk6Tahydw1jOWNCMMfRg==
X-Received: by 2002:a5e:c016:0:b0:785:d017:c16f with SMTP id u22-20020a5ec016000000b00785d017c16fmr6407660iol.14.1688742449091;
        Fri, 07 Jul 2023 08:07:29 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id f11-20020a056638022b00b0042b149aeccdsm1361629jaq.104.2023.07.07.08.07.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 08:07:28 -0700 (PDT)
Received: (nullmailer pid 311406 invoked by uid 1000);
	Fri, 07 Jul 2023 15:07:24 -0000
Date: Fri, 7 Jul 2023 09:07:24 -0600
From: Rob Herring <robh@kernel.org>
To: Gatien CHEVALLIER <gatien.chevallier@foss.st.com>
Cc: Oleksii_Moisieiev@epam.com, gregkh@linuxfoundation.org, 
	herbert@gondor.apana.org.au, davem@davemloft.net, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alexandre.torgue@foss.st.com, vkoul@kernel.org, jic23@kernel.org, 
	olivier.moysan@foss.st.com, arnaud.pouliquen@foss.st.com, mchehab@kernel.org, 
	fabrice.gasnier@foss.st.com, andi.shyti@kernel.org, ulf.hansson@linaro.org, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	hugues.fruchet@foss.st.com, lee@kernel.org, will@kernel.org, 
	catalin.marinas@arm.com, arnd@kernel.org, richardcochran@gmail.com, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-iio@vger.kernel.org, alsa-devel@alsa-project.org, 
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org, 
	netdev@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 05/10] firewall: introduce stm32_firewall framework
Message-ID: <20230707150724.GA112541-robh@kernel.org>
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-6-gatien.chevallier@foss.st.com>
 <20230706150906.GB3858320-robh@kernel.org>
 <d13f935c-568b-3c0d-8e7d-006b7d4e7d50@foss.st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d13f935c-568b-3c0d-8e7d-006b7d4e7d50@foss.st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_080733_528350_44314E6F 
X-CRM114-Status: GOOD (  48.43  )
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

On Fri, Jul 07, 2023 at 03:43:15PM +0200, Gatien CHEVALLIER wrote:
> 
> 
> On 7/6/23 17:09, Rob Herring wrote:
> > On Wed, Jul 05, 2023 at 07:27:54PM +0200, Gatien Chevallier wrote:
> > > Introduce a firewall framework that offers to firewall consumers different
> > > firewall services such as the ability to check their access rights against
> > > their firewall controller(s).
> > > 
> > > The firewall framework offers a generic API that is defined in firewall
> > > controllers drivers to best fit the specificity of each firewall.
> > > 
> > > There are various types of firewalls:
> > > -Peripheral firewalls that filter accesses to peripherals
> > > -Memory firewalls that filter accesses to memories or memory regions
> > > -Resource firewalls that filter accesses to internal resources such as
> > > reset and clock controllers
> > 
> > How do resource firewalls work? Access to registers for some clocks in a
> > clock controller are disabled? Or something gates off clocks/resets to
> > a block?
> 
> To take a practical example:
> 
> A clock controller can be firewall-aware and have its own firewall registers
> to configure. To access a clock/reset that is handled this way, a device
> would need to check this "resource firewall". I thought that for these kinds
> of hardware blocks, having a common API would help.

We already have the concept of 'protected clocks' which are ones 
controlled by secure mode which limits what Linux can do with them. I 
think you should extend this mechanism if needed and use the existing 
clock/reset APIs for managing resources.

> > 
> > It might make more sense for "resource" accesses to be managed within
> > those resource APIs (i.e. the clock and reset frameworks) and leave this
> > framework to bus accesses.
> > 
> 
> Okay, I'll drop this for V2 if you find that the above explaination do not
> justify this.
> 
> > > A firewall controller must be probed at arch_initcall level and register
> > > to the framework so that consumers can use their services.
> > 
> > initcall ordering hacks should not be needed. We have both deferred
> > probe and fw_devlinks to avoid that problem.
> > 
> 
> Greg also doubts this.
> 
> Drivers like reset/clock controllers drivers (core_initcall level) will have
> a dependency on the firewall controllers in order to initialize their
> resources. I was not sure how to manage these dependencies.
> 
> Now, looking at init/main.c, I've realized that core_initcall() level comes
> before arch_initcall() level...
> 
> If managed by fw_devlink, the feature-domains property should be supported
> as well I suppose? I'm not sure how to handle this properly. I'd welcome
> your suggestion.

DT parent/child child dependencies are already handled which might be 
enough for you. Otherwise, adding a new provider/consumer binding is a 
couple of lines to add the property names. See drivers/of/property.c.

> > > Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
> > > ---
> > >   MAINTAINERS                               |   5 +
> > >   arch/arm64/Kconfig.platforms              |   1 +
> > >   drivers/bus/Kconfig                       |  10 +
> > >   drivers/bus/Makefile                      |   1 +
> > >   drivers/bus/stm32_firewall.c              | 252 ++++++++++++++++++++++
> > >   drivers/bus/stm32_firewall.h              |  83 +++++++
> > 
> > Why something stm32 specific? We know there are multiple platforms
> > wanting something in this area. Wasn't the last attempt common?
> > 
> > For a common binding, I'm not eager to accept anything new with only 1
> > user.
> > 
> 
> Last attempt was common for the feature-domain bindings. The system-bus
> driver was ST-specific. I don't know if other platforms needs this kind
> of framework. Are you suggesting that this framework should be generic? Or
> that this framework should have a st-specific property?

Ah right, the posting for SCMI device permissions was the binding only. 
The binding should be generic and support more than 1 user. That somewhat 
implies a generic framework, but not necessarily.

> I've oriented this firewall framework to serve ST purpose. There may be a
> need for other platforms but I'm not sure that this framework serves them
> well. One can argue that it is quite minimalist and covers basic purposes of
> a hardware firewall but I would need more feedback from other vendors to
> submit it as a generic one.

We already know there are at least 2 users. Why would we make the 2nd 
user refactor your driver into a common framework?

[...]

> > > +int stm32_firewall_get_firewall(struct device_node *np,
> > > +				struct stm32_firewall *firewall)
> > > +{
> > > +	struct stm32_firewall_controller *ctrl;
> > > +	struct of_phandle_args args;
> > > +	u32 controller_phandle;
> > > +	bool match = false;
> > > +	size_t i;
> > > +	int err;
> > > +
> > > +	if (!firewall)
> > > +		return -EINVAL;
> > > +
> > > +	/* The controller phandle is always the first argument of the feature-domains property. */
> > > +	err = of_property_read_u32(np, "feature-domains", &controller_phandle);
> > 
> > Why do you need to parse the property twice?
> > 
> 
> The first parsing is to have the first argument, which is the controller
> phandle. The second parsing is here to get the firewall arguments based on
> the number of arguments defined by #feature-domain-cells. Maybe using
> of_property_read_u32_array() would be better. 

No. It's not a u32 array. It's a phandle+args property, so you should 
only use phandle+args APIs.

> I did not want to close the
> door for supporting several feature domain controllers, hence multiple
> phandles. of_parse_phandle_with_args() seemed fine for this purpose but the
> phandle is parsed out.

There's an iterator for handling multiple phandle+args cases.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
