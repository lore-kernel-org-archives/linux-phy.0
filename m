Return-Path: <SRS0=mSol=KJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53727C433B4
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:38:37 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E03061490
	for <linux-phy@archiver.kernel.org>; Fri, 14 May 2021 10:38:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1E03061490
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YE6MKeZ42t6DFF2F7zI36kUeWjq0vGzLtyRSOb2y63A=; b=goRfooH/etDK2RivV5/EtMjBC
	PlNQApoLB7FrL0XKxlG7KtFZ3haOtgarsl67+3YrYPW0nfGZqxniQ/zmbX42HPWCTUPQkvizvuN6E
	WpNPDCpzjtH05qpcUUcG8wn66Fpjwmy4huLeWqS19SQ5Peuex0VeKK9JCMcLUIhl4Jo9mGrkdajY6
	EHYVWi0Ss38o4W9EbOpVFLhZCM7M7RauBwat5Y9MwOKrgKFFqwek5vu3EeF9vmcBCH6lgnl+f7ssr
	7YcuWUa7rnuLTqWVqg5ciIEpqy49ArrFM7sOPQv6DNhGc5DBtjx4Q5i/HuJTb4uF1A3XxUOZ5cdF7
	nwV/l5Zcw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhVDH-007nG9-Js; Fri, 14 May 2021 10:38:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVDG-007nFx-TN
 for linux-phy@desiato.infradead.org; Fri, 14 May 2021 10:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=GGsoNW/7CvW+GuCkSfvNkf8qr4TkIdRcYLdOHxjPBAE=; b=qcXfjKkrsjXxU0xj2nRdE5eKyu
 Dxtw3X3isQ1tjTBicoFu3nBWiGuySu4HaH/UOwGI4Z3aMvKgH70ENEC8IRYWhen9BPhdapaXN6XR2
 UkfXuvR7sEHkLONuoWsfNT0PKC87J1Zq3VxUpcA9RFv7XkFxQNNKu2yja+PasuTRFL2fGR9iErx74
 X+sf9xIYK525Cn0r8K5wW/bpVx6CcH9ORYUf5ybF4n2ZWcFsRqWuAhn690aOt3q1ETeWd69GWmf4K
 QDZtt1L6zZspJL1syEEotxy/BsopX/KYruZj7DQp+KCyhdOuyXcRhiP7cLaeQFjzJn11tZZXqqfao
 Cg2kvpTw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhVDE-00BuB1-Fj
 for linux-phy@lists.infradead.org; Fri, 14 May 2021 10:38:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3CA8061457;
 Fri, 14 May 2021 10:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620988712;
 bh=mOpzQx5hfR8rcNY8S8uuarhuN/WjFaes5/dIxgPAEzI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=couzxGbMlwfzbJn6BDauX9QR9FI8zVAO0K1sZlCSMc+CfciCs8nlCXu+Uwoh6XuLb
 6Bjg2Vj6ogy8jA0dkG6HKWqsAYQKCvyqACvS35aTmNDtLEFY9Ihaye24dVirJFbFf/
 RLhi+HOGU6xSurdm6RkSIRXlL/+/pzFMToDzpy+SDFiRRo7QZK3c/SnkgNUXHchmWv
 VTun1RcHqaRRPmN+v9SW39tgQQXImZgiCzegmRQD1vCZw05A3xLpb3I19IWXVv5yCa
 9JRcXiPizs/Vofik9Qhxk5QBdJkCOXWmqXkNve5+jTJ5rPMft+hZztikBBl3vr/9n/
 CSZFaZ7WAusWw==
Date: Fri, 14 May 2021 16:08:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Clark <robdclark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 sbillaka@codeaurora.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: Introduce new eDP PHY driver
Message-ID: <YJ5TJFD/RFEQc5z+@vkoul-mobl.Dlink>
References: <20210511041930.592483-1-bjorn.andersson@linaro.org>
 <20210511041930.592483-2-bjorn.andersson@linaro.org>
 <CAE-0n50qWuny_1oYEMSZ+cfmCvnumk_UTPxUvZ-3wWdgOCioNA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAE-0n50qWuny_1oYEMSZ+cfmCvnumk_UTPxUvZ-3wWdgOCioNA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_033832_564541_270AC065 
X-CRM114-Status: GOOD (  13.46  )
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

On 10-05-21, 22:22, Stephen Boyd wrote:
> Quoting Bjorn Andersson (2021-05-10 21:19:30)
> > Many recent Qualcomm platforms comes with native DP and eDP support.
> > This consists of a controller int he MDSS and a QMP-like PHY.
> >
> > While similar to the well known QMP block, the eDP PHY only has TX lanes
> > and the programming sequences are slightly different. Rather than
> > continuing the trend of parameterize the QMP driver to pieces, this
> > introduces the support as a new driver.
> 
> Thank you for not slamming it into the same mega driver.
> 
> >
> > The registration of link and pixel clocks are borrowed from the QMP
> > driver. The non-DP link frequencies are omitted for now.
> 
> Can we make some library code for "DP" stuff in qmp that the two can
> call to share the logic?

I think we should split QMP into a library of common code which the
respective function driver DP, UFS, USB QMP drivers (re)use across...

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
