Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC1CCC4345F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Apr 2024 15:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QA8j/zeYZRWjtnuWx9/2BymSvDQd9TTQljivOXElj+A=; b=2fLwFiuec69XaI
	moelrrDtHb5zY8+rOT0uYcrjHEl0qLk2gzrkqUoLfDnt/ALmRoqJZspb4A2bAJk0d/7yGB4QAFo0S
	Wf1RvETT+Gl/c4XDZ8sxUg77bK/1JJYOUVUxqX/3XXeCQn81VWWatPg5UmdB2IPa3FvKiAsHh5zzK
	hsK4N1z+SsKj6DEhtIOvW//DsSQabaxOpGOk1k984xuXt9UTy2BCKti1JZWRflOpGJ9OkaiQvhq8m
	ABBXnQ4/kxQmKrQ46f5qwDAqoNTPg7CwTjc6WaD/IoICEZ0WnReNfkG215j9Ym348CvaVezmYrY4M
	kAPY1aduK0C8tfnIDFPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHgO-00000000Q44-1kFk;
	Tue, 23 Apr 2024 15:03:44 +0000
Received: from out-185.mta1.migadu.com ([95.215.58.185])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHgC-00000000PyP-3jr6
	for linux-phy@lists.infradead.org;
	Tue, 23 Apr 2024 15:03:38 +0000
Message-ID: <96585fad-4d37-4020-a154-359ccf377906@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1713884609;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7TANHM5N3v2iElR/Xv0zvD1tTgG0PGeTr9gPXr/7U7k=;
	b=D6lHXWPQtgSvtHtv6p8phCCUjAPyRK7KFinWitycRCImX1LiSUPsEVl+6tIm2Y+txjyslX
	rSsGocLwVJsd0GMto2InAoqKZGQeWBxQx7LaCTxc/1n2vLCC0Mw+r3CXbc/GgdusLsArqa
	OS4qfKrLWmKOUV5RRa/GpLjo+jsOjxI=
Date: Tue, 23 Apr 2024 11:03:26 -0400
MIME-Version: 1.0
Subject: Re: [PATCH 2/3] phy: zynqmp: Don't wait for PLL lock on nonzero PCIe
 lanes
To: Michal Simek <michal.simek@amd.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@kernel.org>
References: <20240422185803.3575319-1-sean.anderson@linux.dev>
 <20240422185803.3575319-3-sean.anderson@linux.dev>
 <691e50b7-1c1a-478a-815b-fb2a6bfdae8f@amd.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sean Anderson <sean.anderson@linux.dev>
In-Reply-To: <691e50b7-1c1a-478a-815b-fb2a6bfdae8f@amd.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_080333_699468_43C2B651 
X-CRM114-Status: UNSURE (   5.83  )
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

On 4/23/24 02:25, Michal Simek wrote:
> 
> 
> On 4/22/24 20:58, Sean Anderson wrote:
>> Similarly to DisplayPort, nonzero PCIe lanes never achieve PLL lock [1].
> 
> What is this [1] for?

I was originally going to have the comment below the fold in the commit
message as a footnote. I forgot to remove this after editing.

--Sean

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
