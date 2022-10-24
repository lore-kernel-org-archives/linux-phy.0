Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 186CDC38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvKjlKf2nUAkqwB0T19MMOwuIUsJvf1GyV/+RtlII6Y=; b=osjKRFQ1vmYt0a
	BD3YRlFSBcIBn5CKMNM+IpZbJaZL9tR3zmDp7AOfwD1s/uqEuRkIPw9oj6CghvDGZXQcOyYtYYwlb
	11hITroW/c/8yKqD2DX2DbHw6wX0vpbqviwNaa1Qepf8x+a8EDujDanxZkNHlFVjkLdzxXEZ3wggG
	FurIG9iE6B5ej5hp4nWJp82bQK1xL3pQrxbFc+hYrNm1zV78yUs1d/POrEA39g39Kol/DI5AbkWYq
	o4mGAvchd1zDZy3qvXLVWLgiwBSnkZRB4Sx2LwxuligXIG+vcdszS7tFpVxkTSAxOqQ2xxjbjPYeV
	ClpmGFWTXKQvyjIBeb0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxY2-001iWY-HJ; Mon, 24 Oct 2022 13:31:22 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxXz-001iVH-QB
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:31:21 +0000
Received: by mail-lf1-x12c.google.com with SMTP id g12so6229169lfh.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g2Ef1B72AKv92WqpGmoWgiykPR41P059MtKUSV1dcDg=;
        b=UZLOcBWKiIN/hH5Fs9NPYS3GijO4NAndQrmQRsKbral4tksqPRvrgE9UGfwXtyEgHd
         3MEhNw0FE1tEqcbwLrO6qm28DGlR0ex8Y25o0YdLXVjozxUIM6mADVXyhVDffXNjM9lv
         umVwGtRz8CB+qSE85KNt9vlxDYAygN/Gk/qBPtlwgaI4tha15FV68qcR8G6uzTb6Onyr
         O+MWquMaYfEVxL5hvHPYuix7O3O3YkJNCrizTMHZf8adWGxudjVZrPnHY3a3SN63K7ol
         zIw9OTzDmhPU6yaCrWAgy52h3QMWWWnG8Iy6Kf7gYo87SQBx3Ixq505MUOVCEjfh+O04
         R2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g2Ef1B72AKv92WqpGmoWgiykPR41P059MtKUSV1dcDg=;
        b=mg0Cg8USjnpU64qTnAwZhD/dVqZWsTljqH3k3mbCu+8G9J7HuYPTkEFjgEfOVnP6fK
         ffsdxQ7zlysm1CYQ8+3hbQtss/64wy5uq2wgPyoSLNxqng4xBpKPwz4eLJGOgo0pc+77
         wB4SzZNTiZPi2Po94oX4psDzJlkb3DXBGY2CzDo+T6QHdW7x1Mw2oeyB1YojWRSN+f9g
         baU0q9mkUmxX1g3G38wGVfAFbS2TacWjg4N+u6iQNjxKa+KUk2WL8ryph9tPTktTrPGC
         8oEp0ncMnsf4KPW95bMN6/aOGG8mK84NQ/Glutt1Jtkgu1FRzOc4SVCyvz19mz5bx46J
         3VrA==
X-Gm-Message-State: ACrzQf3K2rDHlMkbLao/jGwjQ9q0VMCLuCtAnJNqc3x5gm5daM/OYnPD
	g6714eJXRKNmx+8cjkhW8DCrM5s31Dsqanx+
X-Google-Smtp-Source: AMsMyM5jX7OiDEQDWyvzBEOzsc0vxkYH4NLEKD4zJsJxdaz8GYopiaVKrrXCyW7CktB9D8iJmH3GvA==
X-Received: by 2002:a05:6512:2c88:b0:4a9:4051:79a1 with SMTP id dw8-20020a0565122c8800b004a9405179a1mr3897069lfb.331.1666618277293;
        Mon, 24 Oct 2022 06:31:17 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c24-20020ac244b8000000b004947f8b6266sm4410814lfm.203.2022.10.24.06.31.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:31:16 -0700 (PDT)
Message-ID: <9cb136e3-4028-091e-a298-ff24880f32b6@linaro.org>
Date: Mon, 24 Oct 2022 16:31:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 05/10] phy: qcom-qmp-ufs: rename PHY ops structure
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-6-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-6-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063119_876546_66A12F7F 
X-CRM114-Status: UNSURE (   8.69  )
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

On 24/10/2022 12:00, Johan Hovold wrote:
> Rename the PHY operation structure so that it has a "phy_ops" suffix and
> move it next to the implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
