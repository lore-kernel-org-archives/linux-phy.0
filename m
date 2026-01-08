Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9887BD148B5
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 07:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJHn2kf6HXLNWX4gLTUNFpYZjQtkhswqfGizZxQN7Y4=; b=bKvjnNnALe042d
	o92EN345yde9Bk7TjOYKOVJPRIQKXy3kOP2Vdrs9QN3gyEm+f74dUMZy/fVLA6jnvO5g7cqmtVPce
	DKv6INwk9n6IqTgYfLhEu+fNHmCDqn/UOzbqMXwOX39HI1pNmtfGaPGTL3YBE/MWWz96axm4Vd7Km
	uRC9v3wvdTmxF8hiLvuHbu5IhcWuK0OEcum8KY6QBUC0BUuZHBzypGTiRZNIOU+GzmWx4WjPCrmAZ
	40loh1cGOOQhEf5xjZdW0WHEu7CMJz/tKLiA/S2h7lWVdFUUE7Jos/1VefqpyZg2676us69ZMyuqz
	1G2ZTqg1OyKaDDzj6Iyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdkhv-0000000G89U-1UDF;
	Thu, 08 Jan 2026 07:45:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdkhq-0000000G86v-3qBf
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 07:45:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 907E960051;
	Thu,  8 Jan 2026 07:45:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3209C16AAE;
	Thu,  8 Jan 2026 07:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767858317;
	bh=6w/lg+NnsVA+yDAH39Ntfm5T+shyzWZk1vLqcLB71Vk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=WjTfPJ4+xySgldi2SSgqEMUmzoct3Gmt2IlxvVoFnvr/RueB5DUUvMRMp1T9+QoNJ
	 ZViByva76/iCXUzGYOnm31X1HUNZGn1hN2BF3+DsZxGvfHSiHhkWHdlGI7bcufV7WI
	 FzRz7Wr+Y9N2tya6hgQSX2yVyIKc7s6RZYs9m47KKlB32AlHkKvd8e+auQxuhuqgZJ
	 vaHRJ2eB8l+zWvN0X4IJg2pbB+nnaFUoWUNZNcYC7iZKuhe/PBfxL9WGOfS4fcqrKm
	 4Ng6SNsCN72toMNby7oqBwa3CDTRT0PnmV8qkyL/+IJeAT10glyHSShDyzDF0CCBrv
	 Mpc8f/CsChFLA==
Message-ID: <9e172c95-25bb-4608-932c-e761b1b1802d@kernel.org>
Date: Thu, 8 Jan 2026 08:45:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Wolfram Sang <wsa-dev@sang-engineering.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol
 <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Vignesh R <vigneshr@ti.com>, Janusz Krzysztofik <jmkrzyszt@gmail.com>,
 Andi Shyti <andi.shyti@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, kernel test robot <lkp@intel.com>
Cc: "oe-kbuild-all@lists.linux.dev" <oe-kbuild-all@lists.linux.dev>,
 Mikhail Anikin <mikhail.anikin@solid-run.com>,
 Yazan Shhady <yazan.shhady@solid-run.com>, Jon Nettleton
 <jon@solid-run.com>, "linux-mmc@vger.kernel.org"
 <linux-mmc@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>
References: <20251229-rz-sdio-mux-v4-2-a023e55758fe@solid-run.com>
 <202601010305.tpY47HE4-lkp@intel.com> <3396461.44csPzL39Z@josua-pc>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <3396461.44csPzL39Z@josua-pc>
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

On 08/01/2026 08:42, Josua Mayer wrote:
> On Wednesday, 31 December 2025 21:18:51 IST kernel test robot wrote:
>> Hi Josua,
>>
>> kernel test robot noticed the following build errors:
>>
>> [auto build test ERROR on 8f0b4cce4481fb22653697cced8d0d04027cb1e8]
>>
>> url:   
>> https://github.com/intel-lab-lkp/linux/commits/Josua-Mayer/phy-can-transcei
>> ver-rename-temporary-helper-function-to-avoid-conflict/20251229-223153 base:
>>   8f0b4cce4481fb22653697cced8d0d04027cb1e8
>> patch link:   
>> https://lore.kernel.org/r/20251229-rz-sdio-mux-v4-2-a023e55758fe%40solid-ru
>> n.com patch subject: [PATCH v4 2/7] mux: Add helper functions for getting
>> optional and selected mux-state config: parisc-randconfig-002-20260101
>> (https://download.01.org/0day-ci/archive/20260101/202601010305.tpY47HE4-lkp
>> @intel.com/config) compiler: hppa-linux-gcc (GCC) 10.5.0
>> reproduce (this is a W=1 build):
>> (https://download.01.org/0day-ci/archive/20260101/202601010305.tpY47HE4-lkp
>> @intel.com/reproduce)
>>
>> If you fix the issue in a separate patch/commit (i.e. not just a new version
>> of the same patch/commit), kindly add following tags
>>
>> | Reported-by: kernel test robot <lkp@intel.com>
>> | Closes:
>> | https://lore.kernel.org/oe-kbuild-all/202601010305.tpY47HE4-lkp@intel.com
>> | /
>> All error/warnings (new ones prefixed by >>):
>>
>>    In file included from drivers/mux/core.c:19:
>>
>>    include/linux/mux/consumer.h: In function 'mux_control_put':
>>>> include/linux/mux/consumer.h:138:9: warning: 'return' with a value, in
>>>> function returning void [-Wreturn-type]
>>      138 |  return -EOPNOTSUPP;
>>
>>          |         ^
>>
> To be fixed in next version
> 
>>    include/linux/mux/consumer.h:136:20: note: declared here
>>      136 | static inline void mux_control_put(struct mux_control *mux)
>>
>>          |                    ^~~~~~~~~~~~~~~
>>
>>    drivers/mux/core.c: At top level:
>>>> drivers/mux/core.c:302:14: error: redefinition of 'mux_control_states'
>>
>>      302 | unsigned int mux_control_states(struct mux_control *mux)
>>
>>          |              ^~~~~~~~~~~~~~~~~~
>>
>>    In file included from drivers/mux/core.c:19:
>>    include/linux/mux/consumer.h:70:28: note: previous definition of
>> 'mux_control_states' was here 70 | static inline unsigned int
>> mux_control_states(struct mux_control *mux)
>>          |                            ^~~~~~~~~~~~~~~~~~
> 
> I don't understand how this is possible.
> In the header file line 136 the inline declaration for mux_control_states is 
> gated by ifdef CONFIG_MULTIPLEXER else case.
> 
> The build of mux/core.c itself is gated in Makefile by CONFIG_MULTIPLEXER.
> 
> So mux/core.c is not being built when CONFIG_MULTIPLEXER is not set.
> If it is set, we hit in the header file the non-inline declaration near start
> of the file.


You have all the tools in this email to actually reproduce it. Did you try?

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
