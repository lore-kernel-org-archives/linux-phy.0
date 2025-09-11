Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF12CAC58D
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 09:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2exJCNx9f1n8BvWh0VLBHHukyoDT2C+TFmenMEq84c=; b=xGqVokPAFnSJAo
	Hs4LT6wVMi+AeQcKz7xbKlpI+lzliOfvl++1+QX2AHILZuo25Wb4iUge7wM/zFc20by0Q5DxIwkzk
	Kdoel/yMIn8yQ4G7aSDEX1G1fuCH/CbNpX7YOwcXYuwormmgOxnwwx4OkgDXoSEgLEevMqHwX+VU5
	ZOs3I8bPFxXE9vcoxOwvuOZ/EQtbA6ndZAedfFyHnLrBl9n4dzMLQNLNzgIrZdwccObxCQwBzoyOO
	9SbFWvn5RlyAkl6npfbaJchnuDquMw3ExocQ26q4dv0PI1W4VG3DVGKItd5KVOvQE2Og32ysYVu9N
	fokecmRNlccEN21bB4iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdCV-00000001z5d-1uRB;
	Thu, 11 Sep 2025 09:02:43 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwdCS-00000001z40-32Ea
	for linux-phy@lists.infradead.org;
	Thu, 11 Sep 2025 09:02:41 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3df3be0e098so334338f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Sep 2025 02:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757581359; x=1758186159; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/zaq74E/O3TMzVibuqo9ZKl9wzf7cmcYOC6wFsi2v7Q=;
        b=RLA8PCFlxnQiACzLJSBoas+VEFljknUPejvjpH5UXVI86U1q8ywLWx8dmU0RBh1NfT
         khgzx8VyYhXTefJ8oAxyHz2PqyHFwplwuv5gld46kzYsglExA2hEBsWwtYg8BeVu3iFU
         9X/7927ZG769VZzqvIX/DSx9RrX5BI5bG9xTM5wZD3jat+gWLE2d8I2FL7pGLUjWrTui
         2kxrTDogI97EvNnF8pVHmwZH6S1sTU7iLVtvvddwzgoKr+basNIUWHLktU3jEUVIlwxL
         ip7vRiH5pj+Wn68HRY/a3LEbOHH14C1VkN/EwPkoNw9D+za686ebErCSCuODd5IqiVDl
         8evw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757581359; x=1758186159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/zaq74E/O3TMzVibuqo9ZKl9wzf7cmcYOC6wFsi2v7Q=;
        b=S9RJZBiRlnWsICtPHFoJX1y2qXH1GH3T3yZFtDAsai18i5/FRB/0wXFf7C2cpHb6JX
         sYaW+oyrJrrIioOfY50QQ1F25bK4KIzCV8sezI9aojyAIlrzTuAh0F08AnSdVqnd08/M
         1HjYtc8OQE6U3tz5EVsTUE2YJJLBI9JAuSE58L5OK29RB/zTFqeRwSxFJtidjLbaAUxU
         2F8DbNxKFKfJ4Wq4wHwZ0rbziny9X04jaUPPFYq4AnLyv3yiu8QEHfuagI3MTKJzj6AA
         iq+bUFj/BlNIo/cPec3oGFP/UveUkivSuaPjy5uQnY3NP6UjRAmhRiUwgHka7vceaVa3
         +I9w==
X-Forwarded-Encrypted: i=1; AJvYcCU88uYCfzIvfoeh65sPlHOnGHeBwfe3rqRxtMIOF8XPx8gAArqcSXNdO4N6pIdWwbYExkaNW1lTNpc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyMh6LbIX5cYItDre6X+o1Nq1zQB34ogSyPgBKxVx0nXwQOQ+uz
	ZVk+ug0O53CzrBhakV/xkrKZ+e2QlO35HCx+K5Z/nBI25+vaeOP+FgpB/+w1M+9mzPk=
X-Gm-Gg: ASbGnctn31qjcHzQdnxw1KKgVFX3inAi1/L8gkTL+FKb/ERYtOTqvr0sXNJRD25Molj
	KfhJ4iWC0rxYq8DtCJWZbgf0zXeVB3GCQTtb9uiv9XT/Y2WgvqVzAHFcgughalIy3CKZgnCOoZ5
	iZVTBkf3yJCp63RtWA8F62n6BcOQTqp46dkv7foJhFdZ7FVQr7bdClPFyfwGJVlGFuNSps0xnR+
	4CH2sVbBGJt8x2O+py5NqB1h5EjdWJruUL6RXuv4hT3sRXZzmbHVCK59W506NRpghoAUS/zX8Zk
	nQCus3vfoDR15U+uWi/S3FCmt5/Zj+5Tzn8vvAiQCio6OQW78C033JtJZQVu41SPW39c34vnk2A
	i/Iv1HitPX+sBbDKoz8dxqJMBb6/StsrpEoD5Sw+QHnE=
X-Google-Smtp-Source: AGHT+IEpmqZKqS9hAWz+1L1aJGWyXbmn5CbSirxedo3gzH/80b0RJpaQWoe7+bkeQmLZvMcrOVYvMA==
X-Received: by 2002:a05:6000:25ca:b0:3e7:5f26:f1e8 with SMTP id ffacd0b85a97d-3e75f26f670mr1923478f8f.5.1757581355207;
        Thu, 11 Sep 2025 02:02:35 -0700 (PDT)
Received: from linaro.org ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607e13f4sm1606771f8f.57.2025.09.11.02.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 02:02:34 -0700 (PDT)
Date: Thu, 11 Sep 2025 12:02:32 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: Add DP PHY compatible for Glymur
Message-ID: <i7ckqu325thggaw3qms2ofoklh6r5rhthdwkuko2uzbaqnryhg@qrjsc5yh3dnb>
References: <20250909-phy-qcom-edp-add-glymur-support-v2-0-02553381e47d@linaro.org>
 <20250909-phy-qcom-edp-add-glymur-support-v2-1-02553381e47d@linaro.org>
 <20250910-obedient-ambitious-oyster-5efa6e@kuoka>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250910-obedient-ambitious-oyster-5efa6e@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_020240_773750_0C8CA98D 
X-CRM114-Status: GOOD (  12.03  )
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

On 25-09-10 13:32:04, Krzysztof Kozlowski wrote:
> On Tue, Sep 09, 2025 at 01:07:26PM +0300, Abel Vesa wrote:
> > Document the compatible for the Glymur platform.
> 
> And it is not compatible with X1E? Say something useful in the commit
> msg, instead of what we see from the patch contents.
> 

It's definitely not compatible with X1E since there is a new version (v8
compared to v6).

Will update the commit message and mention the new version.

Thanks for reviewing.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
