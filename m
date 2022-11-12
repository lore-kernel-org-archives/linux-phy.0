Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BDD0C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFBNlpsNuee7wGD2IuE7T6uPXxujvAfT5eHEHWpus1g=; b=ayprvcZ2PzsUDk
	B08pMrpM63uly6Kpzm2O7t1KAZjM8VRfeH5Nkj5nhtJRgCVyVugRobo1PqfCHIyNo8YE7K8rI1vkY
	YRlz92TngdAYgB8a3AnzpfimHn1f2VS6DWu+2ogL7gDWwBRCfGfX+as6zO87/FvCKtfBqPgTexBy6
	yYd8Ht+QgVCPdA/Mv7t8liJWapNDiQnNXDzkfDjWGfxB9by9rmmbZb7GVtJQ6cEpfloaD1pcZzBtL
	oHauk9Vnrte3r8SgN+98Ku6dYI8OL6GNTnrg2bpn6HLIXYwDyzOZCIIh4/5+fCOsvFX4xRwaasWPP
	q7trSKBRjpLRcR/p6JOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlIR-0045wq-Km; Sat, 12 Nov 2022 07:51:23 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlIP-0045iv-Em
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:51:22 +0000
Received: by mail-lj1-x229.google.com with SMTP id d3so6875426ljl.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2jNNa94XG+j4AtxhXDtMD9Ngnwggz8hGYOvam5X+ciw=;
        b=NjkuAZRBWfA3wfFKN5kvJXUiiW0S6Juci9RpQhW1qrAzggM08v6THBTevlA3u/gA4/
         9hLEuNmalCFSGQkOmu49aZ2S3G9nCGDdT61HipSqJwwOY/frWO8Rz8pWpOBhVXevVEg5
         EwgevE2r6pFhZ7MWWUtUqFrzZu8CaDyMDa1Cgn4qCByojs/RKc3ZOg9TZs4VJNLCSoOK
         /jt8YfJONydYAfWytZFiiK14N6+6yuOa3dMLZWfLmUCHghxbY3Zrpe9JeLL2qNIOqVHd
         xisIAS8Huznwp/MmUQWWOwzfKj2YcKMvnYNOp5Pv0gwLtzWYkV955SwKPXn/Uy56Jktj
         wXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2jNNa94XG+j4AtxhXDtMD9Ngnwggz8hGYOvam5X+ciw=;
        b=JoFewcI6OdnuL+3YT0wIc5hJFuJFU9Fyt3RKtPEl0kcZU2looUP0Hn0jSTvVDnsG4f
         +Fs1g442XIZ5JH881eXHzglX6Nz7Iy57Qd7Ui0LLk7imIxVlCWXyNCnOODCWptIIQ3ka
         hl+Fwn0SE4BkEX4ezdykCTKgt2lDg6jyfOx90lepIl4LWTzmMkaB1swo/b2QG5l6QwcA
         qOIGiTvqRZtoDlqTCQmfwigA9sjFNCxx+gmFJFHUiMaGlXiK8DrfNq1yElTBj8McvSx4
         3idC6ywkQeXIRYLw01iaQTjCzmxmj05hLh1YSq71ffRFLkYbhXqswBGGW9pJyh+QkV41
         CQvQ==
X-Gm-Message-State: ANoB5pkI4dvSNlc2bHm6IfwYswhLP9z5VNvVfr2AjZdUO1EnzzCPRoXw
	/6fzYWbhwPUR0mZGMF6H75Noh3t8XtrLlU+C
X-Google-Smtp-Source: AA0mqf6EHlOlvN/k6hEFHAcfnf5RkjvFZ8rEaoPR0BCNMYrjcn5zy9XzRrNXZVQUeagBRS7ViuTyyg==
X-Received: by 2002:a2e:9ec2:0:b0:26e:768c:11ed with SMTP id h2-20020a2e9ec2000000b0026e768c11edmr1730265ljk.436.1668239480882;
        Fri, 11 Nov 2022 23:51:20 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b24-20020a056512071800b004b15bc0ff63sm736003lfs.277.2022.11.11.23.51.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:51:20 -0800 (PST)
Message-ID: <ad6343e1-7734-2ecf-6cbf-0081931da97d@linaro.org>
Date: Sat, 12 Nov 2022 10:51:20 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 3/6] phy: qcom-qmp-combo: fix sc8180x reset
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111084255.8963-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_235121_527154_0C9AECE2 
X-CRM114-Status: GOOD (  10.10  )
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
> The SC8180X has two resets but the DP configuration erroneously
> described only one.
> 
> In case the DP part of the PHY is initialised before the USB part (e.g.
> depending on probe order), then only the first reset would be asserted.
> 
> Fixes: 1633802cd4ac ("phy: qcom: qmp: Add SC8180x USB/DP combo")
> Cc: stable@vger.kernel.org	# 5.15
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
