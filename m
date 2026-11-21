Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85591606A320
	for <linux-phy@archiver.kernel.org>; Sat, 21 Nov 2026 19:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lHPAg81Q;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=purelymail.com header.i=@purelymail.com header.a=rsa-sha256 header.s=purelymail2 header.b=NmSG/BKQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ObiR1Dbu4H0VsjmutnZ0CzFxtMOKugdYHp7QHUlMqXU=; b=lHPAg81Q6YUFJrIBlESgZj67ht
	ktARSMzZDAQ9os/A1cFezYF3gJBFF1KIOseYW1LuC2WWOuF26/yDFm3VvJgN4sHBnz631cZf7gByi
	b1xUPcA5wplj9STSD6uRhV3/MThzpWVoMW3qdWuA0Z4CiGy95EVk5yzOFH6MiiW6tkd8257CLfLYF
	UPSRVjlodbauQgHd3akHbcNt9puHcI0Ux+JqejDZ9MB9gTofIYanjhLnhBXzNktBjJmIh3yw4hs9z
	6hNW8ZCU9xdPRzURj+2uPE463kjNNhNa/fY92jRFVso2Px8Kb3FJe7+7lIcaIjk4aFODZvCU//lVW
	3E9Y95Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUqnz-000000007f1-0GYx;
	Sat, 21 Nov 2026 19:31:23 +0000
Received: from sendmail.purelymail.com ([34.202.193.197])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUqnq-000000007dW-3rUB
	for linux-phy@lists.infradead.org;
	Sat, 21 Nov 2026 19:31:20 +0000
DKIM-Signature: a=rsa-sha256; b=NmSG/BKQrgBtQgREF4Ds+Wuewpyl324eVl3S/vleH37p6Tk4rn3F1GWNG+qarizotfbc0js5U11kqyE/EaQyo/aYMsFLeSnF9bQ5SMoFl+al3EbMvcEeioHyn/P65TEiHyaJKAAZpEZv5PxwbPUGirJzcBovxoojE60Dpg46nGF0uuCv5WZfK4QvQKq1jcIpnzyEDJxZGtePa9608Z6pNDx/UovNmaPiaclLwDZp/YMpSGAZGjgkTgEhrnklsWDfxDiP72nZ9cnSxP/RVsvCoOBp1IB2lOGBWepGLa+0qSXda7hF2OHfWlsEYGD3HCX3C5fvNAMJZnuJiJa5MM1CYw==; s=purelymail2; d=purelymail.com; v=1; bh=EypR81wghhS1C3S+cwYO0gRmc3XYoh1lyYySai7+bfo=; h=Feedback-ID:Received:Message-ID:Date:Subject:To:From;
Feedback-ID: 68229:10037:null:purelymail
X-Pm-Original-To: linux-phy@lists.infradead.org
Authentication-Results: purelymail.com; auth=pass
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id -1481673243;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sat, 21 Nov 2026 19:30:36 +0000 (UTC)
Message-ID: <3c7ae669-d0e8-40f1-8c22-3eb198533ddb@mentallysanemainliners.org>
Date: Sat, 21 Nov 2026 19:30:31 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/6] Add USB support for Exynos7885 and enable USB and FG
 on gta3xllte
To: David Virag <virag.david003@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
References: <20261119-gta3xllte-usb-battery-v1-0-0cf5f763522e@mentallysanemainliners.org>
 <6937fed688e4bf1d7cb81b004c179cc4912cf6e2.camel@gmail.com>
Content-Language: en-US
From: Umer Uddin <umer.uddin@mentallysanemainliners.org>
In-Reply-To: <6937fed688e4bf1d7cb81b004c179cc4912cf6e2.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_113118_627416_04EE7F4A 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 21/11/2026 19:06, David Virag wrote:
> On Thu, 2026-11-19 at 19:49 +0000, Umer Uddin via B4 Relay wrote:
>> Hi guys, this patch series adds support for USB on Exynos7885. This
>> series
>> is based on David Virag's work[1] I had rebased it onto krzk's for-
>> next
>> tree and tested it on gta3xllte. This series also enables S2MU005 FG
>> on gta3xllte, which is also tested.
> Hi, thanks for reviving my old patches
>
> I actually have sent the patches before [1], got some reviews, but only
> ended up with the clock patches submitted and applied, and never
> actually got to submitting these patches with fixes based on the
> reviews (which have been sitting on my PC for quite a while).
>
> I think I will submit my fixed up patches (the ones you submitted still
> have some problems), and then your gta3xxlte patches can sit on top.
>
> [1]
> https://lore.kernel.org/linux-samsung-soc/20240804215458.404085-1-virag.david003@gmail.com/

Ah sorry, I did accidentally miss that, will be waiting for you to submit

the fixed patches then, and I will rebase my gta3xllte changes onto your

patch when submitted.

>> Please note, I did drop enabling USB on jackpotlte, this is because I
>> don't have the device myself to test the changes personally and I
>> didn't
>> want to risk a regression on jackpotlte.
> I can confirm it does still work properly on jackpotlte.
>
> Best regards,
> David

Good to know, thanks for confirming.


Best regards,

Umer


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
