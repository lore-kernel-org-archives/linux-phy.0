Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C15C636D3
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jan 2023 18:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anrGwTgXlHCxarpabNWKx1ssGDSjun/oDA2Jjg9XLjU=; b=uRkfxsP3kRb7eF
	MV6e3NUiJpkyMDch6pL6HJRg4ALpqjWKPqMsv5MfnYmwj1STV8L6aNHjqPZALyxoK6UGU7rmqzj5L
	tKu5n4iMyuBJDBLXoqqw5gis16Ejd+Yf1XiHLKE9G113+EdjuCT4gmyrbq7yNb/JnHuUf4EgV3cNX
	oHTYQk5ytFGmqxyotcJ57Zj2e5EgBol41g63wf6tIu486CyhnXzD2E8BV5Nkyukleqik353WU7Wye
	FIv76yhEr//UDjryyQbgGmezpxS8AadxU+0Ke41w+VojGHD+BQuRd0OO+FWC4LcZ7EDEVHdzBE1Js
	C/A5+7LyFdq5DDZCNkJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMZ68-0055Fv-GL; Mon, 30 Jan 2023 18:41:44 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMZ65-0055Fa-Vr
	for linux-phy@lists.infradead.org; Mon, 30 Jan 2023 18:41:43 +0000
Received: by mail-ot1-f47.google.com with SMTP id x26-20020a056830115a00b0068bbc0ee3eeso2087220otq.0
        for <linux-phy@lists.infradead.org>; Mon, 30 Jan 2023 10:41:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uU2+lFL8KXnb9RT45XBhXq8ZrCERZRKmVeI/JNeDdKQ=;
        b=6c3r837sf7yBXr/sEF08bdbJMEvZeiNX6kGj6OvYRmM0EO2V9iaoenIvQInQRt3wt6
         R+xbQIqAOq49+cHRNavqNkJxViiqufUG8XZ0aQRuHkpeSMjkgrQAFY/NyXW8XRPhBL3B
         YZmfwaTjnIBOnzsr7V1S1jxdf/a5KN1eA9JADz8lEMYwKFL9oTU3TW465O0gbw+rCijq
         0TTlImXKRm544YTl1vHCKKLSBqEFNtuT7rDDdLC8lC4/S5AFUqdFEluL/afuPrzljbzd
         ITic0kneivIGXfMffDimX2+wedJXdgcApLvQqKBJI4RsmgcH6vhM+UJXs6A6Nu9INPNz
         yZVw==
X-Gm-Message-State: AO0yUKUYVXVr1Ti9hWepQFweKYL+2Y2Oiy9dcct7YOAMSapFIF4lbaRb
	TphK63jsPc5jBgY4S7gzng==
X-Google-Smtp-Source: AK7set/uLbNflW1cFghxIZz5MH8dz6piD9fmGR1Yw/at6BG3CTVUtPBg5w/AMqTWqSqeuODiozv89A==
X-Received: by 2002:a9d:6f17:0:b0:68b:df3e:c40f with SMTP id n23-20020a9d6f17000000b0068bdf3ec40fmr185279otq.23.1675104099536;
        Mon, 30 Jan 2023 10:41:39 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j1-20020a9d7d81000000b00684c9c77754sm5670709otn.69.2023.01.30.10.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 10:41:38 -0800 (PST)
Received: (nullmailer pid 3094271 invoked by uid 1000);
	Mon, 30 Jan 2023 18:41:38 -0000
Date: Mon, 30 Jan 2023 12:41:38 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, "vkoul@kernel.org" <vkoul@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v3 3/8] dt-bindings: phy: qcom,qmp-usb: Document SM8550
 compatible
Message-ID: <167510409756.3094208.17002699446729168546.robh@kernel.org>
References: <20230126131415.1453741-1-abel.vesa@linaro.org>
 <20230126131415.1453741-4-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230126131415.1453741-4-abel.vesa@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_104142_060184_73B683C3 
X-CRM114-Status: GOOD (  12.01  )
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


On Thu, 26 Jan 2023 15:14:10 +0200, Abel Vesa wrote:
> Add the SM8550 compatible to the list.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> The v2 version of this patch was here:
> https://lore.kernel.org/all/20230126124651.1362533-4-abel.vesa@linaro.org/
> 
> Changes since v2:
>  * none
> 
> Changes since v1:
>  * moved to sc8280xp bindings
> 
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
