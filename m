Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84F79C77B73
	for <linux-phy@archiver.kernel.org>; Tue, 30 May 2023 13:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZWWpN05lnHJntDnKZiMu8X3IHnFCcdRz5DdKHpEKvg=; b=OZva5tT2dwLJjZ
	I2gXQGFABLtpJ47oBNrlFVpveFGUVerYu9BnVnYoY8NmXo+Sxc3gB5AisandSwpLzjoXt+iJYpnQO
	QrRq8pMAvASJh7wd1Vq1xWZB1aJqVenPH5rALOVWRSkuYuE5VcwCsilRkDL4fC4v0P73O91q7Szir
	TFs7SiPDiO41Syndc5wUkVdMCymqxI3MStxh8yuVuJV1+JdkxW27vac66tDv0LZJr8/ZdJpOegT5P
	9PRGcdLCK5bwUziDo79tSFkFhP23ElXvIStKy61kBD2r5d+gxxCvo4ec7aECZC4+n58zFavF7OPUq
	XOMEcJccS8DDS62dEO0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zIg-00E1ie-0V;
	Tue, 30 May 2023 13:22:10 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3zIe-00E1hV-0y
	for linux-phy@lists.infradead.org;
	Tue, 30 May 2023 13:22:09 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5149e65c218so3895335a12.2
        for <linux-phy@lists.infradead.org>; Tue, 30 May 2023 06:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685452924; x=1688044924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4rcd/m8WcNQQtUZ5t+JPMtS7xHuDS2RmOZsx2AqUrBI=;
        b=AS8lKWQsAFEX70mEx4xEjeYR+oPg2B0T7AP0fFII9tibVdLUUJKgWAzt7OkW4rnTHY
         iT0NJS5a/KOM2+PPGHp+NRkEDecy+5fIXXzqBmw6270DUgBj63WrYRJD8ZQs/AswAb16
         4PVHxgOyliC9OFowe6c7YMsU7N4GuJ7TTt5GQ16/+35RWyMbjq5ict4nS+kkeRICbDh4
         b4B6w0s12yQ+EGL/08WVAtg12e6iJVvZhSwY5va4NwnILA9qlRKnTmv+sH7/awJxtRtx
         eDfLk9dfMcC9uHvi3avCG3Ae7i/s56WmzBb/Id1DWHjnqnEYpk3J6m4/Jy7Io0ArIsuu
         iueA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685452924; x=1688044924;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4rcd/m8WcNQQtUZ5t+JPMtS7xHuDS2RmOZsx2AqUrBI=;
        b=e2JxfrZ5W2snMJOT2K0YC7k3Z2tOODPCQ8DIexEtVBrcn0iggA615U7IX4sI/KYxA5
         EBJNaI67AvLvYqQfqP14o3DWBZbkIojGlTaZZ3W28fWlHCVNyQ2hGVOVxgTP/JuyQkXv
         90GqmhTLPl3/9X+o9107FrIGQGMo+Bgu0cxunQqGR1IbIBa5TRHGpp6oQulXd1t803d9
         IZDZi+H9qiCV9goJIobE1+KvyEwk+bvZNu9T8Om4tTzkDarrvCoOVUK5xZSjevkKaa12
         pk6l8JrjJ2+xkxTyzXzr6trOfJOF/IRA25U6DG8639Vodt7c/8csIWLWOzzcTaNBolRg
         ZkHA==
X-Gm-Message-State: AC+VfDxZBatJ/2oeIuv6cVrhHHmpd+y6DMAM0fAoSub8tbWJHFqELv7A
	oTODDuGPMDtFLCp42NwtfKevfw==
X-Google-Smtp-Source: ACHHUZ5swZnIqt/3wRBv6QMXu4VLN/2oWK3Mm/fnIbsjpD9wHV2n0FuXPUqTpTyuZ4aBVdIFouM5qA==
X-Received: by 2002:a17:907:3e8f:b0:96f:181b:87d3 with SMTP id hs15-20020a1709073e8f00b0096f181b87d3mr2782421ejc.37.1685452924691;
        Tue, 30 May 2023 06:22:04 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id l17-20020a1709067d5100b0096f72424e00sm7337450ejp.131.2023.05.30.06.22.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 06:22:04 -0700 (PDT)
Message-ID: <fb65244e-ab3b-c473-57b9-2da80e67be4a@linaro.org>
Date: Tue, 30 May 2023 15:22:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/4] dt-bindings: Add qcom,usb-hs-phy-msm8960
Content-Language: en-US
To: Rudraksha Gupta <guptarud@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20230527040905.stmnoshkdqgiaex6@ripper>
 <20230528001010.47868-3-guptarud@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230528001010.47868-3-guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_062208_338678_3B70D130 
X-CRM114-Status: UNSURE (   7.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 28/05/2023 02:10, Rudraksha Gupta wrote:
> Adds qcom,usb-hs-phy-msm8960 compatible
> 

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
