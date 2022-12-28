Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FA11C4167B
	for <linux-phy@archiver.kernel.org>; Wed, 28 Dec 2022 14:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K83L8766Bo0ZgjwDUwK2HD0m5fT+M4wu8BwbWXFiobc=; b=DcwWCx4ZiSAnXM
	4tcsY+m6wtvdJx50dczXE1pw4/Gvyt83BFKZLdwAWu5LXQVc65Yih1Bd1W41lRfVc2EvGc+dtTfR1
	bZr4WJdRcm+yyjzMp3RevL9MeGKvvj5MW48bXep/vxbDPA8uesPU1ZmSYuk8OjeA5+mXwIzoxr/kp
	DcdcXXKaLFFhPR29CXWyD/dNhK27sUzritOdcr4iFt/BajDW67k1KLM3a7zYqxEox2tXKJH5dzdOU
	WH3ICCcl/fVJc/PaElsWk+0gx48R7Fwefg7xcIBV1etT/h6Jtj5wRi0lh/ZPIAuPmIjsy31dT7LO/
	HcWrDby3054wkb3zvklQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAXF0-005Uu3-MQ; Wed, 28 Dec 2022 14:17:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAXEw-005Upd-Me
	for linux-phy@lists.infradead.org; Wed, 28 Dec 2022 14:17:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EB5B0614D0;
	Wed, 28 Dec 2022 14:17:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E73FC433D2;
	Wed, 28 Dec 2022 14:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672237022;
	bh=jetUe5o6E2bZJoxDNdnLEI87GRr2yz9dfQZ9tMDQo7s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vLWk+sw3qFsUadD64ALdOHFoUeo6bOLesXOwCQ4bMO6HzH8WsSBh6d1f5IE+FwqQH
	 CAL7NFMxHysoNeo2XxNOvWtXlZQn6QhLHG+NjOMsCbLlwMGqKggtJZuTnLgHXp+5TQ
	 RrmqN74IywI0vbpQvt+hKvplE6D9r+e9U7/snlWXC8Di+u6dbk3IQbdi+bfiJLkKTf
	 14FxSRBZKgDJHW9BJTHwuSWUeblAq2znhUCQ3Q3aUYol8o3VngBv9lulp5gzWzhsTI
	 B/ZLzfpB5ZCc7EbWHgn+G9ESMhzHEeC1oTvl38r4j6GCOSZ6BYQRI2i9Y1CsENFCH1
	 26LguL78Olvmg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pAXEv-0006RH-3C; Wed, 28 Dec 2022 15:17:05 +0100
Date: Wed, 28 Dec 2022 15:17:05 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qcom-qmp-combo: Add config for SM6350
Message-ID: <Y6xP4YRAp68TfxFi@hovoldconsulting.com>
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
 <20221130081430.67831-2-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221130081430.67831-2-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_061706_942569_57E28827 
X-CRM114-Status: GOOD (  16.62  )
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

Luca, Vinod,

On Wed, Nov 30, 2022 at 09:14:28AM +0100, Luca Weiss wrote:
> Add the tables and config for the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Changes since v2:
> * Drop dp_txa/dp_txb changes, not required
> * Fix dp_dp_phy offset
> 
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 126 ++++++++++++++++++++++
>  1 file changed, 126 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 77052c66cf70..6ac0c68269dc 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c

> @@ -975,6 +1039,19 @@ static const char * const sc7180_usb3phy_reset_l[] = {
>  	"phy",
>  };
>  
> +static const struct qmp_combo_offsets qmp_combo_offsets_v3 = {
> +	.com		= 0x0000,
> +	.txa		= 0x1200,
> +	.rxa		= 0x1400,
> +	.txb		= 0x1600,
> +	.rxb		= 0x1800,
> +	.usb3_serdes	= 0x1000,
> +	.usb3_pcs_misc	= 0x1a00,
> +	.usb3_pcs	= 0x1c00,
> +	.dp_serdes	= 0x1000,

I would have expected this to be 0x2000 as that's what the older
platforms have been using for the dp serdes table so far. Without access
to any documentation it's hard to tell whether everyone's just been
cargo-culting all along or if there's actually something there at offset
0x2000.

Vinod, could you shed some light on this as presumably you have access
to some documentation?

> +	.dp_dp_phy	= 0x2a00,
> +};

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
