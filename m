Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DC52C64EC4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 14:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MTIAx6HUqM9tuSWJ+Hu3o3UrtgrlJFLv7xsRziTiAo=; b=oFLUcDiUT/eHTC
	1/Dae6UMMYXVJPq6zcUwWYtlPP0ZUZGOa5eFqZw0e45RBR1fvWTG7LdCuQNby58gDz7E8Y/4NW0gT
	in8ZqUiX8CXP6FXJ1R7VllwCgs/8NuXKpz+B9yfry1KX86NWIbwHSbSfgbUmTNW59+Tudw5XRlg+P
	vttyzm4KANudXRI7hAZPifvk0pzYHh6ZioPRGUvutRHZHJLr4ui9DUAiX+WqqB2QPPx0oNEAAEsvw
	MFd+ojIjruZTXg0JdsKNKsSiJasMZid0I/RxEANkaIZkWeTaa6LgVYFhom4iqwmgYrFIDr/3MkLBM
	UcK6gIE2ycCO/GREHuZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paH3x-00AQOa-Uw; Thu, 09 Mar 2023 14:16:09 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paH15-00AP3w-Ay; Thu, 09 Mar 2023 14:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678371191; x=1709907191;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=3A65IKB9d2IfLyHPo1ILLZ4ADkCpExI8AS30ua1GCVc=;
  b=UU0daj3DMTVXDKihz8eWwYLNKxaQAKvDKaHJcY5NyNrTVTHnMD4KbIq8
   Bavz26bSXuo3qCHOZt0FNGTR2/kyU7U86aQTbPdgsJ/y+afiDgy1I99me
   j1k04llh7iPy9/xm8laGNSFQ/tZqRapMyzHbpV27OMLN43UV3PT/B/Sar
   shN3uR5iyBTqFhzw5uq5fKw7kV2wQmtJeW/E7cZpiUfApImFdttMxvj0z
   Tqu29HQeuKG0SfS479A+O40vD/dDrONF+arCChUz/FKRYxV9NdfHaQ2Gx
   7w0G4OG6+NNApcOnG8jbWG9rb5Zqz6onxOHX5AmExM8GT8OhxL4uBnUW0
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="364093941"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; 
   d="scan'208";a="364093941"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 06:13:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="787575064"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; 
   d="scan'208";a="787575064"
Received: from ahunter6-mobl1.ger.corp.intel.com (HELO [10.0.2.15]) ([10.251.219.30])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 06:13:01 -0800
Message-ID: <ef2f8faf-76cc-d221-8281-cc7b8cb68485@intel.com>
Date: Thu, 9 Mar 2023 16:12:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
Subject: Re: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
 Thunder Bay SoC"
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, rashmi.a@intel.com,
 ulf.hansson@linaro.org, michal.simek@xilinx.com, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org, mgross@linux.intel.com
Cc: kris.pan@linux.intel.com, mahesh.r.vaidya@intel.com,
 nandhini.srikandan@intel.com, vasavi.v.itha@intel.com,
 kenchappa.demakkanavar@intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com
References: <20230124054427.28808-1-rashmi.a@intel.com>
 <20230124054427.28808-2-rashmi.a@intel.com>
 <c850df25-57b8-3172-8e5c-c466dc8556cd@kernel.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
In-Reply-To: <c850df25-57b8-3172-8e5c-c466dc8556cd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_061311_540384_ACB614CE 
X-CRM114-Status: GOOD (  18.80  )
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

On 24/01/23 13:31, Krzysztof Kozlowski wrote:
> On 24/01/2023 06:44, rashmi.a@intel.com wrote:
>> From: "A, Rashmi" <rashmi.a@intel.com>
>>
>> This reverts commit ab991c05c42853f0b6110022db9bf30fcc6323dd.
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.
> 
>>
>> Revert Thunder Bay specific code as the product got cancelled
>> and there are no end customers.
>>
>> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
>> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>wq
> 
> Stray characters.
> 
>> ---
>>  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 -------------------
>>  1 file changed, 25 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>> index 4053de758db6..0d5d21dd30bb 100644
>> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>> @@ -88,12 +88,6 @@ properties:
>>          description:
>>            For this device it is strongly suggested to include
>>            arasan,soc-ctl-syscon.
>> -      - items:
>> -          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
>> -          - const: arasan,sdhci-5.1
> 
> Instead should be made rather deprecated, unless you are sure there is
> no single person in the world using the bindings (e.g. with BSD or
> bootloader)?

I am sorry but this is not clear to me.  As I understand it,
the hardware was never released, so the binding serves no
purpose.  Should it be removed or "deprecated"?


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
