Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B59B4C43217
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 09:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Cj3kUYWxBtIfCh7z4gkHn/nUc3DGeR8uYXfPQanPDk=; b=1JwYnJJPVc50TJ
	vzS/ZQik5JlfmPsOE61UCjVv+p/9Iq2OuPnQ+SJx8dZIg1M4T1PF8Vji1p7rqtIgFnl/9hva6MsOv
	TJ3bRLlKQdRuKoYsMrTc7cJ1msFW/nCb3fsxio++AxHBciuGca+z9p1od+VcZ/OVBlhB3H4JbgFKz
	D1tYPDdrOByVmWPfW+1qf3o/QZo4Ff1n7+8Dv1WKMWlLWRqNFP0wIuyJVK3KfHGg1cvcmz54s9CvM
	QxKexamP8AlCSd52onY6yrwYkfa625mE7QtKbR3BtfaO/iOs73pCGRp6xw+R0qTh4OT6eQKG8VIcK
	xnHEFVb4Ozy3i2/qeBjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW7e-00HJx9-40; Mon, 14 Nov 2022 09:51:22 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouW7c-00HJwQ-2n
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 09:51:21 +0000
Received: by mail-lj1-x22d.google.com with SMTP id u2so12420190ljl.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Nov 2022 01:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ENdx4ikDTtvgrE72aC9rMF0BTtdGQ2p9Wbp/pvRmjUg=;
        b=LOEyncvIYubzjOZjJxeW6sHe1cCjavlEag+RY1hqFVHfkfWJADbSi8mfBcloR/hNJj
         L7OwmX7h0GmcYdzs0VMUf2VtVtcLMf4F6NQwxmP2bR3qU0KdUIIy/shLIpKEQLeFonVm
         ZewnAxA04KoriGpSrTG7nT5HNZ7KdqYT0rrdcE1cOWH17jmZ9ATB0m/gIWUnDUXkTJOd
         RPSDSy4DWV3/V/oFom30qsFgU4ZO/eRUnATrOrq0CqB4hEI4FVLTGxyC2d6WeGUueZPI
         XD6u/VscTpbkWGKVNj1zzmx8amfhqP2RUPuAD1ZTZLH5pvL8m6aDBND/FlVPEqVPU3KA
         8VpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ENdx4ikDTtvgrE72aC9rMF0BTtdGQ2p9Wbp/pvRmjUg=;
        b=EunK5ylmts4k/bAnDc2iXZ81XAE8BRD8pcK0QIn5zyvLs4HDSn0vc+1Sk9xZM0EXMv
         /0gqU0BkT0lJCH+RUcLArOSTaXbCPDazdbECkIR95cOTF5Ch9Ejb52JN8zs+V6uSnx/G
         m8E8XH6UT7yJPiQu82TONDx5FnHLCvrQphTebiCdeAc6ggtGeHz6jdRhsJftNgD6MB1v
         4PFtA3uo+nSIeksO8UHpoD62kfzZmGLPv0ZbL+dzjedKz+Ix/8Uqt+vPdY0B1lqE7HdU
         WlhA9XulzMbT61RtL7+eX5xIQ2PKj61VPlo8XtoBk2mhyyVhEAoI+hSVxxRDzzRI7TRa
         aazQ==
X-Gm-Message-State: ANoB5pkHRdAQS3MI6PgaILStZNEV+ogVz5N5xEWJlxK2SyYbgLmr0ORK
	QCytTyVTOxrj8lvgMGnk4RTCj5LiQWDNVw==
X-Google-Smtp-Source: AA0mqf6OVhGZnv2UG/ItOW3l1o9aVcLwXZaLwpjRJllEiNpT2YovMinDawSgVP9lvxlkqTvVF9EMAg==
X-Received: by 2002:a2e:5d8:0:b0:26e:85d5:7e8 with SMTP id 207-20020a2e05d8000000b0026e85d507e8mr3673057ljf.449.1668419478756;
        Mon, 14 Nov 2022 01:51:18 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f27-20020a19381b000000b004a45ed1ae21sm1751889lfa.224.2022.11.14.01.51.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 01:51:18 -0800 (PST)
Message-ID: <8ebf0be7-7467-ee59-6502-a50e1739fda8@linaro.org>
Date: Mon, 14 Nov 2022 12:51:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 2/3] phy: qcom-qmp-usb: drop redundant clock allocation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111094239.11547-1-johan+linaro@kernel.org>
 <20221111094239.11547-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111094239.11547-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_015120_155325_445D5891 
X-CRM114-Status: UNSURE (   9.28  )
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

On 11/11/2022 12:42, Johan Hovold wrote:
> Since the QMP driver split, there is no reason to allocate the
> fixed-rate pipe clock structure separately from the driver data.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
