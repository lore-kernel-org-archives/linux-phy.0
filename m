Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7D7E6FE23
	for <linux-phy@archiver.kernel.org>; Tue, 23 Dec 2025 17:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b6AEZD0Jq2KcVUAWjbcVo00m32NZLjoPBuH75T5idY=; b=16CWc8UXeuhA7v
	FKJjcglznzW5ocGcRyrbsac1s9g2tbAysY7KU9PHLf5zqz/V0D5JeJ8cYElNlo3EQGUL16Wn5+QxC
	NZILsc8t9hlmwkWlBSpKYtwI+gUSOXQ/ruNfhI9C+Tgf0P4/FOnDU6jKyK9mHqf7LiO7we3x0+A5x
	oqOFOcsrrkrMbqvYI3QzU68QKOaK7mafySk/nHiGzLwAPa5fdPqzwfr9Xki1aK6OBij1h/S3kE1iJ
	LFXY9AbIP/OES3/8tdscCxb9PZFtktdmLRODcxKg8/RIQGFjrljxBPHOVSH8EOFGg3xzGQ92jLL8C
	IdGqHFOMq5csAgS7lgyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gj-0000000FpfV-1byE;
	Tue, 23 Dec 2025 17:33:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vY6Gi-0000000Fpf9-15pW
	for linux-phy@lists.infradead.org;
	Tue, 23 Dec 2025 17:33:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B343460123;
	Tue, 23 Dec 2025 17:33:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E8A8C19421;
	Tue, 23 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766511235;
	bh=v8zte2v/K+J876rOP8zQ5mxBjYpcNNsbcPhghDEfu6Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=ImAZa2GiCmxn9wXhBA+wyiResrJlkc2wLUBF0q0R8ndbQV0y4m0MBSEbnvFseEx1X
	 5p+2GOoKPF1nS7vkjN5d4UQq01kGRG13VEKbdzGXXALdBE0hFBy0lgVD1egmaxeOqe
	 qGxbM+SxyRoKFiddJe/0kUQnRsvERNX9DwZ7AhtdHxNEZUmkGYrmHXpxKJaNtCh2x2
	 tXzaQFc9Lh2pB/I1ewEa2aa03Bnxs61gLfqg6GlG9FJY8fTn0uPC3B2veNK7uENNbA
	 7w5vSGO9oPtVaYNoZEnVFbGgJFRT1ftyWcMmgvBelZahFeTo2ZwXhFbxRRLsnHu10h
	 mhq2zImllEotQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 andersson@kernel.org
In-Reply-To: <20251219085640.114473-1-loic.poulain@oss.qualcomm.com>
References: <20251219085640.114473-1-loic.poulain@oss.qualcomm.com>
Subject: Re: [PATCH v4] phy: qcom-qusb2: Fix NULL pointer dereference on
 early suspend
Message-Id: <176651123322.749296.4504100315872807969.b4-ty@kernel.org>
Date: Tue, 23 Dec 2025 23:03:53 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Fri, 19 Dec 2025 09:56:40 +0100, Loic Poulain wrote:
> Enabling runtime PM before attaching the QPHY instance as driver data
> can lead to a NULL pointer dereference in runtime PM callbacks that
> expect valid driver data. There is a small window where the suspend
> callback may run after PM runtime enabling and before runtime forbid.
> This causes a sporadic crash during boot:
> 
> ```
> Unable to handle kernel NULL pointer dereference at virtual address 00000000000000a1
> [...]
> CPU: 0 UID: 0 PID: 11 Comm: kworker/0:1 Not tainted 6.16.7+ #116 PREEMPT
> Workqueue: pm pm_runtime_work
> pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
> pc : qusb2_phy_runtime_suspend+0x14/0x1e0 [phy_qcom_qusb2]
> lr : pm_generic_runtime_suspend+0x2c/0x44
> [...]
> ```
> 
> [...]

Applied, thanks!

[1/1] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
      commit: 1ca52c0983c34fca506921791202ed5bdafd5306

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
