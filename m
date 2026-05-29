Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42A29CD6E43
	for <linux-phy@archiver.kernel.org>; Fri, 29 May 2026 01:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0iiEUa9fTSOPRyWtwLv7vBdBihZG0m+RHLJKrPVg3c=; b=eA4AvgGls5mRjk
	ipsWlsAVQpVGrbxRkunhDZYFYKhn1gC3HooEJE/zhW2uADnxFEcF2oCNhFH21nQn4MGgQhNboKScO
	DM6rlaTF6KfZmgEctQJYR2gdDKTd6EndLSzsesdlB1KOrj4MKD+YAWxFfL15IAACsZ87gXBtbG59a
	POWngMKxCR2AeQ1PijLgANfVudqQ6QzQRgSKs8vxBvM/gr0jZ1ZvJmK4dmzmS9ZXn8onEnsYhcu9O
	e2/ztimun43NK37ZvNO1iYiLRTXx+KZYHQhWLuzI7iMPM+A8Jl1uNFRAwF8We3GVUpvA7dA9Q+MmT
	84lL3A+cT3UsTdPfC60w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSmG9-00000006cem-1x7W;
	Fri, 29 May 2026 01:43:37 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSmG8-00000006cef-02nr
	for linux-phy@lists.infradead.org;
	Fri, 29 May 2026 01:43:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 3588260213;
	Fri, 29 May 2026 01:43:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D00C61F000E9;
	Fri, 29 May 2026 01:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780019014;
	bh=e9PK2+v56bWHft/pJdttvPO2BAiTBE3dQNzkNxA8Mzw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date;
	b=hKptxWx2tQQZtStuLM0FIi1dSu3BqRbU1gQSwf4I+aFwL+iMlDMMITZPJtoC8HdN2
	 sgNPbt8XOyJrGqodW58H2UIKnufLtr+wo7EHpH7h9yT8/EIe5CnDONi9r1blRiAq0m
	 5oZN86fvEMJdRY9iZztkzoiwqpjB7UBlxAeE4Si6VX61f2yKzi6nKlt89xNx/LCJIg
	 npl+qaBgMUgSUzmb4Ef/v2b895my92jcqjRHszbXoexlIYimD7mgW5w5ngHlJar9x4
	 cgocL7hsIcDV+h9E2H7TsWzNN2MpVvhygFISzYbXHJRcPxgrhJzqJl4yNHZK/UlVIw
	 mlKoCXikGs3Mg==
MIME-Version: 1.0
In-Reply-To: <07739437-4720-4a15-87cc-40f6f92f3759@kernel.org>
References: <20260511100805.121432-1-angelogioacchino.delregno@collabora.com> <20260511141743.251a47e4@jic23-huawei> <07739437-4720-4a15-87cc-40f6f92f3759@kernel.org>
Subject: Re: [PATCH RESEND v8 00/10] SPMI: Implement sub-devices and migrate drivers
From: Stephen Boyd <sboyd@kernel.org>
Cc: dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org, srini@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, sre@kernel.org, krzk@kernel.org, dmitry.baryshkov@oss.qualcomm.com, quic_wcheng@quicinc.com, melody.olvera@oss.qualcomm.com, quic_nsekar@quicinc.com, ivo.ivanov.ivanov1@gmail.com, abelvesa@kernel.org, luca.weiss@fairphone.com, konrad.dybcio@oss.qualcomm.com, mitltlatltl@gmail.com, krishna.kurapati@oss.qualcomm.com, linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, kernel@collabora.com
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@kernel.org>, Jonathan Cameron <jic23@kernel.org>
Date: Thu, 28 May 2026 18:43:33 -0700
Message-ID: <178001901320.7182.15120759905441640016@lazor>
User-Agent: alot/0.12
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

Quoting AngeloGioacchino Del Regno (2026-05-20 04:51:26)
> On 5/11/26 15:17, Jonathan Cameron wrote:
> > On Mon, 11 May 2026 12:07:55 +0200
> > AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com> wrote:
> > 
> > Hi Angelo,
> > 
> > Why the resend?  If marking a series with that I expect to see it
> > called out as first thing in the cover letter.
> > 
> 
> Right, forgot to mention why.
> 
> The v8 was sent on January 2026, I pinged maintainers to pick it on
> March 2026, even if this was fully reviewed by multiple people nobody
> picked anything here.
> 
> ....and I've resent it because pinging multiple times didn't work, and
> because the series got old all that much. :-)
> 

I take it you want me to apply these patches to the spmi tree? Can you
respond to the Sashiko bot comments about why it's wrong or fix issues
it found?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
