Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8C98C3DA7A
	for <linux-phy@archiver.kernel.org>; Thu, 29 Dec 2022 20:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjqaXAqWxGScUce402OvVBPwqjj3+fVtQ6O7uZKHPDQ=; b=Jy/LuGn1tbV4Ov
	Q21hxAu7aYmMX2ZUZ5szlA+kzUz5xJ6txXd5Q9Wbv6YMb04DuZINgou/FcpYxevYH3j9d1vMSbsFc
	14EvwNn1Q3Mrn3qPtdFbzxTLeOp9OthJksYk6vfvdNj4Lm+ZNqAbxDVkdbsJ9p4FlB9xxOcrhckK8
	RmgQ2f1iP+SxQBIVq/hDxJTMNnMsnYNm8G4CfdYeZimmzft7Wi/4j3c82hAYVHKPOknzifN+gRJqk
	T1vezeglXIiJ5y32J3lr1zP+Uk5eeUW9lkrERkHE8xLewFk6tCwCjR+zFgzFoZC94lpguak2PVdeu
	KFQs+Kna/0sWsYgapnzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAzMd-001iZX-11; Thu, 29 Dec 2022 20:18:55 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAzMa-001iWh-2V
	for linux-phy@lists.infradead.org; Thu, 29 Dec 2022 20:18:53 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z26so28945774lfu.8
        for <linux-phy@lists.infradead.org>; Thu, 29 Dec 2022 12:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u/hmS7ZRFlU0egPJonOLLnIksGJ4WM2luDpw9hwYG3Q=;
        b=eHAiGv5O8Aa1wXevv+zHD0COpXXHaIA7lDxNXDiKPt1xdy7U8DNM0UGEiDAf46G0BM
         u17zuPzl9kMwLuqfZk48F6n3gqum4L8Clr7PL9sEiIaccZcTnOoExgpUrtJaoG2nKf4N
         IF0RPWncS4kzB9qba6SxPHQA/ugs3NpSYXrFQE1Nojx83X61/aJxJR1gV76R6igZjBAu
         PdQYRvctqAS+Bc1sT2j0YUhcNSImV4eL7pAs45DOmzGjMGXnh+Hj0MQpOGyLBIdLyrb0
         OI0bDMwNFsLF0hTcFNyBDY8CKdzBV6+Y0OGQvaVCxyYctFTVpawl87vxBvdzqTF9hJtG
         cgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u/hmS7ZRFlU0egPJonOLLnIksGJ4WM2luDpw9hwYG3Q=;
        b=fKnBs7nGwPKHpRRvpj+YRdbBG8nzddSgCwJ7ZI2p7oMSNhDCNChbTZ/e2xvDkx0Qcf
         uzbeZAjOnUpletPOjkmgELeC8tJOBQF2dFWQlCNr6sYftLntgF0qjJUCy96LTyLVZliO
         Dppm2YVbybJ+l1N1hbNdTVegJyairIbOxO5bpMaj7VcJ1U6+ZHKjusDuoEtgg4IOqZ9A
         5IGRs5W9KAxyhvnBjWw6oPbEnXleMfOWcr/0SbguPQOHvnWCVkPUfl/x+aLP0Tj9BfwZ
         U9f+skBMOa7NWwQAuCDPCSPf/jZRVhgfi79js2rYEx70xTKlns9gpzeqXxf5W/PwNKmY
         s49w==
X-Gm-Message-State: AFqh2kqxvESJr6lW7Zsop4UKcr7IBkfz/6W3d0mSDCFSCrbenOyifWCc
	Y/tFTQjFIZeZUX8WtKHmIe8kjw==
X-Google-Smtp-Source: AMrXdXunGXgJpFiwRGFbyxOCnKhEl+sDDFXycFjfBygCMWiBMf0aMVHepfLueVDIBeWNUuED2KPunA==
X-Received: by 2002:a05:6512:2385:b0:4b5:90be:33c8 with SMTP id c5-20020a056512238500b004b590be33c8mr8991769lfv.48.1672345129590;
        Thu, 29 Dec 2022 12:18:49 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id bq8-20020a056512150800b00492e5d31201sm3152576lfb.7.2022.12.29.12.18.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 12:18:48 -0800 (PST)
Message-ID: <c8a05a9f-823e-57a5-da18-0a199d96c99f@linaro.org>
Date: Thu, 29 Dec 2022 22:18:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: qcom,pcie2-phy: convert to YAML
 format
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221229115932.3312318-1-dmitry.baryshkov@linaro.org>
 <20221229115932.3312318-2-dmitry.baryshkov@linaro.org>
 <1b11ca6d-3e28-f019-435d-06daea38d00c@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1b11ca6d-3e28-f019-435d-06daea38d00c@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_121852_220366_0A382882 
X-CRM114-Status: UNSURE (   6.91  )
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

On 29/12/2022 16:01, Krzysztof Kozlowski wrote:
> On 29/12/2022 12:59, Dmitry Baryshkov wrote:
>> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
>> from the text description.
> 
> You got here Rob's tag.

True, missed it

To save a repost:

Reviewed-by: Rob Herring <robh@kernel.org>

For the reference:
https://lore.kernel.org/all/167209187655.72399.4038954760167968816.robh@kernel.org/

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
