Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64804C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 06:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ux6PZ1IRAUETpqLBRUVSb2FtBseyzCrn9/iweUCohHY=; b=3kCk/8WvWNxKPf
	R3CY2SFj46pCUpnQBzRIz3oct+rQIcZWs13D/pbul0I/qN37OK62L8MF4Y+IhwPfoqj5BYWwV/jH+
	v7mzHeOzBtwI2KbqXZ9AwJa6lw1HCqZw2bzBBktdYf38/Lszq2m4WG9SGUFt8LSD64iCJeU+PCXB/
	WWjQDTskVCP3llMC+BhYeKceGM51GyL41cfGuX5IcgPphIfLelSuWXUHkzxM0I+5GqTJas6H01dfB
	xsxK0326ddikgnnSCB8Hfi1D/xv9EexTCnVdLhGfgw/ymQRx/ni4YewjOvkAvHV91fwwBG2cIaHot
	KKuE4gB8xvd+rkLex8Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjkR-003c3h-Gq; Sat, 12 Nov 2022 06:12:11 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otjkP-003bw4-2I
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 06:12:10 +0000
Received: by mail-lj1-x229.google.com with SMTP id z24so6712399ljn.4
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 22:11:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z3ejbUlFun9OEgk/KT8vHWfd5C3xhdILnxWcphsdzjE=;
        b=CdeddQVF1TO9jEQYCpMwrZcdEGwrnTwcDH2RMAAXZKXtvijrn2fLc6JiCwQ1W8qzVO
         DMbPBg3GqqvxSzr7Rz5s2oI8OmSJ8RqJvRKEdtNETbxquW8F0YP3AthAPMLnYCirGcX5
         d72ejQSJ9WJG95SyN05164TZ9AqtEeeZVzcmPszY94diOxvooVFRFMsp1bxSQqTFFE2b
         gaVWmrjCNDOhBZFOcSbMwKTz7HYIFNg8HosXowWSF9BPRJaJIQ9Logt9jr/ISXhxBq8x
         l4oiqMrDXnk5bMaEkiZbit3G3JaWbDWLkJoOL9hoMoYQRr8YJN9WA9ZqtUzIoaTCUnNe
         AtxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z3ejbUlFun9OEgk/KT8vHWfd5C3xhdILnxWcphsdzjE=;
        b=g9VuqssRYjH0xa4DEWjlxcq+z1fFSJkkH+SkPGV/lTnhakS2n5Af7Ultk/3Xx54Xnk
         WAoiwYfIuhTJPDtzzT/o/3Iwax9VheMolpiG+Tbm7suPnYiipP8rW7o3JPp141BhGLds
         gbpKdW98rQ0NtIJdRehaE13kLjprvkHZoRD5bnbyt+D/Rzst87oCT4DubiSxg72zPsZ5
         WiTcMU+nOt94gdNfnXTbfPwpShWczJkcNL4GYo2GfLn6V5NPm5en+yZguu6/BcBg8jyE
         f/HPaZELDnuxLvyA0mJB6A/S/0x77uWTH7RC9UEFmfKrLS7XvqxzezteEdpsYJjkJrgF
         J1mQ==
X-Gm-Message-State: ANoB5pmKaYQzPGEuNr3w04fP/FFTQcOkHNqtzTJfG5k3Oy97Op9PKtUp
	/n5XY/O7Ax7u25jnMMozFM5xBiwzTgX7s+EI
X-Google-Smtp-Source: AA0mqf6XAXIkgfNs1O58usH4KLMuIJnBykFNQGvvGHPaohPzz/O/3cpZ5coGzCG+NB5SBy5Yb0s5Xg==
X-Received: by 2002:a2e:b117:0:b0:277:96a:5c32 with SMTP id p23-20020a2eb117000000b00277096a5c32mr1449233ljl.415.1668233513135;
        Fri, 11 Nov 2022 22:11:53 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m18-20020a194352000000b0049d3614463dsm705066lfj.77.2022.11.11.22.11.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 22:11:52 -0800 (PST)
Message-ID: <b9951e2f-b958-ec4c-331d-dd50ffc6d31e@linaro.org>
Date: Sat, 12 Nov 2022 09:11:52 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/6] phy: qcom-qmp-combo: fix sdm845 reset
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20221111084255.8963-1-johan+linaro@kernel.org>
 <20221111084255.8963-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111084255.8963-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_221209_140707_9EEFF22D 
X-CRM114-Status: GOOD (  10.68  )
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
> The SDM845 has two resets but the DP configuration erroneously described
> only one.
> 
> In case the DP part of the PHY is initialised before the USB part (e.g.
> depending on probe order), then only the first reset would be asserted.
> 
> Add a dedicated configuration for SDM845 rather than reuse the
> incompatible SC7180 configuration.
> 
> Fixes: d88497fb6bbd ("phy: qualcomm: phy-qcom-qmp: add support for combo USB3+DP phy on SDM845")
> Cc: stable@vger.kernel.org	# 6.1
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 39 ++++++++++++++++++++++-
>   1 file changed, 38 insertions(+), 1 deletion(-)

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
