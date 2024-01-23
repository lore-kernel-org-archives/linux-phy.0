Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 856E8C47DDB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jan 2024 16:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmbY0F2ZZTnEIuqRfrucaMGN5cWo59E7WPN79U3qJQg=; b=LOxBq6/1xEqiaj
	dIxRc+TpaqNOMidKHmB2WueXjswMzRUTgc5vUm6/7n+qHUrlbI2ZVU5tc4UtlduP0W6B/of07QYtt
	GbJc2/IMwfYHfMGa+tPiWZq1h4mK0X1ZBhGdDGbdRoG2c84ka/qEb6Wxu7aBxI45If2Ci/J8d+RHt
	nqIScSN3HpDPsMIst/83rN/obDmFCNx3RGa43JOhLB/2PvXLhkLxK3kACuIKfLdA1MhaJYhoibPBo
	oEZ5m5+Q41TLUcIDs0na87SNpT3l5jcCK2wLNsn8zQHISYILQTpQg3dm3wTq8JzFxz7zQvtC9uFng
	orIMjUkKT4incBTtdnHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJop-00HJeE-0L;
	Tue, 23 Jan 2024 16:40:11 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSJom-00HJcI-35
	for linux-phy@lists.infradead.org;
	Tue, 23 Jan 2024 16:40:10 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-600273605a9so16508737b3.1
        for <linux-phy@lists.infradead.org>; Tue, 23 Jan 2024 08:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706028006; x=1706632806; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kYAfHM7R7rnCSNUY4kqAV2WMKXhdQppzOOG2/3x8MBw=;
        b=r5kVrypTK2j1OMljLGHyP1RKtLThJSxmJFj9cNJ2KH+tsgh4fmyi6K5HXWZDQn3Bqp
         7j89heyz7pJRO+pZshoT1wBA5QywkE9wgHlb5FRv+6j/nWhdsT5JalDi1vOTKwo8n065
         E6DxOmK9t/EX7PGcJ+KzuKPLEy4KvVhAeu+IRkAgcyyygwqLAtDzdx+LvU4bXAF9xIYa
         8yyX5HSP6Zu0AObXMOjmmClfEi3h4cXkAVweDL8gxY7TXIhita9k+E0bxwqqSKlu/MeY
         GpACft7jv/HyNSLdDv2mEnSu/bOMJ+mh1rh9V4JPfnNqoXNf5oxE3JzJzNyMdoZnZC2e
         Yw0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706028006; x=1706632806;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kYAfHM7R7rnCSNUY4kqAV2WMKXhdQppzOOG2/3x8MBw=;
        b=DnJbLM4dENSz92Zh9mSr7AcT0JZQcw2JuksgffEyCxgwFZ0ehtaKcPJLc/mmVXE7Rb
         0Nc9Vf2KJTDUjIbXaE00+nKPVa2SMPwsvUOnk7sUGRRiUbdhvlCxh431WEgNMijUlVn/
         8D4NHBmyHbtj3fkduxvvhDZ2Bq2qaMHW+RS2LythbeVA5RDF6uCIrNa6SVVPuxhM8rLj
         X9/lrt51MtUkCLzMnjhrMa98CilqvaJpob2QsaBfexPgZnYgNo7P9FtnannJtZOYh2u6
         vy4UnVxfKSainOj5xO/jApqdrmyXQuyUEGAHt14jrnuAfzfoTcbsk4wyCl6pG5Y8vTtu
         dpXQ==
X-Gm-Message-State: AOJu0YwKCyr04daGCv0KL8bhApDjpbRJ/Bz4j1VuIFCxXRO+QlzSClRD
	PBd7T/q+loJBujXmON84XR57p4TEhltE0ciGBnpFpIEQ5PTid/HpYlk0xyN95YkWXggwL6qDa55
	J/FXDpOkQa2TJ9dKUgxTrmLfrb2Z8OBNJK4Ok/A==
X-Google-Smtp-Source: AGHT+IGC6FCCx/JUl5ZF8p8TNRTwdcBW/FXg69irqngvfoaQBTfEyAlrxYiVawNtHkSVTMOs3vcjUvi8P3kIalAiNeE=
X-Received: by 2002:a0d:ca95:0:b0:5ff:e530:eeaf with SMTP id
 m143-20020a0dca95000000b005ffe530eeafmr3085307ywd.2.1706028005745; Tue, 23
 Jan 2024 08:40:05 -0800 (PST)
MIME-Version: 1.0
References: <1706026160-17520-1-git-send-email-mantas@8devices.com> <1706026160-17520-3-git-send-email-mantas@8devices.com>
In-Reply-To: <1706026160-17520-3-git-send-email-mantas@8devices.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Jan 2024 18:39:54 +0200
Message-ID: <CAA8EJpqLYmpAt5D6g01Urg21ie7PpHkj3DRuxkqm6Epanzuksw@mail.gmail.com>
Subject: Re: [PATCH 2/2] phy: qcom-qmp-usb: fix serdes init sequence for IPQ6018
To: Mantas Pucka <mantas@8devices.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Baruch Siach <baruch@tkos.co.il>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_084008_999183_42930198 
X-CRM114-Status: UNSURE (   9.06  )
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

On Tue, 23 Jan 2024 at 18:10, Mantas Pucka <mantas@8devices.com> wrote:
>
> Commit 23fd679249df ("phy: qcom-qmp: add USB3 PHY support for IPQ6018")
> noted that IPQ6018 init is identical to IPQ8074. Yet downstream uses
> separate serdes init sequence for IPQ6018. Since already existing IPQ9574
> serdes init sequence is identical, just reuse it and fix failing USB3 mode
> in IPQ6018.
>
> Fixes: 23fd679249df ("phy: qcom-qmp: add USB3 PHY support for IPQ6018")
> Signed-off-by: Mantas Pucka <mantas@8devices.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 +++++++++++++++++++-
>  1 file changed, 19 insertions(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
