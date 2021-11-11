Return-Path: <SRS0=Lyxf=P6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FA24C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 14:25:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DCBF161183
	for <linux-phy@archiver.kernel.org>; Thu, 11 Nov 2021 14:25:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DCBF161183
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/+IttOfB4CfOZzXB+ThhcCYB+wGkQo94ZiHTrEQ8f0=; b=pw8+HzzMCuF+hq
	/o+PMq1vC+EJguwetyKVO9oBtO4u3WjB9thfL870tVog4IIG8ag8TUT3n2KNRfDdVA3pmChtJfXGq
	jCzpOd667ahbX1gFbeKKE+UoZP/mBlGNDxZ24xraHO+I1rTtPm8+1VadWkKD5aVOtIDpM/o/JQEO5
	AdCavhrTFRcVJul7RCW3vSRWo4hL1Hqy0fbyfxe0sSkUj+OGzZEnuk32fpPJN8rM7eI1R2vVtTdgP
	egYlRUDA1Filvly+a9IG9dm44wc8LwreP2Ac89iU7QSQpI6fRP0rCJ5sTQD6Rsy/wYqeJzTDFbwvS
	APBO0XNIKoN5B/8QUYfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlB1H-00890V-Fs; Thu, 11 Nov 2021 14:25:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlB1E-008907-AM
 for linux-phy@lists.infradead.org; Thu, 11 Nov 2021 14:25:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5BB226115A;
 Thu, 11 Nov 2021 14:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1636640735;
 bh=T9fPeI5hSmvm6ah9xqcY0vA6TnA3kEu6/Uv/xwCQeO0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=POwi3UztTyLqUhTRoNXV7ZeKacSz4f+f2Y0uC2Q9IrZuE0W2r2ByRpOGZVZ89VYMY
 OlIjGvL+LNt7Kcg/ECY9/aJ3/kiL9SgMKoXBkiywTuzFfbB1Eoy13FxCeKoyz9CSIz
 923ujzaQ4wNaeaeS5wnySpcjsW2RxalRdZaxutXCNN4mzFWzrjgO2bWl+Sc8z4jdzJ
 AKqMSfN4RrE9qGJjdquQwX6p1nn4TIpAVjzhcDJMzDlolccDX3k8e+D1hiMfagu9ok
 HnlqPSh5X1nCTFyj0MH59yzjWGr58uyKOB6qd266mRjqvtrGr4bjnQnyH0pLzmXjNy
 c3Obx4DNj5JYA==
Date: Thu, 11 Nov 2021 19:55:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, pali@kernel.org
Subject: Re: [PATCH phy 0/6] Armada 3720 comphy native implementation
Message-ID: <YY0n2YdocuzVvrhy@matsya>
References: <20211028184242.22105-1-kabel@kernel.org>
 <20211110204508.429a0441@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211110204508.429a0441@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_062536_395545_D823FD74 
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 10-11-21, 20:45, Marek Beh=FAn wrote:
> Hello Kishon,
> =

> since Miquel gave his Ack for this series, I would like to ask whether
> we could get this merged for 5.16. Theoretically it could still go in.
> Or do we still need to wait for Gregory's Ack?

It is too late in the cycle for this. Phy PR was sent up to Greg
sometime back.. I will review after rc1 is out and do the needful.

Thanks
-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
