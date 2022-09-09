Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46391ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Sep 2022 09:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0SVaps0zYw6S/7SSkVq2Dwd0cJZwEC+b1dMwNzFlcMs=; b=stXMGXMZVCX7qo
	mMrg6pdJaRoLjxX+yyisXCt061Dom3VXRKev3PRW4AKWOcR855k1gMHN8K2j9EI5iqdBCB9xRXuyr
	sWxvo2Y/pBnlXCMCjGbFY3rIrJBYgXCWo53LqWu2ExiaIB5gHYipanuqTADesAcBF22aTs5b29fQ2
	IuTaxgDXF6uYA1F9vm/jYtCOarlgtAYueMnHPcNQoslxyHBFRkUF0WjlXaG9WqMGhzsN8H+PjHiR7
	B6OngFP/1NMODAStYxyQXsfDrLWQz0wusHyVDL3y99O/TI5J6jApCN95MxSsc5bfkVrucpkLIVS/5
	A7m0S6RQTeyVWvwYMNjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaRe-00F5ff-FL; Fri, 09 Sep 2022 09:37:06 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWaRc-00F5eA-FH
	for linux-phy@lists.infradead.org; Fri, 09 Sep 2022 09:37:05 +0000
Received: by mail-lj1-x230.google.com with SMTP id by6so1119324ljb.11
        for <linux-phy@lists.infradead.org>; Fri, 09 Sep 2022 02:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jJHZh3XOc0dD8msZ4f9CzmXSU1jFvF34HN6njLtaCUI=;
        b=fn5vyPQIwEzVacy8ihq1WYzE4mGJbBxwXPqAaJW1j0oEYUG0RHS+BK23giYaTgXKOW
         d3qEI7aCH5SQVntmQiMZV+JAl5xpgBA8nRg2NX3/LPxwLoFahmPgm5kNu1PetJrdq6Hb
         8dNbHvWvFkVI2OXQHmyWSx2P2Z+mOl/SbLfku0ZjEUnMYaU4tJ23fNJu9awue06bdZN7
         g7rba1E81GFYD25q/g973heKK+2qnFjppuJdTwBNqsiOBJDW12E9rihay0gNsf8a7Xys
         I19bgGqN5F1Qh2hPRVDe/1b1NGV7g9h57Ft3ZFRnXf32+xltowN816qusWPU6HNC2h+J
         vR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jJHZh3XOc0dD8msZ4f9CzmXSU1jFvF34HN6njLtaCUI=;
        b=Ob8DB4Ov9AcWWa/bKdulkf+rX1Dku0WjCvbZ9jcsfY4jF62ULVLA2RqzzB7YNg+6Cm
         w7LNDNzBWp7hRByGPGy1+xAfhKWoZLKbIzjLgy4ked5eEZx35SzrCRtCQa52bx3LcAHJ
         FbTWQIhLj1pf0E9p4dUE1RUz+z9B/l9AcC7IMdNBApm2s/k0jvcJP0CN3yjxAHq5O8Ww
         VhXKfTcHlhDEs3+/Wv98CqHfQZkgnsvf7c35xZSdWcOQveAv3GNfhscBce79cwVdM6pQ
         k2DXTXtbVrJAZ+cZrc2s7k+5b59zxrn49+/tQBLo8K05me4zouQ2NTL5nWdGLiIOUN4T
         2L/g==
X-Gm-Message-State: ACgBeo1C4KdI0rI3/FwVjp8hoD6d5TV2jZYhml+7mM9ShDQMVoYPeGKO
	jXvbehMF1pcSaFAkangn9r1BKgi4dsBsnA==
X-Google-Smtp-Source: AA6agR4ce1I8gV2VI14mW0UHj3BF7vtBvvaXsUhX5rocfFkNQz4SoWCWb//HltaeKRppDFlBoR3bpA==
X-Received: by 2002:a2e:bc20:0:b0:26a:b0b1:85b6 with SMTP id b32-20020a2ebc20000000b0026ab0b185b6mr3855069ljf.118.1662716219768;
        Fri, 09 Sep 2022 02:36:59 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bd23-20020a05651c169700b0026be7a4fa49sm655ljb.99.2022.09.09.02.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:36:59 -0700 (PDT)
Message-ID: <1a083979-c92e-3b32-fa2f-606359b93ac0@linaro.org>
Date: Fri, 9 Sep 2022 12:36:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 03/16] phy: qcom-qmp-pcie: drop unused runtime PM
 implementation
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220907110728.19092-1-johan+linaro@kernel.org>
 <20220907110728.19092-4-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907110728.19092-4-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_023704_538894_CE76F1DA 
X-CRM114-Status: GOOD (  10.59  )
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

On 07/09/2022 14:07, Johan Hovold wrote:
> Drop the unused and incomplete runtime PM implementation, which was
> only used by USB PHYs before splitting the QMP driver.
> 
> Note that the runtime PM was never disabled (and state restored) on
> driver unbind.
> 
> This effectively reverts commit ac0d239936bd ("phy: qcom-qmp: Add
> support for runtime PM").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 38 ------------------------
>   1 file changed, 38 deletions(-)
> 
-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
