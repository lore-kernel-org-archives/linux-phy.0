Return-Path: <SRS0=3Sk+=OV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89EDC433EF
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:17:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87E6F61A08
	for <linux-phy@archiver.kernel.org>; Fri,  1 Oct 2021 08:17:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 87E6F61A08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpwTRuC3FWBeN2+itCm+kw5Wb5lDmbomMAVn6oKeLsE=; b=WGOi1n+X7mpEOr
	UsEnZSi8QgESbWrZC/u512JMi9mPXYw2+3ckw7DgMXJ5ySOSsigazTAWeH0BkVKAylgPE6Z4lqYIk
	0yZlUmX22pC6u5rSsIGwMtci97Ks04dIpsi+4FEXK55yREoDt5ylea4kyV7bhte9CkvVL3c3tZfBg
	wEx0BIlcBJrfhSGVWCgo4YYT5rCJu4uocYVAHAY19rSaFFwEERdqtSS0Yt4u8wvxUQvX+6LM30+Co
	Z0fVKn14r8DHIq+xpt0TQtaEaKnPNIEFDJbiB/EgPLTbp3pbKASNSzOKdPnfW67wY43GkF9ohAyrk
	fnQtItPvK47UCGRA+L0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWDjo-00H2LT-10; Fri, 01 Oct 2021 08:17:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWDjO-00H2AA-AK
 for linux-phy@lists.infradead.org; Fri, 01 Oct 2021 08:17:23 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0785361A57;
 Fri,  1 Oct 2021 08:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1633076242;
 bh=b47P8z/W2i1bDRrOsD/Ji/gwBq3k4b2HBXMWS7tzHHg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TZ94LUBtNi1J3Z3D5NGdHA3FC3szbke8YAnGq+3WAzG5r3VmW00Jr9rQTeZz4/5PE
 QCzy5MIYHxj2257fGcuNsigrGml0xL1+9rYrx3wUR0UwvYTJPSgpHKcjsdxBNn4rhh
 rVmHEaXWMpPc0uDG5YBNOM1P+01sruApPJrDtTtL1D80LE5MkhYi1xznbSvbJ7j+S8
 NLVUS3R51+rDWWiK9Fd8pzHHT+e2bfwrBh9SX5yj6lrFz6EdKTw0kxdf7xkCGNXmHP
 L/+OfmDPjl6l1KIRZkb3vkEWVjCnP8f6cz8sxF4CU6AOGoLdYPa2abxk9o4W6uV314
 iubZqr0N2KOqA==
Date: Fri, 1 Oct 2021 13:47:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Shawn Guo <shawnguo@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: Re: [PATCH] dt-bindings: phy: qcom,qmp: Update maintainer email
Message-ID: <YVbEDnMHx+vte1oh@matsya>
References: <20210927071639.6225-1-shawnguo@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210927071639.6225-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_011722_425067_CEBB2FF9 
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

On 27-09-21, 15:16, Shawn Guo wrote:
> From: Shawn Guo <shawn.guo@linaro.org>
> 
> Manu's codeaurora.org email address bounces.  Before he comes
> back with his new email, fill Vinod's address in there.

Sure if he is back, will add. Thanks applied now

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
