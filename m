Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D8F5C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Dec 2021 16:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UO3HG6VWiRhwZUqKkXfF9OerU+9ZgEvAJPCGxhMLbYg=; b=CWB7r+Bpm7a9Y0
	OJ6L1XvRiqh50kX+KZZXI0/ecn2U57TfwuM/5hPfs7WTftf/1Xc07EqYL6afRDv5EPYzTasqG9pHu
	C9s6sGyKMQKOD80oEv2U7BnJbYoh6+pPaGTZOkDf4PEuvLOc8GcBI4pEvm9GN+wHtKDsraKt40EYY
	WPZHlC9aVpyCk4sk3MRr7PjLmbgc8ujicxVojQlpEAj3YTFpGeB7PJZ5iItmk8CDhwA0G5Zjf/Hsf
	dPU7HLxM5mP6r6xI8lZwIqpc0H/CjlO6Mz1aM+oq1dVEeuN+zezX3TjuVNg2HyD1tyduNS07R6TCp
	Jh4BRBcFwoDsX7CcsDsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2FCS-001VsI-Ki; Tue, 28 Dec 2021 16:19:44 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2FCP-001Vrh-Pb
 for linux-phy@lists.infradead.org; Tue, 28 Dec 2021 16:19:43 +0000
Received: by mail-oi1-x230.google.com with SMTP id t23so30731354oiw.3
 for <linux-phy@lists.infradead.org>; Tue, 28 Dec 2021 08:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AYitZ0Q2H8/UE8ntVEjHxS3ygRuiQMT5kuJ2XWSERHA=;
 b=VFSjddkrSuYDV5bueT8CZ8raosWrrrZ+9XDv2VQ4cJsHzyfj+83vcEz/StnJ5aWbMj
 n/A4OJe4ntdf6qq8sEsnnwlhPHtZtW4kXdR8b8MlSVog3zhL35w3no/3abb2LxdxZZAL
 Igm2moCUsyhyvWDNYv04pnhmZnHUbV6g15mzBRrUymCorkCfU6xBv/dFMBxx759ZzNdN
 UpcF7zfucyXn4KeeYllK+66NUydNBTFx57KNNG5KUkfAKcHru5TytTaZyRkPwn/pfKRQ
 6RxtgrJuNVZ/J+kw0HBY0IIOpM+FUKgzcopb6i5IHvkkPlVOWLjGjUQYJgDBAaiVFWq+
 CT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AYitZ0Q2H8/UE8ntVEjHxS3ygRuiQMT5kuJ2XWSERHA=;
 b=ZXgOK6t/SX7NSMzbZW9FZ3KKX4Uz494Qu+7Entdz+RX86a4Tq0K9mf9yqKxMR5xvYj
 VhxXdkqc3AeYdVuVyxUqTelwcpw1kWVzAsgBUb6u0pZHHR1bqbDUclM8LFXIhrWeGlOR
 AoSF+MUA+UChasLEPyxZrcSoou0d4xQDbdcSWYrnzBFyPHzn9e8i7WLID4Ie5S0VndRj
 SfT5eqOrs7Yt88X+7dN9SNs4zX7qMf3FrnBBd5i1V+NgAcZTu7BDPDf5X2ExxF8f126z
 OYAsmhfrHixc6RwBZ5iSa3EiQUw2WLuS5VqWrNCRNIVC2AwbR38xof8GEsq8RcINnPxO
 IlHg==
X-Gm-Message-State: AOAM532gBeYEMCTUcG1sQapSAH3rRe/yHKJi+BKkF1OYDaNMzx7Q49Cs
 WXTgt4ynszFGXgg4AlXnIJ1KDW0gjVK7ew==
X-Google-Smtp-Source: ABdhPJwR9tQaHdpponyTVV8xn5GVx9M3djSgjgNJcELczLc3VOt3xH7wlrscMbjQ2O6AGzND2okr3g==
X-Received: by 2002:a05:6808:16a3:: with SMTP id
 bb35mr17427845oib.72.1640708380807; 
 Tue, 28 Dec 2021 08:19:40 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net.
 [104.57.184.186])
 by smtp.gmail.com with ESMTPSA id m12sm4072249oiw.23.2021.12.28.08.19.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Dec 2021 08:19:40 -0800 (PST)
Date: Tue, 28 Dec 2021 08:20:41 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>, kbuild-all@lists.01.org,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 2/8] phy: qcom-qmp: Register typec mux and orientation
 switch
Message-ID: <Ycs5WUwhhUq1g9hA@ripper>
References: <20211228052116.1748443-3-bjorn.andersson@linaro.org>
 <202112282120.JleedcIB-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202112282120.JleedcIB-lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_081941_889454_09A6027C 
X-CRM114-Status: GOOD (  15.06  )
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

On Tue 28 Dec 05:59 PST 2021, kernel test robot wrote:

> Hi Bjorn,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on usb/usb-testing]
> [also build test ERROR on robh/for-next driver-core/driver-core-testing linus/master v5.16-rc7 next-20211224]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Bjorn-Andersson/typec-mux-Introduce-support-for-multiple-TypeC-muxes/20211228-132045
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> config: arc-randconfig-r043-20211228 (https://download.01.org/0day-ci/archive/20211228/202112282120.JleedcIB-lkp@intel.com/config)
> compiler: arceb-elf-gcc (GCC) 11.2.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/db0b002b5b2e1055b2df7b430438335a75dc1557
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Bjorn-Andersson/typec-mux-Introduce-support-for-multiple-TypeC-muxes/20211228-132045
>         git checkout db0b002b5b2e1055b2df7b430438335a75dc1557
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>    arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_remove':
> >> phy-qcom-qmp.c:(.text+0x37e): undefined reference to `typec_mux_unregister'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x37e): undefined reference to `typec_mux_unregister'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x384): undefined reference to `typec_switch_unregister'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x384): undefined reference to `typec_switch_unregister'
>    arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_probe':
> >> phy-qcom-qmp.c:(.text+0x14bc): undefined reference to `typec_switch_register'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14bc): undefined reference to `typec_switch_register'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14e2): undefined reference to `typec_mux_register'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14e2): undefined reference to `typec_mux_register'
>    arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14f6): undefined reference to `typec_switch_unregister'
>    arceb-elf-ld: phy-qcom-qmp.c:(.text+0x14f6): undefined reference to `typec_switch_unregister'
>    arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_typec_switch_set':
> >> phy-qcom-qmp.c:(.text+0x18f0): undefined reference to `typec_switch_get_drvdata'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x18f0): undefined reference to `typec_switch_get_drvdata'
>    arceb-elf-ld: drivers/phy/qualcomm/phy-qcom-qmp.o: in function `qcom_qmp_phy_typec_mux_set':
> >> phy-qcom-qmp.c:(.text+0x1962): undefined reference to `typec_mux_get_drvdata'
> >> arceb-elf-ld: phy-qcom-qmp.c:(.text+0x1962): undefined reference to `typec_mux_get_drvdata'

I missed the fact that CONFIG_TYPEC is tristate. As such the QMP driver
now need to be made "depend on TYPEC || TYPEC=n".

I will update accordingly in v2.

Regards,
Bjorn

> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
