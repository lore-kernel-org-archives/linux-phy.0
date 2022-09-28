Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94934C04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 17:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbNDRkl1QJ3vh0BfGaiGno28k/KxkF7ljuTEX2deACM=; b=Hay9IV04FqZXh1
	ocGVuVQrtv/BdJgqkYBh4vexivYp1ybygLhlGDQKDrJACinrLGHJHi95rHseLS5yQYiJfKcy+zxND
	yDqkGVO4qA/aAbOC9xoHpScDrTCW5gALy0hxyIt3Bk+x/kqo50mMFIsJom/otE2rSYrv3rGm2yqa/
	FOGiNi7GXqICiJ4JcWWZq/T4YGF8x+Ugtvc53aITPfkWwXTGrSoFffWNjMgcFDpFgC52USTtJoZf2
	M52605bd6hrvMpXIkRWNX+ggKi++QKqRzjMs7na/7amNAS4xRgWYrcR0V7OW5xtoyofy8fXbYQwCI
	RfYc0NhY0wh11nngGpcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odapS-00HMrK-1s; Wed, 28 Sep 2022 17:26:38 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odapF-00HMmQ-2i
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 17:26:26 +0000
Received: by mail-lf1-x134.google.com with SMTP id s6so21379551lfo.7
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 10:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:from:to:cc:subject
         :date;
        bh=vdzPIwg7C3PKLnfi0wdXAYz0fhgIghBeZanBr7yxrY4=;
        b=Jam549HMJC/Vz7pu5ChRmT5oSoI6/N0XhYy0mQLM/dqrkUVdL6fnaM7NR6qHVjUUgb
         74VhpNqQJ9zFlLNfJsRFIfD34wyqjskcbdu+cg/o73KImxXq8NeDl3NrZsuPvF56msRs
         STg/Rbty+f3ORXIFRzXLQaumRivNxLCdjYQSxErKhsvY9kkSNhuLzm/Of+134EWJkRFx
         Fg/xvL8xS8tCJGLAFEo8bkl7j9x+djwBHAANxlIXf4LUFyFXKTgH0jEZ6qkFvZvFd/uP
         /3aqrFKO3S2j7k5wvzAXAanDHwNC4SDwWBnNSfpsh22zl9E6jV7rBiZtUkRCApGM0cTu
         geIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date;
        bh=vdzPIwg7C3PKLnfi0wdXAYz0fhgIghBeZanBr7yxrY4=;
        b=HgUmPEvhD+0F6Vx4xZlghRtl8WS2n9fYY0bNEZhaf6BeZtcnbaLhbS4oN831b5J2Tk
         euddCc8GtWMiA4GSig/rsBvUUdFSrEKrx7t9IMXaNNtBx2Ftx8DIC5bK6Clo86BBP6Sa
         Y6/iBjkpmo/Lwum7slAqUdw34R4tawkDHWvBS6fpHvKIz51zpBvbY/Vf8bb1l0/LkaBN
         8eRYbIjblwiL+PBVCw+pZZYQDyp1lfbt0daTUrdC5un6MTUwNoV3A+AX+XLwvfwjEU/N
         tFgWDwbP+BmWQ/8BFv4GPJCkJ15Go7nDAgoS9SC7RIqPQmSwEPu/vDVETICJCFIP+ggg
         pZyg==
X-Gm-Message-State: ACrzQf1F7aJma7dSqrMeoxjXPkUIlGpU97gUwn+hibHhz+/grxrTbdjW
	FmOAUvgG30U1Lp6GkfwV43sPIw==
X-Google-Smtp-Source: AMsMyM5xaNiPkfM7hlZSxiQtNaOcfzJRqrNabhOO3y0wIWWqI5mu+EqnaUjtgRH6j+ZJyqZmk7ypBQ==
X-Received: by 2002:a05:6512:22ce:b0:497:499e:c966 with SMTP id g14-20020a05651222ce00b00497499ec966mr13242274lfu.402.1664385983807;
        Wed, 28 Sep 2022 10:26:23 -0700 (PDT)
Received: from [127.0.0.1] ([94.25.229.4])
        by smtp.gmail.com with ESMTPSA id f1-20020a056512360100b00492dbf809e8sm526869lfs.118.2022.09.28.10.26.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2022 10:26:23 -0700 (PDT)
Date: Wed, 28 Sep 2022 20:26:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
CC: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/13] phy: qcom-qmp: fix obsolete lane comments
User-Agent: K-9 Mail for Android
In-Reply-To: <20220928152822.30687-2-johan+linaro@kernel.org>
References: <20220928152822.30687-1-johan+linaro@kernel.org> <20220928152822.30687-2-johan+linaro@kernel.org>
Message-ID: <829EB2BC-4DFF-48FB-BB16-944D6597C601@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_102625_160855_43FA5AFA 
X-CRM114-Status: UNSURE (   8.22  )
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



On 28 September 2022 18:28:10 GMT+03:00, Johan Hovold <johan+linaro@kernel.org> wrote:
>All QMP drivers but the MSM8996 and combo ones handle exactly one PHY
>and the corresponding memory resources are not per-lane, but per PHY.
>
>Update the obsolete comments.
>
>Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>---
> drivers/phy/qualcomm/phy-qcom-qmp-combo.c        | 2 +-
> drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 +-
> drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 +-
> drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 +-
> drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 +-
> 5 files changed, 5 insertions(+), 5 deletions(-)
>

Reviewed-by: Dmitry Baryshkov<dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
