Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A80DAC3DA64
	for <linux-phy@archiver.kernel.org>; Tue,  6 Aug 2024 08:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DzuXPGNKOALlSNSBAUMXynX4IyLmySqzXTGXinpDxJY=; b=0lTnfAeP0WbB73
	qQifvlQ454UthuedP+Xq56uyCe8IZgu3bNETZXsift32CSkKAJrbo3ODi6HVzIDvBtqia3WwkAvLf
	69HKzU2onPiG8I4aULuOKuuIzPOZEMauAbR3OQY/WBumx2+ShRz/nXPUarNnBae+lCPabEt/DDTy/
	wYul8R+Ul6ZwanNFptJN7M+N5O8s9kbyc5sNolkcbi9Nbr8QyJyUFdiQ34I1BXLf38HPjTPnBevXj
	YfRpOaKL5HsRkmXZqmN/p/olLxqenossQUUIpdfTtj0d+XglnAsSRlAdjrmwc0l/Zkgnm/Imt8L+D
	dqteTWVNOlavOBmo0SwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFNp-00000000ubb-1aYd;
	Tue, 06 Aug 2024 08:17:29 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbFNm-00000000ub4-1Qzl;
	Tue, 06 Aug 2024 08:17:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1722932236; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bYtRLawrCoRh0TeF6HaYXxC0Jflv9wOu8x0fCvy9Jf/QEap6Vv2AeOgsOEciILFGd7+Vqm4BIphrL9/SwChxYC+MstZcN0SjLe6UQSPK5kS4twmxuQ1eTnHQmRx0p/Wfy00qFDS5kpGoR3DDL/qoxA8Qzra5RfFFaZCqsxdLRx4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1722932236; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ro4Ey7NbhhpR/txxlSD/9IkLkHOBv+vUU3G5HbaFYyQ=; 
	b=BntcOErAuX7A/D86bmUnEgqIslwTuy/v/W4xtySp8hnQBtoPx6zpOalJ49usHkAGepwQ/1WXo/6jAOOEfwLx0HH6St/bx47PKXDT+ykjQ3d6Uq0g+882EwyWbsBQVdB2wZjoAt0P4JAxdbJuAGmJcFcVzjmwkO+88khKGYXfwCo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=angelogioacchino.delregno@collabora.com;
	dmarc=pass header.from=<angelogioacchino.delregno@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1722932236;
	s=zohomail; d=collabora.com;
	i=angelogioacchino.delregno@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ro4Ey7NbhhpR/txxlSD/9IkLkHOBv+vUU3G5HbaFYyQ=;
	b=Qv/7WuG0+wBBcJSAkvT+U5+4HEdXB7jkKlhn88vvowmwQMTcixjr6l74iXU3L6us
	tDggse1mr6Bi+97FHoJzhO89SGipMlrbGOzOCCg3RdU77GFqBjPdsRVOzcbk8bK4uBo
	aDRqv/ttu44HFzuPsTsYOqvLXa7DTZIhwbISrOMY=
Received: by mx.zohomail.com with SMTPS id 1722932235758740.3930431761363;
	Tue, 6 Aug 2024 01:17:15 -0700 (PDT)
Message-ID: <47f25caf-8d0d-4c9f-8550-fa9506680113@collabora.com>
Date: Tue, 6 Aug 2024 10:17:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] phy: airoha: adjust initialization delay in
 airoha_pcie_phy_init()
To: Lorenzo Bianconi <lorenzo@kernel.org>, linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, kishon@kernel.org,
 linux-arm-kernel@lists.infradead.org, lorenzo.bianconi83@gmail.com,
 nbd@nbd.name, john@phrozen.org, dd@embedd.com, upstream@airoha.com
References: <d174837bcb5a53f7b2c2580211d60a175d0ce8db.1722887003.git.lorenzo@kernel.org>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <d174837bcb5a53f7b2c2580211d60a175d0ce8db.1722887003.git.lorenzo@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_011726_470403_23582E8C 
X-CRM114-Status: GOOD (  15.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Il 05/08/24 21:57, Lorenzo Bianconi ha scritto:
> Align phy-pcie initialization delay to the vendor sdk in
> airoha_pcie_phy_init routine and allow the hw to complete required
> configuration before proceeding
> 
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

> ---
> Changes since v1:
> - use msleep() instead of mdelay()
> ---
>   drivers/phy/phy-airoha-pcie.c | 10 ++++++++--
>   1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/phy-airoha-pcie.c b/drivers/phy/phy-airoha-pcie.c
> index bd3edaa986c8..6d61e6486a03 100644
> --- a/drivers/phy/phy-airoha-pcie.c
> +++ b/drivers/phy/phy-airoha-pcie.c
> @@ -18,6 +18,9 @@
>   #define LEQ_LEN_CTRL_MAX_VAL	7
>   #define FREQ_LOCK_MAX_ATTEMPT	10
>   
> +/* PCIe-PHY initialization time in ms needed by the hw to complete */
> +#define PHY_HW_INIT_TIME_MS	30
> +
>   enum airoha_pcie_port_gen {
>   	PCIE_PORT_GEN1 = 1,
>   	PCIE_PORT_GEN2,
> @@ -1180,8 +1183,11 @@ static int airoha_pcie_phy_init(struct phy *phy)
>   				 PCIE_DA_XPON_CDR_PR_PWDB);
>   	airoha_phy_pma1_set_bits(pcie_phy, REG_PCIE_PMA_SS_DA_XPON_PWDB0,
>   				 PCIE_DA_XPON_CDR_PR_PWDB);
> -
> -	usleep_range(100, 200);
> +	/*
> +	 * Wait for the time in ms needed by the hw to complete the PCIe-PHY
> +	 * initialization

...but regardless, I have a nit here (not a blocker for me, hence the R-b tag):
there's no need to say that we're waiting for milliseconds, so this comment can
be just one line:

	/* Wait for the PCIe PHY to complete initialization before returning */

Cheers,
Angelo

> +	 */
> +	msleep(PHY_HW_INIT_TIME_MS);
>   
>   	return 0;
>   }



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
