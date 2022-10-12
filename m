Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84C90C433FE
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5I81wfbKvFLYqrhAzUoZy2zbaC+JuXqp4pmqCBLr1c=; b=ALA1VG1EaK72uK
	TWeK/TrShXzCfy9ZAcomgBGsO/8EvqEtgQOFL3JlWEFAHK9SSAg+LTdW4e9euYnQ/sdnO9dyUQoUk
	xa6dcEBuB5nUKSwQdm7D+t9KhmoUMDRy8Im2d3ZfugcDlwpTzsCwSIDcCiARsoPO0TSWKcH31SI0y
	X79H+mZHnVPTNEaZXcj+JQhRV4gREpmQwDirFaRz7SjsGBKauq9xe3s/7BkVC02I7tZCFooDF1n4H
	A+jvbe5bDHhTLEHb5Blw7LkLtJTVtXao3D8SIDSiX8fJjPdiF5yRvy+3yqY3Vqavsm/Lyom9w431J
	Tribdqg5ZhAGPJdESKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9U-009NIk-UH; Wed, 12 Oct 2022 21:20:32 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oij9S-009NI5-D0
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 21:20:31 +0000
Received: by mail-lf1-x136.google.com with SMTP id b1so22592723lfs.7
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 14:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=svHmnwp/lBJXQfjmxrCgtPTSC6GLXx0JOQWMenb2G1c=;
        b=zmcRl90oW6WhKBDEMkFKHSfte3DVUDw2eERLCOBtU/VHE4a/BrKKjZIM8dC3FRrS8u
         Fd9XIJ9Rlij0/peJGTz+wmgoe3OhN+2NV+GOUnUeDFnSPLJ42EkzldGyxkMhnCftSV8c
         ftgYOl+WJ3KUC1EBWC8Bf8kYF5ZU0GFae3F4fU11QRm1xAtaOPdNFO82HSDihruysQBl
         mhqtfnwoQkhxcZvGYTv798Pg8mLe1rzHK72Uqp9mtOgix6sQ9JE3BeybqIE0mD3efs2i
         FpOBGruYRg+nvGVDbFCC+doJy/GkxrCsgmQBAt5z6OdESJZAPV3uyuBgYIK3tsUigrnQ
         cAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=svHmnwp/lBJXQfjmxrCgtPTSC6GLXx0JOQWMenb2G1c=;
        b=uHgz5vZU8dbHMjqnrP76/EBj5KA+/UcnySdA58tGlm/AwgevzH3eQZqs+jh9NwM1bD
         yvGIoiBBUd40uKMa22JLpqZV+Izu6fO4n6y4l0CMo56JqVfHr0cfe6E2jkqwiVrx7me0
         DCAul9nJuWub0eQ8ALlE0of1oCha+PZ6rfbe8HO9gU4qQcZv3d9BwAs2DqJBAiJ6OYyL
         xY1g5p4egUxo5UPkanMTe/r9TW2ElFsup2F/A/PPvhA2kOvjrcDn5gDXQI/2wTUsv4Tl
         YtuXHBdg5b3G5zpFHfJ9yLVke8KnyAD7azSE8XzU526mStWPG2yUwiU96294S0mXJpe1
         NPmA==
X-Gm-Message-State: ACrzQf1aiZH6DTVu4JqgMesvBhY1gS5oos8ppoZOCsi0M8vDsmCJJLgH
	iaKcPxIHZ/UdTgomATsQOXQPkg==
X-Google-Smtp-Source: AMsMyM7/9QqBwj34F2NGtv6kWrKVz+vIBg0g+1GZq6HuwJq/qlTB2kWMjEspKXuUqv9v5CFkvh8UfQ==
X-Received: by 2002:a05:6512:1156:b0:4a2:7e51:b3e0 with SMTP id m22-20020a056512115600b004a27e51b3e0mr11408835lfg.118.1665609625195;
        Wed, 12 Oct 2022 14:20:25 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q66-20020a2e5c45000000b0026b2094f6fcsm122880ljb.73.2022.10.12.14.20.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 14:20:24 -0700 (PDT)
Message-ID: <289149bb-2620-efd4-8a3b-831215b0a8d8@linaro.org>
Date: Thu, 13 Oct 2022 00:20:24 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 17/20] phy: qcom-qmp-pcie: add config sanity checks
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221012084846.24003-1-johan+linaro@kernel.org>
 <20221012085002.24099-1-johan+linaro@kernel.org>
 <20221012085002.24099-17-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221012085002.24099-17-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_142030_471965_EAD8A9FA 
X-CRM114-Status: UNSURE (   8.51  )
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
> The driver expects every configuration to set the pwrdn_ctrl and
> phy_status masks. Add some probe WARN_ON_ONCE() to probe to catch any
> new driver support that fails to provide them.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 3 +++
>   1 file changed, 3 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
