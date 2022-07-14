Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A9DBCCA47B
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ln/jcox5VialDj600d8+FfACDTDVnDvgfZLg76QTU2k=; b=OWqC6wA0ao89Jp
	XJpdAX/lMGoiaoUU5eE130tznowSAe3uRzf/7fTnJYSqvU178RKvVUaS4ioubAN62kCFhmwmZDKAp
	qwJA9GJmCVmVG+McmMpe3kjLIjLaThXndmslSax73ut6mVet07yhtoV89gF951qJQI0ABkqNfRV2L
	EDIfo/MwmhfcDvjHx9msABKdHTIZgnkE9q41wr+mSkp0ol+5co7huh2mt/7yI+0hrTuQHN8ZBdea0
	sFlLj6695in7FJgnmrRmDK/3YBHl1hlTlcg6CiNcvpNg8hUxGhK3EwAgjGkyuwhs4+iuG7XF0pR9U
	s8dQjkwmtyHeRtbGV/gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuwn-00CiuF-Qq; Thu, 14 Jul 2022 09:15:49 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuwk-00CiqC-S5
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:15:48 +0000
Received: by mail-lf1-x12d.google.com with SMTP id y11so1776920lfs.6
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=R+KzWMV4PGws7LHrrh61+iUc6s0/upYI0aondL2dwwY=;
        b=qxclZdaOL0Z2pWNQkJeemWXR7/uucodFnIH6t05D3hME0vYV542h+0TcKto/g/+L9L
         kCrfljDmp7NmiDi+iAjXKqBlAnJJRId8hBZ3vYZlGwgmNHkQZSuPVpOuLNYwfLG0tY9N
         9ZNnJyL1PzpjcMNwr3O37tsrUNGox5N5VPiJYYKCabDQN7z0h4rRRWhht0Fr+QRmv+0k
         MdOLRruTS1V6lTAA5M+xV/wghi7koOOCiDQuMyIdztrwRrGONdDnd1MsAx56UPRFZTX8
         ILOwDQO6BGDQ5c3nwlK9G7/uq1S9rjS4+z+RwJrgF77dwzbubFlDmQ+mnxUBvEzdDCdh
         cdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=R+KzWMV4PGws7LHrrh61+iUc6s0/upYI0aondL2dwwY=;
        b=tlvaSKwz2mgk7uCaUxnX/iQaI2DTp5cooajM8dDqV+9UM9k8vmn3W6++TL8MrUapSy
         +VsG9/mSzS8UmW7jwiZzcqP6zUmlo+fGNn+n7GvdL+sRdOZ2818V6Fo8xV13JlAQ9O6d
         uQlIMZf938oEHslub10PuGIyAxv0Bb0tPn/lqRg9Ccfal/S3BVLTUsebzz6b4l87b0u8
         loCMNgowZl1vTABarxTYyZTlcW+OGTt0Oxkd5aGOjqwYV4sIl+mi7gbX7MBA3zW5nuCp
         pMmGw/P8LXbVV9gR14ebudmHO/3A6zIYaG596Nfvzwz9WFFj5QzAtxB7aMIAC/n4Uvfo
         r+kg==
X-Gm-Message-State: AJIora9mQobGX8QcfV5qes416jhmPmBRMXx/uCBvsmEc0CTBN4fJq4rQ
	EDQqcpeY8wmlnwsijB4Lt4ESlA==
X-Google-Smtp-Source: AGRyM1sQWC4ogVdKX+fBAK6mPRvhxHD8r32F51/7jDL1xoqZXPehDsD9tbjLIkKwEPqmVgm7V44uBA==
X-Received: by 2002:a05:6512:16a2:b0:489:cbc9:a4ec with SMTP id bu34-20020a05651216a200b00489cbc9a4ecmr4630321lfb.173.1657790143160;
        Thu, 14 Jul 2022 02:15:43 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id h25-20020a056512055900b0047f79c636f7sm253111lfl.167.2022.07.14.02.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:15:42 -0700 (PDT)
Message-ID: <0e698eed-e6ff-9c37-1de9-f1f224531c8c@linaro.org>
Date: Thu, 14 Jul 2022 11:15:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 13/30] dt-bindings: phy: qcom,qmp-pcie: add missing
 child node schema
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-14-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_021546_945087_D83F793B 
X-CRM114-Status: UNSURE (   7.63  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 92 +++++++++++++++++++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
