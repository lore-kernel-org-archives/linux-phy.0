Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1364F606A31C
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CnnaU8ps;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NmxxlZ35
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GbwwUI8DgojyTICusPSl5ax2unvkAs9Yzhs95EMBZy0=; b=CnnaU8psBjFvKki4Pec3R/oZ86
	keGx8Q7pZBNYb2YbdqaikBSEYfuFZd5R9fHxuX8cESfqQCzCpHtHO30emAlg8TH5vHZZlU6kFgMV2
	b5LJLVsN+nYzICtp7UyR0oprHGLVtE9uo0ZXYzklu/53OnzVD9PbYTOneNmpG7UoXTFEo0Xeq85gs
	4Yzp699tZbH1fafc7RVCq+sPXs8arD24xvE2fFKkxsyAf3ZwkYpAJMdBkt2H3TAdPSeM3sE4Jasva
	L9mfvw0tTOkDrQMnhSD5B2nFoCz2N6oMxjbuBwkNRhkDai5W3lzmzPK1cKTghA9YZU6rEmkhlG4it
	JNdscf7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuPG-0000000FsnF-3Sak;
	Fri, 27 Nov 2026 11:46:22 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuPE-0000000Fsmj-165j
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:46:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8234D62A2A;
	Fri, 27 Nov 2026 11:46:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0D851F00923;
	Fri, 27 Nov 2026 11:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795779979;
	bh=hDE38ildb/m8QpK4Cv4GoDJgJeQFFRZzMq88sVk2Y0o=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=NmxxlZ35KMtuxLfQos55vwJ3klDxP8nwO1RbXInG43AKxfM2pdEw092D1xL/ojo3r
	 bHfLSa+hdZI/xdKOV8rPdsP5tDeQdwozoA5Ypxm9yynwSZuQ4jI3yTkjCxZzvffLkB
	 2aZkU7/R2KCQIqCdjl/8aVwGpUPG5L4kluFoS1nQcOVrZMlDEcm/86usGITC0OgQvw
	 bM5vbRfK6MzJJhJdy044NOAU4ImJnWExH16aPtmhG5mZoIyZtbfqnjGhgDHuysdjoM
	 pYG6VtCy/AU3a98sghYmKAWdGjsoUOp2+S/ZfQ9qGAy6yjTxKLZZbphtGKg5ADT9rK
	 7mhfBYr63tw8w==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 0/4] phy: Do not request resets by index
From: Manivannan Sadhasivam <mani@kernel.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
Date: Fri, 27 Nov 2026 17:16:12 +0530
Message-Id: <179577997271.13164.8916074772303090339.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=505; i=mani@kernel.org;
 h=from:subject:message-id; bh=HbXhu7ELoyyCBk4+Liocm9WY8LgJ6dugTmbT2N0WVjk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCW2HTIryjokwPa9ucHcX0bYVwG/PcKr6MnlPR
 Y1BTmfn6m6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawlthwAKCRBVnxHm/pHO
 9eYmB/9o8gTQd24KjP0mGMVzIYPBdX3KT+Zh9RdEodwD0OVvNk4NbWFRJIa+dKPRCcWTJal41yR
 tWzKWtNv0TEDULo7aY6jn6OEMGrZa3yA7xmyP2n9jjJF1iPWxluV83SB+hi7l/amrkfN2n+5Wjw
 XQgssnvne26RwfhnQH6HKL6N8IdOvcinN7al9uz/TI7sykiq5EprWgdYY6PGsQCq0V2Fs4mAqyx
 WiWmJ0rR9SeadFycBCH4COLnjajMfrA/oMYc5CK3zRUI4SW1ffMniu+oQoiNijVjNRsIaJKBGrH
 1pp40UJmZidx3jCUv6hUe9I7/nPMLJpkUk+C7sLR27U4e2E8
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-06 16:01 +0100, Philipp Zabel wrote:
> There is no need to request a single reset (or even the first
> of multiple resets) by index.
> 
> Replace usage of devm/of_reset_control_get(_exclusive)_by_index()
> with devm/of_reset_control_get_exclusive() so the _by_index() API,
> which is only ever called with index == 0, can be phased out.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
