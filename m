Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F03C433F5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Dec 2021 11:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f68eBBjziIdMr+Ha/KLcyDWPvDhRY0b/2Rgccw67Cc=; b=eVM2yXwEkw+SLy
	bBegKdH+JrCWo8/CkFhXsU0cGq3aOXGtdqqQRAElsxcGJme9E0ttygW3A/ydK5QOEEVDWMp/hwHIc
	jJeTpzUxZGMwMrVPzVQNUQfwmOSEzKwQojGk4XZo+80xi80xzAtCyr6r4g8n38wtCxLrtX9qqg05d
	eFFG/hRpXCG15QogU/XYNLQqiQCnUwPV0BQmAFdOkHj/0GOOvPTun4D/QAS4CQiflJwp5pPZYvPBD
	uvyvbl/V4aK8XrOHTKx4Fj7Jtu/j25P/XCN3/f0TTMID80BwgeK2VyhPDZyYvW1/TP6Th69vj9QXG
	UHS6zZViJia2i+OJWkxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muZ8U-008KGi-S2; Tue, 07 Dec 2021 11:59:54 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muZ8S-008KFf-4F
 for linux-phy@lists.infradead.org; Tue, 07 Dec 2021 11:59:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id D6E09CE1A79;
 Tue,  7 Dec 2021 11:59:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D434C341C1;
 Tue,  7 Dec 2021 11:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638878387;
 bh=WL6Ujukl/ZIDZSWRPbHd+nlmxbXcA1ewcWGPalHNBgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HiazURpuJyARip5zMf3bFl+4gkC0Gp6P06d385Ec6naL6dg3inNf0gGiDJhsbLKzn
 mf1AD4F0ZLBkb570EDq7FEN3FDIXG9BZ0AuaobVNqQWz4Go2zSon4EArLUn1zFRzt2
 hmrOVWV4pPY45uB9J0Ih26bGYccvkkLaSXCNiuW9bTgcC717p2Hm7pVk92JN5+4The
 qmGNAxtlioMq7RG9n9Pj4Y6/W+SqkvxIDvSfdUqq4j8G79aaKzktEkiMQ6av6Y3PQA
 ZH3C3dWz8Nf8zymaEqWfhSasnXbUcr8dMNYEXL+F/wmzyFwiyzu2QjgH5cK4A3XajY
 4TXLQfV8/JkzA==
Date: Tue, 7 Dec 2021 17:29:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] scsi|phy: Add SM8450 UFS & Phy support
Message-ID: <Ya9Mr8SqwPK/uyZz@matsya>
References: <20211201074456.3969849-1-vkoul@kernel.org>
 <yq135nawg3q.fsf@ca-mkp.ca.oracle.com> <YapW+EY/IeUk1BLz@matsya>
 <yq1ilw1uout.fsf@ca-mkp.ca.oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <yq1ilw1uout.fsf@ca-mkp.ca.oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_035952_404883_3FA76D95 
X-CRM114-Status: GOOD (  11.25  )
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

On 06-12-21, 21:35, Martin K. Petersen wrote:
> 
> Vinod,
> 
> >> No objections from me. However, these patches should go through the
> >> DT and phy trees.
> >
> > Ok I can pick these up wearing my phy maintainer hat, can u pls ack
> > it...
> 
> This series doesn't touch anything under SCSI. But it does look OK to
> me, so...

I would consider scsi dt-update in your bucket :)
> 
> Acked-by: Martin K. Petersen <martin.petersen@oracle.com>

Thanks for that

I have picked the series now.

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
