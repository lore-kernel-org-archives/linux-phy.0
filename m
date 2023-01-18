Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C324EC004D4
	for <linux-phy@archiver.kernel.org>; Wed, 18 Jan 2023 10:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/ko5XOBi+k4OST4sevJGgykWn78hmritMUbFAjq/Dg=; b=WsvDgJRSpLjHGV
	LCQyG4OvCbj7MIV8rW2rgNPLTr0eT7/DkM6Yct3IOzy6/Q7Wno90HQ3KSbVYIAuwBOwpi2OWRabbV
	7NXu9mOf9mJW886nIfBsw+8kVhmUNBVXNVx4fhTvxaSVlAegxHw3dyBmkgLb04vaU6HBTbCgcaX2K
	bLrANHmNQurAd5ohKFbao3e10aFdTLSYilKkjoUbvEffN3daOCIhOLfsBHh7mL8DGXzM7RGTSm8B/
	MmPhGJa8JUn3Eacgt9BdlZcDbbwNjVbEtB/6IuZw49VOMVa5LbTDXX1vQJYKl/nIxM2Ype99ckiAK
	6vj10mftJz+tgwlg/+FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5nM-000ODr-2k; Wed, 18 Jan 2023 10:35:52 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI5nJ-000OC5-K0
	for linux-phy@lists.infradead.org; Wed, 18 Jan 2023 10:35:51 +0000
Received: by mail-wm1-x332.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so1156047wms.2
        for <linux-phy@lists.infradead.org>; Wed, 18 Jan 2023 02:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M3wabZmt+CW8MDjtdB4ADkYP9LZbXXt68/tBoGAwjTU=;
        b=mo4No3sRnKkl/ddBb1xHJyihMQql5EKqedm5MWYJq/obEeE5bvAbSuOEAJMDK4mny6
         NQoC2CEK/RJtumgWyoaXnyYLkQU5ktVIsI64sUbnSZ45M/ksKFuzRfiBNlmofFmlmQ4Y
         bsEoDOq/gZ+vqDX++2t9fExyA/1vCKqKHAwz0ClthjmRJvpcVfUmvsvPYiczZZjQL0Sl
         cRvuL/uCJ8N1hA7Mj5GcnlmSTj3WSMdh8RK5KP/fMsVhYIRJd0zOlUyMW5U2JBXqb5aS
         qjfS0Ijjmhpg3HPKKkPEnFzb3DW/jKdrfWR/ywCHAj6y/J8aP0xaeuLSXMHgzxFnO0sI
         /Dpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3wabZmt+CW8MDjtdB4ADkYP9LZbXXt68/tBoGAwjTU=;
        b=plRslk5OMgfFTlbpc1amy/g0uDs5nTdVL9mnxwarc0mpKt3Q/q2cOlMwoeA6g9Bdxb
         YpJJ2AtlCOPCG3gAjdyWtd3JTbRpXqkdhH7y/38Irpeio2QYO2oMdRRgUW4wYOapxZG9
         QVMwboYmAmOwSaxcbqFsjfAHP9gieSidofmweoyEEirK9dQx5vJ5pLnLtYM91PIHxejU
         C2uWGSxEaje8V3vJVwuvneh7/Ri+5OmIEc0hXopy5L+LG7ecb28VWg9DU8BucXZGTgnh
         wXG13kTYfWBC//V5DR8ZEk8glr3GKnTyB2YX5jabSah27b8vpXrq3PlPFow7F0e669md
         Q0Jw==
X-Gm-Message-State: AFqh2kr/MqWf1p2DaXtSOPySiO1uDTaIQ7Wv8VsdFO81G9kMycp/7/6l
	zkR2/d/kC0vWt4QG/LiAGZWBHQ==
X-Google-Smtp-Source: AMrXdXvmuJWrXQyoLVtdV4WDtX5woWaRANn1AadmaCH0aM/Jy2xGqNA0mqTaNBDVqA/O5ChuFdfeCQ==
X-Received: by 2002:a05:600c:a4d:b0:3db:1d6:16f7 with SMTP id c13-20020a05600c0a4d00b003db01d616f7mr2114059wmq.23.1674038145812;
        Wed, 18 Jan 2023 02:35:45 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c4fcc00b003daff80f16esm2042804wmq.27.2023.01.18.02.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 02:35:45 -0800 (PST)
Date: Wed, 18 Jan 2023 12:35:43 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/6] phy: qualcomm: Add UFS support for SM8550
Message-ID: <Y8fLf056H8IjrwSO@linaro.org>
References: <20230117224148.1914627-1-abel.vesa@linaro.org>
 <Y8eqdcLthEaYq/Pp@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y8eqdcLthEaYq/Pp@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_023549_703462_00EC32B5 
X-CRM114-Status: GOOD (  14.44  )
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

On 23-01-18 09:14:45, Johan Hovold wrote:
> On Wed, Jan 18, 2023 at 12:41:42AM +0200, Abel Vesa wrote:
> > The v4 of this patchset is:
> > https://lore.kernel.org/all/20230117142015.509675-1-abel.vesa@linaro.org/
> > 
> > Changes since v4:
> >  * Renamed QSERDES_UFS_V6_RX_UCDR_FO_GAIN_RATE[24] to
> >    QSERDES_UFS_V6_RX_UCDR_FASTLOCK_FO_GAIN_RATE[24] in patch #4
> >  * Added Dmitry's R-b tag to patches 2, 3, 5 and 6
> 
> In the future, please include the full changelog here even if you
> provide a link to the previous version. No need to make it harder than
> it has to be for reviewers.

OK, I'll do that from now on.

> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
