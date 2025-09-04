Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A767CA1002
	for <linux-phy@archiver.kernel.org>; Thu,  4 Sep 2025 10:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/orMXvcJLHfBuSyYhA3swr0IYYEIMVHH0m8YGu+0YQ=; b=NL5x74KVeliMUW
	FXxb8Tr72vsEidTkSiYIKD9zNfsF/k5QqU8X11/wYMsReXNhp3GiyyQO1ED9m2VReZCQPxhCzK/BE
	2/ANrfg+jc5EgzI4CKldn42ri83v9U/VBNkSw46bTwkf3ipzYJXntLXomJTqZv2jGPSK/4E69oGaX
	2woF8jian+bdSdKv2qXrjUtRnBtkxNhIoMTNhzKUeOUPhM6La0HG3KNHkXhT8LBiP44cGy7O4mtQl
	rrFZI+N4WsA4NtJ5s6OQ0hRZ4fZSn8nCzIh3rFeyKhUFFgyI7YCAeoP/il0sAZoIGShawGvCUTUsa
	zo4xnWKaFDumQM7MMmpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu7bH-0000000B1rc-3AUP;
	Thu, 04 Sep 2025 10:53:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu6c9-0000000Afxp-0XFX
	for linux-phy@lists.infradead.org;
	Thu, 04 Sep 2025 09:50:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7A6E8445B1;
	Thu,  4 Sep 2025 09:50:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D95CBC4CEF0;
	Thu,  4 Sep 2025 09:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756979444;
	bh=2MnOEkYSMvUjHgMQUXhttZOsid3FO5mXYEicZ6UDPo8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dla9BiBAuAZcJvTOx2DgjwKjk+/LIri6OLDNundoy/17BZCXttpODfti03++6fSjo
	 ItKWbjDG4ihJpTZ786TEyXlggLVlvZbRPMuVprYLXz2q9WpbORx7WZErJ7bQVmSzJL
	 bYEvMY0Z3o+TL+BL3sGhGmkmmnVOaTtG9w7G0KTYWiBKDhlXz2zCthWYrGrmCV/P/n
	 sIM7hfTX5s9+HzpV90zdNQUayUptPb+js7jMYhxUyUJp8k6Pn5LvPgx63x6lBRv0G+
	 xMiaOAkyezvMJ+ANUBA8VLN9iX7i2L9JszyTs1VB6WAWbGoVo/gNHqLt7NOsfpU2fS
	 Hvz6YilRhxnsw==
Message-ID: <5f6bc8da-ac78-4f21-8f9f-c84f213f60a9@kernel.org>
Date: Thu, 4 Sep 2025 11:50:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: ata: eswin: Document for EIC7700 SoC
 ahci
To: Niklas Cassel <cassel@kernel.org>
Cc: Yulin Lu <luyulin@eswincomputing.com>, dlemoal@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
 linux-phy@lists.infradead.org, ningyu@eswincomputing.com,
 zhengyu@eswincomputing.com, linmin@eswincomputing.com,
 huangyifeng@eswincomputing.com, fenglin@eswincomputing.com,
 lianghujun@eswincomputing.com
References: <20250904063427.1954-1-luyulin@eswincomputing.com>
 <20250904063718.421-1-luyulin@eswincomputing.com>
 <8489c13b-6810-480c-9894-bb5c80cfbde0@kernel.org> <aLlYkZWBaI5Yz6fo@ryzen>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <aLlYkZWBaI5Yz6fo@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_025045_210245_3D949543 
X-CRM114-Status: GOOD (  19.46  )
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

On 04/09/2025 11:14, Niklas Cassel wrote:
> Hello Krzysztof, Rob,
> 
> On Thu, Sep 04, 2025 at 09:10:34AM +0200, Krzysztof Kozlowski wrote:
>>> +
>>> +  ports-implemented:
>>> +    const: 1
>>
>> I do not see how you addressed request about firmware. Nothing changed
>> here, no explanation in the commit msg.
> 
> In Yulin's defence, he did comment that when having the Ports Implemented
> register initialized by firmware, the Ports Implemented register apparently
> gets cleared to zero when rmmoding the driver (probably because it disables
> the clocks and regulators to the controller), thus this suggestion breaks
> the use case of being able to reload the driver (rmmod + insmod).
> 
> He mentioned this, and asked for advice here:
> https://lore.kernel.org/linux-ide/2cc9f2ff.6a2.198e04fd36e.Coremail.luyulin@eswincomputing.com/
> 
> After no reply he asked the same question again:
> https://lore.kernel.org/linux-ide/692e11ca.843.198f0337528.Coremail.luyulin@eswincomputing.com/
> 
> I assume that Rob simply missed those messages.
> 
> Anyway, I provided my 50 cents here:
> https://lore.kernel.org/linux-ide/aLBUC116MdJqDGIJ@flawful.org/
> 
> (I would like to add that I think it is the disabling of clocks and
> regulators that causes the register to be cleared, since we do call
> ahci_platform_assert_rsts() during the first probe, so if it was the reset
> that cleared the register, the first probe should also not have worked.)
> 
> 
> Not sure if it relevant to mention this reply to Rob's review comment in the
> commit message, but perhaps it should have been mentioned in the change log.

Reviewer questions for more serious stuff happen for a reason, so when
discussion is resolved somehow differently than reviewer suggested, it
pretty often deserves explanation in commit msg.

Well, in changelog as absolute minimum. No explanation happened here in
the changelog, nor in the commit msg.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
