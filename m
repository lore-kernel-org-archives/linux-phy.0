Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C0C8C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 13:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fX4sDvKr5L1N11E7xy8Kq6fU5nGseCrSxWaEaXoF49M=; b=BWQ1NJOVwzCsTD
	onHDMK0JrAY502jDmlW8kML8qZo3Bzkj6SITsuvEIZ4fIep1gGyiOF2wsScaV3+FhZgcJ0wnS7pVG
	hNmHCU8+4mN7N02oCbs4WgEinQZU1OenyoKAFfbvZO3fYCBdlNJlAE/9YM92tF+4oOXd7DreHK7YJ
	LsmsF/woozpDFT67d5Jsj0z7a9OmftW2rEBRXYlCzewk4Dq9pnYmvdwwKdDi5w6BoVOOiBeVvo5qr
	qgltsv5TnroetWqreQW4WyMvFFYM6FBJHmEXHeIWJBArLpxwVfiwwOS2pWqrUpmhA7ceEzHqwriEa
	R3W49tTiZS0C2GSoXYtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNb2a-005Fvh-N4; Fri, 25 Feb 2022 13:53:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNasO-005CLH-Lg
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 13:43:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0743B61DC2;
 Fri, 25 Feb 2022 13:43:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4CECC340E7;
 Fri, 25 Feb 2022 13:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645796595;
 bh=5b614p9D1UVWqXWuBFg3Kuiu+Ap2bQpVcg41dMminYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SqfoMe8ospRs3q5NvOfPXfv1YvueUuNOP9Cpa2lR2fhgPnqRC6rsW1yqfc7GCPstD
 /iy5qAVdPjeKQZFlsDR79m+5ergwUH+ArKamLoYp7rdV/A4oJ0G4a+4aut5rncMFRF
 N+4T03t5bZORpXICJE9fJKzGTbfvra44Py0zqt0PHitoEwZubNaaocXnHDJK7BfwOW
 tIQWKlZ898WSfmyhuFtI9MIGt87MiguiEidYCCwEyNPnrn3zNv9rz+kLmnhUrTFWZe
 o9vjIV4h05AdnipC9/Q7nIPIpohsQ08/xIfaVyZH5wWQDUYUMO93w1WgaezEu0NBWs
 B9tg7rz91pNoQ==
Date: Fri, 25 Feb 2022 19:13:10 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org
Subject: Re: [PATCH phy v4 0/5] Armada 3720 comphy native implementation
Message-ID: <Yhjc7tpcp06QKnqz@matsya>
References: <20220203214444.1508-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220203214444.1508-1-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_054316_805771_4FC48F7B 
X-CRM114-Status: UNSURE (   6.92  )
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

On 03-02-22, 22:44, Marek Beh=FAn wrote:
> Hello Vinod,
> =

> this is v4 of series converting A3720 comphy to native kernel
> implementation.
> =

> Tested on Turris MOX and ESPRESSObin (tested all supported PHY modes:
> ethernet, PCIe, USB3, SATA).

Applied all, thanks

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
