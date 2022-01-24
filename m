Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6040C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 24 Jan 2022 04:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFvzNMk+33n4XN6QMXz0qAv1gVs15doebfYIQSXogyM=; b=I+QpeC9RkEWu7R
	kfC69lOT+ikzIDGbxCxaFpowGj8cVoTATeOlNrMiUSKLI8wod7svSP9b+AUXRb2zJCeEP8aTR6xBy
	d1PjGx0FUIJ4OcU4KCf8RKf9oI8kKItirEYmv9D4jmuy466qGSBBjAvq4PUGfCXcgD1AiKPHM6zzg
	hA+Zb07f+Nf/RaPHLXXR8FeYBG2J7dFtM/BClUJqcI3CSmfinrvbGnUM+byZd2j8MvF9Kk8WiSvZC
	WgvVeaA6HGzqChTfyxykktyMIv+EeSliuOyli9Cn6EFAYXHWRm2uXzH1uv3GCMCrj89geOoeGhtTE
	cbUG2dnGBm/GgDLp4cbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBqy1-002D8a-Qr; Mon, 24 Jan 2022 04:28:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBqxz-002D8I-J7
 for linux-phy@lists.infradead.org; Mon, 24 Jan 2022 04:28:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 58100B80E3E;
 Mon, 24 Jan 2022 04:28:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F0B6C340E1;
 Mon, 24 Jan 2022 04:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642998509;
 bh=a9zcV/HJCtoc58GdDIFo2VYi0DSNMeSdZlZvPfkbNuM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RVpfITq1YTv8ffdwu1bO6gh1NCM0NSipis+EfHeMLbTJ4TxGWV/4upSMbvsHqZNZR
 PgZry3EBKl7la4pmnEyfAcLjy5NHNYgcqv8UbeAG12r9uvbKIuGStEiIs+vPdDfORD
 eXhZNiJva60Z+nB+5RcortyU/szY4OVMowNXlc9uUwuqfNCNJzJmIoonsSwV2uwqjN
 EYII9HYw3kUt54kdDUSldANQBoWdqJnUwJDl1esXcquk+vYahLqF+JscROkpPb8PcU
 eW7B6+XlBHJGlZYsiyzstSThEs79VFliBQfou744CX6BICEyGHsIZ22tkQR19Hx/i5
 r6LYg3xQ6PJrA==
Date: Mon, 24 Jan 2022 09:58:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ansuel Smith <ansuelsmth@gmail.com>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] drivers: phy: qcom: ipq806x-usb: convert to BITFIELD
 macro
Message-ID: <Ye4q6cKmFNPhkogD@matsya>
References: <20220117002641.26773-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117002641.26773-1-ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_202831_792368_2AF0B563 
X-CRM114-Status: UNSURE (   6.48  )
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

On 17-01-22, 01:26, Ansuel Smith wrote:
> Convert some define to BITFIELD macro to tidy things up.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
