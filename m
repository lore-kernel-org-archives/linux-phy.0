Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC870C27C75
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 17:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzFV3VUt0uCWff5C0MRLIoK6og8TMTx2vn8eZnsfWvg=; b=mC4clipRabCqzr
	QsUpUaJ2gT+ortnt/l+SGe1l3MFrWLGpsQ9CUvfXpyn13pqG+Nk7SRu7mJP17lwKeZpQldfgxvZFK
	7zr1/O9YggDhAX7FZdS6eY5/s7mJmW3UpPPKb+pm/RNW8GjenMplwpL4MXt1OTh6NyWLwIFO7CFCc
	uS/DeBMYPYD9ZuxKmxeFUji2v94e+42IUrG2Lj8NZH7rSUrrfzBgwZ7Y6I3hCWckaipalqrUKBuV/
	OUXc/6w54egBfMy39W2CDnYWdjY7S0gcmGw1GwdRcSDd1IEGBDZxUd8nxPmpujJRseAzF5KjKB4ZW
	E9jNi0wk/M+Ji5YWCecQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8j-0000000DcmA-1xsr;
	Wed, 12 Jun 2024 17:52:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS8g-0000000Dcka-3aMo
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 17:52:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 29C8C61539;
	Wed, 12 Jun 2024 17:52:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6152DC4AF1A;
	Wed, 12 Jun 2024 17:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214722;
	bh=GUySe7kOQ5O+5zPTwFjXrrUGkZhsuW1RT5+UVSqvC9w=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ALPCfw1mB4ZBxJsLgtqUW/NXWmqkaYgUHyTkHOIIBsxP3Q7vpqiKg2T8BNMyaAAGu
	 nC/NOiOXZUi2N1eV6vxbdK1FDlsqg6sA1c7sr0mNNr8cSFQn+FqSTTNgfPfN6RPwyn
	 NArM2caQla0pXUjX+j51//1c4obyhbVyYxnDFLlfO92kadKHYOibWsOkfS8rOSMli9
	 2bUOSuP853RysyoSU1YSfxBGxA/8JLaWFenhQxxJlRgbh/ugp77sZngxBXW71TIhyA
	 QJ8sTYRooleTdgEAjSJ3MXiD+f8xLxXs5sXSj0E9thdRYWSL0jiN7Dcl6YR8k3qWgR
	 ZqAuhstBcXDMQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel-janitors@vger.kernel.org
In-Reply-To: <20240608-md-drivers-phy-broadcom-v1-1-f070f84cc3f0@quicinc.com>
References: <20240608-md-drivers-phy-broadcom-v1-1-f070f84cc3f0@quicinc.com>
Subject: Re: [PATCH] phy: broadcom: add missing MODULE_DESCRIPTION() macros
Message-Id: <171821471999.586907.11914023851963096437.b4-ty@kernel.org>
Date: Wed, 12 Jun 2024 23:21:59 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_105203_117823_1936A33C 
X-CRM114-Status: UNSURE (   3.92  )
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


On Sat, 08 Jun 2024 23:17:05 -0700, Jeff Johnson wrote:
> make allmodconfig && make W=1 C=1 reports:
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/phy/broadcom/phy-bcm-ns-usb2.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/phy/broadcom/phy-bcm-ns-usb3.o
> 
> Add the missing invocations of the MODULE_DESCRIPTION() macro.
> 
> 
> [...]

Applied, thanks!

[1/1] phy: broadcom: add missing MODULE_DESCRIPTION() macros
      commit: ea09ba7653bb53252ed96ec524991c55a38bcd0f

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
