Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4374FD4A5E2
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 02:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lH2CI3O4l9R8ANXcPZi3Grhhku8dqqP8cICEGno9Si0=; b=mx3lbP6leQUeF9
	Vriiht2xCCsrboN8+UB106Mg/ndgIQjXyqIsonipP5bGmilPmlJkz+L1AJ+nVPbN6M9n0aC9ifYPj
	pVjDkEtQQdRnT6U1i8RyBgfOWG/U6kW9pqfyzwHtz0QG6V+hDoJw0nRHlJ3xKwna80/gRM2XndYUm
	6cw5YMaREy9Vsl5mDLuwYqsAsGYD35gR4AoBYt9w1FnenKcUd4jYJNV0O1DFYRE+0NDQjGfq3a4Iq
	Xv842ZDRLKnMlcF0UfXqdZSAWne0nLR6Rhf4sfYFHUHyXSBhaSfSJEQr21WsgsmjHHJYkTscnFxRw
	9ZgrqZOnk6oLq2udoxqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZBY-0000000DRcK-4AyR;
	Fri, 16 Jan 2026 02:03:37 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgZBX-0000000DRc0-3rFH
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 02:03:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 125026016B;
	Fri, 16 Jan 2026 02:03:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB71AC116D0;
	Fri, 16 Jan 2026 02:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768529014;
	bh=40eJA6Ogxkz9I5QHI99S7KWohXek2h7xLollVv0h59A=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=IfJYTjhatOwkxbqsEyY4khelBjeF4AQjFUpP1GL67B5KZWW1NxAQm+YxXvyB8eS/P
	 eVLJ85133bWzIw4tuZHLeujih9NgIbFKAgpmHPKxz2kG13SsPiXFBd4MYVkyFnKG7I
	 ww4FjEsTxNuCdIuquwoHuDSjcanDfMddqOoeEqeGKqYi0QbfYYp1IvwmZrWjsn1ML0
	 +WqrWKgGbgG8BTZmXYiDMx6cD8r/yhjyrYTgXKhx3phiVvXcdZ+BuF2a/DIX8RpndZ
	 TJtOKxargwIi7tfMJmOgG/C5wGvS1oJhrvYfh0/VK4hMd3sWTNrEdJ58c7yKgsbejs
	 URs0zLjVJ3buA==
MIME-Version: 1.0
In-Reply-To: <20260114092742.13231-4-angelogioacchino.delregno@collabora.com>
References: <20260114092742.13231-1-angelogioacchino.delregno@collabora.com> <20260114092742.13231-4-angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v8 03/10] spmi: Remove unneeded goto in spmi_device_add() error path
From: Stephen Boyd <sboyd@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org, angelogioacchino.delregno@collabora.com, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, jic23@kernel.org
Date: Thu, 15 Jan 2026 20:03:32 -0600
Message-ID: <176852901295.16445.358528724346630388@lazor>
User-Agent: alot/0.11
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

Quoting AngeloGioacchino Del Regno (2026-01-14 03:27:35)
> If any error happens during device_add() just return inside of the
> conditional, as the goto path doesn't do anything else if not just
> returning.
> 
> While at it, to improve readability, also change this function to
> explicitly return 0 (for success) at the end.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
