Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DA9CC77B7E
	for <linux-phy@archiver.kernel.org>; Tue,  2 May 2023 08:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elA7T6T956AB6yCKMxBOWWfX6YGZVHgVf7ZP6rLj0M0=; b=z7RC2NeDZEmCwN
	liINMtSynrMfMhY6h4iXS+oeqiDOsMi9yeNx3tCy5PDA6ceFqmn1ZwQ/GjKiUy+gjimvbsFgtCPby
	nsJcXQYrCHSNLYFuMv3thnMKFlKENfeRsA8Jbpwbhue+4od9JN4kP3HrRTN86ubb2SJ4Jr1h/CfH7
	E2wHp+N9psBJftwRUP2S5vOZwykQFkPahStlgj8foQJf5loKMTm5pm43PxLixj8uAA/i3QDOvVvga
	B5hclnHcpcMfYg38HgMVrteh9JOTQzoD35Bjvk2saatswJT4F6vKmQkx0Xf4mfioDlESbixrK2aIM
	pT31EL7T+OO3bvyr8Arw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlPf-000dbX-0q;
	Tue, 02 May 2023 08:31:07 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlPa-000daI-2x
	for linux-phy@lists.infradead.org;
	Tue, 02 May 2023 08:31:05 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-b9e6ec482b3so482918276.3
        for <linux-phy@lists.infradead.org>; Tue, 02 May 2023 01:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683016258; x=1685608258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=M5H+/Rm5qbtJ4dIdqMTXfShqYluqFFrGEQJ+3vG1k/0=;
        b=k0ybPB1xZnsRzjE9uxsaLa3Y8YJel2TI9KYrfYu3ljKNEolwUFYqm+THgsx/O+pWyC
         AQIEW9g78m/azzRz2AmN6kzRHwRDsf0N7mkcNscjJ29WanD1LxM3ss0wl51bB2TWgF+8
         6XDkS4c9Z5WAonza3c1cCsTREmRa+S1rWHZHoxNNVHAbGUAymA5Jnqf7eE0Meq1haR5s
         2JNPpcw0LjhserbAuCiZS7in0dlqg3KT/hZYEeeEVNsro3TOTdXhxz1rvgB18XfRMlmy
         bSB8894esk49EnDBGXVxodqZDndgop+LzB9Vtecdg9tSfuXL3tcnQG1S6qz3Bs4a+4hh
         OZgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683016258; x=1685608258;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M5H+/Rm5qbtJ4dIdqMTXfShqYluqFFrGEQJ+3vG1k/0=;
        b=f5XWIW1ZO28bDPcLrxuO0Sp4eJm+wTKvAex1SPbmRfJ8BJ3BQw3l1E4Ui3/Gkrq4L3
         iqGkyr5AZcz684KcaWLcw0gFXUGtNT4wbBRPRw2aT+6w9DHE1X7Eko9JubDCYkE+8kR5
         iZDxWc6KNw1b96dLHh+Np5N9MwxH8M8/rHff+jez5jmMeKOH8JopZgOZBKTK/6i0UD4V
         Tng7poxUG48o3BUjyjS8j8OseCwmTK7p+uvUCwwlkIsd7vkdtTeBKRKcsQICPGgKG1HJ
         kONpN1jCpuEC9eTj7PD7kjEc081H4GBBiI1d9+DMmfKg784t+NSkKnBSSt1zBsTZGL/M
         PKPA==
X-Gm-Message-State: AC+VfDy5PhMkmNpbI8nBgdj7YU+oxCIVw3sDobFcOHcnbgDtiwvY61W/
	3+T4sc/iWJrWOUZ2a2XlEfbme3ChY0LMsyogAiXD9w==
X-Google-Smtp-Source: ACHHUZ7Ytf30ch8se73LYe26Pqq1R7v3NpXReeiPnVBOxwOSUZAWV2rS0dN+5NiOu4gcx3/Kv7BabsWJ19Ut2dMnBSM=
X-Received: by 2002:a81:d354:0:b0:541:694a:4c69 with SMTP id
 d20-20020a81d354000000b00541694a4c69mr17244580ywl.52.1683016258565; Tue, 02
 May 2023 01:30:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org> <20230502053534.1240553-3-bhupesh.sharma@linaro.org>
In-Reply-To: <20230502053534.1240553-3-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 2 May 2023 11:30:47 +0300
Message-ID: <CAA8EJpqgmgNTHrXMyejk3-LV7wKo1tHSdixE+xJMhq3chy+B_Q@mail.gmail.com>
Subject: Re: [PATCH v10 2/4] phy: qcom-qmp-usb: add support for updated
 qcm2290 / sm6115 binding
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, agross@kernel.org, 
	linux-kernel@vger.kernel.org, andersson@kernel.org, bhupesh.linux@gmail.com, 
	krzysztof.kozlowski@linaro.org, robh+dt@kernel.org, konrad.dybcio@linaro.org, 
	kishon@kernel.org, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_013103_078116_EE832DE1 
X-CRM114-Status: GOOD (  11.64  )
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

On Tue, 2 May 2023 at 08:35, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> Add support for the new qcm2290 / sm6115 binding.
>
> The USB QMP phy on these devices supports 2 lanes. Note that the
> binding now does not describe every register subregion and instead
> the driver holds the corresponding offsets.
>
> While at it also include support for PCS_MISC region which was left
> out earlier.
>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
