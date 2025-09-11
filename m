Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F67DCA1016
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 12:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6HOmeTLmIldymnPcbIWHOxOuxLhQMR820YRjfQPeF8=; b=uCdUMLtGO5PKLf
	JDqUdPAlKnyHJ5/Lpm+LFMgjo1fUeP2WmPaqIm6P1zKC+QHqCCKQzsZ10WYATrdyTwseHMwiMEhLu
	nB2uxfBjeaWcsAJBu+7xKz+1VrYBPO5z2bc4Yqj+LYELf0oLjmQUaLArH7vCR6QmcgG1ncXziX9oS
	k+hvNhxcEtih9GEyoHORAsRNsXlEgslwo4naGEoKbICrsv7NGOCdqElpv41GmpIU7ZVim0xo7LFhM
	bKVJjtrj7ZE9oJ3a2jCe2qCmkKP8dk2tf+hZdTsg0uMSLFNnbtG774TeeePxN5Fq4Ys30CfGPgdTz
	oEa1btysOtSIM3plMQcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwgUc-00000002ziR-3ov6;
	Thu, 11 Sep 2025 12:33:38 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwgUa-00000002zh3-3wmS
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 12:33:38 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-45cb6180b60so4826475e9.0
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 05:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757594015; x=1758198815; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=77w/BLu3louQ5LAeAyTpxsMARQdOP7fXiEQcpRRVAfE=;
        b=WVY1Z3IAWbX9DTMhu3Xg6TQA9sKFL2gMDm8bdxTfbdpXV141+ne4cnjHCirJr38ZK/
         CT/PafuqUKHn6aUuXqZ9NGng/CZpHuYEvGoFnmxpvGM7P1b8j4HOtes/H7a8CVZTZbhw
         ORrzdnDb2DdwHDpP7R0jnrhu3a/voAATOfvZLm/YwO3dg80rsArsXfA32wLHSP7L073e
         Qg2gfdFJbrcuK04VqFGcoaMdVss+ZuX1HO+/X33lMbFvAz2kkIG8g9hnck/aMcghcB1u
         eVUVa1wumvYB1d8G7kLhdnUeCe2mm1VrWUSQ0U190/cZt6QpksrNJr06XHOB9tLMZT9s
         Q0Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757594015; x=1758198815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77w/BLu3louQ5LAeAyTpxsMARQdOP7fXiEQcpRRVAfE=;
        b=LNYT501pVfcLb1+aLUnSXjQV2LvtiAIgb3iijNSNMsG4UdSzGUsC0uLeJ2/udjJnH0
         yBUtjN4v6AlYffaPWJPLL5ln+ajYH2uER2mCc1hw143nGfSqdpEbK2xMdG3dx34kaMfT
         2fN8vCdOtDswUBQNUpPmg3VI20nLlL2PDpE0OSnOs3VWIJgk2/B0KS68zauj3YjYqoT+
         9nkAi58DBhzjzLtoRF+Qum4q12K2GRVplAzgHMm1zbUijuSTxJRfI0r7aKKadkXFH3MQ
         kHaCJhmOuVbR/ZuMB+dl4XlUQJ1j5drgbR+j/Cjsjk1kxNVQ1iuXrFA//ohHiF+2ZUu9
         FQXw==
X-Forwarded-Encrypted: i=1; AJvYcCWzBmdohNbA1Z8pO2eGazEdkQ7mZV77AQw+PYUMeIc7PBZMYD18/HY8h5EhILaYupiEl3mOU5dores=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/2h5iB3Qmioo1l5YFiZtIgwW5+ZlYbpv1bvwFoYIyLSaqyKy4
	B0N3VkvgyomACIb+iHMaL6KQV1Tkt5skQsoDuNz6vDcaMy9hz98XB684rWU2Zl1/tW4=
