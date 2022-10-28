Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8EBDECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 02:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cm2NIVdazPYVMz5nWWQ/pdXFvr3KLgL/3Bp4ssjgmq4=; b=XEAgFkR/RXtkVl
	G3eZnIBbB+gDUwZBHxOSuud2uI3g5ON8k8o8BIpCZPT216ZYKPqmbe6riEq6z/HHb4RwJL3UrUTJz
	L4Xk/2zMzz2X4SsDdiziChi8OhYztMrdNNB95JYe2JAEyjTtqy1LogybQn3Ol11AL4Uw4r92Eovg9
	u7lYqO4cZQQTuzDFCJlFqm9h/m0jof2M2ZFPKyh/xRhV3FytJrHccG+BzytygBydurVsy5fvo6H7o
	KjiVGziAI3mC8OYw62vtkwk/fKi4Jl7NWpYoQdKCZJIVumV46kpw2D82vsmCp4dY7K9BtNGm6lOOc
	IODUO6CsjPMoILVbOfTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEye-00FWM0-1s; Fri, 28 Oct 2022 02:20:08 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooEya-00FWIY-Pt
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 02:20:06 +0000
Received: by mail-qt1-x82f.google.com with SMTP id hh9so2718245qtb.13
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 19:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cykFnUK9bm/0PhHnZ0sXhtZ2At3ENMM99eYPdegdYSI=;
        b=AQJVYjKsyiTsjDySzOp48brbJiygd9QBWnj3eqx4ycythFdyul1dAGKYj+uTuabOYd
         R4JA8+FlW70IhjEgqggL9QziGlh7/l3LTgAYQkrzZHeF84hiTphL3mIzJP+Ji1/7KXk6
         Zxyk/yTJFtxODuiIdNpR1v4Tb/IHo1msssbiT/8gEcpo6dnsy/bBr5SicRVWQ/SYvoGw
         f6qwZB0YLz/+nKEAZgio2FOp3UFjxD0tDnV+/H+L80njN6vGAonlJVvXHAc6ao7Baxs6
         mKQQt1FP4htijiDoRDbs8D8DIX0D0JRqct708dGH7QvXcVsbvRvpY6AjgWqW0/q+3mAs
         VJQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cykFnUK9bm/0PhHnZ0sXhtZ2At3ENMM99eYPdegdYSI=;
        b=TlYmYQ7WRoRr14Eo3AogyFW6GZbiIZ8DYrcLFbgpcsWBeub44ibnBrSNWM+q5YTx1V
         p4Ph4aiglK2uQOg4HlgAQIRLyVsoBAMe4LSEgIPfpSnc5cjGxPFwl4dZ4R22nHZa3M10
         x//wKUdZ90BagUNoBJCI9LTjX3GQiUDVXw3I8o84JVKMAEdbyrprSzDzMyIHrqljOMPp
         elD3ed0Y/5Nb0DR6xGDlU5eJu3heqgcSIlBIO4Y8nPi2jKpMWYTf6fgGIZk8uV63v2Sd
         lv8IZSRzuH8q6z/0qERrZOSToxGxBkpk2mYmoyerG2K/Pr0P4g2cgqQLl+yqRWOXrdpL
         XJpg==
X-Gm-Message-State: ACrzQf3VVIrPfgXzNuB2uqB1U0V/1VKQNMbaiEhhsrJobvK66rnNMSzr
	4fLK3Cm2c+V395WMl7jD68hbJw==
X-Google-Smtp-Source: AMsMyM4nFrse7LOawN/dKiRc/aj8ygVoOp4zOOXiLSE5lagp50tusE21h1qz86DoB8x3z2sSytqEbA==
X-Received: by 2002:ac8:7d94:0:b0:39c:ed3c:98a3 with SMTP id c20-20020ac87d94000000b0039ced3c98a3mr45065437qtd.628.1666923600693;
        Thu, 27 Oct 2022 19:20:00 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id a24-20020ac86118000000b0039ee562799csm1760187qtm.59.2022.10.27.19.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 19:19:59 -0700 (PDT)
Message-ID: <f5d2c979-a61c-e0d4-7a08-5b6f5b38dffb@linaro.org>
Date: Thu, 27 Oct 2022 22:19:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 02/11] dt-bindings: usb: Add NVIDIA Tegra XUSB host
 controller binding
Content-Language: en-US
To: Wayne Chang <waynec@nvidia.com>, Rob Herring <robh@kernel.org>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <treding@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "heikki.krogerus@linux.intel.com" <heikki.krogerus@linux.intel.com>,
 Ajay Gupta <ajayg@nvidia.com>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "balbi@kernel.org" <balbi@kernel.org>,
 "mathias.nyman@intel.com" <mathias.nyman@intel.com>,
 Jui Chang Kuo <jckuo@nvidia.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sing-Han Chen <singhanc@nvidia.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>
References: <20221024074128.1113554-1-waynec@nvidia.com>
 <20221024074128.1113554-3-waynec@nvidia.com>
 <20221024145446.GA1763588-robh@kernel.org>
 <52ae737e-eb4f-9eb7-8b79-d58251062276@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <52ae737e-eb4f-9eb7-8b79-d58251062276@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_192004_906015_E91F3386 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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

On 25/10/2022 04:02, Wayne Chang wrote:
> 
>>> +  power-domain-names:
>>> +    items:
>>> +      - const: xusb_host
>>> +      - const: xusb_ss
>>
>> Drop 'xusb_'.
> 
> The properties are constant and we use the name to get the power domain.
> 
> 	tegra->genpd_dev_host = dev_pm_domain_attach_by_name(dev, "xusb_host");
> 	
> 	tegra->genpd_dev_ss = dev_pm_domain_attach_by_name(dev, "xusb_ss");
> 	
> we might not be able to drop the xusb_

These are new bindings, so why do say they are "constant"? New bindings
means you did not use them. If you used them before bindings... what can
we say? Don't?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
