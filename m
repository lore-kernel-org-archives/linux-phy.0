Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 112C4C433F5
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 09:54:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5A6761A08
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 09:54:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D5A6761A08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AKs4iNVAGo6EsEnwJA0uVs9tBRX/YnZw8ncz4H+f9o=; b=pMAUe1zNEGWqll
	zhsqZuOn6AsNBbxXFbYwkJ+dTFvxqcw6d8QhsnX741EQimt0ZP1+xL28oZ2dfQpPkJKV+nHY+BtGz
	Uew8TZym4QYj0e4qvOreRbJ25Cb6uwv86L+MUlrL13ZT1o68aRNLYaJN81TEnRw9aZTfifd7ujUCE
	ou4uRinfe6Q4UW95RRzdhTuZ5TdTp//UKGLefUVZ9zjPD1KFHpyLj3XgEmafirFIWoaghrwSHYzQY
	ptLwvvKryNN5+RTyEwX7lBAeDnVxLP7dvI6dFULozMnSEbrUWFoF+jFI+CbODruMeyP7Epw6a38M4
	I4pMlMpsDaGIVIgYCqdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFFm-00HMjW-Ob; Fri, 01 Oct 2021 09:54:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFAX-00HKeU-ES
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 09:49:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E21B61A08;
 Fri,  1 Oct 2021 09:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633081769;
 bh=7xV7tAvqNWAUsfd37pQphXwNTBS1AhSdydvTA9IEfSs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dsadxg0Ep0U1sOmU93Ijk0nq+FyxlYV5u8zfIyTkPzqr9/feOduxIN2XhQZpoI73X
 ycgrRpfhnJrH4+UtRLF6ksfMGs65eQaMahSJ+h1R/MwIbnH1V2gddKdyr7TtSzftbZ
 jpazUxg2/64JbdOqeFxxsBgmafgJllvWr7CPwIqg8UAxsbA5vOMuByGQzV+SMrFumy
 d7mnCq0WI7V0rAe5pKugaqXWiqMsuHNOhts6BedclRvA1HUhewyl/RYc2FxKxd3T8g
 MMLarblYvlmrpT2TTe1cG/m5O/D15g/VHPURnqRTjz7++YA9wktWoP3fok63x+QU4k
 z8tVflks1zRZA==
Date: Fri, 1 Oct 2021 15:19:24 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawn.guo@linaro.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Manu Gautam <mgautam@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Add QUSB2 PHY support for QCM2290
Message-ID: <YVbZpJxpvGpDk7s3@matsya>
References: <20210919031110.25064-1-shawn.guo@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210919031110.25064-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_024929_537163_DAB2C097 
X-CRM114-Status: UNSURE (   5.41  )
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

On 19-09-21, 11:11, Shawn Guo wrote:
> The series adds QUSB2 PHY support for QCM2290 platform, by documenting
> the compatible and it into driver match table.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
