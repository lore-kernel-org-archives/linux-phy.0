Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5FC5C25B6B
	for <linux-phy@archiver.kernel.org>; Thu, 26 Oct 2023 01:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spA9kSK+/910MIT+pDFBgCpJpC/5B9saX9WkThPdubA=; b=wcvgBtMbCOaxV3
	Vd/akeOBsInccrRbFS15hOUxSxVKAarZlltBTX4dees4zjnoW+p1AZQwKODa0sHWhRJAdCfUaoZdU
	3h7WmMiswcQVvcxT0QyMrhVOe8Rz2r4i7VswVDTs/X56qDmlmJXitgLLlbx8HKofqqO8PgQqJGg5s
	GWgHv424LvAZ9qCp1zEimAGjwRd1pzWkKxLIXuBeQPV5QN0YTgwHKXZgjHzWJyYbwUARH/pyTfgtS
	RkkEsOj6Sytd00vxe3B/OIuDu+TOjaSjy88d+z4HF/EZbjt2ZwnT3QIFsLWJa3LlqZXHQXVl9yphl
	fk//0qHLo/Pam94poHfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvpW7-00DTIB-16;
	Thu, 26 Oct 2023 01:50:35 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvpW5-00DTHg-0H
	for linux-phy@lists.infradead.org;
	Thu, 26 Oct 2023 01:50:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 852C6B833DC;
	Thu, 26 Oct 2023 01:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EC20C433C8;
	Thu, 26 Oct 2023 01:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698285030;
	bh=ai96/RiTaKCJnWhue29McKV3xTzXFBhmH0+o2CsH4Io=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qVC63HLI7G9VZt/ONftTpoPf5QaFBoC0f8ud9OHi4c857yXk/aZ7c6nAIbbA6k+Nf
	 WyYbj93LT14uWYrq/rnV8inw+lnPR02fzSN7j0DyNUjwgq5wmZkj3eSWQArG9v07sO
	 kYXrvtVWfSslQjClVYtGR09R4v1hjMlqQz+RaX1v/srB78B+einke9R/X7F+tVyfsT
	 sWJUN9vYWwIvfDDqFVXSOZAZa0gY8u8o4YEhPXNlaCOM+y3PZxqs95r04qa+Ry7pDD
	 OKTaGM7uY/nlZAmhMgAUyazeutDQ9VoGg8WmucniDVh0DJi3BP+fXAAXitwiL8RE+9
	 QeffXn+7Xrmvg==
Date: Wed, 25 Oct 2023 18:54:47 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, freedreno@lists.freedesktop.org
Subject: Re: [PATCH v5 5/6] soc: qcom: pmic-glink: switch to
 DRM_AUX_HPD_BRIDGE
Message-ID: <owpnaizakfjqyzcxcmdfoi3kdjopzsq2iwufzudi3lqi66psru@zhr3m5i4t3b6>
References: <20231025223027.943563-1-dmitry.baryshkov@linaro.org>
 <20231025223027.943563-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231025223027.943563-6-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_185033_283844_1F7DBF64 
X-CRM114-Status: UNSURE (   7.24  )
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

On Thu, Oct 26, 2023 at 01:28:06AM +0300, Dmitry Baryshkov wrote:
> Use the freshly defined DRM_AUX_HPD_BRIDGE instead of open-coding the
> same functionality for the DRM bridge chain termination.
> 

Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Acked-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
