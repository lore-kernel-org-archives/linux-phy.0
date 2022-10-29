Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE9DDFA3744
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vao6XLLNrwXRNWkPsH22nQi50fZIQfCZmzAubX7mrnk=; b=PhP4sAcDoRu9MD
	repf8mRy4rlgOyu4CFAhEttuc8m5+Hy4zi7qtaXN2Sw0aUDKotr9abrTHpU+rlSQI1u4avyrb0LHa
	XUsRlhkQw5GNgBtGR+h9WesvgEu+XlvluC21oj9ERpJwXt5klR7TjN7TXEhq4KMOP5vNYCsNOKvJD
	FHEtBphtpeMY0r3/FyFIaUphy3HRsSzIryMr7CgWZL3oI0Q98Etkq1v4tcqGHB3h4QBTQMFqkEB1T
	0i/d92cNayF1dGcvvXaI7kf+B9uqAiiBo6px3KEn8ffxiHERgFZrhZ/bR9Uqa29xC/Fs6okz4UdHW
	UW9Sn1w/eLxekj4fsfjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootjy-009jcs-4t; Sat, 29 Oct 2022 21:51:42 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootju-009jZa-Tr
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:51:40 +0000
Received: by mail-lj1-x234.google.com with SMTP id u11so12487378ljk.6
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gfWRj6q8gtwExuU6xtlGX9JVKuZNXAjKxYdaU4R5p6o=;
        b=Urs78GnGtsyNOWOiR2t+pEDSq2Z8yNcr3WamFfOLGkgYRvPEg9oQwLK0jyxe/FMDJo
         s0JyfD22DW/aGQGfs09wLfnoUDenoO1Eu2W4ztQgXBI3RBJh7WJrmYDDizIUbahEU/mq
         qeaHYkUvaiSQXb1NG3Rmej1NSQcVadMrv84HJfcy7sG/esimdesMcx52tFoXAmOpH7QI
         5yAoElrSH9W0xv5x+X7jID6OnEh1jZlgHwq4hfl9WrvlXO+o6EU1PuZ/GATtqFre0gFv
         4U2BGfCYDim5AWL6Xwn4obdsyRlgKfVMOPJkE4ohlaS++Y/v6pfZfMlGeDvwFsW8Y542
         ELew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gfWRj6q8gtwExuU6xtlGX9JVKuZNXAjKxYdaU4R5p6o=;
        b=cjvI14DeoNuN4Zrdwx9AoDxgo48hN/f+rxAF9kK25AYSLFjqZcvat2c0FbKpVQ+9iN
         GtL/M90DaNP25n+4aeCqIG4HKFRzglofhv3vPhWn7kcT+5JYQml7Q19C0P8uub8IRqT7
         fVVgJ+YSNolNRen5oKFphXbl4cAdIEQg5Vro8s0I/M2//h98Ai71u/3UA+4Y4wGKaZXV
         q8mUrJBpTgen/2FFXiA+KhiZ1rgv7akXJcnEqyc3NgXUVoBYfWIieFmsesO35SWBWGAm
         QQnFzvKz4c64Dbb7oh6dFhDF3ykAxxu24oP5CcAdMzEsaKguxo4URcLZONrOnet7nCSY
         dYgg==
X-Gm-Message-State: ACrzQf2BE12xi6AWbQNY4RKaEmy4U/dNAAGvy5HQwu46DKI9S8w/qBY3
	Q4o5KcLq2DVbWx5tGs0YM2LUrg==
X-Google-Smtp-Source: AMsMyM6EIQfgG7R9j2+qWL5llQjlUrUy7Cw1VNT2F+skyNf47ti2pq4NwjqNhmv6eK0NYAtNjd3lZQ==
X-Received: by 2002:a2e:a602:0:b0:26f:ce8d:30cc with SMTP id v2-20020a2ea602000000b0026fce8d30ccmr2438231ljp.310.1667080296971;
        Sat, 29 Oct 2022 14:51:36 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id m2-20020a056512358200b004acff58a951sm453375lfr.133.2022.10.29.14.51.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:51:36 -0700 (PDT)
Message-ID: <c9562004-e519-1ba4-8fff-5ca586a8fca7@linaro.org>
Date: Sun, 30 Oct 2022 00:51:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 02/15] phy: qcom-qmp-ufs: Add support for configuring PHY
 in HS Series B mode
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-3-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-3-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_145138_994222_D33A149D 
X-CRM114-Status: UNSURE (   9.96  )
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> Add separate tables_hs_b instance to allow the PHY driver to configure the
> PHY in HS Series B mode. The individual SoC configs need to supply the
> serdes register setting in tables_hs_b and the UFS driver can request the
> Series B mode by calling phy_set_mode() with mode set to PHY_MODE_UFS_HS_B.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> -- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
