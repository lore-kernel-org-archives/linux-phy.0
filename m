Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BED76C64EC4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 15:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIeLcB+Y2gnXsncYHaHKm2Jkkzsluj+vVa8aDJ9Ebsc=; b=trSml3pVsZsFjP
	ltgPlUQexxS8xB1K9dfuKSPQlnViyBs9hLJK4VqFOeUquP/l2AXmo9KiO5CI4f/a5jgpo1HIImM0R
	b0CF1f2wiMqrBS+Qb1agY65kXGdviJSYZfMu+z9R2ixQOXI4XJho52AX07+tEAswZy1yvKAY2LCU2
	hfpchyCRUOl1L0W5QpcXsRXEDhi9VQ34RRzA4xS52PZkPxq0P/D/FYak1DMAE/KNoEjPGRBCGefYh
	3FQ4bTbUGtUlwF7cdRq6jIsS6hvgpnpozTFfVmWl0lyppNMvmB2Glo+Z1OjQh2wwF0qWNFEzCI2TG
	WAvTA/Xfb9ckUodHpwfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paHz2-00ApLT-Qf; Thu, 09 Mar 2023 15:15:08 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paHiC-00AjFI-9J; Thu, 09 Mar 2023 14:57:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4F7BB61B80;
	Thu,  9 Mar 2023 14:57:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE7DEC433EF;
	Thu,  9 Mar 2023 14:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678373862;
	bh=lrCJhGy31REAFHmpoQYpEnNmpg1BxinPjcIzS4zLQwc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=dwRK5TvFHEOjFA1gJxyzNNpaoZTlAyUA24jtVNCJCjO9bjjEnNS6Hzvbcwkj5rQ7U
	 x6Aj/t6wb89PkNSrXXWha6lDESk8LQoGk/CTDCYQLZwj8b3CvyX9QknJmnWxAvCOEC
	 dxB5eqLSRu9mRE0aKKL2AIrXGlKd7GIjoXdt9/Ou3bFB+NHs9VsMnOedyDU6C8Ub4V
	 Z6MCKmDWKg0KGlhceC4CSE5Rlyy5SG+LNT4ZMFQHR2yeMUeOlBzJR8OmFEfFRxLrVl
	 Wbn3CWxeMXstVI9B3TDgUR+0fwHdclevSCbytb0fwuwmsO3z2p72+4iB/kJ1UFhCVT
	 qOAS9y0fJKdhg==
Message-ID: <50c2b5de-4aed-ebd5-86e9-55813e740869@kernel.org>
Date: Thu, 9 Mar 2023 15:57:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
 Thunder Bay SoC"
Content-Language: en-US
To: Adrian Hunter <adrian.hunter@intel.com>, rashmi.a@intel.com,
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
 <ef2f8faf-76cc-d221-8281-cc7b8cb68485@intel.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <ef2f8faf-76cc-d221-8281-cc7b8cb68485@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_065744_457184_C9296F8F 
X-CRM114-Status: GOOD (  16.32  )
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

On 09/03/2023 15:12, Adrian Hunter wrote:
> On 24/01/23 13:31, Krzysztof Kozlowski wrote:
>> On 24/01/2023 06:44, rashmi.a@intel.com wrote:
>>> From: "A, Rashmi" <rashmi.a@intel.com>
>>>
>>> This reverts commit ab991c05c42853f0b6110022db9bf30fcc6323dd.
>>
>> Please use scripts/get_maintainers.pl to get a list of necessary people
>> and lists to CC.  It might happen, that command when run on an older
>> kernel, gives you outdated entries.  Therefore please be sure you base
>> your patches on recent Linux kernel.
>>
>>>
>>> Revert Thunder Bay specific code as the product got cancelled
>>> and there are no end customers.
>>>
>>> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
>>> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>wq
>>
>> Stray characters.
>>
>>> ---
>>>  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25 -------------------
>>>  1 file changed, 25 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>>> index 4053de758db6..0d5d21dd30bb 100644
>>> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>>> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>>> @@ -88,12 +88,6 @@ properties:
>>>          description:
>>>            For this device it is strongly suggested to include
>>>            arasan,soc-ctl-syscon.
>>> -      - items:
>>> -          - const: intel,thunderbay-sdhci-5.1   # Intel Thunder Bay eMMC PHY
>>> -          - const: arasan,sdhci-5.1
>>
>> Instead should be made rather deprecated, unless you are sure there is
>> no single person in the world using the bindings (e.g. with BSD or
>> bootloader)?
> 
> I am sorry but this is not clear to me.  As I understand it,
> the hardware was never released, so the binding serves no
> purpose.  Should it be removed or "deprecated"?

Hm, commit msg said cancelled and I understood that it was released and
then got cancelled. But indeed maybe just remove it.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
