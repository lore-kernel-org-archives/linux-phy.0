Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA360C38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 11:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sv03Dqg1k53BUm1yYIbxedtJgJR80hHe0tVD0LZgniA=; b=szmn4VV7V7y+eW
	7JMlUBpw87Av0j+Asxk2WfkQnXBForb8U4uf8d9qM/rtRB2GvWk8JlaSfem5SvEXdIp1X0FF1GrLJ
	SRl0I4LP9Yd5gIFHorQjdGuIa9WfXWSpEJFWK7OcAC5jTw5BQE+4BF+QxvFZp6RNdZPhkoNgQQTFM
	8IxlRUMEe+9qGt90M2Vau0LeoWNOYF/ukD9HX8GPl7/+vOaetnyKtecSHO5mPz55sUnXx6HtttOiw
	sW1l/gWeztOcHbD3x55GfCquKlfTaptPFrchQIVUjU02Qz7YkQvDbdQ4VL7YESBi6fAjJ2iwijUHF
	MmqxRJruxFF2VLxOa0xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKHWY-003Rgy-7W; Tue, 24 Jan 2023 11:31:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKHWM-003Rdr-TK; Tue, 24 Jan 2023 11:31:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E740960FF6;
	Tue, 24 Jan 2023 11:31:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8419BC433EF;
	Tue, 24 Jan 2023 11:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674559881;
	bh=vSvpFgPqXmxl07qKO0PotIG3YQSs9V4kcX2WYtv6Y00=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=MMe07pLbu1gmDqdbs7WNdKnwqs+02+j539LNGY1cbZMWSb+LgaN+KtJUxKap9GrfZ
	 Hfhq+ygaBNKzJtysre7CBNnQlIR0Am8ltX6plLvaXdquNMgugVHz57WxEz2rNQ/fLz
	 BZIsFBfSWiYZADWRI7ik7KAtacsW3AzCP9theWeLzf4veQK/glOgUD9GJIjUxoCCW6
	 tC31q7RHPnyE8UPD7z5eIvTBISBkftsQgI2XvEJihbHkDyLk6OPcKaGgyBxqmM6ocJ
	 IqwjQz7zIvo0gms9KkDdTo0rv/FXFiTdDCIBDkBg1GE+6h+u6Rx4dNMyyuKWA+Ws3h
	 hZaRP1nfl9ayQ==
Message-ID: <c850df25-57b8-3172-8e5c-c466dc8556cd@kernel.org>
Date: Tue, 24 Jan 2023 12:31:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
 Thunder Bay SoC"
Content-Language: en-US
To: rashmi.a@intel.com, ulf.hansson@linaro.org, michal.simek@xilinx.com,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, vkoul@kernel.org,
 andriy.shevchenko@linux.intel.com, linux-phy@lists.infradead.org,
 mgross@linux.intel.com
Cc: kris.pan@linux.intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 vasavi.v.itha@intel.com, kenchappa.demakkanavar@intel.com,
 furong.zhou@intel.com, mallikarjunappa.sangannavar@intel.com
References: <20230124054427.28808-1-rashmi.a@intel.com>
 <20230124054427.28808-2-rashmi.a@intel.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20230124054427.28808-2-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_033123_032584_CB9E196F 
X-CRM114-Status: GOOD (  17.39  )
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

On 24/01/2023 06:44, rashmi.a@intel.com wrote:
> From: "A, Rashmi" <rashmi.a@intel.com>
> 
> This reverts commit ab991c05c42853f0b6110022db9bf30fcc6323dd.

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

> 
> Revert Thunder Bay specific code as the product got cancelled
> and there are no end customers.
> 
> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>wq

Stray characters.

> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 -------------------
>  1 file changed, 25 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> index 4053de758db6..0d5d21dd30bb 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
> @@ -88,12 +88,6 @@ properties:
>          description:
>            For this device it is strongly suggested to include
>            arasan,soc-ctl-syscon.
> -      - items:
> -          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
> -          - const: arasan,sdhci-5.1

Instead should be made rather deprecated, unless you are sure there is
no single person in the world using the bindings (e.g. with BSD or
bootloader)?



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
