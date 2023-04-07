Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB2E4C6FD1D
	for <linux-phy@archiver.kernel.org>; Fri,  7 Apr 2023 14:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3HKISvlMcVGNuo4qqDtawZbkjkfB70Sk6rHwS85f7k=; b=yWY2HSXEGHvLSQ
	18vwQXh77QcZLufMo+3m3xKUe9BMmHNckre5fJFVVEg7qlvMLXNTjq5gL7gaa/PkZ7Ksx5Y4YNOIA
	zUweSFLTAm2AEl4D7iAVEJj4LQbKpxysgbfcOoaXq2x05lDTWs6I1niGptKt5D302+dxsLu8iCKED
	glFr7/wmn+W0QPionOWJ91kTs9tjW99rosdoHVIjeEPTEAycV5z9iG7leBAYTWvz1JUHgiXMUbnBO
	Nd0+mL/dK+9ct/49vMxk/pdKpYLxSZF306K7h9zcKgz6lbKaZHMevR/A4V9SgEtu2+Atxu5/ctqV9
	p8fB95WNOapUiSZrzs8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkmrc-00AUYG-0S;
	Fri, 07 Apr 2023 14:14:52 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkmrZ-00AUXb-0r
	for linux-phy@lists.infradead.org;
	Fri, 07 Apr 2023 14:14:50 +0000
Received: by mail-lf1-x12b.google.com with SMTP id k37so54726568lfv.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Apr 2023 07:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680876885;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LitglThuTVOTiVOaOmHnsqwO/XYwRjfJqpIXvqvwqNw=;
        b=cAJLA9st/am2ROtRBIB70zu0nglMvAOV3tEd1HC7g3HQTdqzeVP6KEr48jA56VgUXa
         KkJI7AZfrd5ROqX9VFNupGEpR10zXacKOp5mMY9f7a9R3GsOJaD4AmAgvw0bauwySmIj
         Ds/tKOGM5BzZOnDKSg+JU9vEbCnTLAaLtKhlcmJxrk1+MGVZciLb5GCJcqngWOG2Xe2j
         hyBvQft9VXg+87mF6/xYLDeC6AzeE8oAqPkWloaluS73LMS+5T8p0brCWML14lbdQ/v1
         vkqzR7Vn5HoZSrtgml9w6Dm8e44P7dktx/lHy0A1qrgzeNB6ddJI8U5w+im7sjZTuO0l
         7xfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680876885;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LitglThuTVOTiVOaOmHnsqwO/XYwRjfJqpIXvqvwqNw=;
        b=OF3Xiee5l42mEpyKHZzjwxHZMPSgCr/r0jXJFN9BkpzaW0xhSy5yKmr7IJlTAqk+fK
         U9b+JdU4mVE+U9on+MFS2P819VQCZkWBkNt7qUTwJcawh0O08emeCBJotfuIpfT5jl5c
         VPoCEIxP82SZiQy1CxQPAjcWMJLRWQgii7q3bewwUDznBq4JpDX1UFbGr3Bf4x/2yI8r
         ntqL1hadh3LQFPH9KdfatOwfnXUjypr5Mqv3hWIT+hMzxFz4AMPT3fAGtGck4qnaGVsv
         QXcJrVx1TI1NNqq5RBP5rl9p4GVKFLH8b+Q+Zg8lsxNUoHpaFKuEvSNsEDvTRfd0mF5p
         00dw==
X-Gm-Message-State: AAQBX9chMJG8KajuwI5SSlYmJ5Ap+0WgLx7YVBCvrFoSmbOnFjZAheyF
	6ZQQy0/03nA8EkXYYSnSI2R6gg==
X-Google-Smtp-Source: AKy350acqruf2IioEOZZ0qADTAJUPgXe5AxpKHhOF2m+bdEf90YFET55+2fUJcuLINdva0c6Z0S0zA==
X-Received: by 2002:a05:6512:49c:b0:4e9:5f8e:315a with SMTP id v28-20020a056512049c00b004e95f8e315amr568818lfq.65.1680876885096;
        Fri, 07 Apr 2023 07:14:45 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 27-20020ac2485b000000b004db0d97b053sm719656lfy.137.2023.04.07.07.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Apr 2023 07:14:44 -0700 (PDT)
Message-ID: <d9a641ca-9db4-f566-0abf-9cfd7b6f4cfc@linaro.org>
Date: Fri, 7 Apr 2023 17:14:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v6 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
Content-Language: en-GB
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: agross@kernel.org, linux-kernel@vger.kernel.org, andersson@kernel.org,
 bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
 konrad.dybcio@linaro.org, kishon@kernel.org, vkoul@kernel.org,
 krzysztof.kozlowski+dt@linaro.org
References: <20230407061122.2036838-1-bhupesh.sharma@linaro.org>
 <20230407061122.2036838-2-bhupesh.sharma@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230407061122.2036838-2-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_071449_336670_908A30A0 
X-CRM114-Status: UNSURE (   9.53  )
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

On 07/04/2023 09:11, Bhupesh Sharma wrote:
> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> nodes for USB QMP phy are being added to dtsi files by followup patches,
> move these bindings instead to the newer style
> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> 
> Since no device trees use these bindings presently, so we have no ABI breakages
> with this patch.

NAK. Please follow, what is the difference between the old and new 
bindings. I would not have asked you to move yaml from the old to the 
new bindings file.

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
