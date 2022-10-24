Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C921FA373E
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWJcPjwI6H5r2jF/NKxDGS5Iwqp875AAnUZqrQ9e6v8=; b=yf1URW4KuNAfzr
	ZazT0o4lwlbtc+vu5d+lDvTzW65PV+BUDQmbEISEAfmsSr5D6ePpzo0cFzMvy365Z23o0u8D/DfRf
	GxX1ky+fSbbFeO+A911K99rYB7klHVy8o4C4vJHIE5rRPe+EGUjwuYKZdIIfG4rsqrt3yQzvTxdsv
	nxI60GOiZUg4n8Bx7d2rkPxOLC6UmDPQedXmgbXgL6JWiKiuIIUjxkl/ktNDzuEw7xKUhQd9NvXDj
	xmfXa4e1o4M/WfL3s7J7qs9pffhuKI5EWgM9OcJhrddQIiMPdbYZFrwkS4np5mSpb1/X2DVEPS7AV
	Ihb5WDNsMUSAyQ5HJXrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxc6-001jhg-MZ; Mon, 24 Oct 2022 13:35:34 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxc2-001jZG-Gv
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:35:31 +0000
Received: by mail-lf1-x12d.google.com with SMTP id b1so16763657lfs.7
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2LVAZTR3gKv5UKkCqDmH6P5cO3ySMAKj9waWhKCx8qQ=;
        b=APEOKhiRVN5yB7YFsQhWY1pTv7G4nWR5Y7JgWzlVXKY7nmp7tLsCDsMlMEB3wOvaSA
         fPVZ9CKJyridRXGCaAV0D0Za1YSmgUJVYTd82jCvsDIk6JuuklhEj5qWjVv+PYX5b5l5
         Y+l2TbOnKbkgwxlsKKV6em293P6Rrbt1m129ORQjF19JrRLjM0zcwTsYa09DY2RFCQiW
         zFPnxeSB1CsyPl1TFNr78j4ijshLx+9qag1tPlSiN3R6Bbei3ko1J7QKoLsOdRglTaYt
         RjkuPxGjkTLK7cnyts0qwEdwV2EGNeRkj39Y9Fh+S8ipZCv4ZH8GZR4Ejl2tlrLnS0No
         zlEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2LVAZTR3gKv5UKkCqDmH6P5cO3ySMAKj9waWhKCx8qQ=;
        b=nHdoL42njfGAH/RNC5VsmSYrLZNnhe6cpdQRSl28FsSGkGXvuIVqyeTVjllTu2bNXU
         LVRM6vCYBt4iiXP8y7MSu4MOuA6fShiFVRSJcR6n7JJwyt7P/JHHWXFiS5fr+/Tt4pS1
         XE96BkBDekfrHboYAVeL0eQrWGj16apjUli9BD3JzQ9qT23IqlJZrGBCHErLUFIkzF0t
         L9AxGTc9Ti/fuGe0tKQpNzTOBEQVE2VFJJpE0hwFl+GJWZhJpTGxCfTtEr7uWh0nsBAG
         mXc+Pyk0litCYwdK9nNozn1tc9yXE4ejK2OLl/wWU19zFnp6F0AILJIgboNrX6xySJEj
         vKuA==
X-Gm-Message-State: ACrzQf2RcEQNSoRdZyRBMYN1DBKLCIXzLbzriRtq+oDpSS/m/URFCMhO
	K7VbB2RBy7tQNHzrA5WhWrPQCw==
X-Google-Smtp-Source: AMsMyM7hjfF63ZAFI01LYKQIk/OiGQ6GljqVWZGUIA/jFtHkSYOClq8uet0aeQllEgjAGRavATMU7Q==
X-Received: by 2002:a05:6512:66:b0:4a2:3c33:7aae with SMTP id i6-20020a056512006600b004a23c337aaemr12728524lfo.194.1666618526866;
        Mon, 24 Oct 2022 06:35:26 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id x4-20020a056512078400b004946e72711bsm4521906lfr.76.2022.10.24.06.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:35:26 -0700 (PDT)
Message-ID: <2f758573-c901-25a5-c4fb-8dc2f72b42bf@linaro.org>
Date: Mon, 24 Oct 2022 16:35:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 13/13] phy: qcom-qmp-usb: add support for updated sc8280xp
 binding
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-14-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063530_608394_78C3C9E5 
X-CRM114-Status: GOOD (  10.93  )
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
> Add support for the new SC8280XP binding.
> 
> Note that the binding does not try to describe every register subregion
> and instead the driver holds the corresponding offsets. This includes
> the PCS_USB region which was initially overlooked.
> 
> Note that the driver will no longer accept the old binding due to the
> fixed "phy_phy" reset name.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 82 ++++++++++++++++++++-----
>   1 file changed, 67 insertions(+), 15 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
