Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7CA1C7EE21
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 11:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yynmDy0zIxjIdKcXXF53JdNRsZL8OS9CxDmnIPsYZK4=; b=2yL9ADrYv6Q3wH
	ncc59QgDhYKYqJ2U8vCdAQ4c+fS7WJ3vSz47xdTTcidznE0VonK469GP3UKmZHRxivPRZSnzrt2kH
	99xUfiL6Y4PToVB5JzvgPjnWTohOuvf16+ssD0fEqvSU7Fd8jnkbYY87stNVefC0x6zagQ5FITVMF
	ZFCo4a50orySabfoBuECsRwniiwsQJkif9aCzYRbcAcPQlvh0RETISgmKXYickAvGrm2YzQBhDIHn
	H9GQyzq8/J8bOrp+oN5sQoTzVaC8s5ewmVSdw2TXc/0tBq6VqfOKqwyx8eLB/p2OKa3YCb3Uzs1hi
	jYwuRvyWz+Vq9NTXiXrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoUU-001IHo-1M;
	Tue, 02 May 2023 11:48:18 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptoUR-001IHF-1J
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 11:48:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C437161793;
	Tue,  2 May 2023 11:48:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25A35C433D2;
	Tue,  2 May 2023 11:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683028094;
	bh=3kyH1W+UzFVD6G6EyaZ+boLKcJ0HvmBDVvQXrP6u1dg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E4PZdjU1vyAVpd+DGdFRNTTtGZLknQ4SkJwkn/sjSZ8ngE17xYpB0aNFeBDOq99fD
	 5syZ65V0u9ik07QFAhmBux9DIbzu1lVaU99X/grjm5fV0vk6DpjUZvbutkmN02cSqE
	 pIquQjFycnjQIDnwfydJM31XPSKe4Ah963n3mqePywHueWP0lyPh5anIh3YE8ZYsKV
	 tLTy5zCcIPSvF4wRc+pVCUQn5VxZup4HfE/8nqOKvhJDoAbM3/vkSDbqwZp2O+G+Ky
	 SI+wWfNM+G1TYObsVNyfTtn8hJ8Bh+u0L9+2HoPfuDOteUH+i0J8LOqJ5stHGHwQKr
	 N3E/e0U9EtTYQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ptoUS-0003WC-Tz; Tue, 02 May 2023 13:48:16 +0200
Date: Tue, 2 May 2023 13:48:16 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] phy: qcom-qmp-combo: Introduce orientation variable
Message-ID: <ZFD4gM9dUQwBmSUe@hovoldconsulting.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-4-quic_bjorande@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230425034010.3789376-4-quic_bjorande@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_044815_523822_99367DBE 
X-CRM114-Status: GOOD (  22.03  )
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

On Mon, Apr 24, 2023 at 08:40:06PM -0700, Bjorn Andersson wrote:
> In multiple places throughout the driver code has been written in
> prepration for handling of orientation switching.
> 
> Introduce a typec_orientation in qmp_combo and fill out the various
> "placeholders" with the associated logic. By initializing the
> orientation to "normal" this change has no functional impact, but
> reduces the size of the upcoming introduction of dynamic orientation
> switching.
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 54 +++++++++++++----------
>  1 file changed, 30 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 7280f7141961..6748f31da7a3 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -19,6 +19,7 @@
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
>  #include <linux/slab.h>
> +#include <linux/usb/typec.h>
>  
>  #include <dt-bindings/phy/phy-qcom-qmp.h>
>  
> @@ -63,6 +64,10 @@
>  /* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
>  #define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
>  
> +/* QPHY_V3_DP_COM_TYPEC_CTRL register bits */
> +#define SW_PORTSELECT_VAL			BIT(0)
> +#define SW_PORTSELECT_MUX			BIT(1)
> +
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
>  struct qmp_phy_init_tbl {
> @@ -1323,6 +1328,8 @@ struct qmp_combo {
>  	struct clk_fixed_rate pipe_clk_fixed;
>  	struct clk_hw dp_link_hw;
>  	struct clk_hw dp_pixel_hw;
> +
> +	enum typec_orientation orientation;
>  };
>  
>  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> @@ -1955,29 +1962,23 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
>  static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
>  {
>  	u32 val;
> -	bool reverse = false;
> +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;

Adding parentheses around the right-hand side should make this a little
easier to parse.

It also looks like these callbacks end up being called without holding
the qmp->phy_mutex via phy->power_on(). Perhaps there is no risk for a
concurrent switch notification and dp phy power-on but it's not that
obvious.

> +	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;

Also could you add these before u32 val to maintain an approximation of
reverse xmas style?

And similar below.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
