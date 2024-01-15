Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 244E1C3DA79
	for <linux-phy@archiver.kernel.org>; Mon, 15 Jan 2024 09:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+dlbZK5FSLUGv19h7JLUFf9pskfkbmXUe0//tyZ+low=; b=worVneTodKeV8W
	kM87XGDLm5zlvY/hvHRmLHsreqOj/nBQyqibNtyktjIQXZmlk0cky60PFl44+chIm0Es20VkzJ6Tg
	E4iQR4+tSbEjC5pnylQEgeGqIu9l/R1l+FceRV6CAxeAs+8Om3z75P7blmBUkhaxlGbhUeBmbNUn1
	PfnGEMJDq5sTgUQlLqZO+Wi81xW2lvtT5zHoKjPMUQgg+ons+Vp/zyCJWCxHJDbtWEN1b5hf89NTg
	mBMjl8kLBiZWkXjcGAI7tK+I1bcRttBt3k7+7P4ddJxtSL4qVCBYbXiOYCZeSiEUqu2EksjT7LK6M
	iqnlZZdNNR/X/YMSCUbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPIpZ-008LVd-2d;
	Mon, 15 Jan 2024 09:00:29 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPIpW-008LTb-0d
	for linux-phy@lists.infradead.org;
	Mon, 15 Jan 2024 09:00:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1705309226; x=1736845226;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=g6PvM5PZ5lAwk5blKzy9Iw4vRtHOu2phSirCBIVrkLg=;
  b=iJVJjOnU2AuYf/c+xasRUNU0Pg7b+E+bR2N6sSyVtZHCJ9dEFKvytWrI
   sNLtwbdyuQtny+G+6/2XT4PVyX75AGsl5AK3K1PSJsrJXEqoJLOFlMsUx
   Z16UpMG0PVTRSzh3W1ZyyoWfTjg58isfmp4Vbd6nFlJLgkQfPpVQRX76H
   BziztAnjp+C+Qdi/FO1VB01oqMad07XbJBJn5ZvJmBNzMcmT61QUsj1ed
   FC4ZQbbpFLhYq1/SGefQI7ZQZaNrguj+UUcTbkluxlmrTnUMeio9ZgrpQ
   +hdnwdPeUonyJfkEga9bnupT4hZXtQGrleN3XlUqi/cQQU8w98IBoL/27
   A==;
X-IronPort-AV: E=Sophos;i="6.04,196,1695679200"; 
   d="scan'208";a="34890230"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Jan 2024 10:00:20 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 4A7BA280075;
	Mon, 15 Jan 2024 10:00:04 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Guenter Roeck <linux@roeck-us.net>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Philipp Zabel <p.zabel@pengutronix.de>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 05/15] usb: typec: tcpm: fix the PD disabled case
Date: Mon, 15 Jan 2024 10:00:03 +0100
Message-ID: <12361952.O9o76ZdvQC@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240113-pmi632-typec-v2-5-182d9aa0a5b3@linaro.org>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org> <20240113-pmi632-typec-v2-5-182d9aa0a5b3@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_010026_637144_142E07D1 
X-CRM114-Status: GOOD (  16.95  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

Am Samstag, 13. Januar 2024, 21:55:48 CET schrieb Dmitry Baryshkov:
> If the PD is disabled for the port, port->pds will be left as NULL,
> which causes the following crash during caps intilisation. Fix the
> crash.
> =

> Unable to handle kernel NULL pointer dereference at virtual address
> 0000000000000000 Call trace:
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
> =

> Fixes: cd099cde4ed2 ("usb: typec: tcpm: Support multiple capabilities")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/usb/typec/tcpm/tcpm.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
> index 5945e3a2b0f7..a0978ed1a257 100644
> --- a/drivers/usb/typec/tcpm/tcpm.c
> +++ b/drivers/usb/typec/tcpm/tcpm.c
> @@ -6848,7 +6848,8 @@ struct tcpm_port *tcpm_register_port(struct device
> *dev, struct tcpc_dev *tcpc) if (err)
>  		goto out_role_sw_put;
> =

> -	port->typec_caps.pd =3D port->pds[0];
> +	if (port->pds)

I'm wondering if the check should be for port->pd_supported instead.
Nevertheless this works on my "pd-disable" platform as well.

Best regards,
Alexander

> +		port->typec_caps.pd =3D port->pds[0];
> =

>  	port->typec_port =3D typec_register_port(port->dev, &port-
>typec_caps);
>  	if (IS_ERR(port->typec_port)) {


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
