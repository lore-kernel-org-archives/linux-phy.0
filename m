Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC418C38142
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 10:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8oGtaCMSGjcCq5H1brFtcyYIHtcgGkdUsgHFTrGYDY=; b=ucWhTV1GT89+8V
	2+Dvvbh9vpYGdC1onw5H/rodUjhvuGHb3rKNg2wtOZTv5+/wGynF5H6k+NiQDQvLK50r9817OjniA
	GSl2ZXXAH6CY4h0UacG8H6AMSs0hUE8I6/6Go1iIvs77+c8UjrF7rNlR76N54CE6vjV/7KrSatx5S
	rlvW5EJIZSXo3WUv+lq8VQL3tXrBHu5mcakg6dWsYRiaH9yHKqbOMpVZSsICco8BSKvW4e3oYfA3x
	FmHIjuD1yXanlr5nG6HZNBy9MNXtTVNXFUtGR3yTr0jZfKHYyviR3QSmBW0yUyJl4lQx69DR8WDte
	AxExOqoMhQ7dOO/mo3EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuAx-00GrYX-2y; Mon, 23 Jan 2023 10:35:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJuAt-00GrXM-J5
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 10:35:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D000BB80CC3;
	Mon, 23 Jan 2023 10:35:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75F17C433D2;
	Mon, 23 Jan 2023 10:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674470136;
	bh=cwgjiZMHeWlRTUJMa1Sto/LlD87GW58nOIMtlWblOws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dVWOVXpxFMYdsKAMVDj2Nt7LFfqN1qd4uABeSArl2kw5YRXNKpzb3MMFZKplSPlqA
	 VpYQVrFyFWqjbj9JT6aTTmO4m+1e8zvJwlCZy0F6d0WaeTDxE7FERRHK5kB1ReeOcz
	 3hQe8Fya2d3/Tj4PuUR2rPC+iOFPigExWkQ366YAdmMZ4DZ8nH7KfNSaMXvMNB5Cvw
	 0w8GBhCPnDPInyOwh3k6zp5B/u6Fqx/cW/rZdM8J2Dq3EuNkCRmkQkO549xb8JOCwb
	 hG+7tqZrLG2vVFBparVGXPU19ICkwlz54vxJz5fjn62Fq6uFbC8+TsRgiY4JkTnuDC
	 MGff9eEy2Jk+g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJuAn-0000oI-65; Mon, 23 Jan 2023 11:35:33 +0100
Date: Mon, 23 Jan 2023 11:35:33 +0100
From: Johan Hovold <johan@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
	linux-kernel@vger.kernel.org, patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom-qmp: Introduce Kconfig symbols for discrete
 drivers
Message-ID: <Y85i9aZm7F7poXda@hovoldconsulting.com>
References: <20230114000910.1256462-1-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230114000910.1256462-1-swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_023539_826602_49B7627D 
X-CRM114-Status: GOOD (  14.99  )
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

On Fri, Jan 13, 2023 at 04:09:10PM -0800, Stephen Boyd wrote:
> Introduce a config option for each QMP PHY driver now that the QMP PHY
> mega-driver has been split up into different modules. This allows kernel
> configurators to limit the binary size of the kernel by only compiling
> in the QMP PHY driver that they need, or to split the module up into one
> per PHY driver instead of one module for all the QMP PHY drivers.

Nit: The drivers are already built as separate modules even if they can
currently only be enabled together.

> Leave the old config QCOM_QMP in place and make it into a menuconfig so
> that 'make olddefconfig' continues to work. Furthermore, set the default
> of the new Kconfig symbols to be QCOM_QMP so that the transition is
> smooth.

Perhaps this should go eventually.
 
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Looks good otherwise:

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
