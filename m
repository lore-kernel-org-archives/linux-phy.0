Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E358CC678D5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Mar 2023 12:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sKDzH/79LZwUop7kmeuR4hwBguqMmaKK/KmDZFdwWYE=; b=HxPeY5pC89rw0b
	9+4OdEu2/72nZDLrTjyP4prFo+OI/fksCEsv6ur9gDWe3ZCX6Tn7jcfILsIocUfxTsPjeJTn6owDq
	CY2BIHEkj3zAIAFaRcOplD3OCoK34x4MwRNNcKY3dIZ6lluxtC9e61OVNlHDwStW9ToYZf5ciUdDD
	KNN1y4+Jn0cPD6l9o8mua2Mkgh7wUVMoG6u0Mm41ni4RPgen1OIMUR2ppo1zfLNmqH3meJVsbe8D4
	99/OkRNq9+/ApyjNYpHWAQKiEg6KEpfuuxZCOLKAgdDNhYVkeeQQ+ZL1d/XZaKPhXpIuQmVRpxjtp
	jgiL0SU8NDmJNEudoFAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW24-0000Bd-5J; Tue, 07 Mar 2023 12:03:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZW1E-00HakT-1u; Tue, 07 Mar 2023 12:02:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZW14-00057i-ES; Tue, 07 Mar 2023 13:02:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@pengutronix.de
Subject:  Re: [PATCH 19/31] phy: rockchip: phy-rockchip-inno-csidphy: Convert to
 platform remove callback returning void
Date: Tue, 07 Mar 2023 13:02:09 +0100
Message-ID: <1850323.CQOukoFCf9@diego>
In-Reply-To: <20230307115900.2293120-20-u.kleine-koenig@pengutronix.de>
References:  <20230307115900.2293120-1-u.kleine-koenig@pengutronix.de>
 <20230307115900.2293120-20-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_040212_131872_D756B9C8 
X-CRM114-Status: GOOD (  12.45  )
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

Am Dienstag, 7. M=E4rz 2023, 12:58:48 CET schrieb Uwe Kleine-K=F6nig:
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is (mostly) ignored
> and this typically results in resource leaks. To improve here there is a
> quest to make the remove callback return void. In the first step of this
> quest all drivers are converted to .remove_new() which already returns
> void.
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
