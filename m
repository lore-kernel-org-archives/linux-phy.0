Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5229C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:42:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71DD761181
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:42:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 71DD761181
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+onN0skx0v5EAk7tnlI1o1qDocrCpGfdBid4NSMxJw=; b=LcDeRJvTPF3pGq
	K3Eqe0yktwbku96eCilBsMNZHZ9EYQxC26douZTF3j4bhuUEy8yXBVKSM1IVqs/zd5SDnNG3JOLhY
	+/qsjzJVSaEYpbiceOQnfOW8HiGQGzdcs7y2dqzJqwMufZSUDst0KqsTilcHybAG+FVpAMZRKEO5q
	0c+KDp1FLd3r6lQvZ1z+HSg97oc+btBWPGWt0ATl8W8YsLj/tlFIttCW6rGXFihsxZQMdONk3QYli
	6QeTp5DSk/jElMv9DabQHmz0GTrCU+zAffjz/akK11CRir/0F6A7DTU9gEh+GEzJeBXeTZ3FNOBcR
	iKoL/BqWlnI6NcZVBujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBzBW-00CUg5-T1; Fri, 06 Aug 2021 12:42:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBzBU-00CUfc-7J
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:42:45 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id ABE2561167;
 Fri,  6 Aug 2021 12:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628253763;
 bh=zV7uIcw/dyH/pj9VePohMNNlJVX4LwUb4WWxHvJwSE0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ahB2wIZTXS6UCS4IWtnh16WeBfc9HOKRjUlzFIe+QgD9uws7/QqTbmFPH19a0vrOi
 2NNcjEvtj5yCRl2d3MDueK1BFb18vKki3N41z4Ts3QaqE9AHV1DW+Rvb7y8RG38ZR6
 zqpItgYTeDr/NA7d5c7TaphHGVj+ZDAGtDDOqMWM1aT/Kz2eQU9EF065pge89wuV5p
 7bqGpD23/AECcYXMx0G7psqn4OKHlQWaeOkfqsWL/EshAHQ3Bs37KWS4q0gmDK2Ax4
 NtaTDZKoWKz57FRiUrdeiBvNJBpe8Hr452QXfs3Gpxrf5DtsYr3wnlCf67FpZr6UI2
 UO+SvnXNIMg2w==
Date: Fri, 6 Aug 2021 18:12:39 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v5 2/6] dt-bindings: phy: renesas,usb2-phy: Document
 RZ/G2L phy bindings
Message-ID: <YQ0uP0yjYe+jOe6W@matsya>
References: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
 <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210727185527.19907-3-biju.das.jz@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_054244_318169_72D989C6 
X-CRM114-Status: UNSURE (   4.25  )
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

On 27-07-21, 19:55, Biju Das wrote:
> Document USB phy bindings for RZ/G2L SoC.
> 
> RZ/G2L USB2.0 phy uses line ctrl register for OTG_ID pin changes. It uses
> a different OTG-BC interrupt bit for device recognition. Apart from this,
> the PHY reset is controlled by USBPHY control IP and Document reset is a
> required property.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
