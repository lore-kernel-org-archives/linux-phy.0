Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299EFCE834A
	for <linux-phy@archiver.kernel.org>; Mon, 30 Sep 2024 14:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P54ig9olepu2TeTWkPCGZbVAu45NAnj+DzKjdZn/mkw=; b=Fqb5LSfrHRW47O
	KhUeJZ4C089aYr3iZHuYyMBY4W7QZRyAeLU2ZVKXv0pkBMQN4OT+GVJEVm5GdU7brC8nd6FKqGfq2
	qncA4NlPr0FipXHWLHQhvwW6hukInv8ALQpL5IdF+D+bi5JZHQQ/qQt2N9rK5MFUuhBzghgYXqXk7
	/aXJRQRdHGWuz/OmmIWQXv2kO65jBLnuc0wrA6qnd38feeu5ewksbpEkxx28Zs2OpozfwE0YenyV1
	/lbMxgFWtC4JmG0roCpKHbGrfQX5p1ZV3aZIPhDSjhEjx+5GOzS6u5zlIZ/cw0HG1ueJwLqpVmEBO
	u9aHBLZxyW+NNhBOMo7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svHFd-0000000HUdW-39Z3;
	Mon, 30 Sep 2024 14:19:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svH2w-0000000HRsM-0OKC;
	Mon, 30 Sep 2024 14:06:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3282A5C2744;
	Mon, 30 Sep 2024 14:06:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF081C4CEC7;
	Mon, 30 Sep 2024 14:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727705200;
	bh=Ke1UnpfXgyOwVgjk/Ulk3tBxJVnjoH10oSo5vuJJS5o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=b3Ea0yYqXLemODlI+RsT8K51DuYZMSfWYqD3J7zBxiHf4MnyZ40X0NoTkRw9LKIWM
	 ec44c586PB0GgrTb0XjsncY1d8axzkrgaf+Y4DbeOD+zVJFlFadvm6wupGM1XEVcXp
	 GvuigqNd7/k/W1uDDOX6LCZnZwRmdyiDYtqjyMSY2uSdufZPOlICNgkDXp7nve5M2r
	 G8DjO5bzgYPFKF57AkLEHiaDvVNG8+hlFBn5OkydnBDZIgCde6CWTt6baCFCPqhShR
	 CXrGGYWls7CuGbmkQrWkV3n0FI7nGn/qrq9j7Gt83Tqtt6IRMIJRdeYz3nBdEG2crT
	 8PSxcFf4egLuw==
Message-ID: <4b42b8e5-3246-4f58-b494-735930d2424a@kernel.org>
Date: Mon, 30 Sep 2024 17:06:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: ti: phy-j721e-wiz: fix usxgmii configuration
To: Siddharth Vadapalli <s-vadapalli@ti.com>, vkoul@kernel.org,
 kishon@kernel.org, thomas.richard@bootlin.com,
 krzysztof.kozlowski@linaro.org, nichen@iscas.ac.cn, c-vankar@ti.com,
 t-patil@ti.com
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, srk@ti.com
References: <20240930095745.3007057-1-s-vadapalli@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20240930095745.3007057-1-s-vadapalli@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_070642_227990_0A97C8AF 
X-CRM114-Status: GOOD (  17.94  )
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

Hi Siddharth,

On 30/09/2024 12:57, Siddharth Vadapalli wrote:
> Commit b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in
> wiz driver") added support for USXGMII mode. In doing so, P0_REFCLK_SEL
> was set to "pcs_mac_clk_divx1_ln_0" (0x3) and P0_STANDARD_MODE was set to
> LANE_MODE_GEN1, which results in a data rate of 5.15625 Gbps. However,
> since the USXGMII mode can support up to 10.3125 Gbps data rate, the
> aforementioned fields should be set to "pcs_mac_clk_divx0_ln_0" (0x2) and
> LANE_MODE_GEN2 respectively. Fix the configuration accordingly to truly
> support USXGMII up to 10G.
> 
> Fixes: b64a85fb8f53 ("phy: ti: phy-j721e-wiz.c: Add usxgmii support in wiz driver")
> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> ---
> 
> Hello,
> 
> This patch is based on commit
> 9852d85ec9d4 Linux 6.12-rc1
> of mainline Linux.
> 
> v1:
> https://lore.kernel.org/r/20240910091714.1082191-1-s-vadapalli@ti.com/
> Changes since v1:
> - Rebased to Linux 6.12-rc1.
> 
> Regards,
> Siddharth.
> 
>  drivers/phy/ti/phy-j721e-wiz.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
> index a6c0c5607ffd..c6e846d385d2 100644
> --- a/drivers/phy/ti/phy-j721e-wiz.c
> +++ b/drivers/phy/ti/phy-j721e-wiz.c
> @@ -450,8 +450,8 @@ static int wiz_mode_select(struct wiz *wiz)
>  		} else if (wiz->lane_phy_type[i] == PHY_TYPE_USXGMII) {
>  			ret = regmap_field_write(wiz->p0_mac_src_sel[i], 0x3);
>  			ret = regmap_field_write(wiz->p0_rxfclk_sel[i], 0x3);

I'm not sure. Don't we have to change rxfclk as well?

> -			ret = regmap_field_write(wiz->p0_refclk_sel[i], 0x3);
> -			mode = LANE_MODE_GEN1;
> +			ret = regmap_field_write(wiz->p0_refclk_sel[i], 0x2);
> +			mode = LANE_MODE_GEN2;
>  		} else {
>  			continue;
>  		}

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