X-Gm-Gg: ASbGncsX+qjX3EipvIjeO4QeBaXHoJqw3dZ/iK8P5oSFvzYWcJpl7lH3dl3K72b9xvh
	EiOymlSWUP2TuhxIBngGfDFILzlQgZaaVH9jxWKugryfTKpwQz7tAZuFm+G2pYTwKNl+mfe9YTG
	zA/w7ECBf0ZRz/PEUDi+aYoTmTD8zv3fQj1iBLhZjdfhVlYpvQObgXGWf43RgNRxitaEHDc+D5e
	BES+ujfL+vpaGwh3o6s6exKyo/2XscY8AyuYaZWH4JWIGx5Bnn15vSPT/YvnRxeukvVZaDYgBHu
	+qjiAEbUBFzpXvhkni7TM3LgkVzTHdk8IiNNqH4q5GLk0UJDO3Ssmfu/oF+Fq9Mc8kARp++uAKb
	BNANYSkg+EZ2tY270ccQ6Tw==
X-Google-Smtp-Source: AGHT+IERNyAnFxuua9N1uDZtOVhilat+DKTgWSq+/gMo1aCu3TqF6Sb2iqngQDwNMVzvjL69GHQfIQ==
X-Received: by 2002:a05:600c:1993:b0:45b:8b3e:9f66 with SMTP id 5b1f17b1804b1-45dddeb93b3mr157844605e9.13.1757594014898;
        Thu, 11 Sep 2025 05:33:34 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0153fbd5sm13210085e9.5.2025.09.11.05.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:33:33 -0700 (PDT)
Date: Thu, 11 Sep 2025 15:33:31 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: qcom: edp: Add Glymur platform support
Message-ID: <2mcs5cov44frxyvg3k3nuov3zedaoc6ayd5dpoh7r5kcsxa5eu@qrqxpvnrkgj2>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-3-02553381e47d@linaro.org>
 <3bo2xr3jb3hrzsetjzd62dmcif2biizvoanxwtyhr2dmkb4g7x@dgrcvzujcwgq>
 <wetzewmbraeawwintmxqntjhvennq5iu2jeegel3glk7y6rsnf@4vwscm5bwezr>
 <fff688c9-af7d-43fd-a3f1-00209842bcc9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fff688c9-af7d-43fd-a3f1-00209842bcc9@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_053336_995975_1A9AEC17 
X-CRM114-Status: GOOD (  21.83  )
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

On 25-09-11 11:18:53, Konrad Dybcio wrote:
> On 9/11/25 10:52 AM, Abel Vesa wrote:
> > On 25-09-09 14:12:46, Dmitry Baryshkov wrote:
> >> On Tue, Sep 09, 2025 at 01:07:28PM +0300, Abel Vesa wrote:
> >>> The Qualcomm Glymur platform has the new v8 version
> >>> of the eDP/DP PHY. So rework the driver to support this
> >>> new version and add the platform specific configuration data.
> >>>
> >>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> >>> ---
> >>>  drivers/phy/qualcomm/phy-qcom-edp.c | 242 ++++++++++++++++++++++++++++++++++--
> >>>  1 file changed, 235 insertions(+), 7 deletions(-)
> >>>
> >>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> >>> index ca9bb9d70e29e1a132bd499fb9f74b5837acf45b..b670cda0fa066d3ff45c66b73cc67e165e55b79a 100644
> >>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> >>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> >>> @@ -26,13 +26,15 @@
> >>>  #include "phy-qcom-qmp-qserdes-com-v4.h"
> >>>  #include "phy-qcom-qmp-qserdes-com-v6.h"
> >>>  
> >>> +#include "phy-qcom-qmp-dp-qserdes-com-v8.h"
> >>> +
> >>>  /* EDP_PHY registers */
> >>>  #define DP_PHY_CFG                              0x0010
> >>>  #define DP_PHY_CFG_1                            0x0014
> >>>  #define DP_PHY_PD_CTL                           0x001c
> >>>  #define DP_PHY_MODE                             0x0020
> >>>  
> >>> -#define DP_AUX_CFG_SIZE                         10
> >>> +#define DP_AUX_CFG_SIZE                         13
> >>
> >> If it differs from platform to platform, do we need to continue defining
> >> it?
> >>
> >> Also, if the AUX CFG size has increased, didn't it cause other registers
> >> to shift too?
> > 
> > AFAICT, all platforms have AUX_CFG0 through AUX_CFG12, we just didn't
> > need to write anything to the last two so far.
> 
> I checked 7180/7280/8180/8280/x1e/Glymur and they all do
> 
> It would make sense to perhaps spell this out explicitly in a separate
> patch

Makes sense. Will do.

Thanks.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
