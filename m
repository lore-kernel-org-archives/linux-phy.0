Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2518C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 11 Oct 2022 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/f8LBFvt8s2nF9tdc6fNRk1GIMc67Rj79cqgGT+uHeE=; b=BFdhL8P2Sz4PEy
	JJNCdmBir6D2/ZcsWmJ3ZADKQ34nj448T8XW868KXk+F4Rp3Fg6DO19Vpyf9w1QPHYnnjdcJHu+k9
	hjn68kf9x8tHo77qa4DjU/P2zfq16jLAsdxPDM77UiUpTi43bE9Yn+tckERE6/WfZ2KvSNSJjkocO
	g8fs7tvUTWE9nv2Yf3etUX6U5zcN09ttX1KKEgEt9sPFE3rn/cu6nIy82abDSM7Mb5+d2QCvL3jvQ
	5Dib/aGcp/F+B2DtrxCEILkdmp4cNagak3F+iYTTubKD5LUMldCBfDshNsRPpE/V1hVz7eOucSwGd
	jGmMcrtkR4at2DGK/fbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFdp-004NvD-5Z; Tue, 11 Oct 2022 13:49:53 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiFdm-004Nt8-1c
	for linux-phy@lists.infradead.org; Tue, 11 Oct 2022 13:49:51 +0000
Received: by mail-lf1-x131.google.com with SMTP id r14so21201011lfm.2
        for <linux-phy@lists.infradead.org>; Tue, 11 Oct 2022 06:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1+BwPLVCEI9mF/rLBXMUzn2Ll2qqkV7d9SFJM7M3LtU=;
        b=cWRJZzXau7Gnr/HVDe41secSzWglvGGkCNzljUdT1qmGb5dqLhqUsz6CyQTnBTJoIo
         5FdkkBjLg4JYbrT+HMESTPjva2VooD+GBAJUXb4G+dM70goAhnK8K5FIXBU7qe0P8PvO
         fThtwZYQlds8DHt4Z52jxuXjKb+dCo87KXb3fTozrCpECA8zJDDKM4cfSsn0ZjFZdFkK
         15nSDj9sNuXfLvDRISt1BACNb6bzO+kSCIiwtJ16POnWF7BWABlyemehc1oZyM5vGyP1
         2ItkwJQ6PM5KJppH1ZnC50xMAUIivtS3K+MUjrIWewacvSJsDnZl7xEqOqyBe81DmsL5
         OqfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1+BwPLVCEI9mF/rLBXMUzn2Ll2qqkV7d9SFJM7M3LtU=;
        b=6F44eakAJq5/g9dyxqOM6MKihpSYobj9FEuTNlF6hLtcVNbvpK21qCfjGEThf6AJOt
         xwR0maMKM4KIBwbgHgqPfQ01J36mFZmi+aC2BVJsVNoyHQWVj/PI1j7g59ZvKvWd57VB
         GUcNyqD4rzHxrImxVqjrTOqZPJR/jGVHZEf19pXO25YPSgUOH4GVw3awq1bpaIjf8/Os
         /NdyLh/bO0Xts/h0pSOT2+1eGg8raXZHHeiO4+lVNOhipQG/9bZ+//VZF3qRqb23MP37
         S0kDiS+9GATPAwxyineo2uhvx6wiWKdsaCQPZSeCPZnCr39FUoMT2VqFbntVRfoLBB3M
         9Exg==
X-Gm-Message-State: ACrzQf1w5HBsLp0p5g9dV+Z/s1bPZLhafytoRnnpbr3sW2evITEADyji
	yIy49ftOFtE0QqadXGeLOijnYCYz++ZwiQ==
X-Google-Smtp-Source: AMsMyM6c8JfoAyStPDL8zU4aaz+c5a/daQc06oOoy04zGjW0JZLSAC+7zT1/DsnmTpJkOWK9Jq/jhQ==
X-Received: by 2002:a19:915a:0:b0:4a2:458b:ffed with SMTP id y26-20020a19915a000000b004a2458bffedmr8263961lfj.181.1665496188628;
        Tue, 11 Oct 2022 06:49:48 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id c22-20020a056512239600b00492e3c8a986sm1864356lfv.264.2022.10.11.06.49.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 06:49:48 -0700 (PDT)
Message-ID: <777c54b0-7e38-3ce0-2dab-7754129fde94@linaro.org>
Date: Tue, 11 Oct 2022 16:49:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH 08/13] phy: qcom-qmp-pcie: drop power-down delay config
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221011131416.2478-1-johan+linaro@kernel.org>
 <20221011131416.2478-9-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221011131416.2478-9-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_064950_113110_3D7CEC1C 
X-CRM114-Status: GOOD (  13.23  )
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
> The power-down delay was included in the first version of the QMP driver
> as an optional delay after powering on the PHY (using
> POWER_DOWN_CONTROL) and just before starting it. Later changes modified
> this sequence by powering on before initialising the PHY, but the
> optional delay stayed where it was (i.e. before starting the PHY).
> 
> The vendor driver does not use a delay before starting the PHY and this
> is likely not needed on any platform unless there is a corresponding
> delay in the vendor kernel init sequence tables (i.e. in devicetree).
> 
> Let's keep the delay for now, but drop the redundant delay period
> configuration while increasing the unnecessarily low timer slack
> somewhat.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 27 +-----------------------
>   1 file changed, 1 insertion(+), 26 deletions(-)
> 
Anyway, we can move the delay later.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
