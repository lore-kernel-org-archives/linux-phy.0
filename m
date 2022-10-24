Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0ED4C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0s55WkqTegir32TcYJi4Xsu9f6d/7JMDK5gw4/iOX6k=; b=px8Nq2mLry8Uy2
	oxjljcxDZqxOTPftjbzouNo1n3D4Ilo7LeZLtPSMnUFma2EzWhN0Rhry11mc3/yN2i3TAQV2cRBGS
	Lc63B1vSgAkmbN7N7w2wjW3C3IcfKxEtiICN8dAWzqIbJRGaooqW3wq4dMFMZEx59GkRFKHutpk0o
	E6Hr8e4doV7KUaVEp3nf1W04hV7AmiFk+u3lIoSbjwPAh4JdDL8kd3JLITX+ku3IO0ZGinBBGhbjw
	pkmHBmaA5X/2/4p8M64FbL416n1VdT7IWPqgW8pQdZo+ujhYV0n8f/7Ra+wrp3ah4xbLlnADhVe9R
	UivCPlTMIfveUaBqlGxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZq-001izA-4I; Mon, 24 Oct 2022 13:33:14 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxZm-001iyH-Im
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:33:11 +0000
Received: by mail-lf1-x133.google.com with SMTP id f37so16730472lfv.8
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OSNta6j8jc0z097kR/W20x7XcC+vEjgf1CuXPUrIIVQ=;
        b=bFwAabuKfvfo3U65Utz940VlxvhAw5iNnzUpMDWI+bwVrecC6xt0GKHHkdFP16W3wj
         bIDqjnHc0yVwigz04gWitDY5crt9HGGYWrYDSh73A9Qxln/1qFSG32yU3ti2V+WOrsrd
         rq56Q6m/AFnG5umk6imifEdEUE5PGXdVyEJm/iym4bxpgNB4BjcAf/k7ce7YnQomhm84
         aQ30+sTcl1FWn1guGlM5LdrKGp8WLSeo06Utbx48ATzvI6U/tWKiaz19+loy9JIW2Pja
         /juxKuxiRmEbcE9i3dfHDVIma3upkWyOkzOyCzW1zLiSEThXiQ/tXs4QrLJfDKlszOv9
         xapA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OSNta6j8jc0z097kR/W20x7XcC+vEjgf1CuXPUrIIVQ=;
        b=HsQAmURDUT+IJmTf3iQ567E1jFjkUEkrOINUWXQ8cvfvVy5DarX4M6jEuclUwdylt8
         RxAOiGb6SPFRxttZs+WmfHFYv212ZQUFP6A95bAghrHpwZIVfAzdqRU/3YbDLIdbm/du
         NcZ7xWIUhS5TVzjnHXxiXnZjNnADIgHWwgYcHG74KKR/OW0N1I/cy1mSmbdW9PxAObOq
         DYzYi2mEF0jsr/rCJUGgcSSUF7slA4u8j1Y6XCg9cxgOh3kIMmTZ63oUqvJ7BvHAmDTg
         Opt46zt2NZIERSTtvT84jlcTr42vyikapxql6oNasMykJJjnYJ01eTZ/oemDl3AJs5Rz
         lmvg==
X-Gm-Message-State: ACrzQf0B+r3iQIwTUDXztlp+3WiBADjsO3dbgX+0mpgYDvE5UVes04wn
	s7awPZqJq81DxxTaq4e5tyZAxQ==
X-Google-Smtp-Source: AMsMyM51xg81Lcr7zB5TgegVtMIAv0VkQFmi/9Q7RjzyIAWwOc60oiFNKW2WKE+r8fKiZ0uLNOrVRA==
X-Received: by 2002:a05:6512:224e:b0:4a2:5060:55ef with SMTP id i14-20020a056512224e00b004a2506055efmr11755036lfu.412.1666618388371;
        Mon, 24 Oct 2022 06:33:08 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v6-20020a2ea606000000b0026dcac60624sm4808972ljp.108.2022.10.24.06.33.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:33:08 -0700 (PDT)
Message-ID: <db383c93-89de-d76b-7cb9-00e1bf10fdb2@linaro.org>
Date: Mon, 24 Oct 2022 16:33:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 02/13] phy: qcom-qmp-usb: sort device-id table
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-3-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063310_653711_40381582 
X-CRM114-Status: UNSURE (   8.07  )
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

On 24/10/2022 13:06, Johan Hovold wrote:
> Sort the device-id table by compatible string to make it easier to find
> and add new entries.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 26 ++++++++++++-------------
>   1 file changed, 13 insertions(+), 13 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
