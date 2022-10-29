Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7DF6C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPpQ0qxWvOcRRVz2sbi9rOyLHfv5QrWLQv0U0GAo9S4=; b=ZdlHCSQV8xqRLz
	93h6FIFte6dsCeAUOiREDMxW/H3gTLKPE2MUp9asm/H1fznt4XOihEDedbPMzyGcEQbMILS/qukrn
	58ygPkH9BHuiFKpQssAWsGrsCvwAosDUyiBdpA1bm23QaqjJYGoGgSeQ92ynj8J0zu+mVXcg79PsZ
	e9QAbikNbgWRfwXqu6ALoI8ufKEWIgmX9tuXrdSRHB9pVkapCiANSJDYRe7wHfBskzybnGsOCSCpN
	LTY6STYv2Bq5K0TnBF3S5fxEEB8DtRmHFkkBT9U8cYNBlUyvq84y1U6xJliMFiCOWBcIIM8OsUw4d
	kwq13FJdIjo8rELHaDyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootoU-009mFG-6l; Sat, 29 Oct 2022 21:56:22 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootoR-009mDq-2T
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:56:20 +0000
Received: by mail-lf1-x12a.google.com with SMTP id o12so13651533lfq.9
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cZpw4f7LAUGvF4cSAbPz5CyMSMlcyLXGFUZk34oAqwk=;
        b=e3gHyWh79z0KE5mRU/J/MMBAmTjW8qWmUrc2++BjK4YxMq4J8S64pZFPL6Po2IR6Pp
         VT2hrOHKcu4Pn/jYo4Jotb0roRp0orFbcVErMa5hph1ZeGed2CUVzG4FyqeOtzvzCwCq
         jnpp7jrqEHpWNGcAb/jn0pG6vn2rYNOmHg/EScAm9VMAEQjRpQPdkYMO+rnnMZCbDo9r
         mBaNvA2sn9AaP9J40dXrI9YOzinvXWooAocFXvMVmLZ5lnvNwd5zE65fy5niewhS7riH
         15veiAGwLSIWaL3NnWlpBSi3CDelcpfd5OHeQsAWFC309+rAbC4mKHMVSi+YrybO8d++
         D0Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cZpw4f7LAUGvF4cSAbPz5CyMSMlcyLXGFUZk34oAqwk=;
        b=eqTn8L4JIcMZ64gri8oAPBJkdak+yEatHVpApgPcRxIAzF8cKakLAyNydswnuhFJCO
         z0FFHZFNcV7TGqfh0ImWAj9tljq1wjzcwHlQFhDqhSlst7TbeQ/5zZihj1GT9Fr4eLvA
         2CZI3VDKKKSaA+E+QhdF/Vsqk8y9rrl2M+24zxudOoGSmI6Z7xtfHJqYaIh2XY5XnNCo
         RBVzVndN0bKnXAUuW12Ex+3rL1B+ZzKKexxRv1IDVSsdjLZ9jiLov8Q/Vb89REEn/gIc
         xfj6PJbXqMdP7tFW7fEJdBIXXhJ1BhoRmu/Sqw06Jh6NisYVpCD+FSNLF46AIQPWxGGy
         MP7g==
X-Gm-Message-State: ACrzQf1ZuJa/pdVGh56o7eND9ieBbfSB8YxqKJs1Xm5zqMwDH1Q2VDV4
	71g4W2v7KXVEDzeZ8sA7uzPyqA==
X-Google-Smtp-Source: AMsMyM50A4M6LSsxWacFB2rvuxaNawYjAGDccOogtj9cOVnciCpBaYi/aDIG05dElT3EALIbP3fkTg==
X-Received: by 2002:a05:6512:2c88:b0:4a9:4051:79a1 with SMTP id dw8-20020a0565122c8800b004a9405179a1mr2131082lfb.331.1667080577306;
        Sat, 29 Oct 2022 14:56:17 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id 5-20020ac25f45000000b004a03fd4476esm443654lfz.287.2022.10.29.14.56.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:56:17 -0700 (PDT)
Message-ID: <5d846ed8-e1c3-701f-6b92-a0bd2a9670cb@linaro.org>
Date: Sun, 30 Oct 2022 00:56:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 08/15] scsi: ufs: ufs-qcom: Remove un-necessary goto
 statements
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-9-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-9-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_145619_143745_692FA497 
X-CRM114-Status: GOOD (  11.62  )
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> goto in error path is useful if the function needs to do cleanup other
> than returning the error code. But in this driver, goto statements are
> used for just returning the error code in many places. This really
> makes it hard to read the code.
> 
> So let's get rid of those goto statements and just return the error code
> directly.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/ufs/host/ufs-qcom.c | 100 +++++++++++++++---------------------
>   1 file changed, 41 insertions(+), 59 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
