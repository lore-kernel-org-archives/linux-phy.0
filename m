Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D01C4707B
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 09:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHsbA05FL+Bd4dA3WpamVPQUwIhhd/+v/R/xVjuQRwQ=; b=uK57GFAaqhOdiN
	Cs2tm5xplq2BJs3ZXgW0pO+BesTTdHFnzjTCv4JTEyF+O77XWMJ00lMA0fDHBxagXrDF9+LDHJvPf
	/Z1MUWedw+iACfSsBSAABx5Cgotb9pea5DmU9tyGYtwx80hWgi4Q8iSYwipqWoo8vSWDuWUPTDXH3
	+6s5BRqR69gdlzV77gXqCvgTWl/9ToY+oimL328R5857/gzWeLPXMxydz+MtUlE2/zk9eYWi/i1Ts
	KZjGwU8b6WyB8/TwjZzztNxLsoPlEH8HkGu0gnPWTm1469s3AbdI1aHG1E+CJMdHifWQz5pq9Krhh
	MKbBOujvyCRBunzGvQvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQP5N-002L4t-33;
	Thu, 18 Jan 2024 09:53:21 +0000
Received: from mgamail.intel.com ([198.175.65.11])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQP5M-002L3e-02
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 09:53:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1705571600; x=1737107600;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Di3t59ryK/5BiCjERre5tCN0GkzA6F6OzPHGumtvxP4=;
  b=c7Tz+4gfAYg8zik6pZg55NBPmaHMtoOgcaCawsRTSJVGIPov4v21U0Gf
   uqRk6LyBsGvirkx5JYh9pL4UT5iqmmZ/HhGxk2dqGHi3wm78sMa75Xs7P
   xWYbbOPXn3UzWSnV7zOZnvCcsHjof3pqLZLvzmdAqsuaT/3DMbHTawbOJ
   Uq+CrRbRmsGpgB6ILIo/5KW3/XpU1bhB3YWlwyNdsyd4K2/AbS6rDZYxe
   cstGosZgJuBAkRLLo9FTb3WEaq2rHZ1jJm9SYuzgm0KBolsBglLmVv8LT
   dK4POI6VKSmNdCZSjb5sDSBkCfn5jR5vQ86mukwSnXQP/3RdA/Cw0M4lS
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7099216"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="7099216"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jan 2024 01:53:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="957771490"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="957771490"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by orsmga005.jf.intel.com with SMTP; 18 Jan 2024 01:53:09 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Thu, 18 Jan 2024 11:53:08 +0200
Date: Thu, 18 Jan 2024 11:53:08 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 05/15] usb: typec: tcpm: fix the PD disabled case
Message-ID: <Zaj1BAHGY8IyW68f@kuha.fi.intel.com>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-5-182d9aa0a5b3@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240113-pmi632-typec-v2-5-182d9aa0a5b3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_015320_117782_5A9BF101 
X-CRM114-Status: GOOD (  19.00  )
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

On Sat, Jan 13, 2024 at 10:55:48PM +0200, Dmitry Baryshkov wrote:
> If the PD is disabled for the port, port->pds will be left as NULL,
> which causes the following crash during caps intilisation. Fix the
> crash.
> 
> Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
> Call trace:
>  tcpm_register_port+0xaec/0xc44
>  qcom_pmic_typec_probe+0x1a4/0x254
>  platform_probe+0x68/0xc0
>  really_probe+0x148/0x2ac
>  __driver_probe_device+0x78/0x12c
>  driver_probe_device+0xd8/0x160
> Bluetooth: hci0: QCA Product ID   :0x0000000a
>  __device_attach_driver+0xb8/0x138
>  bus_for_each_drv+0x80/0xdc
> Bluetooth: hci0: QCA SOC Version  :0x40020150
>  __device_attach+0x9c/0x188
>  device_initial_probe+0x14/0x20
>  bus_probe_device+0xac/0xb0
>  deferred_probe_work_func+0x8c/0xc8
>  process_one_work+0x1ec/0x51c
>  worker_thread+0x1ec/0x3e4
>  kthread+0x120/0x124
>  ret_from_fork+0x10/0x20
> 
> Fixes: cd099cde4ed2 ("usb: typec: tcpm: Support multiple capabilities")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
>  drivers/usb/typec/tcpm/tcpm.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 5945e3a2b0f7..a0978ed1a257 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -6848,7 +6848,8 @@ struct tcpm_port *tcpm_register_port(struct device *dev, struct tcpc_dev *tcpc)
>  	if (err)
>  		goto out_role_sw_put;
>  
> -	port->typec_caps.pd = port->pds[0];
> +	if (port->pds)
> +		port->typec_caps.pd = port->pds[0];
>  
>  	port->typec_port = typec_register_port(port->dev, &port->typec_caps);
>  	if (IS_ERR(port->typec_port)) {
> 
> -- 
> 2.39.2

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
