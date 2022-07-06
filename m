Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5C60C433EF
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 03:33:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Message-ID:Date:From:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Fe7AMKhIChpjjtQxZ0IwB2lo+UffmsWPggodfTTvUSM=; b=yJc
	+yvBV1jhwEzsasOr0F30OgHYHcKlTNU1r29FtwPhMttEMr5zyoTOH9/XAiS87KPo326oBBTLoG/Ei
	AWpFaLxoNAkJUnufgi/ZLrpVR9Ek8ou6483jsSfB76l9GlSOT4/2y7XulqwD0nx269hE20vvYi3Al
	JL3hAGuJeWfZLuYQzAwi2+bAwAI/W+gdqC0w8D+wGO7GmP+esm5WoVuo9NOiXoPVSlK7EmClVxmmP
	11OT2skfibtBLlnghBhh9sdYEjr5UX3wntTw4DNoJIfMJqGl9SFvN/RjqLnoYtD9MZQhmw8/wb/gm
	AojIcm1OaRgoAuW65qizfI7DdiO5RQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8vmr-005W1i-0r; Wed, 06 Jul 2022 03:33:13 +0000
Received: from wfbtwxkt.outbound-mail.sendgrid.net ([159.183.154.23])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8vmo-005W0q-Fp
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 03:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net;
	h=content-type:mime-version:content-transfer-encoding:
	content-description:subject:from:reply-to:to;
	s=smtpapi; bh=aF6v8R/IdDeURvnoRhSGAN19au9dZuKgUwtbVgG+7iw=;
	b=Wu/Ul+KdKTG2JYKLUq3/TMLHMzijckTZUqJTsebnRwzk+fbdTeFsutWexFJkZ2wwdHQS
	avFJtX2MGpLBWMNShO32UGHc94Fu7B1Cyd9H8y+yCY7NqMQbT/gEj314eXBoYZnCqsK6Uy
	4JKf4WDOYsQsGp3IIJLMd/IunmBxjsKsU=
Received: by filterdrecv-67cff4cd6-4sd4g with SMTP id filterdrecv-67cff4cd6-4sd4g-1-62C50131-36
        2022-07-06 03:27:46.046496903 +0000 UTC m=+2368811.317027919
Received: from [195.133.18.45] (unknown)
	by geopod-ismtpd-5-0 (SG)
	with ESMTP id o4nPq9aRQgmWkjwO-CdRIQ
	for <linux-phy@lists.infradead.org>;
	Wed, 06 Jul 2022 03:27:45.874 +0000 (UTC)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Approved Expression of Interest (AEOI) 06-07-2022
From: Lusail Investment <bashi.maheshika@ibm-seimless.com>
Date: Wed, 06 Jul 2022 03:27:46 +0000 (UTC)
Message-ID: <o4nPq9aRQgmWkjwO-CdRIQ@geopod-ismtpd-5-0>
X-SG-EID:  =?us-ascii?Q?7ktShbfDb=2FLAf1uPGkRHFkYPn5Q40H9kJgDmVQ8oTVr6Z6W+2JQk9C1PxDvgf0?=
 =?us-ascii?Q?abw51nMQdha3MYYhhGxp3QNYpw81EHYT7kImkgT?=
 =?us-ascii?Q?+1ZMu1OnFko+Z+mb9qWiXdW+UP9vBl7IUIWM3fi?=
 =?us-ascii?Q?eEz5b3otdIZvnNe2bxpHawJ1DJsXv431yj72nFY?=
 =?us-ascii?Q?Ji6iAM1qGSk5KF5SyDilnvQ5cI8lIOu+J0VQyKm?=
 =?us-ascii?Q?6QRNIIw30GBebY6B5p2zebb61ZAfeYDM0rx9AjB?=
 =?us-ascii?Q?q63XcGcKoqTo+Or1PCUoYzBSaciOpW4c0KWO+zJ?= =?us-ascii?Q?0Bk=3D?=
To: linux-phy@lists.infradead.org
X-Entity-ID: wkmCBC+LVvGL7Ar3aY6ofg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_203310_603374_C53A5713 
X-CRM114-Status: UNSURE (  -0.25  )
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
Reply-To: kazem.el-mazhar@lusailinvestmentfunds.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

To/Attn: linux-phy@lists.infradead.org 
Date: 06.07.2022

Subject: Approved Expression of Interest (AEOI) 06-07-2022

With your permission, I will like to tender this letter of expression of interest bordering on my Board of investors' intent to invest into your company's investment project made known to us through our brokerage newsletter.

My Board of Investors have a paid up capital in excess of 10 Figures and is rated A1 by Moody's Investor Services

Would be delighted to schedule for a call to discuss in details at your convenience.  

Best Regards.
Kazem CFO Lusail Investment

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
