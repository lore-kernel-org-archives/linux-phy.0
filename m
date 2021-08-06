Return-Path: <SRS0=N/27=M5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF670C4338F
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:08:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C8C961102
	for <linux-phy@archiver.kernel.org>; Fri,  6 Aug 2021 12:08:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8C8C961102
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0yQoWr8CVhHO4xCUD62qh5+dkWShuc4L7A+/YWDXYU=; b=x8VTVAStVrZJU9
	m3BH7FVze8JCI2oUsw87+Kl3418tidpngiwzAo31M2RGqJkUMC70RO0ihjPGRco16AV5C6vObFNK5
	9ozbzRSjH7w8mKacSNkghTW7y//PGx8D7EV7ptmQ9wxGOWazbyOGj5DI0RHHiZucmxUBHKl5bBAez
	MfWrRlMNvc6JwYal1KnO3Or05GEtOWcD94kuo375gw5ejtkUHfQmgGkRdcdGdAOB1N/7IqGzXrZ6P
	HgOPRTyfAjUVzP8iMUTEn4NNkXGlrmk3KAPFss9vWDFnYxvTcWLJdtdBiinq7FT9Owv5lk2OlN6HP
	3PL6wWVh/or0Mx0/jIJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBye8-00CR9j-0k; Fri, 06 Aug 2021 12:08:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBye4-00CR8X-TV
 for linux-phy@lists.infradead.org; Fri, 06 Aug 2021 12:08:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7171560EBC;
 Fri,  6 Aug 2021 12:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628251692;
 bh=LVPsGWT1ar/fDJEE1pmUbpOVCKR/2+4qXoS/EGf8FhU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PdxTHdC4Gq9n66tBqkFq8X6HcXqdvAvyAkoRQNggiiWsv1s3DYHZdML4lt9K43h1U
 Zyh88t3JAtimgvfhNKzyHIjKbN2ht2mqz7iBfJgBhOgPko/fl1+HZbxICgbNDm4LDQ
 jkOc4o+lyFForptMxD5R5YTtSU2VBudJa5Rt0Y/6TdfwLRxhvfEMgTk2cRux08GWw5
 uV2Io7CplCGP++rpR9c5MwksSigatoFYnDSP11EvrllljvgO312f1vVdqzEKud0sH2
 sOi4bzjyErEF7tjl3qhgdbaJfoCzF7Ir02PFDAkagThSd8y38SCmC8RodLXfAc9cd9
 W7Sd2B2qpXoBQ==
Date: Fri, 6 Aug 2021 17:38:08 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>, lokeshvutla@ti.com,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert AM654 SERDES bindings to YAML
Message-ID: <YQ0mKEfb22XcK7gl@matsya>
References: <20210723135605.23572-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210723135605.23572-1-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_050813_004008_5A64B618 
X-CRM114-Status: UNSURE (   4.13  )
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

On 23-07-21, 19:26, Kishon Vijay Abraham I wrote:
> Convert SERDES dt-bindings for TI's AM654 SoC to YAML binding.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
