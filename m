Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB679C6FA8B
	for <linux-phy@archiver.kernel.org>; Thu, 22 Sep 2022 17:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+PbXh/rBd65Ln+UpVaPDYiAis4DCCC44vxVlxvmH5g=; b=quhNbjsQw/Gebf
	nM8o6TSxp6j1ScIMBux5OsZcHO6CIC+Qx90JQqW43casNpRgXBz9nU5QmmifAc0Wm6+bqJBQLN5cv
	lORVYgOQx30IolnmK5Tq85oeZ97tkTAk5ecSmaRqqQ1GopzfTrCVeevFNNc8rCPdaYvXEaNT8e6mP
	HizmewcxUPfHkGpwc5A3x0lv0Otat+jZ6jN5MPMi01ToAichAr2V9FquAoIl+C8uuJpH2eX8JFgTg
	NEGUW2+02hZx8P/NitsbyaoLIjoXCscQHQfhO8DT7XzYOXkV84ZD8urOx5T/CfH4L9j3hk9mvQYqR
	kjFMm92PMyz7Cw8RzzIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQTe-00HBy1-76; Thu, 22 Sep 2022 17:59:10 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obQTb-00HBvl-By
	for linux-phy@lists.infradead.org; Thu, 22 Sep 2022 17:59:08 +0000
Received: by mail-lj1-x232.google.com with SMTP id b6so11900299ljr.10
        for <linux-phy@lists.infradead.org>; Thu, 22 Sep 2022 10:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Dk/La6d+Fw7ngy8Z2bVHKAcTv0OWniRC3ZPnBeC5j/M=;
        b=vqnQ2/8hMgvJ8S2Eo6J2YBb0YqvTjfD8oHMY2l9VWJoGB6XS1bvhabne17nVKq8t4Y
         ELzQWfz5142+Ybifs0e3h4jcT2m8NVdLJ8zl+SGt51YhBwhUD00X/YckOFHCzOe+Js1a
         njnNLXStnLnEFLf/UtQzvRf9hMs/5f+2vPP4avY6QsO+kntMBnLl8DPGjwxO1ttL9iVQ
         OP0w+eGZHrXS7BWDJFzxlFsBXZwWtZbNx8fnS8FwQUap5HiZEha2wnK3ra2nesJ6oByN
         yDoyWI/ko8cc2hS6cvk6kh4GQs7ft3zZh0NFfpT14SbNDtrXfmGz9E5mioKIPbuNVufw
         6PdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Dk/La6d+Fw7ngy8Z2bVHKAcTv0OWniRC3ZPnBeC5j/M=;
        b=3OYWeNwdU+1V8C7nWeHMxzoS/DLRUPGg3+20C3p6+t8zf+oVcFV5KAvBOWSaiHxiRb
         HhShVaiRylUEoK+JSr6ZCFBa02p+SwSvTiGCny7p+tuE/jGumjq18kdfJvmXCZYt5Q+7
         AE4YL78NAy36JkGRdP8pwtncZIz361DvYT1pwb/6l4JrPH61f7iWsKZFqdQBZ5nUsx5c
         58EsYq2FuUUplZoOEF18nJf+Jj8ppBZOURPIrmJZbh6oy8x6AQI3daW1d9dW65/i+ZdW
         Q2Mo34moVNhl5TDkxtLa/5YKXZP0IK9+YDVgfpMqWMtDAoqy8XsvkHGQPnaDfl5K3acE
         XNrA==
X-Gm-Message-State: ACrzQf29PfpCXHG3svcmY/ZxKen5yfh2yHtr5Q2GJDfu4cKBBiYRnflF
	6i7iR/Uza6CSVnJ4I+leF4nuZw==
X-Google-Smtp-Source: AMsMyM4UC7f72eiLOYztldMh+D0gw1UqQjEStL+/Fm0tUvUhaiBX8aw1IzTtQcTID1wmwFieGnQ4Mg==
X-Received: by 2002:a2e:9d88:0:b0:26a:95c1:218f with SMTP id c8-20020a2e9d88000000b0026a95c1218fmr1514214ljj.223.1663869545092;
        Thu, 22 Sep 2022 10:59:05 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 8-20020a2eb948000000b00261e7244887sm986414ljs.60.2022.09.22.10.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 10:59:04 -0700 (PDT)
Message-ID: <a8dcb033-2da7-7946-68df-9ebbe229c858@linaro.org>
Date: Thu, 22 Sep 2022 20:59:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 10/17] phy: qcom-qmp-pcie: drop unused config field
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-11-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220920073826.20811-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220922_105907_434920_AE7DC6D5 
X-CRM114-Status: UNSURE (   8.24  )
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

On 20/09/2022 10:38, Johan Hovold wrote:
> Drop the unused mask_com_pcs_ready field from struct qmp_phy_cfg.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 -
>   1 file changed, 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
