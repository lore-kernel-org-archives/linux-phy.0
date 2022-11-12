Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB894C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NH8FGDnTAewL5uIG/Fu6V/07p3EQ7bmYVc6uh3qrsY8=; b=T66OH/lvnQgY3S
	NwXsySo4rhZyr7DIlTYiucwratiOSuViLc1GPAY3ISqjS5LX9RIeYkBHZm0+xw7vkggxW0jRzxfhB
	hYHiX09xmChAnxcr+srAv52wC6Fm0mQ+ruUjSz0xt7p4RB95wyTRgSGoRHvMNvPu4YsVfyE/N8Qgo
	j+uoS7ewNFrlUYUFk6CRRi3DXXP/Ds/AvIZ0kcIIQPdm/xICpkBqJFyPMc3XXuRnb6vFIVwdml2AI
	edqmrJ/GYiT5SU18vMnhejS7r0LfDWyeOwvFfl/kUnBw03syElvwNCC3NPRyBHWCOPvqkZkT7q+r0
	wxDbHqw6QwGxKd6URPQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjpg-003dw4-9d; Sat, 12 Nov 2022 06:17:36 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjpd-003dt7-Kw
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:17:34 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u11so6726519ljk.6
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pb0xzePKTvk1sIDJI6C17RlkL9caXSOtGAOsYmi0A4U=;
        b=P1JK8356e8F/P7MiYDq+M8azjFuPmn4c3oEkM6Xlr62VxdYhGebooK27xnGI0Q0/C0
         aW4huooHMAgUHqwCVzlCfwVycWigqVMIeRGK8f75TnHuNO0iU8O0da6zOpq6VGgaHRLD
         S0rxsnAMKVVpUkCF/7G+vsF2WHE5eIPjucdfdYFB2YyvHU/iZVFcLEXRjzTchQjiJEKR
         DK87WNrOjDGaaLFn8rSs8dHRrGQhyET+JVY43/AKG3Gh4+m/lZ8R7ct2v8iWJZhtDU2a
         VmQi9lnZbwj2FHA/bOX3bIesjZ6F0KBi5RGq315/bEaw3l4xXoRx947UJCRJrEodv/aB
         I8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pb0xzePKTvk1sIDJI6C17RlkL9caXSOtGAOsYmi0A4U=;
        b=U7sXayJXVOrLlJGL7a1CVUzCNDhcvCkEvmFyywicVuF3X7K2Qni2lqsoi4rEqIkmTe
         Yk89wz8DGhMagDvsjbNwxVyzly2l3KXrJIKm6aHTRGl/TS3yAmwPWm72wsGa5ASvXZ74
         W54M4SiUCKOOcrgROj5ZNDe+7STeEc+Iz4cL1BEt30vmRTtnduJJ/uv2QE2vcQ+W2FVm
         ChlTGnyk8uQPUhY+t9j2LpHAvBa9omsxMhdUk3f4bP/1u0OTWZV/tIK9yZ9Rtt7nvP6W
         +Z/l3aAwK5J1ITzFGVBFaH9L0UCzDMJIG4EdlrYmqVTDBsxOt8U2FyHErMVvaYEdgCho
         0UXw==
X-Gm-Message-State: ANoB5pmurbQRDEKlZGqxw32SjN/KOK1Jdq1ZgAeuqTFNgQmqZFeaTKHb
	X0A2SAd/PalSr+pn2EK4bZHgzQ==
X-Google-Smtp-Source: AA0mqf5J3YdRUe9n4OzmClvX4Xdm3vOmLCnK3EXmHB6pS6yT+quSrtsn/e9A0DVJG4BR6ODbVqmE0w==
X-Received: by 2002:a2e:9d85:0:b0:277:100c:db42 with SMTP id c5-20020a2e9d85000000b00277100cdb42mr1442858ljj.417.1668233850616;
        Fri, 11 Nov 2022 22:17:30 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u11-20020a2eb80b000000b0026dc7b59d8esm759476ljo.22.2022.11.11.22.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:17:30 -0800 (PST)
Message-ID: <c685cfc8-adec-31e6-c45a-f0e63d85cfcf@linaro.org>
Date: Sat, 12 Nov 2022 09:17:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 5/6] phy: qcom-qmp-combo: fix runtime suspend
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111084255.8963-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221733_721535_A986248A 
X-CRM114-Status: UNSURE (   9.62  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/11/2022 11:42, Johan Hovold wrote:
> Drop the confused runtime-suspend type check which effectively broke
> runtime PM if the DP child node happens to be parsed before the USB
> child node during probe (e.g. due to order of child nodes in the
> devicetree).
> 
> Instead use the new driver data USB PHY pointer to access the USB
> configuration and resources.
> 
> Fixes: ac0d239936bd ("phy: qcom-qmp: Add support for runtime PM")

I belive the Fixes tag is incorrect. One can not easily backport this 
patch on top of the original ac0d239936bd. I'd suggest to point the 
Fixes tags to the addition of phy-qcom-qmp-combo.c

> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
