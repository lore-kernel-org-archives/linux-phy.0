Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 232DDC4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 20:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNtp9+SXnY57sV4Qm9eQDLwr9VDMxI0goRKuFJl1QOA=; b=SrKczItVQAR9XO
	Hpu0mtrYeN4ERDxNyJFOKLYgYtI0T7AoxzF4NLyOPPFsSfOzTBb8rv9HlWiKY/INsJ12QgIlC8t2x
	6pDyiAUrCfKLTPZMcF+4A22c8UB6OHgPM+cEuaApYcwbCu7dFxANN0+4ASDwrxHMsitb+3LMaVYoz
	hLLQrjeb8xscfkIIesd/dCkSQ9Voxc4jCPIW7H/AnM4KzW8LTZM4FbhCYOMpMkevkmnSzgwveX5GA
	UIWmeO2+ubsO9cvnDrXcX+tWE0x4JRZPVCUBzYw5K000F9Pfha1AyaYcBEXQlaNyBmDUb5ajoL0n2
	glszVGqXAmLmju2UCJlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiat-009JSv-Fj; Wed, 12 Oct 2022 20:44:47 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiiaq-009JQr-T2
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 20:44:46 +0000
Received: by mail-lj1-x230.google.com with SMTP id q7so19553641ljp.3
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 13:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pYJ7SbNTRF9ZgQzs+eDl0D0NQhOGCHroaX28LaC7Rrw=;
        b=mfHh7EJkn1Fyg5NFxVeqIzNCwzLP4uuGIMrlgxMzY3cp9lLzPC1MatM80cB6QfhzRR
         zsN5otD6bN/PMZR6L26u3Xqugl+gJeYot9r9yELMBiftU+kah/cUcrKp8Pwoj8zIufU1
         wakCVtGdsI7k+iaw5rg7pGgzW2PzO2JpF87u1+Aw9Vhr37ekIIKKFGQv5N6h856B2OMy
         Xc8JV9mBbFN0Zr+n17huVs0v+ElAuto4QP8EvlZetXh7BJ6J2ZYpz+Sb4LJwzD2F/Mhr
         U+dv/6NvBuzakVcViL8rgYpmC6/zS7szH/KggVjohpNHp4eqa1N2tWJin7r9vAoiSqcX
         4A7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pYJ7SbNTRF9ZgQzs+eDl0D0NQhOGCHroaX28LaC7Rrw=;
        b=MEz6zYkva/rWupGZbKrw86yhpB68TKizSGzPkUiVvpwrSLD2Cq87qA77ej4MsUWzgi
         v0oMRVKGKyTGO7PStiLyGfbPZ58x5+g8arYLcFLFCx72KZ2TaMCo6pWszC3zJ7lQl74l
         1yePDdxhZgKq2beI0xcd5RAC+SAWJ8BvBaIGIbJnEYB73nnXIq5hIf27J3N5sxuxzSI7
         +bPziORYXW6GOGu/6GeKffURixHfm1AruQ99GvFSq1uR62cLmCq5TbSqmaBbPdWA/HIy
         82K8TAueQW6IL4p38Kr2TSLHKNTpHVnZvBjF6gmj5uVyQG/AYb78T9T3dzUNsyDmbffq
         UrKQ==
X-Gm-Message-State: ACrzQf0m6zwp05ADdlzNVkT1W5f9rkEwNhGGalff8/BfawwWD3I3BqDn
	lLXnLGFuERLq8c+kVA0NwHh78w==
X-Google-Smtp-Source: AMsMyM4v9M1UzdRyfsHY+3aJUBU24HxU99cbgNWk3/Gj+7vMqb1ye5GSpdVNlWBA0QoDA4vzYJi3tg==
X-Received: by 2002:a05:651c:883:b0:26d:d4ce:befa with SMTP id d3-20020a05651c088300b0026dd4cebefamr10998992ljq.180.1665607479440;
        Wed, 12 Oct 2022 13:44:39 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e11-20020a05651236cb00b00497aae401edsm101270lfs.109.2022.10.12.13.44.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 13:44:39 -0700 (PDT)
Message-ID: <c0e2d297-2c16-6c61-2e15-a1557d5eba37@linaro.org>
Date: Wed, 12 Oct 2022 23:44:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 02/20] phy: qcom-qmp-pcie: fix ipq8074-gen3 initialisation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-2-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_134445_077713_5860EA64 
X-CRM114-Status: UNSURE (   9.13  )
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

On 12/10/2022 11:49, Johan Hovold wrote:
> The phy_status mask was never set for IPQ8074 (gen3) which meant that
> the driver would not wait for the PHY to be initialised during power-on
> and would never detect PHY initialisation timeouts.
> 
> Fixes: 334fad185415 ("phy: qcom-qmp-pcie: add IPQ8074 PCIe Gen3 QMP PHY support")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
