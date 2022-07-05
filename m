Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD42FCCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wp1XTzWVRq1D8AbNbE1HnD3iKYLVg/j4CPI7YqqlPLk=; b=3oT5J9KEoIXKeK
	1Wzwbj9Shm5eHzP4NUZr07SF1hSBCTxc95WVI427FdxV5J2S5KYiwZn+3idDlSpEoJonEqd40JR4h
	LaZURYlz83bV9FCAooIxA+cjg1P6j5Hfnvihw5EZyfv6HL75+o+ELlbn/AvRNz5QFGauxeQV7Jde0
	nsoYurygbcmW7WWuiVcmrQ7dXQeXlD2ZW3K86sf1K2WlvTYVewtTfczQWrw8jrtSJXqRbOKNCxb2R
	7SlMJupxuO8uWsFwVCCJZLkYFjnToR3HA1eCpBQS5e1fn6I9eNL8iI0H6rwGILV4QO3s6pu4e3wtW
	waYB0ucrzHmYFbjALdgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fNO-00H36j-18; Tue, 05 Jul 2022 10:01:50 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fNL-00H35G-En
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:01:48 +0000
Received: by mail-lj1-x22c.google.com with SMTP id l7so13116127ljj.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=U9PFsZB/0/QmRDr09pEYPH9caFXecL3SOxTVBS97+JI=;
        b=wJ0jItWtosja/wQoJjQWUnJNtMedQ0Paoz9oR1YCGkWbN/mX7p9BbtGW0KibSdpqe3
         bQ04O/a8BT+HQ4AK3ufi8ansChrgSSzNZp6E1yKDrZOJDvGVRMyRvrmsCCfCF5nyAjiG
         A1c+Tckjym7I8zO1Kb5DOmaCjLvOuXQeCrEyTpOvlb91y2TUCS2SGAVx2viDOF2Dqz8x
         /nPY1OiCvFilgLZQLnm2jxqu0ZU1+S/nNcRCongYMEK1qYkIOyFLQwRw9CJ3YSbcRJDE
         h34jXHj+sOBFuFHeyGRMyz/2HLprGosDvQ1taUp+D+KYhH8CloW8Id+Dimkz/xz1KFtc
         MmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U9PFsZB/0/QmRDr09pEYPH9caFXecL3SOxTVBS97+JI=;
        b=6V2O+Wv3Lmmuo22mChWNTA4ScpH3fV9yTEfEwUCe0NW8M+FthpiJ3p97Ln6Rqq/7qM
         0eRG7naDo9oeN1Fu5/Gr1PARU193JOMAO8CSV5GQOgtEk2Qs7A6WI0aFPfCz8hJ6osPV
         OthKfPbFF17bdhY1b+eP4eB4yQKB1svuvLCy8UpaSGyX5pwTdX1Noy6JSP/vQ7h7ubsv
         Miz5FmAXdE2lncZqVF80aV2QpcbjPEbEuqY//tbYtziaytl8gYwt6LucZqwCKmeUG/NF
         /fckz9fN0ho1kNr6rgQiUVF+5sry8O66zmOmMrjm9yIiZNyBmPKWQrmL/jhqxLDvhS0h
         vdSg==
X-Gm-Message-State: AJIora+FilTA4szqICBERYrmx83fpfD7HZyRrWKhxZFSTpc5uhWNKNNR
	+E1hqX3zP/VrRgZLXq0Fyy/AbA==
X-Google-Smtp-Source: AGRyM1vZzAee/PdXNufa+In8yExr4AGKcMzQRZAvFKn5/GGjH7hPM3pVeIBp/gKb93qyLkk6yYkE3A==
X-Received: by 2002:a2e:b8c2:0:b0:25b:6b0c:34e with SMTP id s2-20020a2eb8c2000000b0025b6b0c034emr10195075ljp.397.1657015305041;
        Tue, 05 Jul 2022 03:01:45 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id r1-20020a2e8e21000000b0025d2ed848d6sm465617ljk.24.2022.07.05.03.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:01:44 -0700 (PDT)
Message-ID: <7ae2f396-7cee-7a34-2148-b2a1b7867751@linaro.org>
Date: Tue, 5 Jul 2022 12:01:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 01/43] dt-bindings: phy: qcom,qmp: fix bogus clock-cells
 property
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-2-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_030147_590211_95C0363A 
X-CRM114-Status: UNSURE (   8.82  )
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

On 05/07/2022 11:41, Johan Hovold wrote:
> The QMP PHY wrapper node is not a clock provider so drop the bogus
> '#clock-cells' property that was added when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 5 -----
>  1 file changed, 5 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
