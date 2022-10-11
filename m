Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70521C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rYOsBDe+ShcTee0s1hkL11JzrmPherXjnkwGySWh0NY=; b=bUzuwzNF5dV8qS
	DGiNT+qEMrb9OO2Szwm57H2sXYfO/ZGye+eIB1F4T82osraPeyFUq97kQ/F/W6omd0ZoCTsXqEPhu
	DazM9jFHyk8bxot4muitHXHZEndHP0NVXJqKmjIqrSyVoaShQ/9ThmtVTQ+Ye0x4SlkxC9el6HBG0
	yJb8dcxc5VaxlpNVLxoV7kEMkvDBG/FbrSiPh5SWCWhIxgdeoQqxSlQtfV0d+QS3KhZRTXdYaVFGF
	XJh7i3FcHjj+sPNHds7MLORfiitbe/SA2PonutDCzu7tCmp9N7zhVZIJRDtpCC83cSKptnCsieLuy
	Me1CGyGgixgLKxDVUiNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFh8-004Odh-Pz; Tue, 11 Oct 2022 13:53:18 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFh5-004Ocy-Vd
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:53:17 +0000
Received: by mail-lf1-x132.google.com with SMTP id y5so21217036lfl.4
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2w//JeN9ksVnoRiYZS+B5DKe1JdNV5KL08E1cq0GkAs=;
        b=z0piOT9P5PQy7mycA3m9/Bg5bcFARHYsgiUY2xAgYBBg/8aauS+I73+aewJRerqX7X
         7XeFfd8Y376IDHi/8y0ZSbcu3YM9cPreL4qEOtSni7QyyoSUPunWeE8Z1poCKZ2ltsi5
         uCtCFZESIg35e3NoseNF5CCjHE4EfyquMIviOG5Q3nRkWzZXTyqGCyqJyRpfP7bWp5Kd
         LSs7vFDfiuSUYwJqh/IiLWtZKNv3Pgm0XINKpGNaOb3wTkwHm3ieY6MznrUguPW/j54U
         Ai5P4fAUUQIPqiOYBlH5CJFkDJtBRNmZwskQER/kmbmzXLskltrZ0TdmfQLDgM7X/ZYZ
         mJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2w//JeN9ksVnoRiYZS+B5DKe1JdNV5KL08E1cq0GkAs=;
        b=e2zrw2UkNQEyW8s+vgCqmkm3BR7YXTtMdO3uadRtn7+2bGaWuwbQZnKB/u/Cb6k4FR
         +4lzNBQ8IyZkt4SOkJwXl5vWXntuhzRKIglhsdxYgWvsA17in72W8B57jQDD+Jp84X/I
         2SgjrV4FVd7lT68m2yYrryj9FPUWIdQCtMLvFp15meMaChnCKVloTyf5B1Vb2FGKy+qr
         ydibUSTG3HdFDMHNBOpMq44g2OPf/SjGQ7uLoMqvxQUOj3ktlnTBFV33wKmA2N0OsLy8
         PFa/etc1AWWq0a08TvLcAQOhElBMRS3yUoSM7kb37r1zHheF+qBo9Kh+X4L12YpbgB78
         XZkA==
X-Gm-Message-State: ACrzQf0+GsPVitGVPm1FURtVO2tszG4gHmufrVMYtAvR+Vxn9a8QvX8V
	zrtKeRUja89nIH+g06hjgmvRzA==
X-Google-Smtp-Source: AMsMyM7QtY/NxgO3HC8o1YObrEQGODYLZjONBZnHtl8VcxjnFGmaMbkJAqaXoKkAntXTIKA6WkH0hg==
X-Received: by 2002:a19:7419:0:b0:4a2:2b47:6ca3 with SMTP id v25-20020a197419000000b004a22b476ca3mr8197051lfe.330.1665496393701;
        Tue, 11 Oct 2022 06:53:13 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u3-20020ac243c3000000b00497aa190523sm1863316lfl.248.2022.10.11.06.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:53:13 -0700 (PDT)
Message-ID: <726346ad-88a2-14a1-bca6-2e69e22623de@linaro.org>
Date: Tue, 11 Oct 2022 16:53:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 06/13] phy: qcom-qmp-ufs: drop unused in-layout
 configuration
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_065316_040286_AA45DCC1 
X-CRM114-Status: UNSURE (   8.49  )
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

On 11/10/2022 16:14, Johan Hovold wrote:
> The QMP UFS PHY driver does not use the "in-layout" configuration macro
> to configure registers that are typically accessed using "regs_layout"
> arrays (e.g. QPHY_START_CTRL) so drop this unused feature.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 42 ++++++-------------------
>   1 file changed, 10 insertions(+), 32 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
