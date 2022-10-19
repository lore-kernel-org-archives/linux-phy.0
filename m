Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3BE3C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 19 Oct 2022 13:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXOunaHumylVJDPiAFjhre8Vo4d5K09vQd+cKhTVE2w=; b=FHo6DPyW0NIrJI
	r0BV5XTaAeG9VcNLP/it/2L9IxA39vmLo717kAS44d/GKg2wQxD6TAiX3EjAmfW9/WfTSS/JUx7Zy
	CtfW7uSpUqM10w84jkIv4hSSMZk8bEfUxp0mVl0WqZxyXiP5mwZxLHboo54jJMie2sMjR1XrCF5x4
	QhZyro8htUxQEQ1EpE8g5r784Ka0zYwhzAz1QYNipRG8ia5NDg7zZ8u3Eh6PTbV7XbdB4IktWkn6z
	6EFZafwBMnxlQhQ9BkWDSmln0PGGIYPC6qGXh7nMRivWaeoDO8oedHQFylxBKbJCJMSnpFLkE+M0h
	qnKiG4xL81NjRyQeHK7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9UE-002Jtr-Ti; Wed, 19 Oct 2022 13:51:58 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9UC-002Jp6-5B
	for linux-phy@lists.infradead.org; Wed, 19 Oct 2022 13:51:57 +0000
Received: by mail-lj1-x22a.google.com with SMTP id x18so22281244ljm.1
        for <linux-phy@lists.infradead.org>; Wed, 19 Oct 2022 06:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w5+gyODwoHFKNypGT6uh/ysXTrRRHFbyILu1kotDzM4=;
        b=ZZrpWJr0JokM3BK2PpwWz7MaqS/A7K1EC66XS8ZizSz4zzmpa+PCvXIKtltBzs/reZ
         sVxov/MPI1hg5hu1I4N3B7mre2Ac8Q65gCcYCGT1pjRRu6G/5ULnx1msljvsp4+Ui4Va
         ZVumpBC5+ZAtg7DpovO1Xs7RCRcOqeiqxmPcYyZ8QhxOPZRmH8N99FG3CiaHbdyc/SkX
         ENnedz5T0tuARHVKT4qND9XHLrMMVz5tWH1u+WMU4PmQn2oWZT9AkgcMSZvPRbR9VQtq
         44rvFZk4AlKfaijtdvuEfVmcMJm21smZqNUbFbmDOisSk33aNfDbqzvOQyLVfEgwLSmK
         aZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=w5+gyODwoHFKNypGT6uh/ysXTrRRHFbyILu1kotDzM4=;
        b=WihOlJXfy0bpOfP27zjEK26bH5kYdnKhZFUF39noPfu48HlzpjuWdzaR78Kz5hF9bw
         65hDtJe6BC4x9fm6buCLNEewqQMAz7pLo7HhveTrOU5suFQTJwB6VIZQK2pD10xDU4eY
         0zJqtlJV+yb/eOp8tnpEDd78m377yH85y9Wxbn2x/3UohNv+dEGPr/T7/EdoQdJ+FMfJ
         71DNL5C/WXwiTAJpbpfAEaD5MI0xzZs4woNbeYoxUfZdu4P0dbZ//d7n/JDA90a7sqKb
         4Zdgn3byTDl2sVy6H3Q/cLyM6FLEnvypn49YQdTyXRybw72v/zOoFNOhnY1hQr2NWyP+
         NFPg==
X-Gm-Message-State: ACrzQf20IVi/ZDy7ZqVNehfSKLJYF/lq/IU2dXy+THHW9NwjaSOJC07Q
	y/R7CTHd76CL3BGjSG2QWRWUhg==
X-Google-Smtp-Source: AMsMyM6Wz4e6pH5YTXalvM3jqNkmWpZ+07QEhZ29oRNNSkpxIXajymXLgZHoHSMNHYwLDMt5DvO4bQ==
X-Received: by 2002:a2e:a602:0:b0:264:5132:f59 with SMTP id v2-20020a2ea602000000b0026451320f59mr3065213ljp.0.1666187513443;
        Wed, 19 Oct 2022 06:51:53 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l29-20020ac2555d000000b00498fd423cc3sm2288264lfk.295.2022.10.19.06.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:51:53 -0700 (PDT)
Message-ID: <22640161-0b28-d91c-5af8-ca9fa36954f1@linaro.org>
Date: Wed, 19 Oct 2022 16:51:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-13-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-13-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_065156_229229_C28DF855 
X-CRM114-Status: GOOD (  12.94  )
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

On 19/10/2022 14:35, Johan Hovold wrote:
> Add the missing delay after asserting reset. This is specifically needed
> for the reset to have any effect on SC8280XP.
> 
> The vendor driver uses a 1 ms delay, but that seems a bit excessive.
> Instead use a 200 us delay which appears to be more than enough and also
> matches the UFS reset delay added by commit 870b1279c7a0 ("scsi:
> ufs-qcom: Add reset control support for host controller").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 ++
>   1 file changed, 2 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
