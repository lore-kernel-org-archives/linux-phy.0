Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D466FC761A6
	for <linux-phy@archiver.kernel.org>; Wed,  5 Apr 2023 13:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qym9IkS4Pajk9G9G3r9UnAfZrG1Blq8GqLtN2FBP3BQ=; b=pOBxiGwF8/MAeo
	Zu61UEwNx+7CMVJW/Tx3L/+JEFOGMdjVYslOU2uZ7nGrKFcf3dOpKwgQRCYGcg1414cdQooHt0AVM
	7VY0vqpIDgJIID9MZ7z9rJ+lcldlpm3MYcHoOuXhXHmBFc8k/5GvvPl+q6dAkwYfWZ8zP/zLftmFY
	sHt31SWA0MeBkSjXltNKvc5dt6tnUlFp71eKjjdyhJBYvX9ytg1ffOMtaY/pFcFXSU2SqsvYZLNvi
	VRxINmwAg8t5jH2FlvpBoIqZaB3jO7dkZK0jO2eZnWxE68KB4AnXJhauW7Tt5PAXc/3fWXfTkArx/
	Juxj3+c9hcdiWjwusyCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pk3Xu-004ZnC-1T;
	Wed, 05 Apr 2023 13:51:30 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pk3Xq-004Zlh-28
	for linux-phy@lists.infradead.org;
	Wed, 05 Apr 2023 13:51:28 +0000
Received: by mail-ed1-x531.google.com with SMTP id r11so141280085edd.5
        for <linux-phy@lists.infradead.org>; Wed, 05 Apr 2023 06:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680702684;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uPqH7o+0wiRlBmcx0MUrrIJplx2idVv42J11sE3f/KY=;
        b=HSDwUFhV0XqGiVO+Xtk10tawmjOw1BmkD0h5DCHj7+7lDSU9h0va60K2EuqPQAJ0wJ
         vh17eJDGLMXGwvFJc2Lh7N8y2Qzx+9BDw+B1XDfjJkbEGmma5uQ7p4GXrdqzdGPkhiJK
         /cuLGMpm0w1aC1SsAKpQI1+Wp2q6E0EWUe1eTmgk6R2V1/Wa7KAm8RYjB7TgXo1DUSOr
         mxGdz4W4ZfehzI6DY7FqsJiQCXFTMYPWhm1VbcuJhNHqhLFTR8YS2kVzAdhBTHcepKIY
         3m4qwI+zq8LlvwesdwMxCViebZRXhiKtGuCHxVd8zkGSu7+cOz906fFSNDrtV+ez+Yyq
         pM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680702684;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uPqH7o+0wiRlBmcx0MUrrIJplx2idVv42J11sE3f/KY=;
        b=o5UiuxK8d9h5k4Rb3BB5TzzhbafLBXUJzz9xqOeHhw0FCA4oTGA0icJ8NNeeNMHjDw
         WwbiN8HuRaZ7OMc9JnU0M6GdmU12lEMU5jka+8D+ipQO9vnw7pJQRlvhpWK4fdqQRKsa
         3FEvMB1iEMds5GR64AUp331d1i0gQUa4zD8ylndv1s8sdeft99aO7Fu9QzfxooeNJNzj
         dOZDp3VDwK2zzIfiIktdXgHKaT4fDsYxV6eFrjQJjfpT2l/+Xir8UWdhG7v/SrfNrvOU
         by7l+0PLNsxSeS18SkpRBDham/1sTIwH80Xc5/NiJeYCAktlvXYel+lvzdynUcIs62Xh
         Zcvg==
X-Gm-Message-State: AAQBX9c0kQ6FDXaDQ0u61Bt/jVY3hh7FlD6Lr+7/V+V3QJb80sNqvBxu
	YLDboaKKuSj6v3g/efsDdP6jYw==
X-Google-Smtp-Source: AKy350aCSBtfQNEG9ivhJDXRScDkDl7K9FxzN5uKgWKy9JhdSLbTTf3hT9NuDFad11cE5iNMfsxaLw==
X-Received: by 2002:a17:907:8b95:b0:932:c1e2:9984 with SMTP id tb21-20020a1709078b9500b00932c1e29984mr3530013ejc.58.1680702683903;
        Wed, 05 Apr 2023 06:51:23 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id m23-20020a509317000000b004fbd365fb33sm7391465eda.38.2023.04.05.06.51.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 06:51:23 -0700 (PDT)
Message-ID: <5bbf9452-43b4-4b7a-8879-003efa26b0f5@linaro.org>
Date: Wed, 5 Apr 2023 15:51:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v8 0/8] Enable IPQ9754 USB
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1680693149.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cover.1680693149.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_065126_707801_B9690959 
X-CRM114-Status: UNSURE (   9.45  )
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

On 05/04/2023 13:41, Varadarajan Narayanan wrote:
> This patch series adds the relevant phy and controller
> configurations for enabling USB on IPQ9754
> 
> Depends on:
> https://lore.kernel.org/all/20230217142030.16012-1-quic_devipriy@quicinc.com/
> 
> [v8]:
> 	- Update bindings for the clock name change
> [v7]:
> 	- com_aux -> cfg_ahb in patch 7
> 
> [v6]:
>         - Incorporated review comments
> 	- Resolve make dtbs_check messages
> 	- Fixed pcs_usb offset
> 	- Board dts file name changed
> 

Thanks for the patches. Three submissions within few hours it is a bit
too many. Please slow down a bit, give reviewers chance to respond and
wait with new versions at least one day.
Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
