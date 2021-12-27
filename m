Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E6E5C433EF
	for <linux-phy@archiver.kernel.org>; Mon, 27 Dec 2021 11:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=As4bUtsI6J34MT80mz5RkqzJ6YMWQmsvPb2U9BeLenM=; b=p6snRypYaqZDFA
	+LWklRIivh4IuT6xZOihWSO6t2JaERRWbkLyI3LuHUE7k3Y6PuWuKqX0g1tIjr03H5pmWfY7rzYr0
	glZvvdWZ4lH2N6j2s3BR+nDsQ6OSVmvGCZAmONHRCrMhXJYDQM5ecmqsAW/wtOd7Re4Nw1w9cyXby
	3h4rKLux5Uggp9YkIEH42G5bFlvKL97lIyQ2dLo9p+/h7ANB2R2Junzu5Mmm/VoGcpMJaFxLMnIo9
	YfS6nAy+ReXE5gaPTvrteBANXfAN9NkjvwcvOSNLwdWSJZCVzqzxNvTeYlV9DPGUJN7o4p0niNz8b
	fzohQfN/9mkN4RQi7iUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1nrJ-00GZ2L-JN; Mon, 27 Dec 2021 11:08:05 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1nrG-00GZ1e-Fq
 for linux-phy@lists.infradead.org; Mon, 27 Dec 2021 11:08:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2BF7BB80E72;
 Mon, 27 Dec 2021 11:08:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23712C36AEA;
 Mon, 27 Dec 2021 11:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640603280;
 bh=lGd8HHkcDZEOoSy237CO/NUiA+Tb3WGAEboNDpfIehI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tk29EfKd9Ez996/BKIIiTsX7pMjITL5y/OgAOG0XZKGWEBoqhQpKzLDcaNZnJzVs0
 c5CyGuY+QFf3qwFyArs2Dnze14B8mONCDxouymFWUS9pO35FoWY/VwMrb60cP9l4Py
 VmFO8+TTYpP1f1yJxMYqSc++xzfDq58NaIeUQlpsBVOFsosVRSCB5dD9mKBQ8gnQcu
 1WLl3fVwt7e3nW0KLIY2GuPwxq0BEkoSbwrorAKQlkHYU2EqpspwAWWnsErWDCfuOL
 LygSKg3RifaqNO+XYBdqZCzNeVIf85YYM197FRlXgU4lTCP4MPso9HpO8cqUk2sU+5
 NWmC01vKU6cFA==
Date: Mon, 27 Dec 2021 16:37:56 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: kishon@ti.com, robh+dt@kernel.org, p.zabel@pengutronix.de,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, a-govindraju@ti.com
Subject: Re: [PATCH v4 00/15] PHY: Add support for multilink configurations
 in Cadence Sierra PHY driver
Message-ID: <YcmejF/Xs+RfnTQC@matsya>
References: <20211223060137.9252-1-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211223060137.9252-1-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211227_030802_693111_3598E406 
X-CRM114-Status: UNSURE (   8.70  )
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

On 23-12-21, 07:01, Swapnil Jakhade wrote:
> Cadence Sierra PHY is a multiprotocol PHY supporting different multilink
> PHY configurations. This patch series extends functionality of Sierra PHY
> driver by adding features like support for multilink multiprotocol
> configurations, derived reference clock etc.
> 
> The changes have been validated on TI J721E platform.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
