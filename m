Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1723FCCA480
	for <linux-phy@archiver.kernel.org>; Fri, 15 Jul 2022 09:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNT2BF1nLazgUG71cakZhPVtZdIXSrI7kstlUpRFEfk=; b=FI3r3hQFY58B1E
	3S24W5x+6VMwNNR8HQhM7G5f7btI7Pe1CGSnv3Nu4D4poHNiv4S4VxoOK43aKz5jo11ADLl4qJ3Ww
	GeSsZyK0d1eHT/qp1p42Jp4NOeIQQx4uFalv2g38zdO8iMf0tLk7UR/1l4sBrelHa2gFHcGRvluel
	u9qpDzypik1GzZkMrrItMicIuHnJ3UEMtvnx8zXh2uGQizDclGQCbZUaJWxb0wLXrL5eaTy80uvkv
	uqBBVs/QTAXc83eiRQlDuWUjBSs5q09f+qngnQ8B2MuNEQZ5g33asO4fkQuSf0PVivnGRu2m1O2F2
	HalUUVWDrK6iPY50NheQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCHcX-0068cT-H6; Fri, 15 Jul 2022 09:28:25 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCHcV-0068Sp-3I
	for linux-phy@lists.infradead.org; Fri, 15 Jul 2022 09:28:24 +0000
Received: by mail-lj1-x234.google.com with SMTP id 19so5086972ljz.4
        for <linux-phy@lists.infradead.org>; Fri, 15 Jul 2022 02:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7lnwGJuJS3JwMa5PZrDK+YnGfIocMyqjmMuVUsHWnFs=;
        b=PjOdX+ax3j4oTZc9QkB89uw2V8hb/b7Q8lrM23/+vjehQHqBjkIFSn1on+yOfZHEEQ
         EF9DunWzxYuwHKPOFbLyyEbUeLB8oF+JGBvgjqJXJ46RdxQgaMFYVsU3I8Z243ZvpG67
         AOQ4F52TcS/w3Gku5wHpxrXeIssgrxw9xDOo6BX4MGDPkKFTUHVl/48On2CVaimfBWzz
         w/38obZgvZATw8yolZLPRzsuMKqWXw7aSDu4N6+szbCO7E+l0NePOKJ9i16raKJ/0RUR
         NnacdhoT1QwXIo2VOVss6zSma/Q6KX1KbKMvJLeFhfByyHL4i17fcVrYakvC9XI1eDML
         UYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7lnwGJuJS3JwMa5PZrDK+YnGfIocMyqjmMuVUsHWnFs=;
        b=ChEz2y4jUtsnbxse4faU6VXJHjQtUS58yUJ7USGuWNEdiB7x0zwHT7g6+vHmhpSUPK
         WGNe2QDKPEhg6vyhd6Bwp5cbNrtAbiQ9C1cYCUhxF6O9RIUj1wwzcn5WIz0wHfOErxTz
         dedcmCsMix42xd3ObrHwdrCkhNLkvJXMwIDoOx5WZO8ao7OdvL4ougQIavIHE37sL+ns
         OK6nJi9imL23ws18l3yNsRy5AwswVN6XF9zwMzpQTh0Tdu5mYrXLnvRsTWTSpOogKIqb
         VlWNo5G1GbXZ3Fh7fFCbbVcYCZ9Ht4pA9ziOj9haPPiaD1oHaCKnXMW6Sms3WaV+Agr/
         AHsA==
X-Gm-Message-State: AJIora+j19Y2M9J6jbCVgl+vuKQ2DGJX9e4eV5zs6Vo3bL08/EfmDQRC
	v4gi9OIt4PYSBwX5vStM+8u4bw==
X-Google-Smtp-Source: AGRyM1sqMI4ANNf8TILJ6vnguXSpcG4A5XgKPbojcyF2918XJ1JbTMll8Bs3Lrwb0U+PWZeyCNi3Yw==
X-Received: by 2002:a2e:901a:0:b0:25d:7d6d:42a6 with SMTP id h26-20020a2e901a000000b0025d7d6d42a6mr6213267ljg.301.1657877299361;
        Fri, 15 Jul 2022 02:28:19 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y18-20020a0565123f1200b0048a228f1d8esm301080lfa.80.2022.07.15.02.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:28:18 -0700 (PDT)
Message-ID: <b912d273-431f-9c7e-a100-4ee967aa4753@linaro.org>
Date: Fri, 15 Jul 2022 11:28:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane
 suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-29-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714124333.27643-29-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_022823_161706_9650E099 
X-CRM114-Status: GOOD (  10.46  )
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

On 14/07/2022 14:43, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
