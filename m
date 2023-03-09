Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D757C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  9 Mar 2023 06:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KS3/lIxEcBeAynIvWg1rJErQPJmBHp+zwUsiN9Mfr9o=; b=1p438tuPsfEbYH
	uMQUwPZzPNSuS9nYm/vlsyOaJPiJipuTJcf3B/cVFGIzwjj6xZzjxzTQqWDoEDIdHeGtmZPbnM5ul
	oAMqOSFafFDvpdnKe2vlm8MG6GCu3gfQjRgabw9SFw8+XthMpPNL9ge/QvZuG1IobmUJCcjBRVEjg
	pzEI1PiHl0SYqw9mF7084pU7EyQro8/lwaynWh64JwvwewWlcgTkPY9V8qtTfkwFmmxZnIs74TtGZ
	Hp5hY3GJHGrOKki2cOm8ztxOG9k17isMQptdgQD3tIGAWIm1xcSI0YhEfUomJryxpSyU2ip9mX15l
	dBKTYmMsZ5Q5Xh9IZrkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paA5K-0089d0-Fz; Thu, 09 Mar 2023 06:49:06 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paA5A-0089b5-0P; Thu, 09 Mar 2023 06:48:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A8470B81E2C;
	Thu,  9 Mar 2023 06:48:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4FF3C433D2;
	Thu,  9 Mar 2023 06:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678344532;
	bh=AJVfjSxXcYK0gQiUUxvO9djvnoPGcPdXxAgjdYlMoLk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TfjM3ykd05WNsNTCgGh4gwUq7zCRq+j6JJ0315QgdeNERLSm1dn7L8sIK3V9nY+Gb
	 uO//nBDv6sfLYL/iM4aAlL9YssJq54H55HmqKv1RZ8hiCLCycpwU5CaTaFsAdU0WbG
	 ARgAeoMuy40GvRqD1IKYaFkgD8GZa+XCIhybyEQRz6YTJK+d0AIkyABDrNtB9+Pi1u
	 pE53NHKpMQ5GAzUDIVWbpy8yQoZYsKUnOuIqLOHIZLAIvQjB1ZeK4NnD45hmXnLUMJ
	 v1Yk/Fmjsqdtdv6WeW09srlYBOgbL45dEz7+8yDYW09bqouD9znIZBw1jU0v20IAQ+
	 +stcs56nyHHWw==
Message-ID: <f2a11482-e5b4-027b-ba06-4d1302b658c3@kernel.org>
Date: Thu, 9 Mar 2023 07:48:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 2/4] Revert "dt-bindings: mmc: Add bindings for Intel
 Thunder Bay SoC"
Content-Language: en-US
To: "A, Rashmi" <rashmi.a@intel.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "mgross@linux.intel.com" <mgross@linux.intel.com>
Cc: "kris.pan@linux.intel.com" <kris.pan@linux.intel.com>,
 "Hunter, Adrian" <adrian.hunter@intel.com>,
 "Vaidya, Mahesh R" <mahesh.r.vaidya@intel.com>,
 "Srikandan, Nandhini" <nandhini.srikandan@intel.com>,
 "Itha, Vasavi V" <vasavi.v.itha@intel.com>,
 "Demakkanavar, Kenchappa" <kenchappa.demakkanavar@intel.com>,
 "Zhou, Furong" <furong.zhou@intel.com>,
 "Sangannavar, Mallikarjunappa" <mallikarjunappa.sangannavar@intel.com>
References: <20230124054427.28808-1-rashmi.a@intel.com>
 <20230124054427.28808-2-rashmi.a@intel.com>
 <c850df25-57b8-3172-8e5c-c466dc8556cd@kernel.org>
 <DM6PR11MB306560B02E22BC934A6BFD1F8CB59@DM6PR11MB3065.namprd11.prod.outlook.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <DM6PR11MB306560B02E22BC934A6BFD1F8CB59@DM6PR11MB3065.namprd11.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_224856_245147_58CDA976 
X-CRM114-Status: GOOD (  10.85  )
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

On 09/03/2023 07:43, A, Rashmi wrote:
>>
>>> ---
>>>  .../devicetree/bindings/mmc/arasan,sdhci.yaml | 25
>>> -------------------
>>>  1 file changed, 25 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
>>> b/Documentation/devicetree/bindings/mmc/arasan,sdhci.yaml
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
>> Instead should be made rather deprecated, unless you are sure there is no single
>> person in the world using the bindings (e.g. with BSD or bootloader)?
> May I know what has to be done in order to deprecate the complete patchset?

deprecated: true

(git grep for examples)

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
