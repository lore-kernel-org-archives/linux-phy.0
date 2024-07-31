Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CC77C3DA64
	for <linux-phy@archiver.kernel.org>; Wed, 31 Jul 2024 11:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHWf9y88VnxYBo2rr9EDrCVQ0e044SvkBPJ9jt4zrEM=; b=esAi0ZD8VZ0Zg0
	BaZuxi31dKJ5pZCdD3WXFxJPgB4fwBYl49xX732fG+ucOwkeLuwLNuO6G3Zb0O2L2Xy6KTfnnFdpP
	QQ+0WVo+qfk0HZz4v0mri1PoqiDXN+DWv7P3YetpQUYolffhfxUe5vdy8HJKNirqdGEuD5iPraI8E
	wMYakIo2ClOiNy2qjX/q2aRefa7LBsK6JJaBLihsEOj0862qkGmoFs7A4yBqFpVdsbwtZE64CTcV/
	s4aiSR0zF11hE+tEzAm+/14JBwonb9ZN6qe/ymC01QlCW4aFAlzqZUGBG3xf5oggMjxXpNZZrYdcu
	hA4KPxcBD+xJzrFuB9kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7PL-00000000svH-1AZo;
	Wed, 31 Jul 2024 11:22:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7PI-00000000suR-2t1O
	for linux-phy@lists.infradead.org;
	Wed, 31 Jul 2024 11:22:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 09981CE137F;
	Wed, 31 Jul 2024 11:22:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93D7EC116B1;
	Wed, 31 Jul 2024 11:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722424930;
	bh=xbgfOjLhPYfLbq78ap/CMyh0N7StP6L/XfWRjUrx004=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oiPKhL3IDqChY4nwh2IQJcdCfhEAqv+9+F7wDbqfmkIuQrwPC7qUI3LyV0+5tXRFZ
	 8im6sHvv7qklWeKR/hWo1pw1CoSsntS5FuJTmT5O2njdSEEiKfNx402DIYC8uwUKur
	 e5xYlpswlKk8Af7NhNiaraz3Ud7F0rFfcwgVQ9NGTgtQOwQZL+DOPq3f8TF7NodwMw
	 /zA8vstkE8BE9qgyviGmAABBsRDssKj6B+CaQAhItymLpgg/EEfE+ZQbSAkHTDlbb2
	 5mCSwsa4zk8HR+XxHoy+Xi6P7WZRDat8yDTMhQCvDo3KJkhTR6hZB8+C5hrQgK001U
	 tYyNTf1W5u0Nw==
Date: Wed, 31 Jul 2024 16:52:05 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: Configure all tables on port B PHY
Message-ID: <ZqoeXUFtBq-F3x1V@matsya>
References: <20240726-phy-qcom-qmp-pcie-write-all-tbls-second-port-v1-1-751b9ee01184@linaro.org>
 <ZqO17rPoitKbUa_9@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZqO17rPoitKbUa_9@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_042212_943482_CDED697C 
X-CRM114-Status: UNSURE (   5.11  )
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

On 26-07-24, 16:42, Johan Hovold wrote:
> One more nit: subject prefix should be just
> 
> 	phy: qcom-qmp-pcie:

I dont this so, phy: qcom: subdriver is better and used more widely than
this


-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
