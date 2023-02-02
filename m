Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE8B4C61DA4
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 18:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Cc:To:Subject:
	Message-ID:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kDDuBZ4SJAtF8mLwFBqmdsE4wjImj7+VCGuVBXVCy4=; b=VLWUKxixlc7N0I
	bnbkTSrSfO5ybTIwz8ua/S1syze7z5MXwjyaDfGXfKJdyq5vtNiz6a889HeAKKu0/aPtp0S2OcPfw
	njSdYjPFNnpL4qe7cgvmvlosJbKc3RlhhZA57EFIGJnEOvXpABTTf1jeyaG+uP83s9pNhu4fttMju
	nJuFhgxL7SRimYaMz1YJCScokoInToAO3pg86is9LiiRlZlwKcxSbqGt3YKTxDklGuOq8thzPa732
	2q5Gr+dJCiHG/EVhmZAOj7nAU+RryKXkTqtIMRSzZO8PjDyiMoFmzL3jm0y8xjsmCsxvSQsrS0Ji6
	HrBLCzqLokb0aGPxWc+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNeVp-00GynR-D2; Thu, 02 Feb 2023 18:40:45 +0000
Received: from out-180.mta1.migadu.com ([2001:41d0:203:375::b4])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNeVm-00Gylb-Fn
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 18:40:44 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1675363233;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hKkuIcBhnMPwQqCjwGuPemg+WsdnyWvGvpoWQlaePW8=;
	b=SLyiMiDQazrs0FMT+pfThaR2L+4JAEfLk1mOBotS0v+tmE2TwajVRZTjUHA3uFDSxS1byk
	l4aCl1UGjmKsoZ/PqtdZUen4Ti9BENkmhRkKR8GD1IeNpEvhWOlhonN3L0wgVG3TMV60qT
	IeVASyUaHw3Xa3TSpUIN0B0EE1JHleY=
Date: Thu, 02 Feb 2023 18:40:32 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Konstantin Ryabitsev" <konstantin.ryabitsev@linux.dev>
Message-ID: <e3b80d80bb6e2ec5db7fac427d0a44b7@linux.dev>
Subject: Re: [PATCH v4 0/3] Add USB/DP combo PHY config for SM6350
To: "Luca Weiss" <luca.weiss@fairphone.com>, "Vinod Koul"
 <vkoul@kernel.org>
Cc: "Andy Gross" <agross@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob Herring"
 <robh+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski+dt@linaro.org>,
 ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, "Johan Hovold"
 <johan+linaro@kernel.org>, "Krzysztof Kozlowski"
 <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CQ84AYQ4TTU1.JLLJCL8OFCFQ@otso>
References: <CQ84AYQ4TTU1.JLLJCL8OFCFQ@otso>
 <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
 <Y9u4cAK+uKXuu+uL@matsya>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_104043_117322_93CA16B3 
X-CRM114-Status: UNSURE (   4.17  )
X-CRM114-Notice: Please train this message.
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

February 2, 2023 8:39 AM, "Luca Weiss" <luca.weiss@fairphone.com> wrote:
> On Thu Feb 2, 2023 at 2:19 PM CET, Vinod Koul wrote:
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> 
>> cover doesnt need sob :)
> 
> That comes from b4 ;)
> https://b4.docs.kernel.org

There's a number of subsystems that will use the cover letter as the base message for the merge commit, which is why the signoff is added to the cover.

-K

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
