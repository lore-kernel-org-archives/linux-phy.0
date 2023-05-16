Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2210C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GX7Vmxw/ygdQDeqgIAPWyOphdsENVkKh5ANriwEjM2I=; b=yS1NM8eXiOsGmq
	+Im+jRnkhbP3DOJhv/8gtWVvN3UArUdj+n+Zo/POKX3URvqeXT4s8oHiEGWVyY7KEGNgtEIkzLErb
	DY/4h1eD+2O3KkC1Q014DvEwEi3IpnC+1cBsUord9kGLu5qENW6yOn7AmGRlXs+rrdPHh3oPJ0izT
	ePYObKko1LF3Ppnx4/jQt6MA991n6GpvbNFC+b7uPrXaMopaxqdRhtpT/9Yfyh99GZ+n5zurZ99Hq
	y/qhdgiVyhdvp+yJFouDqKlgoQ52cdyIIqglqLMx1/FBkffwojLeSRP5MoaPY60LcK/3BIuYGRxDw
	Kmanz/7JzoUVrwbqjf4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvS9-0062vz-15;
	Tue, 16 May 2023 14:15:01 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvS6-0062vR-37
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 14:15:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 51BEC62668;
	Tue, 16 May 2023 14:14:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A72BC433EF;
	Tue, 16 May 2023 14:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684246497;
	bh=C4y3Uk00b4aU06jByCl6x8jpmggK9uaNRQ9qhjOYusA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HZ4VdeCZiTi1UkJ/y5mpr8S34tw2AP2QQHWL6MhdQfZrs9heq3yP3Y1DHT2JJKwVv
	 baow6huRx0Cjpb+eff4v6y0EjMkHpLc+c9R3ltc1F6LPhQIt7IK7Jed7dt7dfFClNm
	 i3CIu4l9s5g6DlxtcMLvUiODsVB6LzwzSK5aeAveEReZbcRpwyI8Slg4zD7jbkZFcP
	 GYpKqxj3X79iBJKKVyQacUSNRCWFZu72E+Re8W60xYlZi4RfaFtgmTIWhgVKvGyCbT
	 OfmurZbnkZSK7nOnpuXqTyLySO6d1gcAEPvCyYFS7xP3wxEAeT8ybW4Cz6ZL8mrS30
	 xVeVq48DM5yQg==
Date: Tue, 16 May 2023 19:44:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: David Yang <mmyangfl@gmail.com>
Cc: linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] phy: hisilicon: Add inno-usb2-phy driver for
 Hi3798MV100
Message-ID: <ZGOP3bvi03//+6IU@matsya>
References: <20230509060449.1151113-1-mmyangfl@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230509060449.1151113-1-mmyangfl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_071459_044682_A769DAE2 
X-CRM114-Status: UNSURE (   8.68  )
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

On 09-05-23, 14:04, David Yang wrote:
> This series adds support for inno-usb2-phy on Hi3798MV100.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
