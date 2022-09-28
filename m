Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F53AC04A95
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KMVa2a2tOCwWQjsY8jgtzIOVNToM/6J5v2pfQPs800=; b=ZcVKZO0qfXlBPF
	EK25n7rcHNWr6ipqChYsvKqZqEIxCJF7tOXrc0JzjdPDWQoqLBrneE3GM2BENdfbJJ+MV8YNZBtew
	6frJd7U9tCG/N82A5yvOYe7jjx5il1yJ3eJmJKYZ1nFZIbcI69olQAYwH4FNpvpHCTM8tQNuCmPBf
	KGAgGUAjy5DkDZ7oDMzUs5A3uVIUtuTCxpudzV6PKLdUyoJy+1zV9HWdePpu0n9Y9j+PtzGB8K47e
	Z8BHq7uAYgxXQz+K+JAJPdM/KSog4XPsHJyTeX9TNIxRZ5pd+4hqvEi4A3EujuP6PcSwlGZU8E0NE
	85vv28Y6OXaAjnv1zlXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd7k-000BTl-QY; Wed, 28 Sep 2022 19:53:40 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd7i-000BTR-BZ
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:53:39 +0000
Received: by mail-lf1-x136.google.com with SMTP id o2so21903769lfc.10
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=f32iAnhK8dWq1NLxgrzfOeCHrdaY0SUtEKuKkVc8uiY=;
        b=MgeMKPqliFU8iU7Tngy73QsK856WMpPZI+CCwvGKMp4fSFD+zS/2L6DZTIk4pMDMmc
         mTqR+JJ3XfU4OxJM/Zq1yZA0qOCTBLtH0/0ES55Q+utij/wMFsXCPqhG0cYIN15MUPC7
         Qbh2Z1Caw2MR2Naf7zUzHAhYGDFJtBnkVq0sy4lMXTZGSsudz+o17lPmRq8+njqiRie2
         5OpbtsNBAj3+Cu4RUhnzLDG1fOfpfcQecTWqtq5IZt7B+iZu6a4oVMDoQDt0ubq7Gx6z
         594qMXS1SSLvhMh9Xqoble30+0QMYIXP7dXGnOuKs9G2XQfT2vMkJZ+6OJDx36K6uEVD
         d6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=f32iAnhK8dWq1NLxgrzfOeCHrdaY0SUtEKuKkVc8uiY=;
        b=nFe+a4xWy6Vgw1v4SFUvuqDkW43ob29tUmTIYjxpjlODisB83Y7zF8kFHE8Ypi+hw5
         LxDg14vO+Cf5h213NHy0uxtZ4w2jnBy0qpbNVsCnH3+D25XCw+wzEFijhmkaQT2bQKom
         yi6OgteyGr5zjxsIBJqeI9tUn85prg7f23Bdai2XBrG85KFxb/NqD610XXumgbBTOtyT
         3A2eIZDuWQGcAhnNNGkGZ2IXd7r18uHdqClz3JsTMCGXVzIVhj6kJ9V4QWcvOSmf82oI
         w9njYujXjut8fjtipioL630NpukXaFYQKr4PamGwMGHr2Zx0ABoAd1cBt4zG+rSVo0jo
         WVMg==
X-Gm-Message-State: ACrzQf3XziXESLlpckCGxpT2Yq7+Xf72sYl1Ii7Ab9GRDsvA4jU0Wemg
	+kKV1S/CQMDFZSBYXVQDxRfmKA==
X-Google-Smtp-Source: AMsMyM5PjatSKJPduwwFfr+NdKfw0CiSNUd+xTnNu8PaSOFbjlDLLr4/OhJ2ctdbm92DbiFYcr6iig==
X-Received: by 2002:a05:6512:2a92:b0:4a1:d2c9:c2d0 with SMTP id dt18-20020a0565122a9200b004a1d2c9c2d0mr7280104lfb.278.1664394816593;
        Wed, 28 Sep 2022 12:53:36 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u13-20020a05651220cd00b0049fbf5facf4sm562054lfr.75.2022.09.28.12.53.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:53:36 -0700 (PDT)
Message-ID: <8db2069b-d3d6-2cdb-4761-25789ed48618@linaro.org>
Date: Wed, 28 Sep 2022 22:53:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 11/13] phy: qcom-qmp-ufs: clean up power-down handling
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-12-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220928152822.30687-12-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_125338_445303_21D5B6EE 
X-CRM114-Status: UNSURE (   9.31  )
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

On 28/09/2022 18:28, Johan Hovold wrote:
> Always define the POWER_DOWN_CONTROL register instead of falling back to
> the v2 (and v4) offset during power on and power off.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 22 ++++++++--------------
>   1 file changed, 8 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
