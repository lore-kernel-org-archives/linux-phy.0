Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E51AC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Jul 2022 16:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pt8u1Bf8knF4ZoYCuEqTnl9G8z/UnZ7Y5FEKf73ItJM=; b=wf0vHHRpX4smpi
	AbXGXQcUl04j9CMeLH/Kx6ZfxSxMeQCDyd6G/YkagpPv/mkMr8yMlvtCST+SzAUnOcWFLuzoNaMy5
	f87Qeo0Rb54Ry2PDvzQ1W0euklp4l3oiaAEbhTujy28FUXOlK3DU8vCET5lij+jwT5XxCmCA9ap93
	boP7ZC8ZC71Q8t/UvE1n+jqbQN0aBW8367t336d5N+aEuBKCvCOqAw9DB61laIqA8QR0gZ4hTRmpi
	AhDrIFNcNz+4N+Z9GsloK+EDXToqYJtLLyBQLNfBnJRsTQy5GB7NSlIOSleImvwdZ0E4CEuz5+rQ5
	D4TYjJpKjS4tzt3visAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JL8-005vWe-If; Fri, 01 Jul 2022 16:17:54 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7JL5-005vW2-U9
	for linux-phy@lists.infradead.org; Fri, 01 Jul 2022 16:17:53 +0000
Received: by mail-io1-f53.google.com with SMTP id p128so2757520iof.1
        for <linux-phy@lists.infradead.org>; Fri, 01 Jul 2022 09:17:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=a3p39DaXpEIKe1IC6DHEHYoK53aXZYytzVNsyvr74DA=;
        b=N3WZyC/LD2dTLB9VAAF2ZYy1thFIK2JlJ8m35+VyYPEuFhCsDnk6YViDsWpLnNzZVi
         jgdV5fhvyN/kL6iB2gmeWisJTsL4p/U36zxVz+7unb7tSvwsbDHMfD7qPED0tl05mbBw
         Y2+b2Mf50noYisYJJFdE4i68B2vkuYo6kA+/otQ9kzS1+EX43uRPohEY+Kg+vgScbVXz
         z7Kg1MgPgW/rcECwmH7gy6pE35c+V2J6vuxXo22Aff2IEfh+qqpw5Qggfi7V+VcVAGWs
         bJfe0FB4ouLuFOU/m8dsZDrg1ZtRWbp+Tb0OQStGt2kgXVAcoDvI5nUnaBcVtVP8W8nS
         93Ww==
X-Gm-Message-State: AJIora9Po77woyhMq3lxqV7eiFlVLB3IK/xSgnnB7Fxo17F67IojiE/0
	W+U9HxDv7pOsX77qsrEtWxb1XjfUTQ==
X-Google-Smtp-Source: AGRyM1sPR/ejKgtkX1GxIw8ni/Rd20wFIAFtoYqJIUY82FA9zqLPBfWJOqjFr4WONWMnyPqsoQimwA==
X-Received: by 2002:a6b:7012:0:b0:675:43e5:58a1 with SMTP id l18-20020a6b7012000000b0067543e558a1mr8041018ioc.4.1656692268948;
        Fri, 01 Jul 2022 09:17:48 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t9-20020a056e02010900b002d928e265ffsm6182761ilm.81.2022.07.01.09.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Jul 2022 09:17:48 -0700 (PDT)
Received: (nullmailer pid 1064062 invoked by uid 1000);
	Fri, 01 Jul 2022 16:17:46 -0000
Date: Fri, 1 Jul 2022 10:17:46 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Cc: vkoul@kernel.org, vigneshr@ti.com, linux-phy@lists.infradead.org, sjakhade@cadence.com, kishon@ti.com, linux-kernel@vger.kernel.org, t-patil@ti.com, s-vadapalli@ti.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/7] dt-bindings: phy: Add PHY_TYPE_USXGMII definition
Message-ID: <20220701161746.GA1064001-robh@kernel.org>
References: <20220628122255.24265-1-rogerq@kernel.org>
 <20220628122255.24265-3-rogerq@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628122255.24265-3-rogerq@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220701_091751_991674_CAB44512 
X-CRM114-Status: UNSURE (   9.14  )
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

On Tue, 28 Jun 2022 15:22:50 +0300, Roger Quadros wrote:
> From: Swapnil Jakhade <sjakhade@cadence.com>
> 
> Add definition for USXGMII phy type.
> 
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> ---
>  include/dt-bindings/phy/phy.h | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
